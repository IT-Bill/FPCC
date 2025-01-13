; ModuleID = 'bessel_olver.ll'
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
@0 = private unnamed_addr constant [29 x i8] c"gsl_sf_bessel_Olver_zofmzeta\00"
@1 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@4 = private unnamed_addr constant [32 x i8] c"gsl_sf_bessel_Jnu_asymp_Olver_e\00"
@5 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@6 = private unnamed_addr constant [11 x i8] c"olver_Asum\00"
@7 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@8 = private unnamed_addr constant [11 x i8] c"olver_Bsum\00"
@9 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@10 = private unnamed_addr constant [32 x i8] c"gsl_sf_bessel_Ynu_asymp_Olver_e\00"
@11 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@12 = private unnamed_addr constant [9 x i8] c"olver_A1\00"
@13 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@14 = private unnamed_addr constant [9 x i8] c"olver_A2\00"
@15 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@16 = private unnamed_addr constant [9 x i8] c"olver_A3\00"
@17 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@18 = private unnamed_addr constant [9 x i8] c"olver_A4\00"
@19 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@20 = private unnamed_addr constant [9 x i8] c"olver_B0\00"
@21 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@22 = private unnamed_addr constant [9 x i8] c"olver_B1\00"
@23 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@24 = private unnamed_addr constant [9 x i8] c"olver_B2\00"
@25 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"
@26 = private unnamed_addr constant [9 x i8] c"olver_B3\00"
@27 = private unnamed_addr constant [16 x i8] c"bessel_olver.ll\00"

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
  %14 = call i1 @fCmpInstHandler(double %12, double 1.000000e+00, i1 %13, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123155152, i32 138, i32 17), !dbg !105
  br i1 %14, label %15, label %23, !dbg !105

; <label>:15:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata double* %4, metadata !106, metadata !100), !dbg !109
  %16 = load double, double* %3, align 8, !dbg !110
  %17 = fmul double 2.000000e+00, %16, !dbg !111
  call void @fMulHandler(double 2.000000e+00, double %16, double %17, i64 0, i64 94127122981272, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123157712, i32 139, i32 25), !dbg !112
  %18 = fsub double %17, 1.000000e+00, !dbg !112
  call void @fSubHandler(double %17, double 1.000000e+00, double %18, i64 94127123157712, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123158128, i32 139, i32 37), !dbg !109
  store double %18, double* %4, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !113, metadata !100), !dbg !120
  %19 = load double, double* %4, align 8, !dbg !121
  %20 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_a_cs, double %19, %struct.gsl_sf_result_struct* %5), !dbg !122
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !123
  %22 = load double, double* %21, align 8, !dbg !123
  store double %22, double* %2, align 8, !dbg !124
  br label %48, !dbg !124

; <label>:23:                                     ; preds = %1
  %24 = load double, double* %3, align 8, !dbg !125
  %25 = fcmp olt double %24, 1.000000e+01, !dbg !127
  %26 = call i1 @fCmpInstHandler(double %24, double 1.000000e+01, i1 %25, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123167072, i32 144, i32 22), !dbg !128
  br i1 %26, label %27, label %36, !dbg !128

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata double* %6, metadata !129, metadata !100), !dbg !131
  %28 = load double, double* %3, align 8, !dbg !132
  %29 = fmul double 2.000000e+00, %28, !dbg !133
  call void @fMulHandler(double 2.000000e+00, double %28, double %29, i64 0, i64 94127123169304, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123169712, i32 145, i32 26), !dbg !134
  %30 = fsub double %29, 1.100000e+01, !dbg !134
  call void @fSubHandler(double %29, double 1.100000e+01, double %30, i64 94127123169712, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123170192, i32 145, i32 38), !dbg !135
  %31 = fdiv double %30, 9.000000e+00, !dbg !135
  call void @fDivHandler(double %30, double 9.000000e+00, double %31, i64 94127123170192, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123170672, i32 145, i32 45), !dbg !131
  store double %31, double* %6, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !136, metadata !100), !dbg !137
  %32 = load double, double* %6, align 8, !dbg !138
  %33 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_b_cs, double %32, %struct.gsl_sf_result_struct* %7), !dbg !139
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !140
  %35 = load double, double* %34, align 8, !dbg !140
  store double %35, double* %2, align 8, !dbg !141
  br label %48, !dbg !141

; <label>:36:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata double* %8, metadata !142, metadata !100), !dbg !144
  store double 0x403F9F6E4990F227, double* %8, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata double* %9, metadata !145, metadata !100), !dbg !146
  %37 = load double, double* %3, align 8, !dbg !147
  %38 = call double @pow(double %37, double 1.500000e+00) #6, !dbg !148
  call void @callTwoArgsHandler(i32 15, double %37, double 1.500000e+00, double %38, i64 94127123183320, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123184152, i32 152, i32 22), !dbg !146
  store double %38, double* %9, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata double* %10, metadata !149, metadata !100), !dbg !150
  %39 = load double, double* %9, align 8, !dbg !151
  %40 = fdiv double 0x404F9F6E4990F227, %39, !dbg !152
  call void @fDivHandler(double 0x404F9F6E4990F227, double %39, double %40, i64 0, i64 94127123187448, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123187888, i32 153, i32 32), !dbg !153
  %41 = fsub double %40, 1.000000e+00, !dbg !153
  call void @fSubHandler(double %40, double 1.000000e+00, double %41, i64 94127123187888, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123188336, i32 153, i32 35), !dbg !150
  store double %41, double* %10, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !154, metadata !100), !dbg !155
  %42 = load double, double* %10, align 8, !dbg !156
  %43 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_c_cs, double %42, %struct.gsl_sf_result_struct* %11), !dbg !157
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !158
  %45 = load double, double* %44, align 8, !dbg !158
  %46 = load double, double* %9, align 8, !dbg !159
  %47 = fmul double %45, %46, !dbg !160
  call void @fMulHandler(double %45, double %46, double %47, i64 94127123192856, i64 94127123194504, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94127123194912, i32 156, i32 18), !dbg !161
  store double %47, double* %2, align 8, !dbg !161
  br label %48, !dbg !161

; <label>:48:                                     ; preds = %36, %27, %15
  %49 = load double, double* %2, align 8, !dbg !162
  ret double %49, !dbg !162
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
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94127123161736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123213424, i32 11, i32 19), !dbg !186
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !186
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !187
  %19 = load double, double* %18, align 8, !dbg !187
  %20 = fsub double %16, %19, !dbg !188
  call void @fSubHandler(double %16, double %19, double %20, i64 94127123213424, i64 94127123214584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123216256, i32 11, i32 22), !dbg !189
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !189
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !190
  %23 = load double, double* %22, align 8, !dbg !190
  %24 = fsub double %20, %23, !dbg !191
  call void @fSubHandler(double %20, double %23, double %24, i64 94127123216256, i64 94127123217544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123219216, i32 11, i32 30), !dbg !192
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !192
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !193
  %27 = load double, double* %26, align 8, !dbg !193
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !194
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !195
  %30 = load double, double* %29, align 8, !dbg !195
  %31 = fsub double %27, %30, !dbg !196
  call void @fSubHandler(double %27, double %30, double %31, i64 94127123220440, i64 94127123222920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123224592, i32 11, i32 48), !dbg !197
  %32 = fdiv double %24, %31, !dbg !197
  call void @fDivHandler(double %24, double %31, double %32, i64 94127123219216, i64 94127123224592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123225008, i32 11, i32 39), !dbg !183
  store double %32, double* %10, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata double* %11, metadata !198, metadata !100), !dbg !199
  %33 = load double, double* %10, align 8, !dbg !200
  %34 = fmul double 2.000000e+00, %33, !dbg !201
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94127123228056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123228464, i32 12, i32 19), !dbg !199
  store double %34, double* %11, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata double* %12, metadata !202, metadata !100), !dbg !203
  store double 0.000000e+00, double* %12, align 8, !dbg !203
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !204
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !206
  %37 = load i32, i32* %36, align 8, !dbg !206
  store i32 %37, i32* %7, align 4, !dbg !207
  br label %38, !dbg !208

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !209
  %40 = icmp sge i32 %39, 1, !dbg !212
  %41 = sext i32 %39 to i64, !dbg !213
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123237040, i32 16, i32 23), !dbg !213
  br i1 %42, label %43, label %80, !dbg !213

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !214, metadata !100), !dbg !216
  %44 = load double, double* %8, align 8, !dbg !217
  store double %44, double* %13, align 8, !dbg !216
  %45 = load double, double* %11, align 8, !dbg !218
  %46 = load double, double* %8, align 8, !dbg !219
  %47 = fmul double %45, %46, !dbg !220
  call void @fMulHandler(double %45, double %46, double %47, i64 94127123241240, i64 94127123241624, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123242032, i32 18, i32 11), !dbg !221
  %48 = load double, double* %9, align 8, !dbg !221
  %49 = fsub double %47, %48, !dbg !222
  call void @fSubHandler(double %47, double %48, double %49, i64 94127123242032, i64 94127123242424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123242832, i32 18, i32 14), !dbg !223
  %50 = load i32, i32* %7, align 4, !dbg !223
  %51 = sext i32 %50 to i64, !dbg !224
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !224
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !225
  %54 = load double*, double** %53, align 8, !dbg !225
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !224
  %56 = load double, double* %55, align 8, !dbg !224
  %57 = fadd double %49, %56, !dbg !226
  call void @fAddHandler(double %49, double %56, double %57, i64 94127123242832, i64 94127123247880, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123248000, i32 18, i32 19), !dbg !227
  store double %57, double* %8, align 8, !dbg !227
  %58 = load double, double* %11, align 8, !dbg !228
  %59 = load double, double* %13, align 8, !dbg !229
  %60 = fmul double %58, %59, !dbg !230
  call void @fMulHandler(double %58, double %59, double %60, i64 94127123248808, i64 94127123249192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123249600, i32 19, i32 17), !dbg !231
  %61 = call double @fabs(double %60) #1, !dbg !231
  %62 = load double, double* %9, align 8, !dbg !232
  %63 = call double @fabs(double %62) #1, !dbg !233
  %64 = fadd double %61, %63, !dbg !235
  call void @fAddHandler(double %61, double %63, double %64, i64 94127123250352, i64 94127123251312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123251792, i32 19, i32 24), !dbg !236
  %65 = load i32, i32* %7, align 4, !dbg !236
  %66 = sext i32 %65 to i64, !dbg !237
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !237
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !238
  %69 = load double*, double** %68, align 8, !dbg !238
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !237
  %71 = load double, double* %70, align 8, !dbg !237
  %72 = call double @fabs(double %71) #1, !dbg !239
  %73 = fadd double %64, %72, !dbg !241
  call void @fAddHandler(double %64, double %72, double %73, i64 94127123251792, i64 94127123258064, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123258544, i32 19, i32 35), !dbg !242
  %74 = load double, double* %12, align 8, !dbg !242
  %75 = fadd double %74, %73, !dbg !242
  call void @fAddHandler(double %74, double %73, double %75, i64 94127123258936, i64 94127123258544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123259344, i32 19, i32 7), !dbg !242
  store double %75, double* %12, align 8, !dbg !242
  %76 = load double, double* %13, align 8, !dbg !243
  store double %76, double* %9, align 8, !dbg !244
  br label %77, !dbg !245

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !246
  %79 = add nsw i32 %78, -1, !dbg !246
  store i32 %79, i32* %7, align 4, !dbg !246
  br label %38, !dbg !248, !llvm.loop !249

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !251, metadata !100), !dbg !253
  %81 = load double, double* %8, align 8, !dbg !254
  store double %81, double* %14, align 8, !dbg !253
  %82 = load double, double* %10, align 8, !dbg !255
  %83 = load double, double* %8, align 8, !dbg !256
  %84 = fmul double %82, %83, !dbg !257
  call void @fMulHandler(double %82, double %83, double %84, i64 94127123272568, i64 94127123272952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123273360, i32 25, i32 10), !dbg !258
  %85 = load double, double* %9, align 8, !dbg !258
  %86 = fsub double %84, %85, !dbg !259
  call void @fSubHandler(double %84, double %85, double %86, i64 94127123273360, i64 94127123273752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123274160, i32 25, i32 13), !dbg !260
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !260
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !261
  %89 = load double*, double** %88, align 8, !dbg !261
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !260
  %91 = load double, double* %90, align 8, !dbg !260
  %92 = fmul double 5.000000e-01, %91, !dbg !262
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94127123278792, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123279008, i32 25, i32 24), !dbg !263
  %93 = fadd double %86, %92, !dbg !263
  call void @fAddHandler(double %86, double %92, double %93, i64 94127123274160, i64 94127123279008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123279392, i32 25, i32 18), !dbg !264
  store double %93, double* %8, align 8, !dbg !264
  %94 = load double, double* %10, align 8, !dbg !265
  %95 = load double, double* %14, align 8, !dbg !266
  %96 = fmul double %94, %95, !dbg !267
  call void @fMulHandler(double %94, double %95, double %96, i64 94127123280200, i64 94127123280584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123280992, i32 26, i32 16), !dbg !268
  %97 = call double @fabs(double %96) #1, !dbg !268
  %98 = load double, double* %9, align 8, !dbg !269
  %99 = call double @fabs(double %98) #1, !dbg !270
  %100 = fadd double %97, %99, !dbg !272
  call void @fAddHandler(double %97, double %99, double %100, i64 94127123281472, i64 94127123282400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123282880, i32 26, i32 23), !dbg !273
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !274
  %103 = load double*, double** %102, align 8, !dbg !274
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !273
  %105 = load double, double* %104, align 8, !dbg !273
  %106 = call double @fabs(double %105) #1, !dbg !275
  %107 = fmul double 5.000000e-01, %106, !dbg !277
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94127123287632, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123288144, i32 26, i32 40), !dbg !278
  %108 = fadd double %100, %107, !dbg !278
  call void @fAddHandler(double %100, double %107, double %108, i64 94127123282880, i64 94127123288144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123288528, i32 26, i32 34), !dbg !279
  %109 = load double, double* %12, align 8, !dbg !279
  %110 = fadd double %109, %108, !dbg !279
  call void @fAddHandler(double %109, double %108, double %110, i64 94127123288920, i64 94127123288528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123289328, i32 26, i32 7), !dbg !279
  store double %110, double* %12, align 8, !dbg !279
  %111 = load double, double* %8, align 8, !dbg !280
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !281
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !282
  store double %111, double* %113, align 8, !dbg !283
  %114 = load double, double* %12, align 8, !dbg !284
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !285
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94127123292744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123293216, i32 30, i32 33), !dbg !286
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !286
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !287
  %118 = load i32, i32* %117, align 8, !dbg !287
  %119 = sext i32 %118 to i64, !dbg !288
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !288
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !289
  %122 = load double*, double** %121, align 8, !dbg !289
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !288
  %124 = load double, double* %123, align 8, !dbg !288
  %125 = call double @fabs(double %124) #1, !dbg !290
  %126 = fadd double %115, %125, !dbg !291
  call void @fAddHandler(double %115, double %125, double %126, i64 94127123293216, i64 94127123300544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94127123301024, i32 30, i32 37), !dbg !292
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !292
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !293
  store double %126, double* %128, align 8, !dbg !294
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
  %36 = call i1 @fCmpInstHandler(double %34, double 0.000000e+00, i1 %35, i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123311568, i32 846, i32 8), !dbg !308
  br i1 %36, label %41, label %37, !dbg !308

; <label>:37:                                     ; preds = %3
  %38 = load double, double* %5, align 8, !dbg !309
  %39 = fcmp ole double %38, 0.000000e+00, !dbg !311
  %40 = call i1 @fCmpInstHandler(double %38, double 0.000000e+00, i1 %39, i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123313024, i32 846, i32 21), !dbg !312
  br i1 %40, label %41, label %50, !dbg !312

; <label>:41:                                     ; preds = %37, %3
  br label %42, !dbg !313, !llvm.loop !315

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !316
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !316
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !316
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !316
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !316
  store double 0x7FF8000000000000, double* %46, align 8, !dbg !316
  br label %47, !dbg !316, !llvm.loop !319

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 847, i32 1), !dbg !321
  store i32 1, i32* %4, align 4, !dbg !321
  br label %271, !dbg !321
                                                  ; No predecessors!
  br label %49, !dbg !324

; <label>:49:                                     ; preds = %48
  br label %271, !dbg !326

; <label>:50:                                     ; preds = %37
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
  %51 = load double, double* %6, align 8, !dbg !348
  %52 = load double, double* %5, align 8, !dbg !349
  %53 = fdiv double %51, %52, !dbg !350
  call void @fDivHandler(double %51, double %52, double %53, i64 94127123334840, i64 94127123335192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123335600, i32 856, i32 17), !dbg !347
  store double %53, double* %17, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %18, metadata !351, metadata !100), !dbg !352
  %54 = load double, double* %5, align 8, !dbg !353
  %55 = call double @pow(double %54, double 0x3FD5555555555555) #6, !dbg !354
  call void @callTwoArgsHandler(i32 15, double %54, double 0x3FD5555555555555, double %55, i64 94127123338792, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123339352, i32 857, i32 19), !dbg !352
  store double %55, double* %18, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata double* %19, metadata !355, metadata !100), !dbg !356
  %56 = load double, double* %5, align 8, !dbg !357
  %57 = load double, double* %5, align 8, !dbg !358
  %58 = fmul double %56, %57, !dbg !359
  call void @fMulHandler(double %56, double %57, double %58, i64 94127123342568, i64 94127123342920, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123343328, i32 858, i32 21), !dbg !360
  %59 = load double, double* %5, align 8, !dbg !360
  %60 = fmul double %58, %59, !dbg !361
  call void @fMulHandler(double %58, double %59, double %60, i64 94127123343328, i64 94127123343720, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123344128, i32 858, i32 24), !dbg !356
  store double %60, double* %19, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %20, metadata !362, metadata !100), !dbg !363
  %61 = load double, double* %19, align 8, !dbg !364
  %62 = load double, double* %19, align 8, !dbg !365
  %63 = fmul double %61, %62, !dbg !366
  call void @fMulHandler(double %61, double %62, double %63, i64 94127123347320, i64 94127123347672, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123348080, i32 859, i32 22), !dbg !367
  %64 = load double, double* %19, align 8, !dbg !367
  %65 = fmul double %63, %64, !dbg !368
  call void @fMulHandler(double %63, double %64, double %65, i64 94127123348080, i64 94127123348472, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123348880, i32 859, i32 26), !dbg !369
  %66 = load double, double* %5, align 8, !dbg !369
  %67 = fmul double %65, %66, !dbg !370
  call void @fMulHandler(double %65, double %66, double %67, i64 94127123348880, i64 94127123349272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123349680, i32 859, i32 30), !dbg !371
  %68 = load double, double* %5, align 8, !dbg !371
  %69 = fmul double %67, %68, !dbg !372
  call void @fMulHandler(double %67, double %68, double %69, i64 94127123349680, i64 94127123350072, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123350480, i32 859, i32 33), !dbg !363
  store double %69, double* %20, align 8, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %21, metadata !373, metadata !100), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %22, metadata !375, metadata !100), !dbg !376
  %70 = load double, double* %17, align 8, !dbg !377
  %71 = fsub double 1.000000e+00, %70, !dbg !379
  call void @fSubHandler(double 1.000000e+00, double %70, double %71, i64 0, i64 94127123354760, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123355168, i32 862, i32 16), !dbg !380
  %72 = call double @fabs(double %71) #1, !dbg !380
  %73 = fcmp olt double %72, 2.000000e-02, !dbg !381
  %74 = call i1 @fCmpInstHandler(double %72, double 2.000000e-02, i1 %73, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123356192, i32 862, i32 20), !dbg !382
  br i1 %74, label %75, label %111, !dbg !382

; <label>:75:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %23, metadata !383, metadata !100), !dbg !385
  %76 = load double, double* %17, align 8, !dbg !386
  %77 = fsub double 1.000000e+00, %76, !dbg !387
  call void @fSubHandler(double 1.000000e+00, double %76, double %77, i64 0, i64 94127123358328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123358736, i32 863, i32 27), !dbg !385
  store double %77, double* %23, align 8, !dbg !385
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
  %78 = load double, double* %23, align 8, !dbg !404
  %79 = load double, double* %23, align 8, !dbg !405
  %80 = load double, double* %23, align 8, !dbg !406
  %81 = load double, double* %23, align 8, !dbg !407
  %82 = load double, double* %23, align 8, !dbg !408
  %83 = load double, double* %23, align 8, !dbg !409
  %84 = load double, double* %23, align 8, !dbg !410
  %85 = fmul double %84, 0x3FB3B64821C4C9D1, !dbg !411
  call void @fMulHandler(double %84, double 0x3FB3B64821C4C9D1, double %85, i64 94127123385736, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123386144, i32 872, i32 67), !dbg !412
  %86 = fadd double 0x3FB6D3D801D5BC8D, %85, !dbg !412
  call void @fAddHandler(double 0x3FB6D3D801D5BC8D, double %85, double %86, i64 0, i64 94127123386144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123386560, i32 872, i32 64), !dbg !413
  %87 = fmul double %83, %86, !dbg !413
  call void @fMulHandler(double %83, double %86, double %87, i64 94127123385352, i64 94127123386560, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123386976, i32 872, i32 59), !dbg !414
  %88 = fadd double 0x3FBB0DDFEFA33BCD, %87, !dbg !414
  call void @fAddHandler(double 0x3FBB0DDFEFA33BCD, double %87, double %88, i64 0, i64 94127123386976, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123387392, i32 872, i32 56), !dbg !415
  %89 = fmul double %82, %88, !dbg !415
  call void @fMulHandler(double %82, double %88, double %89, i64 94127123384968, i64 94127123387392, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123387808, i32 872, i32 51), !dbg !416
  %90 = fadd double 0x3FC08D5B5F242061, %89, !dbg !416
  call void @fAddHandler(double 0x3FC08D5B5F242061, double %89, double %90, i64 0, i64 94127123387808, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123388224, i32 872, i32 48), !dbg !417
  %91 = fmul double %81, %90, !dbg !417
  call void @fMulHandler(double %81, double %90, double %91, i64 94127123384584, i64 94127123388224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123388640, i32 872, i32 43), !dbg !418
  %92 = fadd double 0x3FC53C86A0E23F84, %91, !dbg !418
  call void @fAddHandler(double 0x3FC53C86A0E23F84, double %91, double %92, i64 0, i64 94127123388640, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123389056, i32 872, i32 40), !dbg !419
  %93 = fmul double %80, %92, !dbg !419
  call void @fMulHandler(double %80, double %92, double %93, i64 94127123384200, i64 94127123389056, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123389472, i32 872, i32 35), !dbg !420
  %94 = fadd double 0x3FCD7D462E2826D4, %93, !dbg !420
  call void @fAddHandler(double 0x3FCD7D462E2826D4, double %93, double %94, i64 0, i64 94127123389472, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123389888, i32 872, i32 32), !dbg !421
  %95 = fmul double %79, %94, !dbg !421
  call void @fMulHandler(double %79, double %94, double %95, i64 94127123383816, i64 94127123389888, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123390304, i32 872, i32 27), !dbg !422
  %96 = fadd double 0x3FD830C391DCEFDA, %95, !dbg !422
  call void @fAddHandler(double 0x3FD830C391DCEFDA, double %95, double %96, i64 0, i64 94127123390304, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123390720, i32 872, i32 24), !dbg !423
  %97 = fmul double %78, %96, !dbg !423
  call void @fMulHandler(double %78, double %96, double %97, i64 94127123383464, i64 94127123390720, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123391136, i32 872, i32 19), !dbg !424
  %98 = fadd double 0x3FF428A2F98D728B, %97, !dbg !424
  call void @fAddHandler(double 0x3FF428A2F98D728B, double %97, double %98, i64 0, i64 94127123391136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123391552, i32 872, i32 16), !dbg !425
  store double %98, double* %11, align 8, !dbg !425
  %99 = load double, double* %23, align 8, !dbg !426
  %100 = load double, double* %11, align 8, !dbg !427
  %101 = fmul double %99, %100, !dbg !428
  call void @fMulHandler(double %99, double %100, double %101, i64 94127123392360, i64 94127123392744, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123393152, i32 873, i32 16), !dbg !429
  store double %101, double* %8, align 8, !dbg !429
  %102 = load double, double* %11, align 8, !dbg !430
  %103 = load double, double* %17, align 8, !dbg !431
  %104 = fadd double 1.000000e+00, %103, !dbg !432
  call void @fAddHandler(double 1.000000e+00, double %103, double %104, i64 0, i64 94127123394344, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123394784, i32 874, i32 36), !dbg !433
  %105 = fdiv double %102, %104, !dbg !433
  call void @fDivHandler(double %102, double %104, double %105, i64 94127123393960, i64 94127123394784, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123395168, i32 874, i32 31), !dbg !434
  %106 = call double @sqrt(double %105) #6, !dbg !434
  call void @callOneArgHandler(i32 14, double %105, double %106, i64 94127123395168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123395920, i32 874, i32 23), !dbg !435
  %107 = fmul double 2.000000e+00, %106, !dbg !435
  call void @fMulHandler(double 2.000000e+00, double %106, double %107, i64 0, i64 94127123395920, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123396464, i32 874, i32 22), !dbg !436
  %108 = call double @sqrt(double %107) #6, !dbg !436
  call void @callOneArgHandler(i32 14, double %107, double %108, i64 94127123396464, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123396912, i32 874, i32 14), !dbg !438
  store double %108, double* %11, align 8, !dbg !438
  %109 = load double, double* %8, align 8, !dbg !439
  %110 = call double @fabs(double %109) #1, !dbg !440
  store double %110, double* %9, align 8, !dbg !441
  br label %166, !dbg !442

; <label>:111:                                    ; preds = %50
  %112 = load double, double* %17, align 8, !dbg !443
  %113 = fcmp olt double %112, 1.000000e+00, !dbg !445
  %114 = call i1 @fCmpInstHandler(double %112, double 1.000000e+00, i1 %113, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123400032, i32 877, i32 15), !dbg !446
  br i1 %114, label %115, label %139, !dbg !446

; <label>:115:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata double* %32, metadata !447, metadata !100), !dbg !449
  %116 = load double, double* %17, align 8, !dbg !450
  %117 = load double, double* %17, align 8, !dbg !451
  %118 = fmul double %116, %117, !dbg !452
  call void @fMulHandler(double %116, double %117, double %118, i64 94127123322984, i64 94127123323336, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123323744, i32 878, i32 33), !dbg !453
  %119 = fsub double 1.000000e+00, %118, !dbg !453
  call void @fSubHandler(double 1.000000e+00, double %118, double %119, i64 0, i64 94127123323744, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123407584, i32 878, i32 30), !dbg !454
  %120 = call double @sqrt(double %119) #6, !dbg !454
  call void @callOneArgHandler(i32 14, double %119, double %120, i64 94127123407584, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123408000, i32 878, i32 21), !dbg !449
  store double %120, double* %32, align 8, !dbg !449
  %121 = load double, double* %32, align 8, !dbg !455
  %122 = fadd double 1.000000e+00, %121, !dbg !456
  call void @fAddHandler(double 1.000000e+00, double %121, double %122, i64 0, i64 94127123410168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123410608, i32 879, i32 35), !dbg !457
  %123 = load double, double* %17, align 8, !dbg !457
  %124 = fdiv double %122, %123, !dbg !458
  call void @fDivHandler(double %122, double %123, double %124, i64 94127123410608, i64 94127123410968, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123411376, i32 879, i32 39), !dbg !459
  %125 = call double @log(double %124) #6, !dbg !459
  call void @callOneArgHandler(i32 12, double %124, double %125, i64 94127123411376, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123412128, i32 879, i32 27), !dbg !460
  %126 = load double, double* %32, align 8, !dbg !460
  %127 = fsub double %125, %126, !dbg !461
  call void @fSubHandler(double %125, double %126, double %127, i64 94127123412128, i64 94127123412616, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123413024, i32 879, i32 43), !dbg !462
  %128 = fmul double 1.500000e+00, %127, !dbg !462
  call void @fMulHandler(double 1.500000e+00, double %127, double %128, i64 0, i64 94127123413024, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123413472, i32 879, i32 25), !dbg !463
  %129 = call double @pow(double %128, double 0x3FE5555555555555) #6, !dbg !463
  call void @callTwoArgsHandler(i32 15, double %128, double 0x3FE5555555555555, double %129, i64 94127123413472, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123414040, i32 879, i32 18), !dbg !465
  store double %129, double* %9, align 8, !dbg !465
  %130 = load double, double* %9, align 8, !dbg !466
  store double %130, double* %8, align 8, !dbg !467
  %131 = load double, double* %9, align 8, !dbg !468
  %132 = load double, double* %32, align 8, !dbg !469
  %133 = load double, double* %32, align 8, !dbg !470
  %134 = fmul double %132, %133, !dbg !471
  call void @fMulHandler(double %132, double %133, double %134, i64 94127123416056, i64 94127123418504, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123418912, i32 881, i32 40), !dbg !472
  %135 = fdiv double %131, %134, !dbg !472
  call void @fDivHandler(double %131, double %134, double %135, i64 94127123415672, i64 94127123418912, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123419328, i32 881, i32 36), !dbg !473
  %136 = call double @sqrt(double %135) #6, !dbg !473
  call void @callOneArgHandler(i32 14, double %135, double %136, i64 94127123419328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123419808, i32 881, i32 23), !dbg !474
  %137 = fmul double 2.000000e+00, %136, !dbg !474
  call void @fMulHandler(double 2.000000e+00, double %136, double %137, i64 0, i64 94127123419808, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123420320, i32 881, i32 22), !dbg !475
  %138 = call double @sqrt(double %137) #6, !dbg !475
  call void @callOneArgHandler(i32 14, double %137, double %138, i64 94127123420320, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123420768, i32 881, i32 14), !dbg !476
  store double %138, double* %11, align 8, !dbg !476
  br label %165, !dbg !477

; <label>:139:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata double* %33, metadata !478, metadata !100), !dbg !480
  %140 = load double, double* %17, align 8, !dbg !481
  %141 = load double, double* %17, align 8, !dbg !482
  %142 = load double, double* %17, align 8, !dbg !483
  %143 = fmul double %141, %142, !dbg !484
  call void @fMulHandler(double %141, double %142, double %143, i64 94127123423576, i64 94127123423960, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123424368, i32 885, i32 40), !dbg !485
  %144 = fdiv double 1.000000e+00, %143, !dbg !485
  call void @fDivHandler(double 1.000000e+00, double %143, double %144, i64 0, i64 94127123424368, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123424816, i32 885, i32 37), !dbg !486
  %145 = fsub double 1.000000e+00, %144, !dbg !486
  call void @fSubHandler(double 1.000000e+00, double %144, double %145, i64 0, i64 94127123424816, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123425232, i32 885, i32 32), !dbg !487
  %146 = call double @sqrt(double %145) #6, !dbg !487
  call void @callOneArgHandler(i32 14, double %145, double %146, i64 94127123425232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123425680, i32 885, i32 23), !dbg !488
  %147 = fmul double %140, %146, !dbg !488
  call void @fMulHandler(double %140, double %146, double %147, i64 94127123423224, i64 94127123425680, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123426160, i32 885, i32 21), !dbg !480
  store double %147, double* %33, align 8, !dbg !480
  %148 = load double, double* %33, align 8, !dbg !489
  %149 = load double, double* %17, align 8, !dbg !490
  %150 = fdiv double 1.000000e+00, %149, !dbg !491
  call void @fDivHandler(double 1.000000e+00, double %149, double %150, i64 0, i64 94127123428616, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123429056, i32 886, i32 40), !dbg !492
  %151 = call double @acos(double %150) #6, !dbg !492
  call void @callOneArgHandler(i32 5, double %150, double %151, i64 94127123429056, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123429776, i32 886, i32 32), !dbg !493
  %152 = fsub double %148, %151, !dbg !493
  call void @fSubHandler(double %148, double %151, double %152, i64 94127123428232, i64 94127123429776, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123430288, i32 886, i32 30), !dbg !494
  %153 = fmul double 1.500000e+00, %152, !dbg !494
  call void @fMulHandler(double 1.500000e+00, double %152, double %153, i64 0, i64 94127123430288, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123430736, i32 886, i32 25), !dbg !495
  %154 = call double @pow(double %153, double 0x3FE5555555555555) #6, !dbg !495
  call void @callTwoArgsHandler(i32 15, double %153, double 0x3FE5555555555555, double %154, i64 94127123430736, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123431240, i32 886, i32 18), !dbg !497
  store double %154, double* %9, align 8, !dbg !497
  %155 = load double, double* %9, align 8, !dbg !498
  %156 = fsub double -0.000000e+00, %155, !dbg !499
  call void @fSubHandler(double -0.000000e+00, double %155, double %156, i64 0, i64 94127123432072, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123432544, i32 887, i32 14), !dbg !500
  store double %156, double* %8, align 8, !dbg !500
  %157 = load double, double* %9, align 8, !dbg !501
  %158 = load double, double* %33, align 8, !dbg !502
  %159 = load double, double* %33, align 8, !dbg !503
  %160 = fmul double %158, %159, !dbg !504
  call void @fMulHandler(double %158, double %159, double %160, i64 94127123433736, i64 94127123434120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123434528, i32 888, i32 40), !dbg !505
  %161 = fdiv double %157, %160, !dbg !505
  call void @fDivHandler(double %157, double %160, double %161, i64 94127123433352, i64 94127123434528, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123434944, i32 888, i32 36), !dbg !506
  %162 = call double @sqrt(double %161) #6, !dbg !506
  call void @callOneArgHandler(i32 14, double %161, double %162, i64 94127123434944, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123435424, i32 888, i32 23), !dbg !507
  %163 = fmul double 2.000000e+00, %162, !dbg !507
  call void @fMulHandler(double 2.000000e+00, double %162, double %163, i64 0, i64 94127123435424, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123435936, i32 888, i32 22), !dbg !508
  %164 = call double @sqrt(double %163) #6, !dbg !508
  call void @callOneArgHandler(i32 14, double %163, double %164, i64 94127123435936, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123436384, i32 888, i32 14), !dbg !509
  store double %164, double* %11, align 8, !dbg !509
  br label %165

; <label>:165:                                    ; preds = %139, %115
  br label %166

; <label>:166:                                    ; preds = %165, %75
  %167 = load double, double* %5, align 8, !dbg !510
  %168 = load double, double* %17, align 8, !dbg !511
  %169 = load double, double* %9, align 8, !dbg !512
  %170 = call double @olver_Asum(double %167, double %168, double %169, double* %14), !dbg !513
  store double %170, double* %12, align 8, !dbg !514
  %171 = load double, double* %5, align 8, !dbg !515
  %172 = load double, double* %17, align 8, !dbg !516
  %173 = load double, double* %9, align 8, !dbg !517
  %174 = call double @olver_Bsum(double %171, double %172, double %173), !dbg !518
  store double %174, double* %13, align 8, !dbg !519
  %175 = load double, double* %18, align 8, !dbg !520
  %176 = load double, double* %18, align 8, !dbg !521
  %177 = fmul double %175, %176, !dbg !522
  call void @fMulHandler(double %175, double %176, double %177, i64 94127123442280, i64 94127123442664, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123443072, i32 894, i32 16), !dbg !523
  %178 = load double, double* %8, align 8, !dbg !523
  %179 = fmul double %177, %178, !dbg !524
  call void @fMulHandler(double %177, double %178, double %179, i64 94127123443072, i64 94127123443464, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123443872, i32 894, i32 22), !dbg !525
  store double %179, double* %10, align 8, !dbg !525
  %180 = load double, double* %10, align 8, !dbg !526
  %181 = call i32 @gsl_sf_airy_Ai_e(double %180, i32 0, %struct.gsl_sf_result_struct* %15), !dbg !527
  store i32 %181, i32* %21, align 4, !dbg !528
  %182 = load double, double* %10, align 8, !dbg !529
  %183 = call i32 @gsl_sf_airy_Ai_deriv_e(double %182, i32 0, %struct.gsl_sf_result_struct* %16), !dbg !530
  store i32 %183, i32* %22, align 4, !dbg !531
  %184 = load double, double* %11, align 8, !dbg !532
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !533
  %186 = load double, double* %185, align 8, !dbg !533
  %187 = load double, double* %12, align 8, !dbg !534
  %188 = fmul double %186, %187, !dbg !535
  call void @fMulHandler(double %186, double %187, double %188, i64 94127123449080, i64 94127123450728, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123451136, i32 898, i32 33), !dbg !536
  %189 = load double, double* %18, align 8, !dbg !536
  %190 = fdiv double %188, %189, !dbg !537
  call void @fDivHandler(double %188, double %189, double %190, i64 94127123451136, i64 94127123451528, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123451936, i32 898, i32 38), !dbg !538
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !538
  %192 = load double, double* %191, align 8, !dbg !538
  %193 = load double, double* %13, align 8, !dbg !539
  %194 = fmul double %192, %193, !dbg !540
  call void @fMulHandler(double %192, double %193, double %194, i64 94127123452776, i64 94127123454424, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123454832, i32 898, i32 53), !dbg !541
  %195 = load double, double* %5, align 8, !dbg !541
  %196 = load double, double* %18, align 8, !dbg !542
  %197 = fmul double %195, %196, !dbg !543
  call void @fMulHandler(double %195, double %196, double %197, i64 94127123455224, i64 94127123455608, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123456016, i32 898, i32 62), !dbg !544
  %198 = load double, double* %18, align 8, !dbg !544
  %199 = fmul double %197, %198, !dbg !545
  call void @fMulHandler(double %197, double %198, double %199, i64 94127123456016, i64 94127123456408, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123456816, i32 898, i32 67), !dbg !546
  %200 = fdiv double %194, %199, !dbg !546
  call void @fDivHandler(double %194, double %199, double %200, i64 94127123454832, i64 94127123456816, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123457232, i32 898, i32 58), !dbg !547
  %201 = fadd double %190, %200, !dbg !547
  call void @fAddHandler(double %190, double %200, double %201, i64 94127123451936, i64 94127123457232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123457648, i32 898, i32 44), !dbg !548
  %202 = fmul double %184, %201, !dbg !548
  call void @fMulHandler(double %184, double %201, double %202, i64 94127123448248, i64 94127123457648, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123458064, i32 898, i32 24), !dbg !549
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !549
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 0, !dbg !550
  store double %202, double* %204, align 8, !dbg !551
  %205 = load double, double* %11, align 8, !dbg !552
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !553
  %207 = load double, double* %206, align 8, !dbg !553
  %208 = load double, double* %12, align 8, !dbg !554
  %209 = load double, double* %18, align 8, !dbg !555
  %210 = fdiv double %208, %209, !dbg !556
  call void @fDivHandler(double %208, double %209, double %210, i64 94127123462184, i64 94127123462568, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123462976, i32 899, i32 45), !dbg !557
  %211 = call double @fabs(double %210) #1, !dbg !557
  %212 = fmul double %207, %211, !dbg !558
  call void @fMulHandler(double %207, double %211, double %212, i64 94127123460536, i64 94127123463456, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123463936, i32 899, i32 34), !dbg !559
  %213 = fmul double %205, %212, !dbg !559
  call void @fMulHandler(double %205, double %212, double %213, i64 94127123459704, i64 94127123463936, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123464352, i32 899, i32 24), !dbg !560
  %214 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !560
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %214, i32 0, i32 1, !dbg !561
  store double %213, double* %215, align 8, !dbg !562
  %216 = load double, double* %11, align 8, !dbg !563
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !564
  %218 = load double, double* %217, align 8, !dbg !564
  %219 = call double @fabs(double %218) #1, !dbg !565
  %220 = fmul double %216, %219, !dbg !566
  call void @fMulHandler(double %216, double %219, double %220, i64 94127123465992, i64 94127123468560, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123469040, i32 900, i32 24), !dbg !567
  %221 = load double, double* %14, align 8, !dbg !567
  %222 = fmul double %220, %221, !dbg !568
  call void @fMulHandler(double %220, double %221, double %222, i64 94127123469040, i64 94127123469432, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123469840, i32 900, i32 39), !dbg !569
  %223 = load double, double* %18, align 8, !dbg !569
  %224 = fdiv double %222, %223, !dbg !570
  call void @fDivHandler(double %222, double %223, double %224, i64 94127123469840, i64 94127123470232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123470640, i32 900, i32 50), !dbg !571
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !571
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 1, !dbg !572
  %227 = load double, double* %226, align 8, !dbg !573
  %228 = fadd double %227, %224, !dbg !573
  call void @fAddHandler(double %227, double %224, double %228, i64 94127123471864, i64 94127123470640, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123472272, i32 900, i32 17), !dbg !573
  store double %228, double* %226, align 8, !dbg !573
  %229 = load double, double* %11, align 8, !dbg !574
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !575
  %231 = load double, double* %230, align 8, !dbg !575
  %232 = load double, double* %12, align 8, !dbg !576
  %233 = fmul double %231, %232, !dbg !577
  call void @fMulHandler(double %231, double %232, double %233, i64 94127123474888, i64 94127123476536, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123476944, i32 901, i32 38), !dbg !578
  %234 = call double @fabs(double %233) #1, !dbg !578
  %235 = fmul double %229, %234, !dbg !579
  call void @fMulHandler(double %229, double %234, double %235, i64 94127123474056, i64 94127123477424, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123477904, i32 901, i32 24), !dbg !580
  %236 = load double, double* %18, align 8, !dbg !580
  %237 = load double, double* %20, align 8, !dbg !581
  %238 = fmul double %236, %237, !dbg !582
  call void @fMulHandler(double %236, double %237, double %238, i64 94127123478296, i64 94127123478680, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123479088, i32 901, i32 53), !dbg !583
  %239 = fdiv double %235, %238, !dbg !583
  call void @fDivHandler(double %235, double %238, double %239, i64 94127123477904, i64 94127123479088, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123479504, i32 901, i32 46), !dbg !584
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !584
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 1, !dbg !585
  %242 = load double, double* %241, align 8, !dbg !586
  %243 = fadd double %242, %239, !dbg !586
  call void @fAddHandler(double %242, double %239, double %243, i64 94127123480728, i64 94127123479504, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123481136, i32 901, i32 17), !dbg !586
  store double %243, double* %241, align 8, !dbg !586
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !587
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 0, !dbg !588
  %246 = load double, double* %245, align 8, !dbg !588
  %247 = call double @fabs(double %246) #1, !dbg !589
  %248 = fmul double 0x3CE0000000000000, %247, !dbg !590
  call void @fMulHandler(double 0x3CE0000000000000, double %247, double %248, i64 0, i64 94127123485488, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123486032, i32 902, i32 42), !dbg !591
  %249 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !591
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %249, i32 0, i32 1, !dbg !592
  %251 = load double, double* %250, align 8, !dbg !593
  %252 = fadd double %251, %248, !dbg !593
  call void @fAddHandler(double %251, double %248, double %252, i64 94127123487256, i64 94127123486032, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123487664, i32 902, i32 17), !dbg !593
  store double %252, double* %250, align 8, !dbg !593
  %253 = load i32, i32* %21, align 4, !dbg !594
  %254 = icmp ne i32 %253, 0, !dbg !594
  %255 = sext i32 %253 to i64, !dbg !594
  %256 = call i1 @iCmpInstHandler(i64 %255, i64 0, i1 %254, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123489856, i32 904, i32 12), !dbg !594
  br i1 %256, label %257, label %259, !dbg !594

; <label>:257:                                    ; preds = %166
  %258 = load i32, i32* %21, align 4, !dbg !595
  br label %269, !dbg !595

; <label>:259:                                    ; preds = %166
  %260 = load i32, i32* %22, align 4, !dbg !597
  %261 = icmp ne i32 %260, 0, !dbg !597
  %262 = sext i32 %260 to i64, !dbg !597
  %263 = call i1 @iCmpInstHandler(i64 %262, i64 0, i1 %261, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94127123494400, i32 904, i32 12), !dbg !597
  br i1 %263, label %264, label %266, !dbg !597

; <label>:264:                                    ; preds = %259
  %265 = load i32, i32* %22, align 4, !dbg !599
  br label %267, !dbg !599

; <label>:266:                                    ; preds = %259
  br label %267, !dbg !601

; <label>:267:                                    ; preds = %266, %264
  %268 = phi i32 [ %265, %264 ], [ 0, %266 ], !dbg !603
  br label %269, !dbg !603

; <label>:269:                                    ; preds = %267, %257
  %270 = phi i32 [ %258, %257 ], [ %268, %267 ], !dbg !605
  store i32 %270, i32* %4, align 4, !dbg !607
  br label %271, !dbg !607

; <label>:271:                                    ; preds = %269, %49, %47
  %272 = load i32, i32* %4, align 4, !dbg !608
  ret i32 %272, !dbg !608
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
  call void @fMulHandler(double %15, double %16, double %17, i64 94127123438760, i64 94127123429656, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123513008, i32 811, i32 18), !dbg !621
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
  call void @fDivHandler(double %30, double %31, double %32, i64 94127123533336, i64 94127123533688, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123534096, i32 817, i32 16), !dbg !650
  %33 = fadd double %32, 0x3CB0000000000000, !dbg !650
  call void @fAddHandler(double %32, double 0x3CB0000000000000, double %33, i64 94127123534096, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123534512, i32 817, i32 21), !dbg !651
  %34 = load double*, double** %8, align 8, !dbg !651
  store double %33, double* %34, align 8, !dbg !652
  %35 = load double, double* %11, align 8, !dbg !653
  %36 = load double, double* %9, align 8, !dbg !654
  %37 = fdiv double %35, %36, !dbg !655
  call void @fDivHandler(double %35, double %36, double %37, i64 94127123535704, i64 94127123536088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123536496, i32 818, i32 18), !dbg !656
  %38 = fadd double 1.000000e+00, %37, !dbg !656
  call void @fAddHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94127123536496, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123536944, i32 818, i32 14), !dbg !657
  %39 = load double, double* %12, align 8, !dbg !657
  %40 = load double, double* %9, align 8, !dbg !658
  %41 = load double, double* %9, align 8, !dbg !659
  %42 = fmul double %40, %41, !dbg !660
  call void @fMulHandler(double %40, double %41, double %42, i64 94127123537688, i64 94127123538072, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123538480, i32 818, i32 32), !dbg !661
  %43 = fdiv double %39, %42, !dbg !661
  call void @fDivHandler(double %39, double %42, double %43, i64 94127123537304, i64 94127123538480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123538896, i32 818, i32 27), !dbg !662
  %44 = fadd double %38, %43, !dbg !662
  call void @fAddHandler(double %38, double %43, double %44, i64 94127123536944, i64 94127123538896, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123539312, i32 818, i32 23), !dbg !663
  %45 = load double, double* %13, align 8, !dbg !663
  %46 = load double, double* %9, align 8, !dbg !664
  %47 = load double, double* %9, align 8, !dbg !665
  %48 = fmul double %46, %47, !dbg !666
  call void @fMulHandler(double %46, double %47, double %48, i64 94127123540088, i64 94127123540472, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123540880, i32 818, i32 47), !dbg !667
  %49 = load double, double* %9, align 8, !dbg !667
  %50 = fmul double %48, %49, !dbg !668
  call void @fMulHandler(double %48, double %49, double %50, i64 94127123540880, i64 94127123541272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123541680, i32 818, i32 51), !dbg !669
  %51 = fdiv double %45, %50, !dbg !669
  call void @fDivHandler(double %45, double %50, double %51, i64 94127123539704, i64 94127123541680, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123542096, i32 818, i32 42), !dbg !670
  %52 = fadd double %44, %51, !dbg !670
  call void @fAddHandler(double %44, double %51, double %52, i64 94127123539312, i64 94127123542096, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123542512, i32 818, i32 38), !dbg !671
  %53 = load double, double* %14, align 8, !dbg !671
  %54 = load double, double* %9, align 8, !dbg !672
  %55 = load double, double* %9, align 8, !dbg !673
  %56 = fmul double %54, %55, !dbg !674
  call void @fMulHandler(double %54, double %55, double %56, i64 94127123543288, i64 94127123543672, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123544080, i32 818, i32 66), !dbg !675
  %57 = load double, double* %9, align 8, !dbg !675
  %58 = fmul double %56, %57, !dbg !676
  call void @fMulHandler(double %56, double %57, double %58, i64 94127123544080, i64 94127123544472, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123544880, i32 818, i32 70), !dbg !677
  %59 = load double, double* %9, align 8, !dbg !677
  %60 = fmul double %58, %59, !dbg !678
  call void @fMulHandler(double %58, double %59, double %60, i64 94127123544880, i64 94127123545272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123545680, i32 818, i32 74), !dbg !679
  %61 = fdiv double %53, %60, !dbg !679
  call void @fDivHandler(double %53, double %60, double %61, i64 94127123542904, i64 94127123545680, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123546096, i32 818, i32 61), !dbg !680
  %62 = fadd double %52, %61, !dbg !680
  call void @fAddHandler(double %52, double %61, double %62, i64 94127123542512, i64 94127123546096, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94127123546512, i32 818, i32 57), !dbg !681
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
  call void @fMulHandler(double %12, double %13, double %14, i64 94127123441272, i64 94127123554120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123554528, i32 824, i32 18), !dbg !692
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
  call void @fDivHandler(double %28, double %29, double %30, i64 94127123574472, i64 94127123574856, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123575264, i32 829, i32 17), !dbg !720
  %31 = fadd double %27, %30, !dbg !720
  call void @fAddHandler(double %27, double %30, double %31, i64 94127123574120, i64 94127123575264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123575680, i32 829, i32 13), !dbg !721
  %32 = load double, double* %10, align 8, !dbg !721
  %33 = load double, double* %7, align 8, !dbg !722
  %34 = load double, double* %7, align 8, !dbg !723
  %35 = fmul double %33, %34, !dbg !724
  call void @fMulHandler(double %33, double %34, double %35, i64 94127123576456, i64 94127123576840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123577248, i32 829, i32 31), !dbg !725
  %36 = fdiv double %32, %35, !dbg !725
  call void @fDivHandler(double %32, double %35, double %36, i64 94127123576072, i64 94127123577248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123577664, i32 829, i32 26), !dbg !726
  %37 = fadd double %31, %36, !dbg !726
  call void @fAddHandler(double %31, double %36, double %37, i64 94127123575680, i64 94127123577664, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123578080, i32 829, i32 22), !dbg !727
  %38 = load double, double* %11, align 8, !dbg !727
  %39 = load double, double* %7, align 8, !dbg !728
  %40 = load double, double* %7, align 8, !dbg !729
  %41 = fmul double %39, %40, !dbg !730
  call void @fMulHandler(double %39, double %40, double %41, i64 94127123578856, i64 94127123579240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123579648, i32 829, i32 46), !dbg !731
  %42 = load double, double* %7, align 8, !dbg !731
  %43 = fmul double %41, %42, !dbg !732
  call void @fMulHandler(double %41, double %42, double %43, i64 94127123579648, i64 94127123580040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123580448, i32 829, i32 50), !dbg !733
  %44 = load double, double* %7, align 8, !dbg !733
  %45 = fmul double %43, %44, !dbg !734
  call void @fMulHandler(double %43, double %44, double %45, i64 94127123580448, i64 94127123580840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123581248, i32 829, i32 54), !dbg !735
  %46 = fdiv double %38, %45, !dbg !735
  call void @fDivHandler(double %38, double %45, double %46, i64 94127123578472, i64 94127123581248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123581664, i32 829, i32 41), !dbg !736
  %47 = fadd double %37, %46, !dbg !736
  call void @fAddHandler(double %37, double %46, double %47, i64 94127123578080, i64 94127123581664, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94127123582080, i32 829, i32 37), !dbg !737
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
  %37 = call i1 @fCmpInstHandler(double %35, double 0.000000e+00, i1 %36, i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123591888, i32 921, i32 8), !dbg !748
  br i1 %37, label %42, label %38, !dbg !748

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %5, align 8, !dbg !749
  %40 = fcmp ole double %39, 0.000000e+00, !dbg !751
  %41 = call i1 @fCmpInstHandler(double %39, double 0.000000e+00, i1 %40, i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123593248, i32 921, i32 21), !dbg !752
  br i1 %41, label %42, label %51, !dbg !752

; <label>:42:                                     ; preds = %38, %3
  br label %43, !dbg !753, !llvm.loop !755

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !756
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !756
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !756
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !756
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !756
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !756
  br label %48, !dbg !756, !llvm.loop !759

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 922, i32 1), !dbg !761
  store i32 1, i32* %4, align 4, !dbg !761
  br label %272, !dbg !761
                                                  ; No predecessors!
  br label %50, !dbg !764

; <label>:50:                                     ; preds = %49
  br label %272, !dbg !766

; <label>:51:                                     ; preds = %38
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
  %52 = load double, double* %6, align 8, !dbg !788
  %53 = load double, double* %5, align 8, !dbg !789
  %54 = fdiv double %52, %53, !dbg !790
  call void @fDivHandler(double %52, double %53, double %54, i64 94127123612312, i64 94127123612664, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123613072, i32 931, i32 17), !dbg !787
  store double %54, double* %17, align 8, !dbg !787
  call void @llvm.dbg.declare(metadata double* %18, metadata !791, metadata !100), !dbg !792
  %55 = load double, double* %5, align 8, !dbg !793
  %56 = call double @pow(double %55, double 0x3FD5555555555555) #6, !dbg !794
  call void @callTwoArgsHandler(i32 15, double %55, double 0x3FD5555555555555, double %56, i64 94127123616264, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123616760, i32 932, i32 19), !dbg !792
  store double %56, double* %18, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata double* %19, metadata !795, metadata !100), !dbg !796
  %57 = load double, double* %5, align 8, !dbg !797
  %58 = load double, double* %5, align 8, !dbg !798
  %59 = fmul double %57, %58, !dbg !799
  call void @fMulHandler(double %57, double %58, double %59, i64 94127123619976, i64 94127123620328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123620736, i32 933, i32 21), !dbg !800
  %60 = load double, double* %5, align 8, !dbg !800
  %61 = fmul double %59, %60, !dbg !801
  call void @fMulHandler(double %59, double %60, double %61, i64 94127123620736, i64 94127123621128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123621536, i32 933, i32 24), !dbg !796
  store double %61, double* %19, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata double* %20, metadata !802, metadata !100), !dbg !803
  %62 = load double, double* %19, align 8, !dbg !804
  %63 = load double, double* %19, align 8, !dbg !805
  %64 = fmul double %62, %63, !dbg !806
  call void @fMulHandler(double %62, double %63, double %64, i64 94127123624728, i64 94127123625080, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123625488, i32 934, i32 22), !dbg !807
  %65 = load double, double* %19, align 8, !dbg !807
  %66 = fmul double %64, %65, !dbg !808
  call void @fMulHandler(double %64, double %65, double %66, i64 94127123625488, i64 94127123625880, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123626288, i32 934, i32 26), !dbg !809
  %67 = load double, double* %5, align 8, !dbg !809
  %68 = fmul double %66, %67, !dbg !810
  call void @fMulHandler(double %66, double %67, double %68, i64 94127123626288, i64 94127123626680, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123627088, i32 934, i32 30), !dbg !811
  %69 = load double, double* %5, align 8, !dbg !811
  %70 = fmul double %68, %69, !dbg !812
  call void @fMulHandler(double %68, double %69, double %70, i64 94127123627088, i64 94127123627480, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123627888, i32 934, i32 33), !dbg !803
  store double %70, double* %20, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i32* %21, metadata !813, metadata !100), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %22, metadata !815, metadata !100), !dbg !816
  %71 = load double, double* %17, align 8, !dbg !817
  %72 = fsub double 1.000000e+00, %71, !dbg !819
  call void @fSubHandler(double 1.000000e+00, double %71, double %72, i64 0, i64 94127123632168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123632576, i32 937, i32 16), !dbg !820
  %73 = call double @fabs(double %72) #1, !dbg !820
  %74 = fcmp olt double %73, 2.000000e-02, !dbg !821
  %75 = call i1 @fCmpInstHandler(double %73, double 2.000000e-02, i1 %74, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123633536, i32 937, i32 20), !dbg !822
  br i1 %75, label %76, label %112, !dbg !822

; <label>:76:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %23, metadata !823, metadata !100), !dbg !825
  %77 = load double, double* %17, align 8, !dbg !826
  %78 = fsub double 1.000000e+00, %77, !dbg !827
  call void @fSubHandler(double 1.000000e+00, double %77, double %78, i64 0, i64 94127123635672, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123636080, i32 938, i32 27), !dbg !825
  store double %78, double* %23, align 8, !dbg !825
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
  %79 = load double, double* %23, align 8, !dbg !844
  %80 = load double, double* %23, align 8, !dbg !845
  %81 = load double, double* %23, align 8, !dbg !846
  %82 = load double, double* %23, align 8, !dbg !847
  %83 = load double, double* %23, align 8, !dbg !848
  %84 = load double, double* %23, align 8, !dbg !849
  %85 = load double, double* %23, align 8, !dbg !850
  %86 = fmul double %85, 0x3FB3B64821C4C9D1, !dbg !851
  call void @fMulHandler(double %85, double 0x3FB3B64821C4C9D1, double %86, i64 94127123662568, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123662976, i32 947, i32 67), !dbg !852
  %87 = fadd double 0x3FB6D3D801D5BC8D, %86, !dbg !852
  call void @fAddHandler(double 0x3FB6D3D801D5BC8D, double %86, double %87, i64 0, i64 94127123662976, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123663392, i32 947, i32 64), !dbg !853
  %88 = fmul double %84, %87, !dbg !853
  call void @fMulHandler(double %84, double %87, double %88, i64 94127123662184, i64 94127123663392, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123663808, i32 947, i32 59), !dbg !854
  %89 = fadd double 0x3FBB0DDFEFA33BCD, %88, !dbg !854
  call void @fAddHandler(double 0x3FBB0DDFEFA33BCD, double %88, double %89, i64 0, i64 94127123663808, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123664224, i32 947, i32 56), !dbg !855
  %90 = fmul double %83, %89, !dbg !855
  call void @fMulHandler(double %83, double %89, double %90, i64 94127123661800, i64 94127123664224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123664640, i32 947, i32 51), !dbg !856
  %91 = fadd double 0x3FC08D5B5F242061, %90, !dbg !856
  call void @fAddHandler(double 0x3FC08D5B5F242061, double %90, double %91, i64 0, i64 94127123664640, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123665056, i32 947, i32 48), !dbg !857
  %92 = fmul double %82, %91, !dbg !857
  call void @fMulHandler(double %82, double %91, double %92, i64 94127123661416, i64 94127123665056, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123665472, i32 947, i32 43), !dbg !858
  %93 = fadd double 0x3FC53C86A0E23F84, %92, !dbg !858
  call void @fAddHandler(double 0x3FC53C86A0E23F84, double %92, double %93, i64 0, i64 94127123665472, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123665888, i32 947, i32 40), !dbg !859
  %94 = fmul double %81, %93, !dbg !859
  call void @fMulHandler(double %81, double %93, double %94, i64 94127123661032, i64 94127123665888, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123666304, i32 947, i32 35), !dbg !860
  %95 = fadd double 0x3FCD7D462E2826D4, %94, !dbg !860
  call void @fAddHandler(double 0x3FCD7D462E2826D4, double %94, double %95, i64 0, i64 94127123666304, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123666720, i32 947, i32 32), !dbg !861
  %96 = fmul double %80, %95, !dbg !861
  call void @fMulHandler(double %80, double %95, double %96, i64 94127123660648, i64 94127123666720, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123667136, i32 947, i32 27), !dbg !862
  %97 = fadd double 0x3FD830C391DCEFDA, %96, !dbg !862
  call void @fAddHandler(double 0x3FD830C391DCEFDA, double %96, double %97, i64 0, i64 94127123667136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123667552, i32 947, i32 24), !dbg !863
  %98 = fmul double %79, %97, !dbg !863
  call void @fMulHandler(double %79, double %97, double %98, i64 94127123660296, i64 94127123667552, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123667968, i32 947, i32 19), !dbg !864
  %99 = fadd double 0x3FF428A2F98D728B, %98, !dbg !864
  call void @fAddHandler(double 0x3FF428A2F98D728B, double %98, double %99, i64 0, i64 94127123667968, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123668384, i32 947, i32 16), !dbg !865
  store double %99, double* %11, align 8, !dbg !865
  %100 = load double, double* %23, align 8, !dbg !866
  %101 = load double, double* %11, align 8, !dbg !867
  %102 = fmul double %100, %101, !dbg !868
  call void @fMulHandler(double %100, double %101, double %102, i64 94127123669192, i64 94127123669576, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123669984, i32 948, i32 16), !dbg !869
  store double %102, double* %8, align 8, !dbg !869
  %103 = load double, double* %11, align 8, !dbg !870
  %104 = load double, double* %17, align 8, !dbg !871
  %105 = fadd double 1.000000e+00, %104, !dbg !872
  call void @fAddHandler(double 1.000000e+00, double %104, double %105, i64 0, i64 94127123671176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123671616, i32 949, i32 36), !dbg !873
  %106 = fdiv double %103, %105, !dbg !873
  call void @fDivHandler(double %103, double %105, double %106, i64 94127123670792, i64 94127123671616, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123672000, i32 949, i32 31), !dbg !874
  %107 = call double @sqrt(double %106) #6, !dbg !874
  call void @callOneArgHandler(i32 14, double %106, double %107, i64 94127123672000, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123672480, i32 949, i32 23), !dbg !875
  %108 = fmul double 2.000000e+00, %107, !dbg !875
  call void @fMulHandler(double 2.000000e+00, double %107, double %108, i64 0, i64 94127123672480, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123672992, i32 949, i32 22), !dbg !876
  %109 = call double @sqrt(double %108) #6, !dbg !876
  call void @callOneArgHandler(i32 14, double %108, double %109, i64 94127123672992, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123673440, i32 949, i32 14), !dbg !878
  store double %109, double* %11, align 8, !dbg !878
  %110 = load double, double* %8, align 8, !dbg !879
  %111 = call double @fabs(double %110) #1, !dbg !880
  store double %111, double* %9, align 8, !dbg !881
  br label %166, !dbg !882

; <label>:112:                                    ; preds = %51
  %113 = load double, double* %17, align 8, !dbg !883
  %114 = fcmp olt double %113, 1.000000e+00, !dbg !885
  %115 = call i1 @fCmpInstHandler(double %113, double 1.000000e+00, i1 %114, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123676560, i32 952, i32 15), !dbg !886
  br i1 %115, label %116, label %140, !dbg !886

; <label>:116:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata double* %32, metadata !887, metadata !100), !dbg !889
  %117 = load double, double* %17, align 8, !dbg !890
  %118 = load double, double* %17, align 8, !dbg !891
  %119 = fmul double %117, %118, !dbg !892
  call void @fMulHandler(double %117, double %118, double %119, i64 94127123678696, i64 94127123679048, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123679456, i32 953, i32 33), !dbg !893
  %120 = fsub double 1.000000e+00, %119, !dbg !893
  call void @fSubHandler(double 1.000000e+00, double %119, double %120, i64 0, i64 94127123679456, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123679904, i32 953, i32 30), !dbg !894
  %121 = call double @sqrt(double %120) #6, !dbg !894
  call void @callOneArgHandler(i32 14, double %120, double %121, i64 94127123679904, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123680352, i32 953, i32 21), !dbg !889
  store double %121, double* %32, align 8, !dbg !889
  %122 = load double, double* %32, align 8, !dbg !895
  %123 = fadd double 1.000000e+00, %122, !dbg !896
  call void @fAddHandler(double 1.000000e+00, double %122, double %123, i64 0, i64 94127123682488, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123682928, i32 954, i32 35), !dbg !897
  %124 = load double, double* %17, align 8, !dbg !897
  %125 = fdiv double %123, %124, !dbg !898
  call void @fDivHandler(double %123, double %124, double %125, i64 94127123682928, i64 94127123683288, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123683696, i32 954, i32 39), !dbg !899
  %126 = call double @log(double %125) #6, !dbg !899
  call void @callOneArgHandler(i32 12, double %125, double %126, i64 94127123683696, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123684176, i32 954, i32 27), !dbg !900
  %127 = load double, double* %32, align 8, !dbg !900
  %128 = fsub double %126, %127, !dbg !901
  call void @fSubHandler(double %126, double %127, double %128, i64 94127123684176, i64 94127123684632, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123685040, i32 954, i32 43), !dbg !902
  %129 = fmul double 1.500000e+00, %128, !dbg !902
  call void @fMulHandler(double 1.500000e+00, double %128, double %129, i64 0, i64 94127123685040, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123685488, i32 954, i32 25), !dbg !903
  %130 = call double @pow(double %129, double 0x3FE5555555555555) #6, !dbg !903
  call void @callTwoArgsHandler(i32 15, double %129, double 0x3FE5555555555555, double %130, i64 94127123685488, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123685992, i32 954, i32 18), !dbg !905
  store double %130, double* %9, align 8, !dbg !905
  %131 = load double, double* %9, align 8, !dbg !906
  store double %131, double* %8, align 8, !dbg !907
  %132 = load double, double* %9, align 8, !dbg !908
  %133 = load double, double* %32, align 8, !dbg !909
  %134 = load double, double* %32, align 8, !dbg !910
  %135 = fmul double %133, %134, !dbg !911
  call void @fMulHandler(double %133, double %134, double %135, i64 94127123690072, i64 94127123690456, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123690864, i32 956, i32 40), !dbg !912
  %136 = fdiv double %132, %135, !dbg !912
  call void @fDivHandler(double %132, double %135, double %136, i64 94127123687624, i64 94127123690864, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123691280, i32 956, i32 36), !dbg !913
  %137 = call double @sqrt(double %136) #6, !dbg !913
  call void @callOneArgHandler(i32 14, double %136, double %137, i64 94127123691280, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123691760, i32 956, i32 23), !dbg !914
  %138 = fmul double 2.000000e+00, %137, !dbg !914
  call void @fMulHandler(double 2.000000e+00, double %137, double %138, i64 0, i64 94127123691760, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123692272, i32 956, i32 22), !dbg !915
  %139 = call double @sqrt(double %138) #6, !dbg !915
  call void @callOneArgHandler(i32 14, double %138, double %139, i64 94127123692272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123692720, i32 956, i32 14), !dbg !916
  store double %139, double* %11, align 8, !dbg !916
  br label %165, !dbg !917

; <label>:140:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata double* %33, metadata !918, metadata !100), !dbg !920
  %141 = load double, double* %17, align 8, !dbg !921
  %142 = load double, double* %17, align 8, !dbg !922
  %143 = load double, double* %17, align 8, !dbg !923
  %144 = fmul double %142, %143, !dbg !924
  call void @fMulHandler(double %142, double %143, double %144, i64 94127123402520, i64 94127123402904, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123403472, i32 960, i32 40), !dbg !925
  %145 = fdiv double 1.000000e+00, %144, !dbg !925
  call void @fDivHandler(double 1.000000e+00, double %144, double %145, i64 0, i64 94127123403472, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123403920, i32 960, i32 37), !dbg !926
  %146 = fsub double 1.000000e+00, %145, !dbg !926
  call void @fSubHandler(double 1.000000e+00, double %145, double %146, i64 0, i64 94127123403920, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123404336, i32 960, i32 32), !dbg !927
  %147 = call double @sqrt(double %146) #6, !dbg !927
  call void @callOneArgHandler(i32 14, double %146, double %147, i64 94127123404336, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123404784, i32 960, i32 23), !dbg !928
  %148 = fmul double %141, %147, !dbg !928
  call void @fMulHandler(double %141, double %147, double %148, i64 94127123402168, i64 94127123404784, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123405264, i32 960, i32 21), !dbg !920
  store double %148, double* %33, align 8, !dbg !920
  call void @llvm.dbg.declare(metadata double* %34, metadata !929, metadata !100), !dbg !930
  %149 = load double, double* %17, align 8, !dbg !931
  %150 = fdiv double 1.000000e+00, %149, !dbg !932
  call void @fDivHandler(double 1.000000e+00, double %149, double %150, i64 0, i64 94127123707464, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123707872, i32 961, i32 27), !dbg !933
  %151 = call double @acos(double %150) #6, !dbg !933
  call void @callOneArgHandler(i32 5, double %150, double %151, i64 94127123707872, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123708320, i32 961, i32 19), !dbg !930
  store double %151, double* %34, align 8, !dbg !930
  %152 = load double, double* %33, align 8, !dbg !934
  %153 = load double, double* %34, align 8, !dbg !935
  %154 = fsub double %152, %153, !dbg !936
  call void @fSubHandler(double %152, double %153, double %154, i64 94127123710456, i64 94127123710840, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123711248, i32 962, i32 30), !dbg !937
  %155 = fmul double 1.500000e+00, %154, !dbg !937
  call void @fMulHandler(double 1.500000e+00, double %154, double %155, i64 0, i64 94127123711248, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123711696, i32 962, i32 25), !dbg !938
  %156 = call double @pow(double %155, double 0x3FE5555555555555) #6, !dbg !938
  call void @callTwoArgsHandler(i32 15, double %155, double 0x3FE5555555555555, double %156, i64 94127123711696, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123712200, i32 962, i32 18), !dbg !939
  store double %156, double* %9, align 8, !dbg !939
  %157 = load double, double* %9, align 8, !dbg !940
  %158 = fsub double -0.000000e+00, %157, !dbg !941
  call void @fSubHandler(double -0.000000e+00, double %157, double %158, i64 0, i64 94127123713032, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123713440, i32 963, i32 14), !dbg !942
  store double %158, double* %8, align 8, !dbg !942
  %159 = load double, double* %9, align 8, !dbg !943
  %160 = call double @sqrt(double %159) #6, !dbg !944
  call void @callOneArgHandler(i32 14, double %159, double %160, i64 94127123714248, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123714720, i32 964, i32 23), !dbg !945
  %161 = fmul double 2.000000e+00, %160, !dbg !945
  call void @fMulHandler(double 2.000000e+00, double %160, double %161, i64 0, i64 94127123714720, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123715232, i32 964, i32 22), !dbg !946
  %162 = load double, double* %33, align 8, !dbg !946
  %163 = fdiv double %161, %162, !dbg !947
  call void @fDivHandler(double %161, double %162, double %163, i64 94127123715232, i64 94127123715592, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123716000, i32 964, i32 37), !dbg !948
  %164 = call double @sqrt(double %163) #6, !dbg !948
  call void @callOneArgHandler(i32 14, double %163, double %164, i64 94127123716000, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123716480, i32 964, i32 14), !dbg !950
  store double %164, double* %11, align 8, !dbg !950
  br label %165

; <label>:165:                                    ; preds = %140, %116
  br label %166

; <label>:166:                                    ; preds = %165, %76
  %167 = load double, double* %5, align 8, !dbg !951
  %168 = load double, double* %17, align 8, !dbg !952
  %169 = load double, double* %9, align 8, !dbg !953
  %170 = call double @olver_Asum(double %167, double %168, double %169, double* %14), !dbg !954
  store double %170, double* %12, align 8, !dbg !955
  %171 = load double, double* %5, align 8, !dbg !956
  %172 = load double, double* %17, align 8, !dbg !957
  %173 = load double, double* %9, align 8, !dbg !958
  %174 = call double @olver_Bsum(double %171, double %172, double %173), !dbg !959
  store double %174, double* %13, align 8, !dbg !960
  %175 = load double, double* %18, align 8, !dbg !961
  %176 = load double, double* %18, align 8, !dbg !962
  %177 = fmul double %175, %176, !dbg !963
  call void @fMulHandler(double %175, double %176, double %177, i64 94127123721688, i64 94127123722072, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123722480, i32 970, i32 16), !dbg !964
  %178 = load double, double* %8, align 8, !dbg !964
  %179 = fmul double %177, %178, !dbg !965
  call void @fMulHandler(double %177, double %178, double %179, i64 94127123722480, i64 94127123722872, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123723280, i32 970, i32 22), !dbg !966
  store double %179, double* %10, align 8, !dbg !966
  %180 = load double, double* %10, align 8, !dbg !967
  %181 = call i32 @gsl_sf_airy_Bi_e(double %180, i32 0, %struct.gsl_sf_result_struct* %15), !dbg !968
  store i32 %181, i32* %21, align 4, !dbg !969
  %182 = load double, double* %10, align 8, !dbg !970
  %183 = call i32 @gsl_sf_airy_Bi_deriv_e(double %182, i32 0, %struct.gsl_sf_result_struct* %16), !dbg !971
  store i32 %183, i32* %22, align 4, !dbg !972
  %184 = load double, double* %11, align 8, !dbg !973
  %185 = fsub double -0.000000e+00, %184, !dbg !974
  call void @fSubHandler(double -0.000000e+00, double %184, double %185, i64 0, i64 94127123731192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123731600, i32 974, i32 20), !dbg !975
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !975
  %187 = load double, double* %186, align 8, !dbg !975
  %188 = load double, double* %12, align 8, !dbg !976
  %189 = fmul double %187, %188, !dbg !977
  call void @fMulHandler(double %187, double %188, double %189, i64 94127123732440, i64 94127123734088, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123734496, i32 974, i32 34), !dbg !978
  %190 = load double, double* %18, align 8, !dbg !978
  %191 = fdiv double %189, %190, !dbg !979
  call void @fDivHandler(double %189, double %190, double %191, i64 94127123734496, i64 94127123734888, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123735296, i32 974, i32 39), !dbg !980
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !980
  %193 = load double, double* %192, align 8, !dbg !980
  %194 = load double, double* %13, align 8, !dbg !981
  %195 = fmul double %193, %194, !dbg !982
  call void @fMulHandler(double %193, double %194, double %195, i64 94127123736136, i64 94127123737784, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123738192, i32 974, i32 54), !dbg !983
  %196 = load double, double* %5, align 8, !dbg !983
  %197 = load double, double* %18, align 8, !dbg !984
  %198 = fmul double %196, %197, !dbg !985
  call void @fMulHandler(double %196, double %197, double %198, i64 94127123738584, i64 94127123738968, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123739376, i32 974, i32 63), !dbg !986
  %199 = load double, double* %18, align 8, !dbg !986
  %200 = fmul double %198, %199, !dbg !987
  call void @fMulHandler(double %198, double %199, double %200, i64 94127123739376, i64 94127123739768, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123740176, i32 974, i32 68), !dbg !988
  %201 = fdiv double %195, %200, !dbg !988
  call void @fDivHandler(double %195, double %200, double %201, i64 94127123738192, i64 94127123740176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123740592, i32 974, i32 59), !dbg !989
  %202 = fadd double %191, %201, !dbg !989
  call void @fAddHandler(double %191, double %201, double %202, i64 94127123735296, i64 94127123740592, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123741008, i32 974, i32 45), !dbg !990
  %203 = fmul double %185, %202, !dbg !990
  call void @fMulHandler(double %185, double %202, double %203, i64 94127123731600, i64 94127123741008, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123741424, i32 974, i32 25), !dbg !991
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !991
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !992
  store double %203, double* %205, align 8, !dbg !993
  %206 = load double, double* %11, align 8, !dbg !994
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !995
  %208 = load double, double* %207, align 8, !dbg !995
  %209 = load double, double* %12, align 8, !dbg !996
  %210 = load double, double* %18, align 8, !dbg !997
  %211 = fdiv double %209, %210, !dbg !998
  call void @fDivHandler(double %209, double %210, double %211, i64 94127123745544, i64 94127123745928, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123746336, i32 975, i32 46), !dbg !999
  %212 = call double @fabs(double %211) #1, !dbg !999
  %213 = fmul double %208, %212, !dbg !1000
  call void @fMulHandler(double %208, double %212, double %213, i64 94127123743896, i64 94127123746816, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123747296, i32 975, i32 35), !dbg !1001
  %214 = fmul double %206, %213, !dbg !1001
  call void @fMulHandler(double %206, double %213, double %214, i64 94127123743064, i64 94127123747296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123747712, i32 975, i32 25), !dbg !1002
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1002
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !1003
  store double %214, double* %216, align 8, !dbg !1004
  %217 = load double, double* %11, align 8, !dbg !1005
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1006
  %219 = load double, double* %218, align 8, !dbg !1006
  %220 = call double @fabs(double %219) #1, !dbg !1007
  %221 = fmul double %217, %220, !dbg !1008
  call void @fMulHandler(double %217, double %220, double %221, i64 94127123749352, i64 94127123751920, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123752400, i32 976, i32 25), !dbg !1009
  %222 = load double, double* %14, align 8, !dbg !1009
  %223 = fmul double %221, %222, !dbg !1010
  call void @fMulHandler(double %221, double %222, double %223, i64 94127123752400, i64 94127123752792, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123753200, i32 976, i32 40), !dbg !1011
  %224 = load double, double* %18, align 8, !dbg !1011
  %225 = fdiv double %223, %224, !dbg !1012
  call void @fDivHandler(double %223, double %224, double %225, i64 94127123753200, i64 94127123753592, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123754000, i32 976, i32 51), !dbg !1013
  %226 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1013
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %226, i32 0, i32 1, !dbg !1014
  %228 = load double, double* %227, align 8, !dbg !1015
  %229 = fadd double %228, %225, !dbg !1015
  call void @fAddHandler(double %228, double %225, double %229, i64 94127123755224, i64 94127123754000, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123755632, i32 976, i32 17), !dbg !1015
  store double %229, double* %227, align 8, !dbg !1015
  %230 = load double, double* %11, align 8, !dbg !1016
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1017
  %232 = load double, double* %231, align 8, !dbg !1017
  %233 = load double, double* %12, align 8, !dbg !1018
  %234 = fmul double %232, %233, !dbg !1019
  call void @fMulHandler(double %232, double %233, double %234, i64 94127123758248, i64 94127123759896, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123760304, i32 977, i32 38), !dbg !1020
  %235 = call double @fabs(double %234) #1, !dbg !1020
  %236 = fmul double %230, %235, !dbg !1021
  call void @fMulHandler(double %230, double %235, double %236, i64 94127123757416, i64 94127123760784, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123761264, i32 977, i32 25), !dbg !1022
  %237 = load double, double* %18, align 8, !dbg !1022
  %238 = load double, double* %20, align 8, !dbg !1023
  %239 = fmul double %237, %238, !dbg !1024
  call void @fMulHandler(double %237, double %238, double %239, i64 94127123761656, i64 94127123762040, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123762448, i32 977, i32 52), !dbg !1025
  %240 = fdiv double %236, %239, !dbg !1025
  call void @fDivHandler(double %236, double %239, double %240, i64 94127123761264, i64 94127123762448, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123762864, i32 977, i32 45), !dbg !1026
  %241 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1026
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %241, i32 0, i32 1, !dbg !1027
  %243 = load double, double* %242, align 8, !dbg !1028
  %244 = fadd double %243, %240, !dbg !1028
  call void @fAddHandler(double %243, double %240, double %244, i64 94127123764088, i64 94127123762864, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123764496, i32 977, i32 17), !dbg !1028
  store double %244, double* %242, align 8, !dbg !1028
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1029
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 0, !dbg !1030
  %247 = load double, double* %246, align 8, !dbg !1030
  %248 = call double @fabs(double %247) #1, !dbg !1031
  %249 = fmul double 0x3CE0000000000000, %248, !dbg !1032
  call void @fMulHandler(double 0x3CE0000000000000, double %248, double %249, i64 0, i64 94127123768848, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123769328, i32 978, i32 43), !dbg !1033
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1033
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %250, i32 0, i32 1, !dbg !1034
  %252 = load double, double* %251, align 8, !dbg !1035
  %253 = fadd double %252, %249, !dbg !1035
  call void @fAddHandler(double %252, double %249, double %253, i64 94127123770552, i64 94127123769328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123770960, i32 978, i32 17), !dbg !1035
  store double %253, double* %251, align 8, !dbg !1035
  %254 = load i32, i32* %21, align 4, !dbg !1036
  %255 = icmp ne i32 %254, 0, !dbg !1036
  %256 = sext i32 %254 to i64, !dbg !1036
  %257 = call i1 @iCmpInstHandler(i64 %256, i64 0, i1 %255, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123773152, i32 980, i32 12), !dbg !1036
  br i1 %257, label %258, label %260, !dbg !1036

; <label>:258:                                    ; preds = %166
  %259 = load i32, i32* %21, align 4, !dbg !1037
  br label %270, !dbg !1037

; <label>:260:                                    ; preds = %166
  %261 = load i32, i32* %22, align 4, !dbg !1039
  %262 = icmp ne i32 %261, 0, !dbg !1039
  %263 = sext i32 %261 to i64, !dbg !1039
  %264 = call i1 @iCmpInstHandler(i64 %263, i64 0, i1 %262, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94127123777696, i32 980, i32 12), !dbg !1039
  br i1 %264, label %265, label %267, !dbg !1039

; <label>:265:                                    ; preds = %260
  %266 = load i32, i32* %22, align 4, !dbg !1041
  br label %268, !dbg !1041

; <label>:267:                                    ; preds = %260
  br label %268, !dbg !1043

; <label>:268:                                    ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ], !dbg !1045
  br label %270, !dbg !1045

; <label>:270:                                    ; preds = %268, %258
  %271 = phi i32 [ %259, %258 ], [ %269, %268 ], !dbg !1047
  store i32 %271, i32* %4, align 4, !dbg !1049
  br label %272, !dbg !1049

; <label>:272:                                    ; preds = %270, %50, %48
  %273 = load i32, i32* %4, align 4, !dbg !1050
  ret i32 %273, !dbg !1050
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
  %33 = call i1 @fCmpInstHandler(double %31, double 9.800000e-01, i1 %32, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123794992, i32 660, i32 8), !dbg !1063
  br i1 %33, label %34, label %92, !dbg !1063

; <label>:34:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !1064, metadata !100), !dbg !1066
  %35 = load double, double* %5, align 8, !dbg !1067
  %36 = load double, double* %5, align 8, !dbg !1068
  %37 = fmul double %35, %36, !dbg !1069
  call void @fMulHandler(double %35, double %36, double %37, i64 94127123730152, i64 94127123726824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123797696, i32 661, i32 30), !dbg !1070
  %38 = fsub double 1.000000e+00, %37, !dbg !1070
  call void @fSubHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94127123797696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123798144, i32 661, i32 28), !dbg !1071
  %39 = call double @sqrt(double %38) #6, !dbg !1071
  call void @callOneArgHandler(i32 14, double %38, double %39, i64 94127123798144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123798592, i32 661, i32 20), !dbg !1072
  %40 = fdiv double 1.000000e+00, %39, !dbg !1072
  call void @fDivHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94127123798592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123799104, i32 661, i32 19), !dbg !1066
  store double %40, double* %8, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata double* %9, metadata !1073, metadata !100), !dbg !1074
  %41 = load double, double* %6, align 8, !dbg !1075
  %42 = call double @sqrt(double %41) #6, !dbg !1076
  call void @callOneArgHandler(i32 14, double %41, double %42, i64 94127123802264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123802704, i32 662, i32 17), !dbg !1074
  store double %42, double* %9, align 8, !dbg !1074
  call void @llvm.dbg.declare(metadata double* %10, metadata !1077, metadata !100), !dbg !1078
  %43 = load double, double* %8, align 8, !dbg !1079
  %44 = load double, double* %8, align 8, !dbg !1080
  %45 = fmul double %43, %44, !dbg !1081
  call void @fMulHandler(double %43, double %44, double %45, i64 94127123805960, i64 94127123806312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123806720, i32 663, i32 18), !dbg !1078
  store double %45, double* %10, align 8, !dbg !1078
  call void @llvm.dbg.declare(metadata double* %11, metadata !1082, metadata !100), !dbg !1083
  %46 = load double, double* %10, align 8, !dbg !1084
  %47 = load double, double* %10, align 8, !dbg !1085
  %48 = fmul double 4.620000e+02, %47, !dbg !1086
  call void @fMulHandler(double 4.620000e+02, double %47, double %48, i64 0, i64 94127123810264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123810768, i32 664, i32 37), !dbg !1087
  %49 = fsub double 8.100000e+01, %48, !dbg !1087
  call void @fSubHandler(double 8.100000e+01, double %48, double %49, i64 0, i64 94127123810768, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123811248, i32 664, i32 30), !dbg !1088
  %50 = load double, double* %10, align 8, !dbg !1088
  %51 = fmul double 3.850000e+02, %50, !dbg !1089
  call void @fMulHandler(double 3.850000e+02, double %50, double %51, i64 0, i64 94127123811608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123812112, i32 664, i32 48), !dbg !1090
  %52 = load double, double* %10, align 8, !dbg !1090
  %53 = fmul double %51, %52, !dbg !1091
  call void @fMulHandler(double %51, double %52, double %53, i64 94127123812112, i64 94127123812472, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123812880, i32 664, i32 51), !dbg !1092
  %54 = fadd double %49, %53, !dbg !1092
  call void @fAddHandler(double %49, double %53, double %54, i64 94127123811248, i64 94127123812880, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123813296, i32 664, i32 41), !dbg !1093
  %55 = fmul double %46, %54, !dbg !1093
  call void @fMulHandler(double %46, double %54, double %55, i64 94127123809912, i64 94127123813296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123813712, i32 664, i32 23), !dbg !1094
  %56 = fdiv double %55, 1.152000e+03, !dbg !1094
  call void @fDivHandler(double %55, double 1.152000e+03, double %56, i64 94127123813712, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123814224, i32 664, i32 55), !dbg !1083
  store double %56, double* %11, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata double* %12, metadata !1095, metadata !100), !dbg !1096
  %57 = load double, double* %6, align 8, !dbg !1097
  %58 = fmul double 4.608000e+03, %57, !dbg !1098
  call void @fMulHandler(double 4.608000e+03, double %57, double %58, i64 0, i64 94127123817384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123817856, i32 665, i32 34), !dbg !1099
  %59 = load double, double* %6, align 8, !dbg !1099
  %60 = fmul double %58, %59, !dbg !1100
  call void @fMulHandler(double %58, double %59, double %60, i64 94127123817856, i64 94127123818216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123818624, i32 665, i32 43), !dbg !1101
  %61 = load double, double* %6, align 8, !dbg !1101
  %62 = fmul double %60, %61, !dbg !1102
  call void @fMulHandler(double %60, double %61, double %62, i64 94127123818624, i64 94127123819016, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123819424, i32 665, i32 52), !dbg !1103
  %63 = fdiv double -4.550000e+02, %62, !dbg !1103
  call void @fDivHandler(double -4.550000e+02, double %62, double %63, i64 0, i64 94127123819424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123819936, i32 665, i32 26), !dbg !1096
  store double %63, double* %12, align 8, !dbg !1096
  call void @llvm.dbg.declare(metadata double* %13, metadata !1104, metadata !100), !dbg !1105
  %64 = load double, double* %8, align 8, !dbg !1106
  %65 = fmul double 7.000000e+00, %64, !dbg !1107
  call void @fMulHandler(double 7.000000e+00, double %64, double %65, i64 0, i64 94127123823096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123823568, i32 666, i32 24), !dbg !1108
  %66 = load double, double* %10, align 8, !dbg !1108
  %67 = fmul double 5.000000e+00, %66, !dbg !1109
  call void @fMulHandler(double 5.000000e+00, double %66, double %67, i64 0, i64 94127123823928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123824432, i32 666, i32 38), !dbg !1110
  %68 = fadd double -3.000000e+00, %67, !dbg !1110
  call void @fAddHandler(double -3.000000e+00, double %67, double %68, i64 0, i64 94127123824432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123824912, i32 666, i32 33), !dbg !1111
  %69 = fmul double %65, %68, !dbg !1111
  call void @fMulHandler(double %65, double %68, double %69, i64 94127123823568, i64 94127123824912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123825296, i32 666, i32 26), !dbg !1112
  %70 = load double, double* %9, align 8, !dbg !1112
  %71 = fmul double 1.152000e+03, %70, !dbg !1113
  call void @fMulHandler(double 1.152000e+03, double %70, double %71, i64 0, i64 94127123825688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123826128, i32 666, i32 50), !dbg !1114
  %72 = load double, double* %9, align 8, !dbg !1114
  %73 = fmul double %71, %72, !dbg !1115
  call void @fMulHandler(double %71, double %72, double %73, i64 94127123826128, i64 94127123826488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123826896, i32 666, i32 53), !dbg !1116
  %74 = load double, double* %9, align 8, !dbg !1116
  %75 = fmul double %73, %74, !dbg !1117
  call void @fMulHandler(double %73, double %74, double %75, i64 94127123826896, i64 94127123827288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123827696, i32 666, i32 56), !dbg !1118
  %76 = fdiv double %69, %75, !dbg !1118
  call void @fDivHandler(double %69, double %75, double %76, i64 94127123825296, i64 94127123827696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123828112, i32 666, i32 42), !dbg !1105
  store double %76, double* %13, align 8, !dbg !1105
  %77 = load double, double* %11, align 8, !dbg !1119
  %78 = call double @fabs(double %77) #1, !dbg !1120
  %79 = load double, double* %12, align 8, !dbg !1121
  %80 = call double @fabs(double %79) #1, !dbg !1122
  %81 = fadd double %78, %80, !dbg !1124
  call void @fAddHandler(double %78, double %80, double %81, i64 94127123830656, i64 94127123831584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123832064, i32 667, i32 49), !dbg !1125
  %82 = load double, double* %13, align 8, !dbg !1125
  %83 = call double @fabs(double %82) #1, !dbg !1126
  %84 = fadd double %81, %83, !dbg !1128
  call void @fAddHandler(double %81, double %83, double %84, i64 94127123832064, i64 94127123832928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123833408, i32 667, i32 63), !dbg !1129
  %85 = fmul double 0x3CC0000000000000, %84, !dbg !1129
  call void @fMulHandler(double 0x3CC0000000000000, double %84, double %85, i64 0, i64 94127123833408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123833888, i32 667, i32 34), !dbg !1130
  %86 = load double*, double** %7, align 8, !dbg !1130
  store double %85, double* %86, align 8, !dbg !1131
  %87 = load double, double* %11, align 8, !dbg !1132
  %88 = load double, double* %12, align 8, !dbg !1133
  %89 = fadd double %87, %88, !dbg !1134
  call void @fAddHandler(double %87, double %88, double %89, i64 94127123835080, i64 94127123835464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123835872, i32 668, i32 18), !dbg !1135
  %90 = load double, double* %13, align 8, !dbg !1135
  %91 = fadd double %89, %90, !dbg !1136
  call void @fAddHandler(double %89, double %90, double %91, i64 94127123835872, i64 94127123836264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123836672, i32 668, i32 26), !dbg !1137
  store double %91, double* %4, align 8, !dbg !1137
  br label %190, !dbg !1137

; <label>:92:                                     ; preds = %3
  %93 = load double, double* %5, align 8, !dbg !1138
  %94 = fcmp olt double %93, 1.020000e+00, !dbg !1140
  %95 = call i1 @fCmpInstHandler(double %93, double 1.020000e+00, i1 %94, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123839712, i32 670, i32 13), !dbg !1141
  br i1 %95, label %96, label %128, !dbg !1141

; <label>:96:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata double* %14, metadata !1142, metadata !100), !dbg !1144
  %97 = load double, double* %5, align 8, !dbg !1145
  %98 = fsub double 1.000000e+00, %97, !dbg !1146
  call void @fSubHandler(double 1.000000e+00, double %97, double %98, i64 0, i64 94127123841848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123842256, i32 671, i32 25), !dbg !1144
  store double %98, double* %14, align 8, !dbg !1144
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
  %99 = load double, double* %14, align 8, !dbg !1167
  %100 = load double, double* %14, align 8, !dbg !1168
  %101 = load double, double* %14, align 8, !dbg !1169
  %102 = load double, double* %14, align 8, !dbg !1170
  %103 = load double, double* %14, align 8, !dbg !1171
  %104 = load double, double* %14, align 8, !dbg !1172
  %105 = load double, double* %14, align 8, !dbg !1173
  %106 = load double, double* %14, align 8, !dbg !1174
  %107 = fmul double %106, 0x3F4355B17DA12BB7, !dbg !1175
  call void @fMulHandler(double %106, double 0x3F4355B17DA12BB7, double %107, i64 94127123889944, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123890352, i32 681, i32 70), !dbg !1176
  %108 = fadd double 0x3F4C9E2AA34E2AD9, %107, !dbg !1176
  call void @fAddHandler(double 0x3F4C9E2AA34E2AD9, double %107, double %108, i64 0, i64 94127123890352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123890768, i32 681, i32 68), !dbg !1177
  %109 = fmul double %105, %108, !dbg !1177
  call void @fMulHandler(double %105, double %108, double %109, i64 94127123889560, i64 94127123890768, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123891184, i32 681, i32 64), !dbg !1178
  %110 = fadd double 0x3F542E6E51A97463, %109, !dbg !1178
  call void @fAddHandler(double 0x3F542E6E51A97463, double %109, double %110, i64 0, i64 94127123891184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123891600, i32 681, i32 62), !dbg !1179
  %111 = fmul double %104, %110, !dbg !1179
  call void @fMulHandler(double %104, double %110, double %111, i64 94127123889176, i64 94127123891600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123892016, i32 681, i32 58), !dbg !1180
  %112 = fadd double 0x3F5A6EACD22FB460, %111, !dbg !1180
  call void @fAddHandler(double 0x3F5A6EACD22FB460, double %111, double %112, i64 0, i64 94127123892016, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123892432, i32 681, i32 56), !dbg !1181
  %113 = fmul double %103, %112, !dbg !1181
  call void @fMulHandler(double %103, double %112, double %113, i64 94127123888792, i64 94127123892432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123892848, i32 681, i32 52), !dbg !1182
  %114 = fadd double 0x3F5E989CE25FD272, %113, !dbg !1182
  call void @fAddHandler(double 0x3F5E989CE25FD272, double %113, double %114, i64 0, i64 94127123892848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123893264, i32 681, i32 50), !dbg !1183
  %115 = fmul double %102, %114, !dbg !1183
  call void @fMulHandler(double %102, double %114, double %115, i64 94127123888408, i64 94127123893264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123893680, i32 681, i32 46), !dbg !1184
  %116 = fadd double 0x3F5B8C3695E93FA3, %115, !dbg !1184
  call void @fAddHandler(double 0x3F5B8C3695E93FA3, double %115, double %116, i64 0, i64 94127123893680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123894096, i32 681, i32 44), !dbg !1185
  %117 = fmul double %101, %116, !dbg !1185
  call void @fMulHandler(double %101, double %116, double %117, i64 94127123888024, i64 94127123894096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123894512, i32 681, i32 40), !dbg !1186
  %118 = fadd double 0x3F429DBE0F43D10D, %117, !dbg !1186
  call void @fAddHandler(double 0x3F429DBE0F43D10D, double %117, double %118, i64 0, i64 94127123894512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123894928, i32 681, i32 38), !dbg !1187
  %119 = fmul double %100, %118, !dbg !1187
  call void @fMulHandler(double %100, double %118, double %119, i64 94127123887640, i64 94127123894928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123895344, i32 681, i32 34), !dbg !1188
  %120 = fadd double 0xBF5E36F342852587, %119, !dbg !1188
  call void @fAddHandler(double 0xBF5E36F342852587, double %119, double %120, i64 0, i64 94127123895344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123895760, i32 681, i32 32), !dbg !1189
  %121 = fmul double %99, %120, !dbg !1189
  call void @fMulHandler(double %99, double %120, double %121, i64 94127123887256, i64 94127123895760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123896176, i32 681, i32 28), !dbg !1190
  %122 = fadd double 0xBF723456789ABCDF, %121, !dbg !1190
  call void @fAddHandler(double 0xBF723456789ABCDF, double %121, double %122, i64 0, i64 94127123896176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123896592, i32 681, i32 26), !dbg !1166
  store double %122, double* %24, align 8, !dbg !1166
  %123 = load double, double* %24, align 8, !dbg !1191
  %124 = call double @fabs(double %123) #1, !dbg !1192
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !1193
  call void @fMulHandler(double 0x3CC0000000000000, double %124, double %125, i64 0, i64 94127123899136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123899616, i32 682, i32 34), !dbg !1194
  %126 = load double*, double** %7, align 8, !dbg !1194
  store double %125, double* %126, align 8, !dbg !1195
  %127 = load double, double* %24, align 8, !dbg !1196
  store double %127, double* %4, align 8, !dbg !1197
  br label %190, !dbg !1197

; <label>:128:                                    ; preds = %92
  call void @llvm.dbg.declare(metadata double* %25, metadata !1198, metadata !100), !dbg !1200
  %129 = load double, double* %5, align 8, !dbg !1201
  %130 = load double, double* %5, align 8, !dbg !1202
  %131 = load double, double* %5, align 8, !dbg !1203
  %132 = fmul double %130, %131, !dbg !1204
  call void @fMulHandler(double %130, double %131, double %132, i64 94127123904664, i64 94127123907112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123907520, i32 686, i32 46), !dbg !1205
  %133 = fdiv double 1.000000e+00, %132, !dbg !1205
  call void @fDivHandler(double 1.000000e+00, double %132, double %133, i64 0, i64 94127123907520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123907968, i32 686, i32 43), !dbg !1206
  %134 = fsub double 1.000000e+00, %133, !dbg !1206
  call void @fSubHandler(double 1.000000e+00, double %133, double %134, i64 0, i64 94127123907968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123908384, i32 686, i32 38), !dbg !1207
  %135 = call double @sqrt(double %134) #6, !dbg !1207
  call void @callOneArgHandler(i32 14, double %134, double %135, i64 94127123908384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123908832, i32 686, i32 29), !dbg !1208
  %136 = fmul double %129, %135, !dbg !1208
  call void @fMulHandler(double %129, double %135, double %136, i64 94127123904312, i64 94127123908832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123909312, i32 686, i32 28), !dbg !1209
  %137 = fdiv double 1.000000e+00, %136, !dbg !1209
  call void @fDivHandler(double 1.000000e+00, double %136, double %137, i64 0, i64 94127123909312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123909760, i32 686, i32 25), !dbg !1200
  store double %137, double* %25, align 8, !dbg !1200
  call void @llvm.dbg.declare(metadata double* %26, metadata !1210, metadata !100), !dbg !1211
  %138 = load double, double* %6, align 8, !dbg !1212
  %139 = call double @sqrt(double %138) #6, !dbg !1213
  call void @callOneArgHandler(i32 14, double %138, double %139, i64 94127123912920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123913360, i32 687, i32 23), !dbg !1211
  store double %139, double* %26, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata double* %27, metadata !1214, metadata !100), !dbg !1215
  %140 = load double, double* %25, align 8, !dbg !1216
  %141 = load double, double* %25, align 8, !dbg !1217
  %142 = fmul double %140, %141, !dbg !1218
  call void @fMulHandler(double %140, double %141, double %142, i64 94127123916616, i64 94127123916968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123917376, i32 688, i32 24), !dbg !1215
  store double %142, double* %27, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata double* %28, metadata !1219, metadata !100), !dbg !1220
  %143 = load double, double* %27, align 8, !dbg !1221
  %144 = fsub double -0.000000e+00, %143, !dbg !1222
  call void @fSubHandler(double -0.000000e+00, double %143, double %144, i64 0, i64 94127123920568, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123920944, i32 689, i32 26), !dbg !1223
  %145 = load double, double* %27, align 8, !dbg !1223
  %146 = fmul double 4.620000e+02, %145, !dbg !1224
  call void @fMulHandler(double 4.620000e+02, double %145, double %146, i64 0, i64 94127123921336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123921776, i32 689, i32 43), !dbg !1225
  %147 = fadd double 8.100000e+01, %146, !dbg !1225
  call void @fAddHandler(double 8.100000e+01, double %146, double %147, i64 0, i64 94127123921776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123922192, i32 689, i32 36), !dbg !1226
  %148 = load double, double* %27, align 8, !dbg !1226
  %149 = fmul double 3.850000e+02, %148, !dbg !1227
  call void @fMulHandler(double 3.850000e+02, double %148, double %149, i64 0, i64 94127123922552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123922992, i32 689, i32 54), !dbg !1228
  %150 = load double, double* %27, align 8, !dbg !1228
  %151 = fmul double %149, %150, !dbg !1229
  call void @fMulHandler(double %149, double %150, double %151, i64 94127123922992, i64 94127123923352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123923760, i32 689, i32 57), !dbg !1230
  %152 = fadd double %147, %151, !dbg !1230
  call void @fAddHandler(double %147, double %151, double %152, i64 94127123922192, i64 94127123923760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123924176, i32 689, i32 47), !dbg !1231
  %153 = fmul double %144, %152, !dbg !1231
  call void @fMulHandler(double %144, double %152, double %153, i64 94127123920944, i64 94127123924176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123924592, i32 689, i32 29), !dbg !1232
  %154 = fdiv double %153, 1.152000e+03, !dbg !1232
  call void @fDivHandler(double %153, double 1.152000e+03, double %154, i64 94127123924592, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123925040, i32 689, i32 61), !dbg !1220
  store double %154, double* %28, align 8, !dbg !1220
  call void @llvm.dbg.declare(metadata double* %29, metadata !1233, metadata !100), !dbg !1234
  %155 = load double, double* %6, align 8, !dbg !1235
  %156 = fmul double 4.608000e+03, %155, !dbg !1236
  call void @fMulHandler(double 4.608000e+03, double %155, double %156, i64 0, i64 94127123928200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123928608, i32 690, i32 40), !dbg !1237
  %157 = load double, double* %6, align 8, !dbg !1237
  %158 = fmul double %156, %157, !dbg !1238
  call void @fMulHandler(double %156, double %157, double %158, i64 94127123928608, i64 94127123928968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123929376, i32 690, i32 49), !dbg !1239
  %159 = load double, double* %6, align 8, !dbg !1239
  %160 = fmul double %158, %159, !dbg !1240
  call void @fMulHandler(double %158, double %159, double %160, i64 94127123929376, i64 94127123929768, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123930176, i32 690, i32 58), !dbg !1241
  %161 = fdiv double 4.550000e+02, %160, !dbg !1241
  call void @fDivHandler(double 4.550000e+02, double %160, double %161, i64 0, i64 94127123930176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123930688, i32 690, i32 32), !dbg !1234
  store double %161, double* %29, align 8, !dbg !1234
  call void @llvm.dbg.declare(metadata double* %30, metadata !1242, metadata !100), !dbg !1243
  %162 = load double, double* %25, align 8, !dbg !1244
  %163 = fmul double -7.000000e+00, %162, !dbg !1245
  call void @fMulHandler(double -7.000000e+00, double %162, double %163, i64 0, i64 94127123933848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123934320, i32 691, i32 30), !dbg !1246
  %164 = load double, double* %27, align 8, !dbg !1246
  %165 = fmul double 5.000000e+00, %164, !dbg !1247
  call void @fMulHandler(double 5.000000e+00, double %164, double %165, i64 0, i64 94127123934680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123935120, i32 691, i32 43), !dbg !1248
  %166 = fadd double 3.000000e+00, %165, !dbg !1248
  call void @fAddHandler(double 3.000000e+00, double %165, double %166, i64 0, i64 94127123935120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123935600, i32 691, i32 38), !dbg !1249
  %167 = fmul double %163, %166, !dbg !1249
  call void @fMulHandler(double %163, double %166, double %167, i64 94127123934320, i64 94127123935600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123935984, i32 691, i32 32), !dbg !1250
  %168 = load double, double* %26, align 8, !dbg !1250
  %169 = fmul double 1.152000e+03, %168, !dbg !1251
  call void @fMulHandler(double 1.152000e+03, double %168, double %169, i64 0, i64 94127123936376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123936816, i32 691, i32 55), !dbg !1252
  %170 = load double, double* %26, align 8, !dbg !1252
  %171 = fmul double %169, %170, !dbg !1253
  call void @fMulHandler(double %169, double %170, double %171, i64 94127123936816, i64 94127123937176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123937584, i32 691, i32 58), !dbg !1254
  %172 = load double, double* %26, align 8, !dbg !1254
  %173 = fmul double %171, %172, !dbg !1255
  call void @fMulHandler(double %171, double %172, double %173, i64 94127123937584, i64 94127123937976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123938384, i32 691, i32 61), !dbg !1256
  %174 = fdiv double %167, %173, !dbg !1256
  call void @fDivHandler(double %167, double %173, double %174, i64 94127123935984, i64 94127123938384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123938800, i32 691, i32 47), !dbg !1243
  store double %174, double* %30, align 8, !dbg !1243
  %175 = load double, double* %28, align 8, !dbg !1257
  %176 = call double @fabs(double %175) #1, !dbg !1258
  %177 = load double, double* %29, align 8, !dbg !1259
  %178 = call double @fabs(double %177) #1, !dbg !1260
  %179 = fadd double %176, %178, !dbg !1262
  call void @fAddHandler(double %176, double %178, double %179, i64 94127123941344, i64 94127123942272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123942752, i32 692, i32 49), !dbg !1263
  %180 = load double, double* %30, align 8, !dbg !1263
  %181 = call double @fabs(double %180) #1, !dbg !1264
  %182 = fadd double %179, %181, !dbg !1266
  call void @fAddHandler(double %179, double %181, double %182, i64 94127123942752, i64 94127123943616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123944096, i32 692, i32 63), !dbg !1267
  %183 = fmul double 0x3CC0000000000000, %182, !dbg !1267
  call void @fMulHandler(double 0x3CC0000000000000, double %182, double %183, i64 0, i64 94127123944096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123944512, i32 692, i32 34), !dbg !1268
  %184 = load double*, double** %7, align 8, !dbg !1268
  store double %183, double* %184, align 8, !dbg !1269
  %185 = load double, double* %28, align 8, !dbg !1270
  %186 = load double, double* %29, align 8, !dbg !1271
  %187 = fadd double %185, %186, !dbg !1272
  call void @fAddHandler(double %185, double %186, double %187, i64 94127123945704, i64 94127123946088, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123946496, i32 693, i32 18), !dbg !1273
  %188 = load double, double* %30, align 8, !dbg !1273
  %189 = fadd double %187, %188, !dbg !1274
  call void @fAddHandler(double %187, double %188, double %189, i64 94127123946496, i64 94127123946888, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94127123947296, i32 693, i32 26), !dbg !1275
  store double %189, double* %4, align 8, !dbg !1275
  br label %190, !dbg !1275

; <label>:190:                                    ; preds = %128, %96, %34
  %191 = load double, double* %4, align 8, !dbg !1276
  ret double %191, !dbg !1276
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
  %48 = call i1 @fCmpInstHandler(double %46, double 8.800000e-01, i1 %47, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123957920, i32 700, i32 8), !dbg !1287
  br i1 %48, label %49, label %147, !dbg !1287

; <label>:49:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1288, metadata !100), !dbg !1290
  %50 = load double, double* %4, align 8, !dbg !1291
  %51 = load double, double* %4, align 8, !dbg !1292
  %52 = fmul double %50, %51, !dbg !1293
  call void @fMulHandler(double %50, double %51, double %52, i64 94127123960056, i64 94127123960408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123960816, i32 701, i32 31), !dbg !1294
  %53 = fsub double 1.000000e+00, %52, !dbg !1294
  call void @fSubHandler(double 1.000000e+00, double %52, double %53, i64 0, i64 94127123960816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123961264, i32 701, i32 29), !dbg !1295
  %54 = call double @sqrt(double %53) #6, !dbg !1295
  call void @callOneArgHandler(i32 14, double %53, double %54, i64 94127123961264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123961712, i32 701, i32 21), !dbg !1296
  %55 = fdiv double 1.000000e+00, %54, !dbg !1296
  call void @fDivHandler(double 1.000000e+00, double %54, double %55, i64 0, i64 94127123961712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123962224, i32 701, i32 20), !dbg !1290
  store double %55, double* %6, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata double* %7, metadata !1297, metadata !100), !dbg !1298
  %56 = load double, double* %6, align 8, !dbg !1299
  %57 = load double, double* %6, align 8, !dbg !1300
  %58 = fmul double %56, %57, !dbg !1301
  call void @fMulHandler(double %56, double %57, double %58, i64 94127123965384, i64 94127123965736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123966144, i32 702, i32 18), !dbg !1298
  store double %58, double* %7, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata double* %8, metadata !1302, metadata !100), !dbg !1303
  %59 = load double, double* %7, align 8, !dbg !1304
  %60 = load double, double* %7, align 8, !dbg !1305
  %61 = fmul double %59, %60, !dbg !1306
  call void @fMulHandler(double %59, double %60, double %61, i64 94127123969336, i64 94127123969688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123970096, i32 703, i32 19), !dbg !1303
  store double %61, double* %8, align 8, !dbg !1303
  call void @llvm.dbg.declare(metadata double* %9, metadata !1307, metadata !100), !dbg !1308
  %62 = load double, double* %8, align 8, !dbg !1309
  %63 = load double, double* %7, align 8, !dbg !1310
  %64 = fmul double %62, %63, !dbg !1311
  call void @fMulHandler(double %62, double %63, double %64, i64 94127123973288, i64 94127123973640, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123974048, i32 704, i32 19), !dbg !1308
  store double %64, double* %9, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata double* %10, metadata !1312, metadata !100), !dbg !1313
  %65 = load double, double* %8, align 8, !dbg !1314
  %66 = load double, double* %8, align 8, !dbg !1315
  %67 = fmul double %65, %66, !dbg !1316
  call void @fMulHandler(double %65, double %66, double %67, i64 94127123977240, i64 94127123977592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123978000, i32 705, i32 19), !dbg !1313
  store double %67, double* %10, align 8, !dbg !1313
  call void @llvm.dbg.declare(metadata double* %11, metadata !1317, metadata !100), !dbg !1318
  %68 = load double, double* %5, align 8, !dbg !1319
  %69 = call double @sqrt(double %68) #6, !dbg !1320
  call void @callOneArgHandler(i32 14, double %68, double %69, i64 94127123981192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123981632, i32 706, i32 17), !dbg !1318
  store double %69, double* %11, align 8, !dbg !1318
  call void @llvm.dbg.declare(metadata double* %12, metadata !1321, metadata !100), !dbg !1322
  %70 = load double, double* %5, align 8, !dbg !1323
  %71 = load double, double* %5, align 8, !dbg !1324
  %72 = fmul double %70, %71, !dbg !1325
  call void @fMulHandler(double %70, double %71, double %72, i64 94127123984888, i64 94127123985240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123985648, i32 707, i32 25), !dbg !1326
  %73 = load double, double* %5, align 8, !dbg !1326
  %74 = fmul double %72, %73, !dbg !1327
  call void @fMulHandler(double %72, double %73, double %74, i64 94127123985648, i64 94127123986040, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123986448, i32 707, i32 34), !dbg !1322
  store double %74, double* %12, align 8, !dbg !1322
  call void @llvm.dbg.declare(metadata double* %13, metadata !1328, metadata !100), !dbg !1329
  %75 = load double, double* %11, align 8, !dbg !1330
  %76 = load double, double* %11, align 8, !dbg !1331
  %77 = fmul double %75, %76, !dbg !1332
  call void @fMulHandler(double %75, double %76, double %77, i64 94127123989640, i64 94127123989992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123990400, i32 708, i32 20), !dbg !1333
  %78 = load double, double* %11, align 8, !dbg !1333
  %79 = fmul double %77, %78, !dbg !1334
  call void @fMulHandler(double %77, double %78, double %79, i64 94127123990400, i64 94127123990792, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123991200, i32 708, i32 23), !dbg !1329
  store double %79, double* %13, align 8, !dbg !1329
  call void @llvm.dbg.declare(metadata double* %14, metadata !1335, metadata !100), !dbg !1336
  %80 = load double, double* %12, align 8, !dbg !1337
  %81 = load double, double* %13, align 8, !dbg !1338
  %82 = fmul double %80, %81, !dbg !1339
  call void @fMulHandler(double %80, double %81, double %82, i64 94127123994392, i64 94127123994744, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123995152, i32 709, i32 20), !dbg !1336
  store double %82, double* %14, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata double* %15, metadata !1340, metadata !100), !dbg !1341
  %83 = load double, double* %8, align 8, !dbg !1342
  %84 = load double, double* %7, align 8, !dbg !1343
  %85 = fmul double 0x419670BB30000000, %84, !dbg !1344
  call void @fMulHandler(double 0x419670BB30000000, double %84, double %85, i64 0, i64 94127123998696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123999168, i32 710, i32 46), !dbg !1345
  %86 = fsub double 4.465125e+06, %85, !dbg !1345
  call void @fSubHandler(double 4.465125e+06, double %85, double %86, i64 0, i64 94127123999168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127123999680, i32 710, i32 34), !dbg !1346
  %87 = load double, double* %8, align 8, !dbg !1346
  %88 = fmul double 0x41B4DB647E000000, %87, !dbg !1347
  call void @fMulHandler(double 0x41B4DB647E000000, double %87, double %88, i64 0, i64 94127124000040, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124000512, i32 710, i32 63), !dbg !1348
  %89 = fadd double %86, %88, !dbg !1348
  call void @fAddHandler(double %86, double %88, double %89, i64 94127123999680, i64 94127124000512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124000928, i32 710, i32 50), !dbg !1349
  %90 = load double, double* %9, align 8, !dbg !1349
  %91 = fmul double 0x41BA98410C000000, %90, !dbg !1350
  call void @fMulHandler(double 0x41BA98410C000000, double %90, double %91, i64 0, i64 94127124001320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124001792, i32 710, i32 80), !dbg !1351
  %92 = fsub double %89, %91, !dbg !1351
  call void @fSubHandler(double %89, double %91, double %92, i64 94127124000928, i64 94127124001792, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124002208, i32 710, i32 67), !dbg !1352
  %93 = load double, double* %10, align 8, !dbg !1352
  %94 = fmul double 0x41A6298B8A000000, %93, !dbg !1353
  call void @fMulHandler(double 0x41A6298B8A000000, double %93, double %94, i64 0, i64 94127124002600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124003072, i32 710, i32 98), !dbg !1354
  %95 = fadd double %92, %94, !dbg !1354
  call void @fAddHandler(double %92, double %94, double %95, i64 94127124002208, i64 94127124003072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124003488, i32 710, i32 85), !dbg !1355
  %96 = fmul double %83, %95, !dbg !1355
  call void @fMulHandler(double %83, double %95, double %96, i64 94127123998344, i64 94127124003488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124003904, i32 710, i32 22), !dbg !1356
  %97 = fdiv double %96, 3.981312e+07, !dbg !1356
  call void @fDivHandler(double %96, double 3.981312e+07, double %97, i64 94127124003904, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124004416, i32 710, i32 102), !dbg !1341
  store double %97, double* %15, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata double* %16, metadata !1357, metadata !100), !dbg !1358
  %98 = load double, double* %12, align 8, !dbg !1359
  %99 = fmul double 0x419E600000000000, %98, !dbg !1360
  call void @fMulHandler(double 0x419E600000000000, double %98, double %99, i64 0, i64 94127124007576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124008016, i32 711, i32 44), !dbg !1361
  %100 = load double, double* %12, align 8, !dbg !1361
  %101 = fmul double %99, %100, !dbg !1362
  call void @fMulHandler(double %99, double %100, double %101, i64 94127124008016, i64 94127124008408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124008816, i32 711, i32 47), !dbg !1363
  %102 = fdiv double 0xC183458478000000, %101, !dbg !1363
  call void @fDivHandler(double 0xC183458478000000, double %101, double %102, i64 0, i64 94127124008816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124009296, i32 711, i32 31), !dbg !1358
  store double %102, double* %16, align 8, !dbg !1358
  call void @llvm.dbg.declare(metadata double* %17, metadata !1364, metadata !100), !dbg !1365
  %103 = load double, double* %6, align 8, !dbg !1366
  %104 = fmul double 0xBF7875663075FDE5, %103, !dbg !1367
  call void @fMulHandler(double 0xBF7875663075FDE5, double %103, double %104, i64 0, i64 94127124012488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124012928, i32 712, i32 39), !dbg !1368
  %105 = load double, double* %7, align 8, !dbg !1368
  %106 = fmul double 5.000000e+00, %105, !dbg !1369
  call void @fMulHandler(double 5.000000e+00, double %105, double %106, i64 0, i64 94127124013320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124013760, i32 712, i32 50), !dbg !1370
  %107 = fsub double 3.000000e+00, %106, !dbg !1370
  call void @fSubHandler(double 3.000000e+00, double %106, double %107, i64 0, i64 94127124013760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124014176, i32 712, i32 46), !dbg !1371
  %108 = fmul double %104, %107, !dbg !1371
  call void @fMulHandler(double %104, double %107, double %108, i64 94127124012928, i64 94127124014176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124014560, i32 712, i32 41), !dbg !1372
  %109 = load double, double* %14, align 8, !dbg !1372
  %110 = fdiv double %108, %109, !dbg !1373
  call void @fDivHandler(double %108, double %109, double %110, i64 94127124014560, i64 94127124014952, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124015360, i32 712, i32 54), !dbg !1365
  store double %110, double* %17, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata double* %18, metadata !1374, metadata !100), !dbg !1375
  %111 = load double, double* %7, align 8, !dbg !1376
  %112 = fmul double 0xBF16781948B0FCD7, %111, !dbg !1377
  call void @fMulHandler(double 0xBF16781948B0FCD7, double %111, double %112, i64 0, i64 94127124018552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124018992, i32 713, i32 37), !dbg !1378
  %113 = load double, double* %7, align 8, !dbg !1378
  %114 = fmul double 4.620000e+02, %113, !dbg !1379
  call void @fMulHandler(double 4.620000e+02, double %113, double %114, i64 0, i64 94127124019384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124019824, i32 713, i32 54), !dbg !1380
  %115 = fsub double 8.100000e+01, %114, !dbg !1380
  call void @fSubHandler(double 8.100000e+01, double %114, double %115, i64 0, i64 94127124019824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124020240, i32 713, i32 47), !dbg !1381
  %116 = load double, double* %8, align 8, !dbg !1381
  %117 = fmul double 3.850000e+02, %116, !dbg !1382
  call void @fMulHandler(double 3.850000e+02, double %116, double %117, i64 0, i64 94127124020600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124021040, i32 713, i32 65), !dbg !1383
  %118 = fadd double %115, %117, !dbg !1383
  call void @fAddHandler(double %115, double %117, double %118, i64 94127124020240, i64 94127124021040, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124021424, i32 713, i32 58), !dbg !1384
  %119 = fmul double %112, %118, !dbg !1384
  call void @fMulHandler(double %112, double %118, double %119, i64 94127124018992, i64 94127124021424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124021840, i32 713, i32 40), !dbg !1385
  %120 = load double, double* %12, align 8, !dbg !1385
  %121 = fdiv double %119, %120, !dbg !1386
  call void @fDivHandler(double %119, double %120, double %121, i64 94127124021840, i64 94127124022232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124022640, i32 713, i32 69), !dbg !1375
  store double %121, double* %18, align 8, !dbg !1375
  call void @llvm.dbg.declare(metadata double* %19, metadata !1387, metadata !100), !dbg !1388
  %122 = load double, double* %6, align 8, !dbg !1389
  %123 = fmul double 0xBE97992DB8C89605, %122, !dbg !1390
  call void @fMulHandler(double 0xBE97992DB8C89605, double %122, double %123, i64 0, i64 94127124025832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124026272, i32 714, i32 35), !dbg !1391
  %124 = load double, double* %7, align 8, !dbg !1391
  %125 = fmul double %123, %124, !dbg !1392
  call void @fMulHandler(double %123, double %124, double %125, i64 94127124026272, i64 94127124026664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124027072, i32 714, i32 37), !dbg !1393
  %126 = load double, double* %7, align 8, !dbg !1393
  %127 = fmul double 3.696030e+05, %126, !dbg !1394
  call void @fMulHandler(double 3.696030e+05, double %126, double %127, i64 0, i64 94127124027464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124027968, i32 714, i32 60), !dbg !1395
  %128 = fsub double 3.037500e+04, %127, !dbg !1395
  call void @fSubHandler(double 3.037500e+04, double %127, double %128, i64 0, i64 94127124027968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124028448, i32 714, i32 50), !dbg !1396
  %129 = load double, double* %8, align 8, !dbg !1396
  %130 = fmul double 7.657650e+05, %129, !dbg !1397
  call void @fMulHandler(double 7.657650e+05, double %129, double %130, i64 0, i64 94127124028808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124031376, i32 714, i32 75), !dbg !1398
  %131 = fadd double %128, %130, !dbg !1398
  call void @fAddHandler(double %128, double %130, double %131, i64 94127124028448, i64 94127124031376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124031760, i32 714, i32 65), !dbg !1399
  %132 = load double, double* %9, align 8, !dbg !1399
  %133 = fmul double 4.254250e+05, %132, !dbg !1400
  call void @fMulHandler(double 4.254250e+05, double %132, double %133, i64 0, i64 94127124032152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124032656, i32 714, i32 90), !dbg !1401
  %134 = fsub double %131, %133, !dbg !1401
  call void @fSubHandler(double %131, double %133, double %134, i64 94127124031760, i64 94127124032656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124033040, i32 714, i32 80), !dbg !1402
  %135 = fmul double %125, %134, !dbg !1402
  call void @fMulHandler(double %125, double %134, double %135, i64 94127124027072, i64 94127124033040, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124033456, i32 714, i32 40), !dbg !1403
  %136 = load double, double* %13, align 8, !dbg !1403
  %137 = fdiv double %135, %136, !dbg !1404
  call void @fDivHandler(double %135, double %136, double %137, i64 94127124033456, i64 94127124033848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124034256, i32 714, i32 94), !dbg !1388
  store double %137, double* %19, align 8, !dbg !1388
  %138 = load double, double* %15, align 8, !dbg !1405
  %139 = load double, double* %16, align 8, !dbg !1406
  %140 = fadd double %138, %139, !dbg !1407
  call void @fAddHandler(double %138, double %139, double %140, i64 94127124036328, i64 94127124036712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124037120, i32 715, i32 18), !dbg !1408
  %141 = load double, double* %17, align 8, !dbg !1408
  %142 = fadd double %140, %141, !dbg !1409
  call void @fAddHandler(double %140, double %141, double %142, i64 94127124037120, i64 94127124037512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124037920, i32 715, i32 26), !dbg !1410
  %143 = load double, double* %18, align 8, !dbg !1410
  %144 = fadd double %142, %143, !dbg !1411
  call void @fAddHandler(double %142, double %143, double %144, i64 94127124037920, i64 94127124038312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124038720, i32 715, i32 34), !dbg !1412
  %145 = load double, double* %19, align 8, !dbg !1412
  %146 = fadd double %144, %145, !dbg !1413
  call void @fAddHandler(double %144, double %145, double %146, i64 94127124038720, i64 94127124039112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124039520, i32 715, i32 42), !dbg !1414
  store double %146, double* %3, align 8, !dbg !1414
  br label %285, !dbg !1414

; <label>:147:                                    ; preds = %2
  %148 = load double, double* %4, align 8, !dbg !1415
  %149 = fcmp olt double %148, 1.120000e+00, !dbg !1417
  %150 = call i1 @fCmpInstHandler(double %148, double 1.120000e+00, i1 %149, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124042560, i32 717, i32 13), !dbg !1418
  br i1 %150, label %151, label %184, !dbg !1418

; <label>:151:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata double* %20, metadata !1419, metadata !100), !dbg !1421
  %152 = load double, double* %4, align 8, !dbg !1422
  %153 = fsub double 1.000000e+00, %152, !dbg !1423
  call void @fSubHandler(double 1.000000e+00, double %152, double %153, i64 0, i64 94127124044696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124045104, i32 718, i32 19), !dbg !1421
  store double %153, double* %20, align 8, !dbg !1421
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
  %154 = load double, double* %20, align 8, !dbg !1446
  %155 = load double, double* %20, align 8, !dbg !1447
  %156 = load double, double* %20, align 8, !dbg !1448
  %157 = load double, double* %20, align 8, !dbg !1449
  %158 = load double, double* %20, align 8, !dbg !1450
  %159 = load double, double* %20, align 8, !dbg !1451
  %160 = load double, double* %20, align 8, !dbg !1452
  %161 = load double, double* %20, align 8, !dbg !1453
  %162 = load double, double* %20, align 8, !dbg !1454
  %163 = load double, double* %20, align 8, !dbg !1455
  %164 = fmul double %163, 0xBF88869EC2BCE964, !dbg !1456
  call void @fMulHandler(double %163, double 0xBF88869EC2BCE964, double %164, i64 94127124081752, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124082160, i32 730, i32 70), !dbg !1457
  %165 = fadd double 0x3F317C46D4926C1D, %164, !dbg !1457
  call void @fAddHandler(double 0x3F317C46D4926C1D, double %164, double %165, i64 0, i64 94127124082160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124082576, i32 730, i32 68), !dbg !1458
  %166 = fmul double %162, %165, !dbg !1458
  call void @fMulHandler(double %162, double %165, double %166, i64 94127124081368, i64 94127124082576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124082992, i32 730, i32 64), !dbg !1459
  %167 = fadd double 0x3F1DFAD323EC7D67, %166, !dbg !1459
  call void @fAddHandler(double 0x3F1DFAD323EC7D67, double %166, double %167, i64 0, i64 94127124082992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124083408, i32 730, i32 62), !dbg !1460
  %168 = fmul double %161, %167, !dbg !1460
  call void @fMulHandler(double %161, double %167, double %168, i64 94127124080984, i64 94127124083408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124083824, i32 730, i32 58), !dbg !1461
  %169 = fadd double 0xBF22E7C83B06ECB1, %168, !dbg !1461
  call void @fAddHandler(double 0xBF22E7C83B06ECB1, double %168, double %169, i64 0, i64 94127124083824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124084240, i32 730, i32 56), !dbg !1462
  %170 = fmul double %160, %169, !dbg !1462
  call void @fMulHandler(double %160, double %169, double %170, i64 94127124080600, i64 94127124084240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124084656, i32 730, i32 52), !dbg !1463
  %171 = fadd double 0xBF4005482630947A, %170, !dbg !1463
  call void @fAddHandler(double 0xBF4005482630947A, double %170, double %171, i64 0, i64 94127124084656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124085072, i32 730, i32 50), !dbg !1464
  %172 = fmul double %159, %171, !dbg !1464
  call void @fMulHandler(double %159, double %171, double %172, i64 94127124080216, i64 94127124085072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124085488, i32 730, i32 46), !dbg !1465
  %173 = fadd double 0xBF4B6C116E67AB16, %172, !dbg !1465
  call void @fAddHandler(double 0xBF4B6C116E67AB16, double %172, double %173, i64 0, i64 94127124085488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124085904, i32 730, i32 44), !dbg !1466
  %174 = fmul double %158, %173, !dbg !1466
  call void @fMulHandler(double %158, double %173, double %174, i64 94127124079832, i64 94127124085904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124086320, i32 730, i32 40), !dbg !1467
  %175 = fadd double 0xBF50DEF18A38232F, %174, !dbg !1467
  call void @fAddHandler(double 0xBF50DEF18A38232F, double %174, double %175, i64 0, i64 94127124086320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124086736, i32 730, i32 38), !dbg !1468
  %176 = fmul double %157, %175, !dbg !1468
  call void @fMulHandler(double %157, double %175, double %176, i64 94127124079448, i64 94127124086736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124087152, i32 730, i32 34), !dbg !1469
  %177 = fadd double 0xBF4CAA0F69B955B4, %176, !dbg !1469
  call void @fAddHandler(double 0xBF4CAA0F69B955B4, double %176, double %177, i64 0, i64 94127124087152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124087568, i32 730, i32 32), !dbg !1470
  %178 = fmul double %156, %177, !dbg !1470
  call void @fMulHandler(double %156, double %177, double %178, i64 94127124079064, i64 94127124087568, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124087984, i32 730, i32 28), !dbg !1471
  %179 = fadd double 0xBF32F13942C9A55E, %178, !dbg !1471
  call void @fAddHandler(double 0xBF32F13942C9A55E, double %178, double %179, i64 0, i64 94127124087984, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124088400, i32 730, i32 26), !dbg !1472
  %180 = fmul double %155, %179, !dbg !1472
  call void @fMulHandler(double %155, double %179, double %180, i64 94127124078680, i64 94127124088400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124088816, i32 730, i32 22), !dbg !1473
  %181 = fadd double 0x3F3E70BD669135C0, %180, !dbg !1473
  call void @fAddHandler(double 0x3F3E70BD669135C0, double %180, double %181, i64 0, i64 94127124088816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124089232, i32 730, i32 20), !dbg !1474
  %182 = fmul double %154, %181, !dbg !1474
  call void @fMulHandler(double %154, double %181, double %182, i64 94127124078328, i64 94127124089232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124089648, i32 730, i32 16), !dbg !1475
  %183 = fadd double 0x3F46BB79BB291192, %182, !dbg !1475
  call void @fAddHandler(double 0x3F46BB79BB291192, double %182, double %183, i64 0, i64 94127124089648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124090064, i32 730, i32 14), !dbg !1476
  store double %183, double* %3, align 8, !dbg !1476
  br label %285, !dbg !1476

; <label>:184:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata double* %32, metadata !1477, metadata !100), !dbg !1479
  %185 = load double, double* %4, align 8, !dbg !1480
  %186 = load double, double* %4, align 8, !dbg !1481
  %187 = load double, double* %4, align 8, !dbg !1482
  %188 = fmul double %186, %187, !dbg !1483
  call void @fMulHandler(double %186, double %187, double %188, i64 94127124093928, i64 94127124094312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124094720, i32 733, i32 47), !dbg !1484
  %189 = fdiv double 1.000000e+00, %188, !dbg !1484
  call void @fDivHandler(double 1.000000e+00, double %188, double %189, i64 0, i64 94127124094720, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124095168, i32 733, i32 44), !dbg !1485
  %190 = fsub double 1.000000e+00, %189, !dbg !1485
  call void @fSubHandler(double 1.000000e+00, double %189, double %190, i64 0, i64 94127124095168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124095584, i32 733, i32 39), !dbg !1486
  %191 = call double @sqrt(double %190) #6, !dbg !1486
  call void @callOneArgHandler(i32 14, double %190, double %191, i64 94127124095584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124096032, i32 733, i32 30), !dbg !1487
  %192 = fmul double %185, %191, !dbg !1487
  call void @fMulHandler(double %185, double %191, double %192, i64 94127124093576, i64 94127124096032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124096512, i32 733, i32 29), !dbg !1488
  %193 = fdiv double 1.000000e+00, %192, !dbg !1488
  call void @fDivHandler(double 1.000000e+00, double %192, double %193, i64 0, i64 94127124096512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124096960, i32 733, i32 26), !dbg !1479
  store double %193, double* %32, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata double* %33, metadata !1489, metadata !100), !dbg !1490
  %194 = load double, double* %32, align 8, !dbg !1491
  %195 = load double, double* %32, align 8, !dbg !1492
  %196 = fmul double %194, %195, !dbg !1493
  call void @fMulHandler(double %194, double %195, double %196, i64 94127124100120, i64 94127124100472, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124100880, i32 734, i32 24), !dbg !1490
  store double %196, double* %33, align 8, !dbg !1490
  call void @llvm.dbg.declare(metadata double* %34, metadata !1494, metadata !100), !dbg !1495
  %197 = load double, double* %33, align 8, !dbg !1496
  %198 = load double, double* %33, align 8, !dbg !1497
  %199 = fmul double %197, %198, !dbg !1498
  call void @fMulHandler(double %197, double %198, double %199, i64 94127124104072, i64 94127124104424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124104832, i32 735, i32 25), !dbg !1495
  store double %199, double* %34, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata double* %35, metadata !1499, metadata !100), !dbg !1500
  %200 = load double, double* %34, align 8, !dbg !1501
  %201 = load double, double* %33, align 8, !dbg !1502
  %202 = fmul double %200, %201, !dbg !1503
  call void @fMulHandler(double %200, double %201, double %202, i64 94127124108024, i64 94127124108376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124108784, i32 736, i32 25), !dbg !1500
  store double %202, double* %35, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata double* %36, metadata !1504, metadata !100), !dbg !1505
  %203 = load double, double* %34, align 8, !dbg !1506
  %204 = load double, double* %34, align 8, !dbg !1507
  %205 = fmul double %203, %204, !dbg !1508
  call void @fMulHandler(double %203, double %204, double %205, i64 94127124111976, i64 94127124112328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124112736, i32 737, i32 25), !dbg !1505
  store double %205, double* %36, align 8, !dbg !1505
  call void @llvm.dbg.declare(metadata double* %37, metadata !1509, metadata !100), !dbg !1510
  %206 = load double, double* %5, align 8, !dbg !1511
  %207 = call double @sqrt(double %206) #6, !dbg !1512
  call void @callOneArgHandler(i32 14, double %206, double %207, i64 94127124115928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124116368, i32 738, i32 23), !dbg !1510
  store double %207, double* %37, align 8, !dbg !1510
  call void @llvm.dbg.declare(metadata double* %38, metadata !1513, metadata !100), !dbg !1514
  %208 = load double, double* %5, align 8, !dbg !1515
  %209 = load double, double* %5, align 8, !dbg !1516
  %210 = fmul double %208, %209, !dbg !1517
  call void @fMulHandler(double %208, double %209, double %210, i64 94127124119624, i64 94127124119976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124120384, i32 739, i32 31), !dbg !1518
  %211 = load double, double* %5, align 8, !dbg !1518
  %212 = fmul double %210, %211, !dbg !1519
  call void @fMulHandler(double %210, double %211, double %212, i64 94127124120384, i64 94127124120776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124121184, i32 739, i32 40), !dbg !1514
  store double %212, double* %38, align 8, !dbg !1514
  call void @llvm.dbg.declare(metadata double* %39, metadata !1520, metadata !100), !dbg !1521
  %213 = load double, double* %37, align 8, !dbg !1522
  %214 = load double, double* %37, align 8, !dbg !1523
  %215 = fmul double %213, %214, !dbg !1524
  call void @fMulHandler(double %213, double %214, double %215, i64 94127124124376, i64 94127124124728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124125136, i32 740, i32 26), !dbg !1525
  %216 = load double, double* %37, align 8, !dbg !1525
  %217 = fmul double %215, %216, !dbg !1526
  call void @fMulHandler(double %215, double %216, double %217, i64 94127124125136, i64 94127124125528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124125936, i32 740, i32 29), !dbg !1521
  store double %217, double* %39, align 8, !dbg !1521
  call void @llvm.dbg.declare(metadata double* %40, metadata !1527, metadata !100), !dbg !1528
  %218 = load double, double* %38, align 8, !dbg !1529
  %219 = load double, double* %39, align 8, !dbg !1530
  %220 = fmul double %218, %219, !dbg !1531
  call void @fMulHandler(double %218, double %219, double %220, i64 94127124129128, i64 94127124129480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124129888, i32 741, i32 26), !dbg !1528
  store double %220, double* %40, align 8, !dbg !1528
  call void @llvm.dbg.declare(metadata double* %41, metadata !1532, metadata !100), !dbg !1533
  %221 = load double, double* %34, align 8, !dbg !1534
  %222 = load double, double* %33, align 8, !dbg !1535
  %223 = fmul double 0x419670BB30000000, %222, !dbg !1536
  call void @fMulHandler(double 0x419670BB30000000, double %222, double %223, i64 0, i64 94127124133432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124133840, i32 742, i32 52), !dbg !1537
  %224 = fadd double 4.465125e+06, %223, !dbg !1537
  call void @fAddHandler(double 4.465125e+06, double %223, double %224, i64 0, i64 94127124133840, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124134288, i32 742, i32 40), !dbg !1538
  %225 = load double, double* %34, align 8, !dbg !1538
  %226 = fmul double 0x41B4DB647E000000, %225, !dbg !1539
  call void @fMulHandler(double 0x41B4DB647E000000, double %225, double %226, i64 0, i64 94127124134648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124135056, i32 742, i32 69), !dbg !1540
  %227 = fadd double %224, %226, !dbg !1540
  call void @fAddHandler(double %224, double %226, double %227, i64 94127124134288, i64 94127124135056, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124135472, i32 742, i32 56), !dbg !1541
  %228 = load double, double* %35, align 8, !dbg !1541
  %229 = fmul double 0x41BA98410C000000, %228, !dbg !1542
  call void @fMulHandler(double 0x41BA98410C000000, double %228, double %229, i64 0, i64 94127124135864, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124136272, i32 742, i32 86), !dbg !1543
  %230 = fadd double %227, %229, !dbg !1543
  call void @fAddHandler(double %227, double %229, double %230, i64 94127124135472, i64 94127124136272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124136688, i32 742, i32 73), !dbg !1544
  %231 = load double, double* %36, align 8, !dbg !1544
  %232 = fmul double 0x41A6298B8A000000, %231, !dbg !1545
  call void @fMulHandler(double 0x41A6298B8A000000, double %231, double %232, i64 0, i64 94127124137080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124137488, i32 742, i32 104), !dbg !1546
  %233 = fadd double %230, %232, !dbg !1546
  call void @fAddHandler(double %230, double %232, double %233, i64 94127124136688, i64 94127124137488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124137904, i32 742, i32 91), !dbg !1547
  %234 = fmul double %221, %233, !dbg !1547
  call void @fMulHandler(double %221, double %233, double %234, i64 94127124133080, i64 94127124137904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124138320, i32 742, i32 28), !dbg !1548
  %235 = fdiv double %234, 3.981312e+07, !dbg !1548
  call void @fDivHandler(double %234, double 3.981312e+07, double %235, i64 94127124138320, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124138768, i32 742, i32 108), !dbg !1533
  store double %235, double* %41, align 8, !dbg !1533
  call void @llvm.dbg.declare(metadata double* %42, metadata !1549, metadata !100), !dbg !1550
  %236 = load double, double* %38, align 8, !dbg !1551
  %237 = fmul double 0x419E600000000000, %236, !dbg !1552
  call void @fMulHandler(double 0x419E600000000000, double %236, double %237, i64 0, i64 94127124141928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124142304, i32 743, i32 50), !dbg !1553
  %238 = load double, double* %38, align 8, !dbg !1553
  %239 = fmul double %237, %238, !dbg !1554
  call void @fMulHandler(double %237, double %238, double %239, i64 94127124142304, i64 94127124142696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124143104, i32 743, i32 53), !dbg !1555
  %240 = fdiv double 0xC183458478000000, %239, !dbg !1555
  call void @fDivHandler(double 0xC183458478000000, double %239, double %240, i64 0, i64 94127124143104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124143520, i32 743, i32 37), !dbg !1550
  store double %240, double* %42, align 8, !dbg !1550
  call void @llvm.dbg.declare(metadata double* %43, metadata !1556, metadata !100), !dbg !1557
  %241 = load double, double* %32, align 8, !dbg !1558
  %242 = fmul double 0x3F7875663075FDE5, %241, !dbg !1559
  call void @fMulHandler(double 0x3F7875663075FDE5, double %241, double %242, i64 0, i64 94127124146712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124147152, i32 744, i32 45), !dbg !1560
  %243 = load double, double* %33, align 8, !dbg !1560
  %244 = fmul double 5.000000e+00, %243, !dbg !1561
  call void @fMulHandler(double 5.000000e+00, double %243, double %244, i64 0, i64 94127124147544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124147984, i32 744, i32 56), !dbg !1562
  %245 = fadd double 3.000000e+00, %244, !dbg !1562
  call void @fAddHandler(double 3.000000e+00, double %244, double %245, i64 0, i64 94127124147984, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124148400, i32 744, i32 52), !dbg !1563
  %246 = fmul double %242, %245, !dbg !1563
  call void @fMulHandler(double %242, double %245, double %246, i64 94127124147152, i64 94127124148400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124148784, i32 744, i32 47), !dbg !1564
  %247 = load double, double* %40, align 8, !dbg !1564
  %248 = fdiv double %246, %247, !dbg !1565
  call void @fDivHandler(double %246, double %247, double %248, i64 94127124148784, i64 94127124149176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124149584, i32 744, i32 60), !dbg !1557
  store double %248, double* %43, align 8, !dbg !1557
  call void @llvm.dbg.declare(metadata double* %44, metadata !1566, metadata !100), !dbg !1567
  %249 = load double, double* %33, align 8, !dbg !1568
  %250 = fmul double 0xBF16781948B0FCD7, %249, !dbg !1569
  call void @fMulHandler(double 0xBF16781948B0FCD7, double %249, double %250, i64 0, i64 94127124152776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124153152, i32 745, i32 43), !dbg !1570
  %251 = load double, double* %33, align 8, !dbg !1570
  %252 = fmul double 4.620000e+02, %251, !dbg !1571
  call void @fMulHandler(double 4.620000e+02, double %251, double %252, i64 0, i64 94127124153544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124153984, i32 745, i32 60), !dbg !1572
  %253 = fadd double 8.100000e+01, %252, !dbg !1572
  call void @fAddHandler(double 8.100000e+01, double %252, double %253, i64 0, i64 94127124153984, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124154400, i32 745, i32 53), !dbg !1573
  %254 = load double, double* %34, align 8, !dbg !1573
  %255 = fmul double 3.850000e+02, %254, !dbg !1574
  call void @fMulHandler(double 3.850000e+02, double %254, double %255, i64 0, i64 94127124154760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124155200, i32 745, i32 71), !dbg !1575
  %256 = fadd double %253, %255, !dbg !1575
  call void @fAddHandler(double %253, double %255, double %256, i64 94127124154400, i64 94127124155200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124155584, i32 745, i32 64), !dbg !1576
  %257 = fmul double %250, %256, !dbg !1576
  call void @fMulHandler(double %250, double %256, double %257, i64 94127124153152, i64 94127124155584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124156000, i32 745, i32 46), !dbg !1577
  %258 = load double, double* %38, align 8, !dbg !1577
  %259 = fdiv double %257, %258, !dbg !1578
  call void @fDivHandler(double %257, double %258, double %259, i64 94127124156000, i64 94127124156392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124029216, i32 745, i32 75), !dbg !1567
  store double %259, double* %44, align 8, !dbg !1567
  call void @llvm.dbg.declare(metadata double* %45, metadata !1579, metadata !100), !dbg !1580
  %260 = load double, double* %32, align 8, !dbg !1581
  %261 = fmul double 0x3E97992DB8C89605, %260, !dbg !1582
  call void @fMulHandler(double 0x3E97992DB8C89605, double %260, double %261, i64 0, i64 94127124030856, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124162528, i32 746, i32 41), !dbg !1583
  %262 = load double, double* %33, align 8, !dbg !1583
  %263 = fmul double %261, %262, !dbg !1584
  call void @fMulHandler(double %261, double %262, double %263, i64 94127124162528, i64 94127124162888, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124163296, i32 746, i32 43), !dbg !1585
  %264 = load double, double* %33, align 8, !dbg !1585
  %265 = fmul double 3.696030e+05, %264, !dbg !1586
  call void @fMulHandler(double 3.696030e+05, double %264, double %265, i64 0, i64 94127124163688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124164128, i32 746, i32 66), !dbg !1587
  %266 = fadd double 3.037500e+04, %265, !dbg !1587
  call void @fAddHandler(double 3.037500e+04, double %265, double %266, i64 0, i64 94127124164128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124164544, i32 746, i32 56), !dbg !1588
  %267 = load double, double* %34, align 8, !dbg !1588
  %268 = fmul double 7.657650e+05, %267, !dbg !1589
  call void @fMulHandler(double 7.657650e+05, double %267, double %268, i64 0, i64 94127124164904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124165344, i32 746, i32 81), !dbg !1590
  %269 = fadd double %266, %268, !dbg !1590
  call void @fAddHandler(double %266, double %268, double %269, i64 94127124164544, i64 94127124165344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124165728, i32 746, i32 71), !dbg !1591
  %270 = load double, double* %35, align 8, !dbg !1591
  %271 = fmul double 4.254250e+05, %270, !dbg !1592
  call void @fMulHandler(double 4.254250e+05, double %270, double %271, i64 0, i64 94127124166120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124166560, i32 746, i32 96), !dbg !1593
  %272 = fadd double %269, %271, !dbg !1593
  call void @fAddHandler(double %269, double %271, double %272, i64 94127124165728, i64 94127124166560, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124166944, i32 746, i32 86), !dbg !1594
  %273 = fmul double %263, %272, !dbg !1594
  call void @fMulHandler(double %263, double %272, double %273, i64 94127124163296, i64 94127124166944, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124167360, i32 746, i32 46), !dbg !1595
  %274 = load double, double* %39, align 8, !dbg !1595
  %275 = fdiv double %273, %274, !dbg !1596
  call void @fDivHandler(double %273, double %274, double %275, i64 94127124167360, i64 94127124167752, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124168160, i32 746, i32 100), !dbg !1580
  store double %275, double* %45, align 8, !dbg !1580
  %276 = load double, double* %41, align 8, !dbg !1597
  %277 = load double, double* %42, align 8, !dbg !1598
  %278 = fadd double %276, %277, !dbg !1599
  call void @fAddHandler(double %276, double %277, double %278, i64 94127124170232, i64 94127124170616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124171024, i32 747, i32 18), !dbg !1600
  %279 = load double, double* %43, align 8, !dbg !1600
  %280 = fadd double %278, %279, !dbg !1601
  call void @fAddHandler(double %278, double %279, double %280, i64 94127124171024, i64 94127124171416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124171824, i32 747, i32 26), !dbg !1602
  %281 = load double, double* %44, align 8, !dbg !1602
  %282 = fadd double %280, %281, !dbg !1603
  call void @fAddHandler(double %280, double %281, double %282, i64 94127124171824, i64 94127124172216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124172624, i32 747, i32 34), !dbg !1604
  %283 = load double, double* %45, align 8, !dbg !1604
  %284 = fadd double %282, %283, !dbg !1605
  call void @fAddHandler(double %282, double %283, double %284, i64 94127124172624, i64 94127124173016, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94127124173424, i32 747, i32 42), !dbg !1606
  store double %284, double* %3, align 8, !dbg !1606
  br label %285, !dbg !1606

; <label>:285:                                    ; preds = %184, %151, %49
  %286 = load double, double* %3, align 8, !dbg !1607
  ret double %286, !dbg !1607
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
  %21 = call i1 @fCmpInstHandler(double %19, double 9.000000e-01, i1 %20, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124178992, i32 754, i32 8), !dbg !1616
  br i1 %21, label %22, label %31, !dbg !1616

; <label>:22:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1617, metadata !100), !dbg !1619
  %23 = load double, double* %4, align 8, !dbg !1620
  %24 = fmul double 2.000000e+01, %23, !dbg !1621
  call void @fMulHandler(double 2.000000e+01, double %23, double %24, i64 0, i64 94127124181128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124181600, i32 755, i32 26), !dbg !1622
  %25 = fdiv double %24, 9.000000e+00, !dbg !1622
  call void @fDivHandler(double %24, double 9.000000e+00, double %25, i64 94127124181600, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124182016, i32 755, i32 28), !dbg !1623
  %26 = fsub double %25, 1.000000e+00, !dbg !1623
  call void @fSubHandler(double %25, double 1.000000e+00, double %26, i64 94127124182016, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124182432, i32 755, i32 33), !dbg !1619
  store double %26, double* %6, align 8, !dbg !1619
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1624, metadata !100), !dbg !1625
  %27 = load double, double* %6, align 8, !dbg !1626
  %28 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A3_lt1_cs, double %27, %struct.gsl_sf_result_struct* %7), !dbg !1627
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1628
  %30 = load double, double* %29, align 8, !dbg !1628
  store double %30, double* %3, align 8, !dbg !1629
  br label %75, !dbg !1629

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !1630
  %33 = fcmp olt double %32, 1.100000e+00, !dbg !1632
  %34 = call i1 @fCmpInstHandler(double %32, double 1.100000e+00, i1 %33, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124191248, i32 760, i32 13), !dbg !1633
  br i1 %34, label %35, label %56, !dbg !1633

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %8, metadata !1634, metadata !100), !dbg !1636
  %36 = load double, double* %4, align 8, !dbg !1637
  %37 = fsub double 1.000000e+00, %36, !dbg !1638
  call void @fSubHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 94127124193384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124193792, i32 761, i32 19), !dbg !1636
  store double %37, double* %8, align 8, !dbg !1636
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
  %38 = load double, double* %8, align 8, !dbg !1653
  %39 = load double, double* %8, align 8, !dbg !1654
  %40 = load double, double* %8, align 8, !dbg !1655
  %41 = load double, double* %8, align 8, !dbg !1656
  %42 = load double, double* %8, align 8, !dbg !1657
  %43 = load double, double* %8, align 8, !dbg !1658
  %44 = fmul double %43, 0x3F32D5A4589D6AA7, !dbg !1659
  call void @fMulHandler(double %43, double 0x3F32D5A4589D6AA7, double %44, i64 94127124217576, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124217984, i32 769, i32 58), !dbg !1660
  %45 = fadd double 0x3F4C7BB53D325123, %44, !dbg !1660
  call void @fAddHandler(double 0x3F4C7BB53D325123, double %44, double %45, i64 0, i64 94127124217984, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124218400, i32 769, i32 55), !dbg !1661
  %46 = fmul double %42, %45, !dbg !1661
  call void @fMulHandler(double %42, double %45, double %46, i64 94127124217192, i64 94127124218400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124218816, i32 769, i32 50), !dbg !1662
  %47 = fadd double 0x3F52CD6288BCC7B8, %46, !dbg !1662
  call void @fAddHandler(double 0x3F52CD6288BCC7B8, double %46, double %47, i64 0, i64 94127124218816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124219232, i32 769, i32 47), !dbg !1663
  %48 = fmul double %41, %47, !dbg !1663
  call void @fMulHandler(double %41, double %47, double %48, i64 94127124216808, i64 94127124219232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124219648, i32 769, i32 42), !dbg !1664
  %49 = fadd double 0x3F4E23DDFF7B6989, %48, !dbg !1664
  call void @fAddHandler(double 0x3F4E23DDFF7B6989, double %48, double %49, i64 0, i64 94127124219648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124220064, i32 769, i32 39), !dbg !1665
  %50 = fmul double %40, %49, !dbg !1665
  call void @fMulHandler(double %40, double %49, double %50, i64 94127124216424, i64 94127124220064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124220480, i32 769, i32 34), !dbg !1666
  %51 = fadd double 0x3F32372F461980E5, %50, !dbg !1666
  call void @fAddHandler(double 0x3F32372F461980E5, double %50, double %51, i64 0, i64 94127124220480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124220896, i32 769, i32 31), !dbg !1667
  %52 = fmul double %39, %51, !dbg !1667
  call void @fMulHandler(double %39, double %51, double %52, i64 94127124216040, i64 94127124220896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124221312, i32 769, i32 26), !dbg !1668
  %53 = fadd double 0xBF3477E70B082405, %52, !dbg !1668
  call void @fAddHandler(double 0xBF3477E70B082405, double %52, double %53, i64 0, i64 94127124221312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124221728, i32 769, i32 23), !dbg !1669
  %54 = fmul double %38, %53, !dbg !1669
  call void @fMulHandler(double %38, double %53, double %54, i64 94127124215688, i64 94127124221728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124222144, i32 769, i32 18), !dbg !1670
  %55 = fadd double 0xBF3736B0D550B439, %54, !dbg !1670
  call void @fAddHandler(double 0xBF3736B0D550B439, double %54, double %55, i64 0, i64 94127124222144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124222560, i32 769, i32 15), !dbg !1671
  store double %55, double* %3, align 8, !dbg !1671
  br label %75, !dbg !1671

; <label>:56:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %16, metadata !1672, metadata !100), !dbg !1674
  %57 = load double, double* %4, align 8, !dbg !1675
  %58 = fmul double 5.000000e+00, %57, !dbg !1676
  call void @fMulHandler(double 5.000000e+00, double %57, double %58, i64 0, i64 94127124226072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124226480, i32 772, i32 33), !dbg !1677
  %59 = fdiv double 1.100000e+01, %58, !dbg !1677
  call void @fDivHandler(double 1.100000e+01, double %58, double %59, i64 0, i64 94127124226480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124226896, i32 772, i32 28), !dbg !1678
  %60 = fsub double %59, 1.000000e+00, !dbg !1678
  call void @fSubHandler(double %59, double 1.000000e+00, double %60, i64 94127124226896, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124227312, i32 772, i32 37), !dbg !1674
  store double %60, double* %16, align 8, !dbg !1674
  call void @llvm.dbg.declare(metadata double* %17, metadata !1679, metadata !100), !dbg !1680
  %61 = load double, double* %4, align 8, !dbg !1681
  %62 = load double, double* %4, align 8, !dbg !1682
  %63 = fmul double %61, %62, !dbg !1683
  call void @fMulHandler(double %61, double %62, double %63, i64 94127124230472, i64 94127124230824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124231232, i32 773, i32 30), !dbg !1684
  %64 = fdiv double 1.000000e+00, %63, !dbg !1684
  call void @fDivHandler(double 1.000000e+00, double %63, double %64, i64 0, i64 94127124231232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124231680, i32 773, i32 27), !dbg !1680
  store double %64, double* %17, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1685, metadata !100), !dbg !1686
  %65 = load double, double* %16, align 8, !dbg !1687
  %66 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A3_gt1_cs, double %65, %struct.gsl_sf_result_struct* %18), !dbg !1688
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1689
  %68 = load double, double* %67, align 8, !dbg !1689
  %69 = load double, double* %17, align 8, !dbg !1690
  %70 = fmul double %68, %69, !dbg !1691
  call void @fMulHandler(double %68, double %69, double %70, i64 94127124236200, i64 94127124237848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124238256, i32 776, i32 19), !dbg !1692
  %71 = load double, double* %17, align 8, !dbg !1692
  %72 = fmul double %70, %71, !dbg !1693
  call void @fMulHandler(double %70, double %71, double %72, i64 94127124238256, i64 94127124238648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124239056, i32 776, i32 24), !dbg !1694
  %73 = load double, double* %17, align 8, !dbg !1694
  %74 = fmul double %72, %73, !dbg !1695
  call void @fMulHandler(double %72, double %73, double %74, i64 94127124239056, i64 94127124239448, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94127124239856, i32 776, i32 28), !dbg !1696
  store double %74, double* %3, align 8, !dbg !1696
  br label %75, !dbg !1696

; <label>:75:                                     ; preds = %56, %35, %22
  %76 = load double, double* %3, align 8, !dbg !1697
  ret double %76, !dbg !1697
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
  %20 = call i1 @fCmpInstHandler(double %18, double 8.000000e-01, i1 %19, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124249408, i32 783, i32 8), !dbg !1706
  br i1 %20, label %21, label %30, !dbg !1706

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1707, metadata !100), !dbg !1709
  %22 = load double, double* %4, align 8, !dbg !1710
  %23 = fmul double 5.000000e+00, %22, !dbg !1711
  call void @fMulHandler(double 5.000000e+00, double %22, double %23, i64 0, i64 94127124251544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124251952, i32 784, i32 25), !dbg !1712
  %24 = fdiv double %23, 2.000000e+00, !dbg !1712
  call void @fDivHandler(double %23, double 2.000000e+00, double %24, i64 94127124251952, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124252368, i32 784, i32 27), !dbg !1713
  %25 = fsub double %24, 1.000000e+00, !dbg !1713
  call void @fSubHandler(double %24, double 1.000000e+00, double %25, i64 94127124252368, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124252784, i32 784, i32 32), !dbg !1709
  store double %25, double* %6, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1714, metadata !100), !dbg !1715
  %26 = load double, double* %6, align 8, !dbg !1716
  %27 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A4_lt1_cs, double %26, %struct.gsl_sf_result_struct* %7), !dbg !1717
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1718
  %29 = load double, double* %28, align 8, !dbg !1718
  store double %29, double* %3, align 8, !dbg !1719
  br label %73, !dbg !1719

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !1720
  %32 = fcmp olt double %31, 1.200000e+00, !dbg !1722
  %33 = call i1 @fCmpInstHandler(double %31, double 1.200000e+00, i1 %32, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124261600, i32 789, i32 13), !dbg !1723
  br i1 %33, label %34, label %52, !dbg !1723

; <label>:34:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !1724, metadata !100), !dbg !1726
  %35 = load double, double* %4, align 8, !dbg !1727
  %36 = fsub double 1.000000e+00, %35, !dbg !1728
  call void @fSubHandler(double 1.000000e+00, double %35, double %36, i64 0, i64 94127124263736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124264144, i32 790, i32 19), !dbg !1726
  store double %36, double* %8, align 8, !dbg !1726
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
  %37 = load double, double* %8, align 8, !dbg !1741
  %38 = load double, double* %8, align 8, !dbg !1742
  %39 = load double, double* %8, align 8, !dbg !1743
  %40 = load double, double* %8, align 8, !dbg !1744
  %41 = load double, double* %8, align 8, !dbg !1745
  %42 = fmul double %41, 0xBF58E77AE02C68B7, !dbg !1746
  call void @fMulHandler(double %41, double 0xBF58E77AE02C68B7, double %42, i64 94127124284712, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124285120, i32 797, i32 50), !dbg !1747
  %43 = fadd double 0xBF61D1E1F83ADDC9, %42, !dbg !1747
  call void @fAddHandler(double 0xBF61D1E1F83ADDC9, double %42, double %43, i64 0, i64 94127124285120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124285536, i32 797, i32 47), !dbg !1748
  %44 = fmul double %40, %43, !dbg !1748
  call void @fMulHandler(double %40, double %43, double %44, i64 94127124284328, i64 94127124285536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124285952, i32 797, i32 42), !dbg !1749
  %45 = fadd double 0xBF5B17BEB14779F4, %44, !dbg !1749
  call void @fAddHandler(double 0xBF5B17BEB14779F4, double %44, double %45, i64 0, i64 94127124285952, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124286368, i32 797, i32 39), !dbg !1750
  %46 = fmul double %39, %45, !dbg !1750
  call void @fMulHandler(double %39, double %45, double %46, i64 94127124283944, i64 94127124286368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124286784, i32 797, i32 34), !dbg !1751
  %47 = fadd double 0xBF3DFE0C6C8FC428, %46, !dbg !1751
  call void @fAddHandler(double 0xBF3DFE0C6C8FC428, double %46, double %47, i64 0, i64 94127124286784, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124287200, i32 797, i32 31), !dbg !1752
  %48 = fmul double %38, %47, !dbg !1752
  call void @fMulHandler(double %38, double %47, double %48, i64 94127124283560, i64 94127124287200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124287616, i32 797, i32 26), !dbg !1753
  %49 = fadd double 0x3F3A89D4D4B862F1, %48, !dbg !1753
  call void @fAddHandler(double 0x3F3A89D4D4B862F1, double %48, double %49, i64 0, i64 94127124287616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124288032, i32 797, i32 23), !dbg !1754
  %50 = fmul double %37, %49, !dbg !1754
  call void @fMulHandler(double %37, double %49, double %50, i64 94127124283208, i64 94127124288032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124288448, i32 797, i32 18), !dbg !1755
  %51 = fadd double 0x3F38C90BB7946C9A, %50, !dbg !1755
  call void @fAddHandler(double 0x3F38C90BB7946C9A, double %50, double %51, i64 0, i64 94127124288448, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124288864, i32 797, i32 15), !dbg !1756
  store double %51, double* %3, align 8, !dbg !1756
  br label %73, !dbg !1756

; <label>:52:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %15, metadata !1757, metadata !100), !dbg !1759
  %53 = load double, double* %4, align 8, !dbg !1760
  %54 = fmul double 5.000000e+00, %53, !dbg !1761
  call void @fMulHandler(double 5.000000e+00, double %53, double %54, i64 0, i64 94127123695176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123695584, i32 800, i32 33), !dbg !1762
  %55 = fdiv double 1.200000e+01, %54, !dbg !1762
  call void @fDivHandler(double 1.200000e+01, double %54, double %55, i64 0, i64 94127123695584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123696064, i32 800, i32 28), !dbg !1763
  %56 = fsub double %55, 1.000000e+00, !dbg !1763
  call void @fSubHandler(double %55, double 1.000000e+00, double %56, i64 94127123696064, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123696480, i32 800, i32 37), !dbg !1759
  store double %56, double* %15, align 8, !dbg !1759
  call void @llvm.dbg.declare(metadata double* %16, metadata !1764, metadata !100), !dbg !1765
  %57 = load double, double* %4, align 8, !dbg !1766
  %58 = load double, double* %4, align 8, !dbg !1767
  %59 = fmul double %57, %58, !dbg !1768
  call void @fMulHandler(double %57, double %58, double %59, i64 94127123699640, i64 94127123699992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123700400, i32 801, i32 30), !dbg !1769
  %60 = fdiv double 1.000000e+00, %59, !dbg !1769
  call void @fDivHandler(double 1.000000e+00, double %59, double %60, i64 0, i64 94127123700400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123700848, i32 801, i32 27), !dbg !1765
  store double %60, double* %16, align 8, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1770, metadata !100), !dbg !1771
  %61 = load double, double* %15, align 8, !dbg !1772
  %62 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A4_gt1_cs, double %61, %struct.gsl_sf_result_struct* %17), !dbg !1773
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1774
  %64 = load double, double* %63, align 8, !dbg !1774
  %65 = load double, double* %16, align 8, !dbg !1775
  %66 = fmul double %64, %65, !dbg !1776
  call void @fMulHandler(double %64, double %65, double %66, i64 94127123705368, i64 94127123705464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127123705872, i32 804, i32 18), !dbg !1777
  %67 = load double, double* %16, align 8, !dbg !1777
  %68 = fmul double %66, %67, !dbg !1778
  call void @fMulHandler(double %66, double %67, double %68, i64 94127123705872, i64 94127123706264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124317728, i32 804, i32 23), !dbg !1779
  %69 = load double, double* %16, align 8, !dbg !1779
  %70 = fmul double %68, %69, !dbg !1780
  call void @fMulHandler(double %68, double %69, double %70, i64 94127124317728, i64 94127124318120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124318528, i32 804, i32 27), !dbg !1781
  %71 = load double, double* %16, align 8, !dbg !1781
  %72 = fmul double %70, %71, !dbg !1782
  call void @fMulHandler(double %70, double %71, double %72, i64 94127124318528, i64 94127124318920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94127124319328, i32 804, i32 31), !dbg !1783
  store double %72, double* %3, align 8, !dbg !1783
  br label %73, !dbg !1783

; <label>:73:                                     ; preds = %52, %34, %21
  %74 = load double, double* %3, align 8, !dbg !1784
  ret double %74, !dbg !1784
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
  %20 = call i1 @fCmpInstHandler(double %18, double 9.800000e-01, i1 %19, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124328816, i32 529, i32 8), !dbg !1793
  br i1 %20, label %21, label %45, !dbg !1793

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1794, metadata !100), !dbg !1796
  %22 = load double, double* %4, align 8, !dbg !1797
  %23 = load double, double* %4, align 8, !dbg !1798
  %24 = fmul double %22, %23, !dbg !1799
  call void @fMulHandler(double %22, double %23, double %24, i64 94127124330952, i64 94127124331304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124331712, i32 530, i32 36), !dbg !1800
  %25 = fsub double 1.000000e+00, %24, !dbg !1800
  call void @fSubHandler(double 1.000000e+00, double %24, double %25, i64 0, i64 94127124331712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124332160, i32 530, i32 34), !dbg !1801
  %26 = call double @sqrt(double %25) #6, !dbg !1801
  call void @callOneArgHandler(i32 14, double %25, double %26, i64 94127124332160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124332608, i32 530, i32 26), !dbg !1802
  %27 = fdiv double 1.000000e+00, %26, !dbg !1802
  call void @fDivHandler(double 1.000000e+00, double %26, double %27, i64 0, i64 94127124332608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124333120, i32 530, i32 25), !dbg !1796
  store double %27, double* %6, align 8, !dbg !1796
  %28 = load double, double* %5, align 8, !dbg !1803
  %29 = fmul double 4.800000e+01, %28, !dbg !1804
  call void @fMulHandler(double 4.800000e+01, double %28, double %29, i64 0, i64 94127124335160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124335664, i32 531, i32 22), !dbg !1805
  %30 = load double, double* %5, align 8, !dbg !1805
  %31 = fmul double %29, %30, !dbg !1806
  call void @fMulHandler(double %29, double %30, double %31, i64 94127124335664, i64 94127124336024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124336432, i32 531, i32 31), !dbg !1807
  %32 = fdiv double -5.000000e+00, %31, !dbg !1807
  call void @fDivHandler(double -5.000000e+00, double %31, double %32, i64 0, i64 94127124336432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124336944, i32 531, i32 16), !dbg !1808
  %33 = load double, double* %6, align 8, !dbg !1808
  %34 = load double, double* %6, align 8, !dbg !1809
  %35 = fmul double 5.000000e+00, %34, !dbg !1810
  call void @fMulHandler(double 5.000000e+00, double %34, double %35, i64 0, i64 94127124337688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124338128, i32 531, i32 57), !dbg !1811
  %36 = load double, double* %6, align 8, !dbg !1811
  %37 = fmul double %35, %36, !dbg !1812
  call void @fMulHandler(double %35, double %36, double %37, i64 94127124338128, i64 94127124338488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124338896, i32 531, i32 59), !dbg !1813
  %38 = fadd double -3.000000e+00, %37, !dbg !1813
  call void @fAddHandler(double -3.000000e+00, double %37, double %38, i64 0, i64 94127124338896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124339344, i32 531, i32 52), !dbg !1814
  %39 = fmul double %33, %38, !dbg !1814
  call void @fMulHandler(double %33, double %38, double %39, i64 94127124337304, i64 94127124339344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124339728, i32 531, i32 45), !dbg !1815
  %40 = load double, double* %5, align 8, !dbg !1815
  %41 = call double @sqrt(double %40) #6, !dbg !1816
  call void @callOneArgHandler(i32 14, double %40, double %41, i64 94127124340120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124340592, i32 531, i32 69), !dbg !1817
  %42 = fmul double 2.400000e+01, %41, !dbg !1817
  call void @fMulHandler(double 2.400000e+01, double %41, double %42, i64 0, i64 94127124340592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124341168, i32 531, i32 68), !dbg !1818
  %43 = fdiv double %39, %42, !dbg !1818
  call void @fDivHandler(double %39, double %42, double %43, i64 94127124339728, i64 94127124341168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124341552, i32 531, i32 62), !dbg !1819
  %44 = fadd double %32, %43, !dbg !1819
  call void @fAddHandler(double %32, double %43, double %44, i64 94127124336944, i64 94127124341552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124341968, i32 531, i32 42), !dbg !1820
  store double %44, double* %3, align 8, !dbg !1820
  br label %103, !dbg !1820

; <label>:45:                                     ; preds = %2
  %46 = load double, double* %4, align 8, !dbg !1821
  %47 = fcmp olt double %46, 1.020000e+00, !dbg !1823
  %48 = call i1 @fCmpInstHandler(double %46, double 1.020000e+00, i1 %47, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124344944, i32 533, i32 13), !dbg !1824
  br i1 %48, label %49, label %76, !dbg !1824

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %7, metadata !1825, metadata !100), !dbg !1827
  %50 = load double, double* %4, align 8, !dbg !1828
  %51 = fsub double 1.000000e+00, %50, !dbg !1829
  call void @fSubHandler(double 1.000000e+00, double %50, double %51, i64 0, i64 94127124347080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124347488, i32 534, i32 25), !dbg !1827
  store double %51, double* %7, align 8, !dbg !1827
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
  %52 = load double, double* %7, align 8, !dbg !1848
  %53 = load double, double* %7, align 8, !dbg !1849
  %54 = load double, double* %7, align 8, !dbg !1850
  %55 = load double, double* %7, align 8, !dbg !1851
  %56 = load double, double* %7, align 8, !dbg !1852
  %57 = load double, double* %7, align 8, !dbg !1853
  %58 = load double, double* %7, align 8, !dbg !1854
  %59 = load double, double* %7, align 8, !dbg !1855
  %60 = fmul double %59, 0xBF28FE652CE80F79, !dbg !1856
  call void @fMulHandler(double %59, double 0xBF28FE652CE80F79, double %60, i64 94127124377704, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124378112, i32 544, i32 74), !dbg !1857
  %61 = fadd double 0xBF2146BADE1F5571, %60, !dbg !1857
  call void @fAddHandler(double 0xBF2146BADE1F5571, double %60, double %61, i64 0, i64 94127124378112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124378528, i32 544, i32 71), !dbg !1858
  %62 = fmul double %58, %61, !dbg !1858
  call void @fMulHandler(double %58, double %61, double %62, i64 94127124377320, i64 94127124378528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124378944, i32 544, i32 66), !dbg !1859
  %63 = fadd double 0x3F014F831CDE0975, %62, !dbg !1859
  call void @fAddHandler(double 0x3F014F831CDE0975, double %62, double %63, i64 0, i64 94127124378944, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124379360, i32 544, i32 63), !dbg !1860
  %64 = fmul double %57, %63, !dbg !1860
  call void @fMulHandler(double %57, double %63, double %64, i64 94127124376936, i64 94127124379360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124379776, i32 544, i32 58), !dbg !1861
  %65 = fadd double 0x3F3B52D787939150, %64, !dbg !1861
  call void @fAddHandler(double 0x3F3B52D787939150, double %64, double %65, i64 0, i64 94127124379776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124380192, i32 544, i32 55), !dbg !1862
  %66 = fmul double %56, %65, !dbg !1862
  call void @fMulHandler(double %56, double %65, double %66, i64 94127124376552, i64 94127124380192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124380608, i32 544, i32 50), !dbg !1863
  %67 = fadd double 0x3F54376E5603FE6D, %66, !dbg !1863
  call void @fAddHandler(double 0x3F54376E5603FE6D, double %66, double %67, i64 0, i64 94127124380608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124381024, i32 544, i32 47), !dbg !1864
  %68 = fmul double %55, %67, !dbg !1864
  call void @fMulHandler(double %55, double %67, double %68, i64 94127124376168, i64 94127124381024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124381440, i32 544, i32 42), !dbg !1865
  %69 = fadd double 0x3F677DF1ECA75C1C, %68, !dbg !1865
  call void @fAddHandler(double 0x3F677DF1ECA75C1C, double %68, double %69, i64 0, i64 94127124381440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124381856, i32 544, i32 39), !dbg !1866
  %70 = fmul double %54, %69, !dbg !1866
  call void @fMulHandler(double %54, double %69, double %70, i64 94127124375784, i64 94127124381856, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124382272, i32 544, i32 34), !dbg !1867
  %71 = fadd double 0x3F7854F7DB2B1A7F, %70, !dbg !1867
  call void @fAddHandler(double 0x3F7854F7DB2B1A7F, double %70, double %71, i64 0, i64 94127124382272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124382688, i32 544, i32 31), !dbg !1868
  %72 = fmul double %53, %71, !dbg !1868
  call void @fMulHandler(double %53, double %71, double %72, i64 94127124375400, i64 94127124382688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124383104, i32 544, i32 26), !dbg !1869
  %73 = fadd double 0x3F86EFA85CC9E550, %72, !dbg !1869
  call void @fAddHandler(double 0x3F86EFA85CC9E550, double %72, double %73, i64 0, i64 94127124383104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124383520, i32 544, i32 23), !dbg !1870
  %74 = fmul double %52, %73, !dbg !1870
  call void @fMulHandler(double %52, double %73, double %74, i64 94127124375048, i64 94127124383520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124383936, i32 544, i32 18), !dbg !1871
  %75 = fadd double 0x3F926E4BDCD91844, %74, !dbg !1871
  call void @fAddHandler(double 0x3F926E4BDCD91844, double %74, double %75, i64 0, i64 94127124383936, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124384352, i32 544, i32 15), !dbg !1872
  store double %75, double* %3, align 8, !dbg !1872
  br label %103, !dbg !1872

; <label>:76:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %17, metadata !1873, metadata !100), !dbg !1875
  %77 = load double, double* %4, align 8, !dbg !1876
  %78 = load double, double* %4, align 8, !dbg !1877
  %79 = load double, double* %4, align 8, !dbg !1878
  %80 = fmul double %78, %79, !dbg !1879
  call void @fMulHandler(double %78, double %79, double %80, i64 94127124388216, i64 94127124388600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124389008, i32 547, i32 46), !dbg !1880
  %81 = fdiv double 1.000000e+00, %80, !dbg !1880
  call void @fDivHandler(double 1.000000e+00, double %80, double %81, i64 0, i64 94127124389008, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124389456, i32 547, i32 43), !dbg !1881
  %82 = fsub double 1.000000e+00, %81, !dbg !1881
  call void @fSubHandler(double 1.000000e+00, double %81, double %82, i64 0, i64 94127124389456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124389872, i32 547, i32 38), !dbg !1882
  %83 = call double @sqrt(double %82) #6, !dbg !1882
  call void @callOneArgHandler(i32 14, double %82, double %83, i64 94127124389872, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124390320, i32 547, i32 29), !dbg !1883
  %84 = fmul double %77, %83, !dbg !1883
  call void @fMulHandler(double %77, double %83, double %84, i64 94127124387864, i64 94127124390320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124390800, i32 547, i32 28), !dbg !1884
  %85 = fdiv double 1.000000e+00, %84, !dbg !1884
  call void @fDivHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 94127124390800, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124391248, i32 547, i32 25), !dbg !1875
  store double %85, double* %17, align 8, !dbg !1875
  %86 = load double, double* %5, align 8, !dbg !1885
  %87 = fmul double 4.800000e+01, %86, !dbg !1886
  call void @fMulHandler(double 4.800000e+01, double %86, double %87, i64 0, i64 94127124393288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124393728, i32 548, i32 22), !dbg !1887
  %88 = load double, double* %5, align 8, !dbg !1887
  %89 = fmul double %87, %88, !dbg !1888
  call void @fMulHandler(double %87, double %88, double %89, i64 94127124393728, i64 94127124394088, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124394496, i32 548, i32 31), !dbg !1889
  %90 = fdiv double -5.000000e+00, %89, !dbg !1889
  call void @fDivHandler(double -5.000000e+00, double %89, double %90, i64 0, i64 94127124394496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124394944, i32 548, i32 16), !dbg !1890
  %91 = load double, double* %17, align 8, !dbg !1890
  %92 = load double, double* %17, align 8, !dbg !1891
  %93 = fmul double 5.000000e+00, %92, !dbg !1892
  call void @fMulHandler(double 5.000000e+00, double %92, double %93, i64 0, i64 94127124395688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124396128, i32 548, i32 56), !dbg !1893
  %94 = load double, double* %17, align 8, !dbg !1893
  %95 = fmul double %93, %94, !dbg !1894
  call void @fMulHandler(double %93, double %94, double %95, i64 94127124396128, i64 94127124396488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124396896, i32 548, i32 58), !dbg !1895
  %96 = fadd double 3.000000e+00, %95, !dbg !1895
  call void @fAddHandler(double 3.000000e+00, double %95, double %96, i64 0, i64 94127124396896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124397344, i32 548, i32 51), !dbg !1896
  %97 = fmul double %91, %96, !dbg !1896
  call void @fMulHandler(double %91, double %96, double %97, i64 94127124395304, i64 94127124397344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124397728, i32 548, i32 45), !dbg !1897
  %98 = load double, double* %5, align 8, !dbg !1897
  %99 = call double @sqrt(double %98) #6, !dbg !1898
  call void @callOneArgHandler(i32 14, double %98, double %99, i64 94127124398120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124398592, i32 548, i32 68), !dbg !1899
  %100 = fmul double 2.400000e+01, %99, !dbg !1899
  call void @fMulHandler(double 2.400000e+01, double %99, double %100, i64 0, i64 94127124398592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124399104, i32 548, i32 67), !dbg !1900
  %101 = fdiv double %97, %100, !dbg !1900
  call void @fDivHandler(double %97, double %100, double %101, i64 94127124397728, i64 94127124399104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124399488, i32 548, i32 61), !dbg !1901
  %102 = fadd double %90, %101, !dbg !1901
  call void @fAddHandler(double %90, double %101, double %102, i64 94127124394944, i64 94127124399488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @21, i32 0, i32 0), i64 94127124399904, i32 548, i32 42), !dbg !1902
  store double %102, double* %3, align 8, !dbg !1902
  br label %103, !dbg !1902

; <label>:103:                                    ; preds = %76, %49, %21
  %104 = load double, double* %3, align 8, !dbg !1903
  ret double %104, !dbg !1903
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
  %38 = call i1 @fCmpInstHandler(double %36, double 8.800000e-01, i1 %37, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124411408, i32 555, i32 8), !dbg !1912
  br i1 %38, label %39, label %121, !dbg !1912

; <label>:39:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1913, metadata !100), !dbg !1915
  %40 = load double, double* %4, align 8, !dbg !1916
  %41 = load double, double* %4, align 8, !dbg !1917
  %42 = fmul double %40, %41, !dbg !1918
  call void @fMulHandler(double %40, double %41, double %42, i64 94127124413544, i64 94127124413896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124414304, i32 556, i32 38), !dbg !1919
  %43 = fsub double 1.000000e+00, %42, !dbg !1919
  call void @fSubHandler(double 1.000000e+00, double %42, double %43, i64 0, i64 94127124414304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124414752, i32 556, i32 36), !dbg !1920
  %44 = call double @sqrt(double %43) #6, !dbg !1920
  call void @callOneArgHandler(i32 14, double %43, double %44, i64 94127124414752, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124415200, i32 556, i32 28), !dbg !1921
  %45 = fdiv double 1.000000e+00, %44, !dbg !1921
  call void @fDivHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94127124415200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124415712, i32 556, i32 27), !dbg !1915
  store double %45, double* %6, align 8, !dbg !1915
  call void @llvm.dbg.declare(metadata double* %7, metadata !1922, metadata !100), !dbg !1923
  %46 = load double, double* %6, align 8, !dbg !1924
  %47 = load double, double* %6, align 8, !dbg !1925
  %48 = fmul double %46, %47, !dbg !1926
  call void @fMulHandler(double %46, double %47, double %48, i64 94127124418872, i64 94127124419224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124419632, i32 557, i32 25), !dbg !1923
  store double %48, double* %7, align 8, !dbg !1923
  call void @llvm.dbg.declare(metadata double* %8, metadata !1927, metadata !100), !dbg !1928
  %49 = load double, double* %5, align 8, !dbg !1929
  %50 = call double @sqrt(double %49) #6, !dbg !1930
  call void @callOneArgHandler(i32 14, double %49, double %50, i64 94127124422824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124423264, i32 558, i32 24), !dbg !1928
  store double %50, double* %8, align 8, !dbg !1928
  call void @llvm.dbg.declare(metadata double* %9, metadata !1931, metadata !100), !dbg !1932
  %51 = load double, double* %8, align 8, !dbg !1933
  %52 = load double, double* %8, align 8, !dbg !1934
  %53 = fmul double %51, %52, !dbg !1935
  call void @fMulHandler(double %51, double %52, double %53, i64 94127124426520, i64 94127124426872, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124427280, i32 559, i32 26), !dbg !1936
  %54 = load double, double* %8, align 8, !dbg !1936
  %55 = fmul double %53, %54, !dbg !1937
  call void @fMulHandler(double %53, double %54, double %55, i64 94127124427280, i64 94127124427672, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124428080, i32 559, i32 29), !dbg !1932
  store double %55, double* %9, align 8, !dbg !1932
  call void @llvm.dbg.declare(metadata double* %10, metadata !1938, metadata !100), !dbg !1939
  %56 = load double, double* %9, align 8, !dbg !1940
  %57 = load double, double* %9, align 8, !dbg !1941
  %58 = fmul double %56, %57, !dbg !1942
  call void @fMulHandler(double %56, double %57, double %58, i64 94127124431272, i64 94127124431624, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124432032, i32 560, i32 27), !dbg !1943
  %59 = load double, double* %9, align 8, !dbg !1943
  %60 = fmul double %58, %59, !dbg !1944
  call void @fMulHandler(double %58, double %59, double %60, i64 94127124432032, i64 94127124432424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124432832, i32 560, i32 31), !dbg !1939
  store double %60, double* %10, align 8, !dbg !1939
  call void @llvm.dbg.declare(metadata double* %11, metadata !1945, metadata !100), !dbg !1946
  %61 = load double, double* %6, align 8, !dbg !1947
  %62 = load double, double* %6, align 8, !dbg !1948
  %63 = fmul double %61, %62, !dbg !1949
  call void @fMulHandler(double %61, double %62, double %63, i64 94127124436024, i64 94127124436376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124436784, i32 561, i32 27), !dbg !1950
  %64 = load double, double* %6, align 8, !dbg !1950
  %65 = fmul double %63, %64, !dbg !1951
  call void @fMulHandler(double %63, double %64, double %65, i64 94127124436784, i64 94127124437176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124437584, i32 561, i32 29), !dbg !1952
  %66 = load double, double* %7, align 8, !dbg !1952
  %67 = fmul double 3.696030e+05, %66, !dbg !1953
  call void @fMulHandler(double 3.696030e+05, double %66, double %67, i64 0, i64 94127124437976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124438416, i32 561, i32 53), !dbg !1954
  %68 = fsub double 3.037500e+04, %67, !dbg !1954
  call void @fSubHandler(double 3.037500e+04, double %67, double %68, i64 0, i64 94127124438416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124438832, i32 561, i32 43), !dbg !1955
  %69 = load double, double* %7, align 8, !dbg !1955
  %70 = fmul double 7.657650e+05, %69, !dbg !1956
  call void @fMulHandler(double 7.657650e+05, double %69, double %70, i64 0, i64 94127124439192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124439632, i32 561, i32 67), !dbg !1957
  %71 = load double, double* %7, align 8, !dbg !1957
  %72 = fmul double %70, %71, !dbg !1958
  call void @fMulHandler(double %70, double %71, double %72, i64 94127124439632, i64 94127124439992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124440400, i32 561, i32 70), !dbg !1959
  %73 = fadd double %68, %72, !dbg !1959
  call void @fAddHandler(double %68, double %72, double %73, i64 94127124438832, i64 94127124440400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124440816, i32 561, i32 57), !dbg !1960
  %74 = load double, double* %7, align 8, !dbg !1960
  %75 = fmul double 4.254250e+05, %74, !dbg !1961
  call void @fMulHandler(double 4.254250e+05, double %74, double %75, i64 0, i64 94127124441208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124441648, i32 561, i32 84), !dbg !1962
  %76 = load double, double* %7, align 8, !dbg !1962
  %77 = fmul double %75, %76, !dbg !1963
  call void @fMulHandler(double %75, double %76, double %77, i64 94127124441648, i64 94127124442008, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124442416, i32 561, i32 87), !dbg !1964
  %78 = load double, double* %7, align 8, !dbg !1964
  %79 = fmul double %77, %78, !dbg !1965
  call void @fMulHandler(double %77, double %78, double %79, i64 94127124442416, i64 94127124442808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124443216, i32 561, i32 90), !dbg !1966
  %80 = fsub double %73, %79, !dbg !1966
  call void @fSubHandler(double %73, double %79, double %80, i64 94127124440816, i64 94127124443216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124443632, i32 561, i32 74), !dbg !1967
  %81 = fmul double %65, %80, !dbg !1967
  call void @fMulHandler(double %65, double %80, double %81, i64 94127124437584, i64 94127124443632, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124444048, i32 561, i32 32), !dbg !1968
  %82 = fdiv double %81, 4.147200e+05, !dbg !1968
  call void @fDivHandler(double %81, double 4.147200e+05, double %82, i64 94127124444048, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124444560, i32 561, i32 94), !dbg !1946
  store double %82, double* %11, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata double* %12, metadata !1969, metadata !100), !dbg !1970
  %83 = load double, double* %10, align 8, !dbg !1971
  %84 = fmul double 6.635520e+05, %83, !dbg !1972
  call void @fMulHandler(double 6.635520e+05, double %83, double %84, i64 0, i64 94127124447720, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124448192, i32 562, i32 43), !dbg !1973
  %85 = fdiv double 8.508500e+04, %84, !dbg !1973
  call void @fDivHandler(double 8.508500e+04, double %84, double %85, i64 0, i64 94127124448192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124448672, i32 562, i32 33), !dbg !1970
  store double %85, double* %12, align 8, !dbg !1970
  call void @llvm.dbg.declare(metadata double* %13, metadata !1974, metadata !100), !dbg !1975
  %86 = load double, double* %6, align 8, !dbg !1976
  %87 = fmul double 0x3F6C84BDA12F684C, %86, !dbg !1977
  call void @fMulHandler(double 0x3F6C84BDA12F684C, double %86, double %87, i64 0, i64 94127124451832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124452272, i32 563, i32 39), !dbg !1978
  %88 = load double, double* %7, align 8, !dbg !1978
  %89 = fmul double 5.000000e+00, %88, !dbg !1979
  call void @fMulHandler(double 5.000000e+00, double %88, double %89, i64 0, i64 94127124452664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124453104, i32 563, i32 50), !dbg !1980
  %90 = fsub double 3.000000e+00, %89, !dbg !1980
  call void @fSubHandler(double 3.000000e+00, double %89, double %90, i64 0, i64 94127124453104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124453520, i32 563, i32 46), !dbg !1981
  %91 = fmul double %87, %90, !dbg !1981
  call void @fMulHandler(double %87, double %90, double %91, i64 94127124452272, i64 94127124453520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124453904, i32 563, i32 41), !dbg !1982
  %92 = load double, double* %5, align 8, !dbg !1982
  %93 = load double, double* %5, align 8, !dbg !1983
  %94 = fmul double %92, %93, !dbg !1984
  call void @fMulHandler(double %92, double %93, double %94, i64 94127124454296, i64 94127124454680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124455088, i32 563, i32 64), !dbg !1985
  %95 = load double, double* %5, align 8, !dbg !1985
  %96 = fmul double %94, %95, !dbg !1986
  call void @fMulHandler(double %94, double %95, double %96, i64 94127124455088, i64 94127124455480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124455888, i32 563, i32 73), !dbg !1987
  %97 = fdiv double %91, %96, !dbg !1987
  call void @fDivHandler(double %91, double %96, double %97, i64 94127124453904, i64 94127124455888, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124456304, i32 563, i32 54), !dbg !1975
  store double %97, double* %13, align 8, !dbg !1975
  call void @llvm.dbg.declare(metadata double* %14, metadata !1988, metadata !100), !dbg !1989
  %98 = load double, double* %7, align 8, !dbg !1990
  %99 = fmul double 0x3F17B425ED097B42, %98, !dbg !1991
  call void @fMulHandler(double 0x3F17B425ED097B42, double %98, double %99, i64 0, i64 94127124459496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124459936, i32 564, i32 37), !dbg !1992
  %100 = load double, double* %7, align 8, !dbg !1992
  %101 = fmul double 4.620000e+02, %100, !dbg !1993
  call void @fMulHandler(double 4.620000e+02, double %100, double %101, i64 0, i64 94127124460328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124460768, i32 564, i32 54), !dbg !1994
  %102 = fsub double 8.100000e+01, %101, !dbg !1994
  call void @fSubHandler(double 8.100000e+01, double %101, double %102, i64 0, i64 94127124460768, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124461184, i32 564, i32 47), !dbg !1995
  %103 = load double, double* %7, align 8, !dbg !1995
  %104 = fmul double 3.850000e+02, %103, !dbg !1996
  call void @fMulHandler(double 3.850000e+02, double %103, double %104, i64 0, i64 94127124461544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124461984, i32 564, i32 65), !dbg !1997
  %105 = load double, double* %7, align 8, !dbg !1997
  %106 = fmul double %104, %105, !dbg !1998
  call void @fMulHandler(double %104, double %105, double %106, i64 94127124461984, i64 94127124462344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124462752, i32 564, i32 68), !dbg !1999
  %107 = fadd double %102, %106, !dbg !1999
  call void @fAddHandler(double %102, double %106, double %107, i64 94127124461184, i64 94127124462752, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124463168, i32 564, i32 58), !dbg !2000
  %108 = fmul double %99, %107, !dbg !2000
  call void @fMulHandler(double %99, double %107, double %108, i64 94127124459936, i64 94127124463168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124463584, i32 564, i32 40), !dbg !2001
  %109 = load double, double* %9, align 8, !dbg !2001
  %110 = fdiv double %108, %109, !dbg !2002
  call void @fDivHandler(double %108, double %109, double %110, i64 94127124463584, i64 94127124463976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124464384, i32 564, i32 72), !dbg !1989
  store double %110, double* %14, align 8, !dbg !1989
  %111 = load double, double* %11, align 8, !dbg !2003
  %112 = load double, double* %12, align 8, !dbg !2004
  %113 = fadd double %111, %112, !dbg !2005
  call void @fAddHandler(double %111, double %112, double %113, i64 94127124466456, i64 94127124466840, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124467248, i32 565, i32 20), !dbg !2006
  %114 = load double, double* %13, align 8, !dbg !2006
  %115 = fadd double %113, %114, !dbg !2007
  call void @fAddHandler(double %113, double %114, double %115, i64 94127124467248, i64 94127124467640, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124468048, i32 565, i32 28), !dbg !2008
  %116 = load double, double* %14, align 8, !dbg !2008
  %117 = fadd double %115, %116, !dbg !2009
  call void @fAddHandler(double %115, double %116, double %117, i64 94127124468048, i64 94127124468440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124468848, i32 565, i32 36), !dbg !2010
  %118 = fsub double -0.000000e+00, %117, !dbg !2010
  call void @fSubHandler(double -0.000000e+00, double %117, double %118, i64 0, i64 94127124468848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124469264, i32 565, i32 12), !dbg !2011
  %119 = load double, double* %8, align 8, !dbg !2011
  %120 = fdiv double %118, %119, !dbg !2012
  call void @fDivHandler(double %118, double %119, double %120, i64 94127124469264, i64 94127124469656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124470064, i32 565, i32 44), !dbg !2013
  store double %120, double* %3, align 8, !dbg !2013
  br label %241, !dbg !2013

; <label>:121:                                    ; preds = %2
  %122 = load double, double* %4, align 8, !dbg !2014
  %123 = fcmp olt double %122, 1.120000e+00, !dbg !2016
  %124 = call i1 @fCmpInstHandler(double %122, double 1.120000e+00, i1 %123, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124473040, i32 567, i32 13), !dbg !2017
  br i1 %124, label %125, label %158, !dbg !2017

; <label>:125:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata double* %15, metadata !2018, metadata !100), !dbg !2020
  %126 = load double, double* %4, align 8, !dbg !2021
  %127 = fsub double 1.000000e+00, %126, !dbg !2022
  call void @fSubHandler(double 1.000000e+00, double %126, double %127, i64 0, i64 94127124475176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124475584, i32 568, i32 25), !dbg !2020
  store double %127, double* %15, align 8, !dbg !2020
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
  %128 = load double, double* %15, align 8, !dbg !2045
  %129 = load double, double* %15, align 8, !dbg !2046
  %130 = load double, double* %15, align 8, !dbg !2047
  %131 = load double, double* %15, align 8, !dbg !2048
  %132 = load double, double* %15, align 8, !dbg !2049
  %133 = load double, double* %15, align 8, !dbg !2050
  %134 = load double, double* %15, align 8, !dbg !2051
  %135 = load double, double* %15, align 8, !dbg !2052
  %136 = load double, double* %15, align 8, !dbg !2053
  %137 = load double, double* %15, align 8, !dbg !2054
  %138 = fmul double %137, 0x3F2CB7278E50B62C, !dbg !2055
  call void @fMulHandler(double %137, double 0x3F2CB7278E50B62C, double %138, i64 94127124514296, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124514704, i32 580, i32 70), !dbg !2056
  %139 = fadd double 0x3F34BC4599140EED, %138, !dbg !2056
  call void @fAddHandler(double 0x3F34BC4599140EED, double %138, double %139, i64 0, i64 94127124514704, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124515120, i32 580, i32 68), !dbg !2057
  %140 = fmul double %136, %139, !dbg !2057
  call void @fMulHandler(double %136, double %139, double %140, i64 94127124513912, i64 94127124515120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124515536, i32 580, i32 64), !dbg !2058
  %141 = fadd double 0x3F3C1C0C7B3EBEF7, %140, !dbg !2058
  call void @fAddHandler(double 0x3F3C1C0C7B3EBEF7, double %140, double %141, i64 0, i64 94127124515536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124515952, i32 580, i32 62), !dbg !2059
  %142 = fmul double %135, %141, !dbg !2059
  call void @fMulHandler(double %135, double %141, double %142, i64 94127124513528, i64 94127124515952, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124516368, i32 580, i32 58), !dbg !2060
  %143 = fadd double 0x3F4186B0ADAC078D, %142, !dbg !2060
  call void @fAddHandler(double 0x3F4186B0ADAC078D, double %142, double %143, i64 0, i64 94127124516368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124516784, i32 580, i32 56), !dbg !2061
  %144 = fmul double %134, %143, !dbg !2061
  call void @fMulHandler(double %134, double %143, double %144, i64 94127124513144, i64 94127124516784, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124517200, i32 580, i32 52), !dbg !2062
  %145 = fadd double 0x3F434D6879059EC9, %144, !dbg !2062
  call void @fAddHandler(double 0x3F434D6879059EC9, double %144, double %145, i64 0, i64 94127124517200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124517616, i32 580, i32 50), !dbg !2063
  %146 = fmul double %133, %145, !dbg !2063
  call void @fMulHandler(double %133, double %145, double %146, i64 94127124512760, i64 94127124517616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124518032, i32 580, i32 46), !dbg !2064
  %147 = fadd double 0x3F40F64A90A0E4E4, %146, !dbg !2064
  call void @fAddHandler(double 0x3F40F64A90A0E4E4, double %146, double %147, i64 0, i64 94127124518032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124518448, i32 580, i32 44), !dbg !2065
  %148 = fmul double %132, %147, !dbg !2065
  call void @fMulHandler(double %132, double %147, double %148, i64 94127124512376, i64 94127124518448, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124518864, i32 580, i32 40), !dbg !2066
  %149 = fadd double 0x3F2DD27A405E5E79, %148, !dbg !2066
  call void @fAddHandler(double 0x3F2DD27A405E5E79, double %148, double %149, i64 0, i64 94127124518864, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124519280, i32 580, i32 38), !dbg !2067
  %150 = fmul double %131, %149, !dbg !2067
  call void @fMulHandler(double %131, double %149, double %150, i64 94127124511992, i64 94127124519280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124519696, i32 580, i32 34), !dbg !2068
  %151 = fadd double 0xBF36BC330324852D, %150, !dbg !2068
  call void @fAddHandler(double 0xBF36BC330324852D, double %150, double %151, i64 0, i64 94127124519696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124520112, i32 580, i32 32), !dbg !2069
  %152 = fmul double %130, %151, !dbg !2069
  call void @fMulHandler(double %130, double %151, double %152, i64 94127124509544, i64 94127124520112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124520528, i32 580, i32 28), !dbg !2070
  %153 = fadd double 0xBF52921501A08099, %152, !dbg !2070
  call void @fAddHandler(double 0xBF52921501A08099, double %152, double %153, i64 0, i64 94127124520528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124520944, i32 580, i32 26), !dbg !2071
  %154 = fmul double %129, %153, !dbg !2071
  call void @fMulHandler(double %129, double %153, double %154, i64 94127124509160, i64 94127124520944, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124521360, i32 580, i32 22), !dbg !2072
  %155 = fadd double 0xBF5CC6EA40DB6112, %154, !dbg !2072
  call void @fAddHandler(double 0xBF5CC6EA40DB6112, double %154, double %155, i64 0, i64 94127124521360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124521776, i32 580, i32 20), !dbg !2073
  %156 = fmul double %128, %155, !dbg !2073
  call void @fMulHandler(double %128, double %155, double %156, i64 94127124508808, i64 94127124521776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124522192, i32 580, i32 16), !dbg !2074
  %157 = fadd double 0xBF58756181379EAC, %156, !dbg !2074
  call void @fAddHandler(double 0xBF58756181379EAC, double %156, double %157, i64 0, i64 94127124522192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124522608, i32 580, i32 14), !dbg !2075
  store double %157, double* %3, align 8, !dbg !2075
  br label %241, !dbg !2075

; <label>:158:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata double* %27, metadata !2076, metadata !100), !dbg !2078
  %159 = load double, double* %4, align 8, !dbg !2079
  %160 = load double, double* %4, align 8, !dbg !2080
  %161 = load double, double* %4, align 8, !dbg !2081
  %162 = fmul double %160, %161, !dbg !2082
  call void @fMulHandler(double %160, double %161, double %162, i64 94127124526472, i64 94127124526856, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124527264, i32 583, i32 48), !dbg !2083
  %163 = fdiv double 1.000000e+00, %162, !dbg !2083
  call void @fDivHandler(double 1.000000e+00, double %162, double %163, i64 0, i64 94127124527264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124527712, i32 583, i32 45), !dbg !2084
  %164 = fsub double 1.000000e+00, %163, !dbg !2084
  call void @fSubHandler(double 1.000000e+00, double %163, double %164, i64 0, i64 94127124527712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124528128, i32 583, i32 40), !dbg !2085
  %165 = call double @sqrt(double %164) #6, !dbg !2085
  call void @callOneArgHandler(i32 14, double %164, double %165, i64 94127124528128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124528576, i32 583, i32 31), !dbg !2086
  %166 = fmul double %159, %165, !dbg !2086
  call void @fMulHandler(double %159, double %165, double %166, i64 94127124526120, i64 94127124528576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124529056, i32 583, i32 30), !dbg !2087
  %167 = fdiv double 1.000000e+00, %166, !dbg !2087
  call void @fDivHandler(double 1.000000e+00, double %166, double %167, i64 0, i64 94127124529056, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124529504, i32 583, i32 27), !dbg !2078
  store double %167, double* %27, align 8, !dbg !2078
  call void @llvm.dbg.declare(metadata double* %28, metadata !2088, metadata !100), !dbg !2089
  %168 = load double, double* %27, align 8, !dbg !2090
  %169 = load double, double* %27, align 8, !dbg !2091
  %170 = fmul double %168, %169, !dbg !2092
  call void @fMulHandler(double %168, double %169, double %170, i64 94127124532664, i64 94127124533016, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124533424, i32 584, i32 25), !dbg !2089
  store double %170, double* %28, align 8, !dbg !2089
  call void @llvm.dbg.declare(metadata double* %29, metadata !2093, metadata !100), !dbg !2094
  %171 = load double, double* %5, align 8, !dbg !2095
  %172 = call double @sqrt(double %171) #6, !dbg !2096
  call void @callOneArgHandler(i32 14, double %171, double %172, i64 94127124536616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124537056, i32 585, i32 24), !dbg !2094
  store double %172, double* %29, align 8, !dbg !2094
  call void @llvm.dbg.declare(metadata double* %30, metadata !2097, metadata !100), !dbg !2098
  %173 = load double, double* %29, align 8, !dbg !2099
  %174 = load double, double* %29, align 8, !dbg !2100
  %175 = fmul double %173, %174, !dbg !2101
  call void @fMulHandler(double %173, double %174, double %175, i64 94127124540312, i64 94127124540664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124541072, i32 586, i32 26), !dbg !2102
  %176 = load double, double* %29, align 8, !dbg !2102
  %177 = fmul double %175, %176, !dbg !2103
  call void @fMulHandler(double %175, double %176, double %177, i64 94127124541072, i64 94127124541464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124541872, i32 586, i32 29), !dbg !2098
  store double %177, double* %30, align 8, !dbg !2098
  call void @llvm.dbg.declare(metadata double* %31, metadata !2104, metadata !100), !dbg !2105
  %178 = load double, double* %30, align 8, !dbg !2106
  %179 = load double, double* %30, align 8, !dbg !2107
  %180 = fmul double %178, %179, !dbg !2108
  call void @fMulHandler(double %178, double %179, double %180, i64 94127124545064, i64 94127124545416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124545824, i32 587, i32 27), !dbg !2109
  %181 = load double, double* %30, align 8, !dbg !2109
  %182 = fmul double %180, %181, !dbg !2110
  call void @fMulHandler(double %180, double %181, double %182, i64 94127124545824, i64 94127124546216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124546624, i32 587, i32 31), !dbg !2105
  store double %182, double* %31, align 8, !dbg !2105
  call void @llvm.dbg.declare(metadata double* %32, metadata !2111, metadata !100), !dbg !2112
  %183 = load double, double* %28, align 8, !dbg !2113
  %184 = fsub double -0.000000e+00, %183, !dbg !2114
  call void @fSubHandler(double -0.000000e+00, double %183, double %184, i64 0, i64 94127124549816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124550192, i32 588, i32 26), !dbg !2115
  %185 = load double, double* %27, align 8, !dbg !2115
  %186 = fmul double %184, %185, !dbg !2116
  call void @fMulHandler(double %184, double %185, double %186, i64 94127124550192, i64 94127124550584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124550992, i32 588, i32 29), !dbg !2117
  %187 = load double, double* %28, align 8, !dbg !2117
  %188 = fmul double 3.696030e+05, %187, !dbg !2118
  call void @fMulHandler(double 3.696030e+05, double %187, double %188, i64 0, i64 94127124551384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124551824, i32 588, i32 53), !dbg !2119
  %189 = fadd double 3.037500e+04, %188, !dbg !2119
  call void @fAddHandler(double 3.037500e+04, double %188, double %189, i64 0, i64 94127124551824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124552240, i32 588, i32 43), !dbg !2120
  %190 = load double, double* %28, align 8, !dbg !2120
  %191 = fmul double 7.657650e+05, %190, !dbg !2121
  call void @fMulHandler(double 7.657650e+05, double %190, double %191, i64 0, i64 94127124552600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124553040, i32 588, i32 67), !dbg !2122
  %192 = load double, double* %28, align 8, !dbg !2122
  %193 = fmul double %191, %192, !dbg !2123
  call void @fMulHandler(double %191, double %192, double %193, i64 94127124553040, i64 94127124553400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124553808, i32 588, i32 70), !dbg !2124
  %194 = fadd double %189, %193, !dbg !2124
  call void @fAddHandler(double %189, double %193, double %194, i64 94127124552240, i64 94127124553808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124554224, i32 588, i32 57), !dbg !2125
  %195 = load double, double* %28, align 8, !dbg !2125
  %196 = fmul double 4.254250e+05, %195, !dbg !2126
  call void @fMulHandler(double 4.254250e+05, double %195, double %196, i64 0, i64 94127124554616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124555056, i32 588, i32 84), !dbg !2127
  %197 = load double, double* %28, align 8, !dbg !2127
  %198 = fmul double %196, %197, !dbg !2128
  call void @fMulHandler(double %196, double %197, double %198, i64 94127124555056, i64 94127124555416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124555824, i32 588, i32 87), !dbg !2129
  %199 = load double, double* %28, align 8, !dbg !2129
  %200 = fmul double %198, %199, !dbg !2130
  call void @fMulHandler(double %198, double %199, double %200, i64 94127124555824, i64 94127124556216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124556624, i32 588, i32 90), !dbg !2131
  %201 = fadd double %194, %200, !dbg !2131
  call void @fAddHandler(double %194, double %200, double %201, i64 94127124554224, i64 94127124556624, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124557040, i32 588, i32 74), !dbg !2132
  %202 = fmul double %186, %201, !dbg !2132
  call void @fMulHandler(double %186, double %201, double %202, i64 94127124550992, i64 94127124557040, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124557456, i32 588, i32 32), !dbg !2133
  %203 = fdiv double %202, 4.147200e+05, !dbg !2133
  call void @fDivHandler(double %202, double 4.147200e+05, double %203, i64 94127124557456, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124557904, i32 588, i32 94), !dbg !2112
  store double %203, double* %32, align 8, !dbg !2112
  call void @llvm.dbg.declare(metadata double* %33, metadata !2134, metadata !100), !dbg !2135
  %204 = load double, double* %31, align 8, !dbg !2136
  %205 = fmul double 6.635520e+05, %204, !dbg !2137
  call void @fMulHandler(double 6.635520e+05, double %204, double %205, i64 0, i64 94127124561064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124561472, i32 589, i32 43), !dbg !2138
  %206 = fdiv double 8.508500e+04, %205, !dbg !2138
  call void @fDivHandler(double 8.508500e+04, double %205, double %206, i64 0, i64 94127124561472, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124561888, i32 589, i32 33), !dbg !2135
  store double %206, double* %33, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata double* %34, metadata !2139, metadata !100), !dbg !2140
  %207 = load double, double* %27, align 8, !dbg !2141
  %208 = fmul double 0xBF6C84BDA12F684C, %207, !dbg !2142
  call void @fMulHandler(double 0xBF6C84BDA12F684C, double %207, double %208, i64 0, i64 94127124565048, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124565488, i32 590, i32 41), !dbg !2143
  %209 = load double, double* %28, align 8, !dbg !2143
  %210 = fmul double 5.000000e+00, %209, !dbg !2144
  call void @fMulHandler(double 5.000000e+00, double %209, double %210, i64 0, i64 94127124565880, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124566320, i32 590, i32 52), !dbg !2145
  %211 = fadd double 3.000000e+00, %210, !dbg !2145
  call void @fAddHandler(double 3.000000e+00, double %210, double %211, i64 0, i64 94127124566320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124566736, i32 590, i32 48), !dbg !2146
  %212 = fmul double %208, %211, !dbg !2146
  call void @fMulHandler(double %208, double %211, double %212, i64 94127124565488, i64 94127124566736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124567120, i32 590, i32 43), !dbg !2147
  %213 = load double, double* %5, align 8, !dbg !2147
  %214 = load double, double* %5, align 8, !dbg !2148
  %215 = fmul double %213, %214, !dbg !2149
  call void @fMulHandler(double %213, double %214, double %215, i64 94127124567512, i64 94127124567896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124568304, i32 590, i32 66), !dbg !2150
  %216 = load double, double* %5, align 8, !dbg !2150
  %217 = fmul double %215, %216, !dbg !2151
  call void @fMulHandler(double %215, double %216, double %217, i64 94127124568304, i64 94127124568696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124569104, i32 590, i32 75), !dbg !2152
  %218 = fdiv double %212, %217, !dbg !2152
  call void @fDivHandler(double %212, double %217, double %218, i64 94127124567120, i64 94127124569104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124569520, i32 590, i32 56), !dbg !2140
  store double %218, double* %34, align 8, !dbg !2140
  call void @llvm.dbg.declare(metadata double* %35, metadata !2153, metadata !100), !dbg !2154
  %219 = load double, double* %28, align 8, !dbg !2155
  %220 = fmul double 0x3F17B425ED097B42, %219, !dbg !2156
  call void @fMulHandler(double 0x3F17B425ED097B42, double %219, double %220, i64 0, i64 94127124572712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124573088, i32 591, i32 37), !dbg !2157
  %221 = load double, double* %28, align 8, !dbg !2157
  %222 = fmul double 4.620000e+02, %221, !dbg !2158
  call void @fMulHandler(double 4.620000e+02, double %221, double %222, i64 0, i64 94127124573480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124573920, i32 591, i32 54), !dbg !2159
  %223 = fadd double 8.100000e+01, %222, !dbg !2159
  call void @fAddHandler(double 8.100000e+01, double %222, double %223, i64 0, i64 94127124573920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124574336, i32 591, i32 47), !dbg !2160
  %224 = load double, double* %28, align 8, !dbg !2160
  %225 = fmul double 3.850000e+02, %224, !dbg !2161
  call void @fMulHandler(double 3.850000e+02, double %224, double %225, i64 0, i64 94127124574696, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124575136, i32 591, i32 65), !dbg !2162
  %226 = load double, double* %28, align 8, !dbg !2162
  %227 = fmul double %225, %226, !dbg !2163
  call void @fMulHandler(double %225, double %226, double %227, i64 94127124575136, i64 94127124575496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124575904, i32 591, i32 68), !dbg !2164
  %228 = fadd double %223, %227, !dbg !2164
  call void @fAddHandler(double %223, double %227, double %228, i64 94127124574336, i64 94127124575904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124576320, i32 591, i32 58), !dbg !2165
  %229 = fmul double %220, %228, !dbg !2165
  call void @fMulHandler(double %220, double %228, double %229, i64 94127124573088, i64 94127124576320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124576736, i32 591, i32 40), !dbg !2166
  %230 = load double, double* %30, align 8, !dbg !2166
  %231 = fdiv double %229, %230, !dbg !2167
  call void @fDivHandler(double %229, double %230, double %231, i64 94127124576736, i64 94127124577128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124577536, i32 591, i32 72), !dbg !2154
  store double %231, double* %35, align 8, !dbg !2154
  %232 = load double, double* %32, align 8, !dbg !2168
  %233 = load double, double* %33, align 8, !dbg !2169
  %234 = fadd double %232, %233, !dbg !2170
  call void @fAddHandler(double %232, double %233, double %234, i64 94127124579608, i64 94127124579992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124580400, i32 592, i32 19), !dbg !2171
  %235 = load double, double* %34, align 8, !dbg !2171
  %236 = fadd double %234, %235, !dbg !2172
  call void @fAddHandler(double %234, double %235, double %236, i64 94127124580400, i64 94127124580792, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124581200, i32 592, i32 27), !dbg !2173
  %237 = load double, double* %35, align 8, !dbg !2173
  %238 = fadd double %236, %237, !dbg !2174
  call void @fAddHandler(double %236, double %237, double %238, i64 94127124581200, i64 94127124581592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124582000, i32 592, i32 35), !dbg !2175
  %239 = load double, double* %29, align 8, !dbg !2175
  %240 = fdiv double %238, %239, !dbg !2176
  call void @fDivHandler(double %238, double %239, double %240, i64 94127124582000, i64 94127124582392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @23, i32 0, i32 0), i64 94127124582800, i32 592, i32 43), !dbg !2177
  store double %240, double* %3, align 8, !dbg !2177
  br label %241, !dbg !2177

; <label>:241:                                    ; preds = %158, %125, %39
  %242 = load double, double* %3, align 8, !dbg !2178
  ret double %242, !dbg !2178
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
  %24 = call i1 @fCmpInstHandler(double %22, double 8.000000e-01, i1 %23, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124590672, i32 599, i32 8), !dbg !2187
  br i1 %24, label %25, label %36, !dbg !2187

; <label>:25:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !2188, metadata !100), !dbg !2190
  %26 = load double, double* %4, align 8, !dbg !2191
  %27 = fmul double 5.000000e+00, %26, !dbg !2192
  call void @fMulHandler(double 5.000000e+00, double %26, double %27, i64 0, i64 94127124592808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124593216, i32 600, i32 25), !dbg !2193
  %28 = fdiv double %27, 2.000000e+00, !dbg !2193
  call void @fDivHandler(double %27, double 2.000000e+00, double %28, i64 94127124593216, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124593632, i32 600, i32 27), !dbg !2194
  %29 = fsub double %28, 1.000000e+00, !dbg !2194
  call void @fSubHandler(double %28, double 1.000000e+00, double %29, i64 94127124593632, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124594048, i32 600, i32 32), !dbg !2190
  store double %29, double* %6, align 8, !dbg !2190
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !2195, metadata !100), !dbg !2196
  %30 = load double, double* %6, align 8, !dbg !2197
  %31 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B2_lt1_cs, double %30, %struct.gsl_sf_result_struct* %7), !dbg !2198
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !2199
  %33 = load double, double* %32, align 8, !dbg !2199
  %34 = load double, double* %4, align 8, !dbg !2200
  %35 = fdiv double %33, %34, !dbg !2201
  call void @fDivHandler(double %33, double %34, double %35, i64 94127124598568, i64 94127124600216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124600624, i32 603, i32 19), !dbg !2202
  store double %35, double* %3, align 8, !dbg !2202
  br label %86, !dbg !2202

; <label>:36:                                     ; preds = %2
  %37 = load double, double* %4, align 8, !dbg !2203
  %38 = fcmp ole double %37, 1.200000e+00, !dbg !2205
  %39 = call i1 @fCmpInstHandler(double %37, double 1.200000e+00, i1 %38, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124603600, i32 605, i32 13), !dbg !2206
  br i1 %39, label %40, label %70, !dbg !2206

; <label>:40:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %8, metadata !2207, metadata !100), !dbg !2209
  %41 = load double, double* %4, align 8, !dbg !2210
  %42 = fsub double 1.000000e+00, %41, !dbg !2211
  call void @fSubHandler(double 1.000000e+00, double %41, double %42, i64 0, i64 94127124605736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124606144, i32 606, i32 25), !dbg !2209
  store double %42, double* %8, align 8, !dbg !2209
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
  %43 = load double, double* %8, align 8, !dbg !2232
  %44 = load double, double* %8, align 8, !dbg !2233
  %45 = load double, double* %8, align 8, !dbg !2234
  %46 = load double, double* %8, align 8, !dbg !2235
  %47 = load double, double* %8, align 8, !dbg !2236
  %48 = load double, double* %8, align 8, !dbg !2237
  %49 = load double, double* %8, align 8, !dbg !2238
  %50 = load double, double* %8, align 8, !dbg !2239
  %51 = load double, double* %8, align 8, !dbg !2240
  %52 = fmul double %51, 0xBF2280A717E75A94, !dbg !2241
  call void @fMulHandler(double %51, double 0xBF2280A717E75A94, double %52, i64 94127124639576, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124639984, i32 617, i32 64), !dbg !2242
  %53 = fadd double 0xBF385529D885EBA9, %52, !dbg !2242
  call void @fAddHandler(double 0xBF385529D885EBA9, double %52, double %53, i64 0, i64 94127124639984, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124640400, i32 617, i32 62), !dbg !2243
  %54 = fmul double %50, %53, !dbg !2243
  call void @fMulHandler(double %50, double %53, double %54, i64 94127124639192, i64 94127124640400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124640816, i32 617, i32 58), !dbg !2244
  %55 = fadd double 0xBF43EEB5A5852587, %54, !dbg !2244
  call void @fAddHandler(double 0xBF43EEB5A5852587, double %54, double %55, i64 0, i64 94127124640816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124641232, i32 617, i32 56), !dbg !2245
  %56 = fmul double %49, %55, !dbg !2245
  call void @fMulHandler(double %49, double %55, double %56, i64 94127124638808, i64 94127124641232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124641648, i32 617, i32 52), !dbg !2246
  %57 = fadd double 0xBF4925E0F13D4038, %56, !dbg !2246
  call void @fAddHandler(double 0xBF4925E0F13D4038, double %56, double %57, i64 0, i64 94127124641648, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124642064, i32 617, i32 50), !dbg !2247
  %58 = fmul double %48, %57, !dbg !2247
  call void @fMulHandler(double %48, double %57, double %58, i64 94127124638424, i64 94127124642064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124642480, i32 617, i32 46), !dbg !2248
  %59 = fadd double 0xBF483C7914B9AC5E, %58, !dbg !2248
  call void @fAddHandler(double 0xBF483C7914B9AC5E, double %58, double %59, i64 0, i64 94127124642480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124642896, i32 617, i32 44), !dbg !2249
  %60 = fmul double %47, %59, !dbg !2249
  call void @fMulHandler(double %47, double %59, double %60, i64 94127124638040, i64 94127124642896, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124643312, i32 617, i32 40), !dbg !2250
  %61 = fadd double 0xBF3CE4761B01F65D, %60, !dbg !2250
  call void @fAddHandler(double 0xBF3CE4761B01F65D, double %60, double %61, i64 0, i64 94127124643312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124643728, i32 617, i32 38), !dbg !2251
  %62 = fmul double %46, %61, !dbg !2251
  call void @fMulHandler(double %46, double %61, double %62, i64 94127124637656, i64 94127124643728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124644144, i32 617, i32 34), !dbg !2252
  %63 = fadd double 0x3F1AA676BF198F64, %62, !dbg !2252
  call void @fAddHandler(double 0x3F1AA676BF198F64, double %62, double %63, i64 0, i64 94127124644144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124644560, i32 617, i32 32), !dbg !2253
  %64 = fmul double %45, %63, !dbg !2253
  call void @fMulHandler(double %45, double %63, double %64, i64 94127124637272, i64 94127124644560, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124644976, i32 617, i32 28), !dbg !2254
  %65 = fadd double 0x3F45F5A03D98E6E4, %64, !dbg !2254
  call void @fAddHandler(double 0x3F45F5A03D98E6E4, double %64, double %65, i64 0, i64 94127124644976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124645392, i32 617, i32 26), !dbg !2255
  %66 = fmul double %44, %65, !dbg !2255
  call void @fMulHandler(double %44, double %65, double %66, i64 94127124636888, i64 94127124645392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124645808, i32 617, i32 22), !dbg !2256
  %67 = fadd double 0x3F4D5B0FC9E066C8, %66, !dbg !2256
  call void @fAddHandler(double 0x3F4D5B0FC9E066C8, double %66, double %67, i64 0, i64 94127124645808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124646224, i32 617, i32 20), !dbg !2257
  %68 = fmul double %43, %67, !dbg !2257
  call void @fMulHandler(double %43, double %67, double %68, i64 94127124636536, i64 94127124646224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124646640, i32 617, i32 16), !dbg !2258
  %69 = fadd double 0x3F42184C8D6EB909, %68, !dbg !2258
  call void @fAddHandler(double 0x3F42184C8D6EB909, double %68, double %69, i64 0, i64 94127124646640, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124647056, i32 617, i32 14), !dbg !2259
  store double %69, double* %3, align 8, !dbg !2259
  br label %86, !dbg !2259

; <label>:70:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %19, metadata !2260, metadata !100), !dbg !2262
  %71 = load double, double* %4, align 8, !dbg !2263
  %72 = fdiv double 1.000000e+00, %71, !dbg !2264
  call void @fDivHandler(double 1.000000e+00, double %71, double %72, i64 0, i64 94127124650568, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124650976, i32 620, i32 26), !dbg !2262
  store double %72, double* %19, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata double* %20, metadata !2265, metadata !100), !dbg !2266
  %73 = load double, double* %19, align 8, !dbg !2267
  %74 = fmul double 2.400000e+00, %73, !dbg !2268
  call void @fMulHandler(double 2.400000e+00, double %73, double %74, i64 0, i64 94127124654136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124654608, i32 621, i32 32), !dbg !2269
  %75 = fsub double %74, 1.000000e+00, !dbg !2269
  call void @fSubHandler(double %74, double 1.000000e+00, double %75, i64 94127124654608, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124655024, i32 621, i32 37), !dbg !2266
  store double %75, double* %20, align 8, !dbg !2266
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !2270, metadata !100), !dbg !2271
  %76 = load double, double* %20, align 8, !dbg !2272
  %77 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B2_gt1_cs, double %76, %struct.gsl_sf_result_struct* %21), !dbg !2273
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2274
  %79 = load double, double* %78, align 8, !dbg !2274
  %80 = load double, double* %19, align 8, !dbg !2275
  %81 = fmul double %79, %80, !dbg !2276
  call void @fMulHandler(double %79, double %80, double %81, i64 94127124659544, i64 94127124661192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124661600, i32 624, i32 18), !dbg !2277
  %82 = load double, double* %19, align 8, !dbg !2277
  %83 = fmul double %81, %82, !dbg !2278
  call void @fMulHandler(double %81, double %82, double %83, i64 94127124661600, i64 94127124661992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124662400, i32 624, i32 22), !dbg !2279
  %84 = load double, double* %19, align 8, !dbg !2279
  %85 = fmul double %83, %84, !dbg !2280
  call void @fMulHandler(double %83, double %84, double %85, i64 94127124662400, i64 94127124662792, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @25, i32 0, i32 0), i64 94127124663200, i32 624, i32 25), !dbg !2281
  store double %85, double* %3, align 8, !dbg !2281
  br label %86, !dbg !2281

; <label>:86:                                     ; preds = %70, %40, %25
  %87 = load double, double* %3, align 8, !dbg !2282
  ret double %87, !dbg !2282
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
  %21 = call i1 @fCmpInstHandler(double %19, double 8.000000e-01, i1 %20, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124672800, i32 631, i32 8), !dbg !2291
  br i1 %21, label %22, label %31, !dbg !2291

; <label>:22:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !2292, metadata !100), !dbg !2294
  %23 = load double, double* %4, align 8, !dbg !2295
  %24 = fmul double 5.000000e+00, %23, !dbg !2296
  call void @fMulHandler(double 5.000000e+00, double %23, double %24, i64 0, i64 94127124674936, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124675344, i32 632, i32 25), !dbg !2297
  %25 = fdiv double %24, 2.000000e+00, !dbg !2297
  call void @fDivHandler(double %24, double 2.000000e+00, double %25, i64 94127124675344, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124675760, i32 632, i32 27), !dbg !2298
  %26 = fsub double %25, 1.000000e+00, !dbg !2298
  call void @fSubHandler(double %25, double 1.000000e+00, double %26, i64 94127124675760, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124676176, i32 632, i32 32), !dbg !2294
  store double %26, double* %6, align 8, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !2299, metadata !100), !dbg !2300
  %27 = load double, double* %6, align 8, !dbg !2301
  %28 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B3_lt1_cs, double %27, %struct.gsl_sf_result_struct* %7), !dbg !2302
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !2303
  %30 = load double, double* %29, align 8, !dbg !2303
  store double %30, double* %3, align 8, !dbg !2304
  br label %75, !dbg !2304

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !2305
  %33 = fcmp olt double %32, 1.200000e+00, !dbg !2307
  %34 = call i1 @fCmpInstHandler(double %32, double 1.200000e+00, i1 %33, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124684928, i32 637, i32 13), !dbg !2308
  br i1 %34, label %35, label %56, !dbg !2308

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %8, metadata !2309, metadata !100), !dbg !2311
  %36 = load double, double* %4, align 8, !dbg !2312
  %37 = fsub double 1.000000e+00, %36, !dbg !2313
  call void @fSubHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 94127124687064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124687472, i32 638, i32 25), !dbg !2311
  store double %37, double* %8, align 8, !dbg !2311
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
  %38 = load double, double* %8, align 8, !dbg !2328
  %39 = load double, double* %8, align 8, !dbg !2329
  %40 = load double, double* %8, align 8, !dbg !2330
  %41 = load double, double* %8, align 8, !dbg !2331
  %42 = load double, double* %8, align 8, !dbg !2332
  %43 = load double, double* %8, align 8, !dbg !2333
  %44 = fmul double %43, 0x3F585099B7A3C588, !dbg !2334
  call void @fMulHandler(double %43, double 0x3F585099B7A3C588, double %44, i64 94127124711256, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124711664, i32 646, i32 58), !dbg !2335
  %45 = fadd double 0x3F588D1D34898B89, %44, !dbg !2335
  call void @fAddHandler(double 0x3F588D1D34898B89, double %44, double %45, i64 0, i64 94127124711664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124712080, i32 646, i32 55), !dbg !2336
  %46 = fmul double %42, %45, !dbg !2336
  call void @fMulHandler(double %42, double %45, double %46, i64 94127124710872, i64 94127124712080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124712496, i32 646, i32 50), !dbg !2337
  %47 = fadd double 0x3F4E870975EFB114, %46, !dbg !2337
  call void @fAddHandler(double 0x3F4E870975EFB114, double %46, double %47, i64 0, i64 94127124712496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124712912, i32 646, i32 47), !dbg !2338
  %48 = fmul double %41, %47, !dbg !2338
  call void @fMulHandler(double %41, double %47, double %48, i64 94127124710488, i64 94127124712912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124713328, i32 646, i32 42), !dbg !2339
  %49 = fadd double 0xBEDE87FFD92E6A73, %48, !dbg !2339
  call void @fAddHandler(double 0xBEDE87FFD92E6A73, double %48, double %49, i64 0, i64 94127124713328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124713744, i32 646, i32 39), !dbg !2340
  %50 = fmul double %40, %49, !dbg !2340
  call void @fMulHandler(double %40, double %49, double %50, i64 94127124710104, i64 94127124713744, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124714160, i32 646, i32 34), !dbg !2341
  %51 = fadd double 0xBF4A55E4C254A98F, %50, !dbg !2341
  call void @fAddHandler(double 0xBF4A55E4C254A98F, double %50, double %51, i64 0, i64 94127124714160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124714576, i32 646, i32 31), !dbg !2342
  %52 = fmul double %39, %51, !dbg !2342
  call void @fMulHandler(double %39, double %51, double %52, i64 94127124709720, i64 94127124714576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124714992, i32 646, i32 26), !dbg !2343
  %53 = fadd double 0xBF4F513CB014A3D9, %52, !dbg !2343
  call void @fAddHandler(double 0xBF4F513CB014A3D9, double %52, double %53, i64 0, i64 94127124714992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124715408, i32 646, i32 23), !dbg !2344
  %54 = fmul double %38, %53, !dbg !2344
  call void @fMulHandler(double %38, double %53, double %54, i64 94127124709368, i64 94127124715408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124715824, i32 646, i32 18), !dbg !2345
  %55 = fadd double 0xBF3F1AC3EA112D74, %54, !dbg !2345
  call void @fAddHandler(double 0xBF3F1AC3EA112D74, double %54, double %55, i64 0, i64 94127124715824, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124716240, i32 646, i32 15), !dbg !2346
  store double %55, double* %3, align 8, !dbg !2346
  br label %75, !dbg !2346

; <label>:56:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %16, metadata !2347, metadata !100), !dbg !2349
  %57 = load double, double* %4, align 8, !dbg !2350
  %58 = fmul double 5.000000e+00, %57, !dbg !2351
  call void @fMulHandler(double 5.000000e+00, double %57, double %58, i64 0, i64 94127124719752, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124720160, i32 649, i32 33), !dbg !2352
  %59 = fdiv double 1.200000e+01, %58, !dbg !2352
  call void @fDivHandler(double 1.200000e+01, double %58, double %59, i64 0, i64 94127124720160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124720576, i32 649, i32 28), !dbg !2353
  %60 = fsub double %59, 1.000000e+00, !dbg !2353
  call void @fSubHandler(double %59, double 1.000000e+00, double %60, i64 94127124720576, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124720992, i32 649, i32 37), !dbg !2349
  store double %60, double* %16, align 8, !dbg !2349
  call void @llvm.dbg.declare(metadata double* %17, metadata !2354, metadata !100), !dbg !2355
  %61 = load double, double* %4, align 8, !dbg !2356
  %62 = load double, double* %4, align 8, !dbg !2357
  %63 = fmul double %61, %62, !dbg !2358
  call void @fMulHandler(double %61, double %62, double %63, i64 94127124724152, i64 94127124724504, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124724912, i32 650, i32 30), !dbg !2359
  %64 = fdiv double 1.000000e+00, %63, !dbg !2359
  call void @fDivHandler(double 1.000000e+00, double %63, double %64, i64 0, i64 94127124724912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124725360, i32 650, i32 27), !dbg !2355
  store double %64, double* %17, align 8, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !2360, metadata !100), !dbg !2361
  %65 = load double, double* %16, align 8, !dbg !2362
  %66 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B3_gt1_cs, double %65, %struct.gsl_sf_result_struct* %18), !dbg !2363
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !2364
  %68 = load double, double* %67, align 8, !dbg !2364
  %69 = load double, double* %17, align 8, !dbg !2365
  %70 = fmul double %68, %69, !dbg !2366
  call void @fMulHandler(double %68, double %69, double %70, i64 94127124729880, i64 94127124731528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124731936, i32 653, i32 19), !dbg !2367
  %71 = load double, double* %17, align 8, !dbg !2367
  %72 = fmul double %70, %71, !dbg !2368
  call void @fMulHandler(double %70, double %71, double %72, i64 94127124731936, i64 94127124732328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124732736, i32 653, i32 24), !dbg !2369
  %73 = load double, double* %17, align 8, !dbg !2369
  %74 = fmul double %72, %73, !dbg !2370
  call void @fMulHandler(double %72, double %73, double %74, i64 94127124732736, i64 94127124733128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0), i64 94127124733536, i32 653, i32 28), !dbg !2371
  store double %74, double* %3, align 8, !dbg !2371
  br label %75, !dbg !2371

; <label>:75:                                     ; preds = %56, %35, %22
  %76 = load double, double* %3, align 8, !dbg !2372
  ret double %76, !dbg !2372
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
