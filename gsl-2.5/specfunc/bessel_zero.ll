; ModuleID = 'bessel_zero.c'
source_filename = "bessel_zero.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bessel_zero.c\00", align 1
@gsl_sf_bessel_zero_J0_e.P = internal constant [4 x double] [double 0x3FBFFFFFFFF50A24, double 0x400E1B6CBDE62B91, double 0x403405BB9CEA78A3, double 0x4024BC70DB299EFF], align 16
@gsl_sf_bessel_zero_J0_e.Q = internal constant [4 x double] [double 1.000000e+00, double 0x403EC0C2105D01C0, double 0x40664250849B88E8, double 0x4062FF5192900E7D], align 16
@gsl_sf_bessel_zero_J1_e.a = internal constant [4 x double] [double 0xBFD7382FF85F1247, double 0x3FBECEAFA1D45FA5, double 0x3FA68004C5935ACC, double 0x3F5A1B352C1F3BF9], align 16
@gsl_sf_bessel_zero_J1_e.b = internal constant [4 x double] [double 1.000000e+00, double 0xBFD4D750AA6CF95A, double 0xBFBE116DD53D3205, double 0xBF716778C81545E9], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no zero-th root for nu = 0.0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unimplemented\00", align 1
@coef_jnu_a = internal global [21 x double*] [double* null, double* getelementptr inbounds ([24 x double], [24 x double]* @coef_jnu1_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu2_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu3_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu4_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu5_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu6_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu7_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu8_a, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu9_a, i32 0, i32 0), double* getelementptr inbounds ([20 x double], [20 x double]* @coef_jnu10_a, i32 0, i32 0), double* getelementptr inbounds ([27 x double], [27 x double]* @coef_jnu11_a, i32 0, i32 0), double* getelementptr inbounds ([27 x double], [27 x double]* @coef_jnu12_a, i32 0, i32 0), double* getelementptr inbounds ([30 x double], [30 x double]* @coef_jnu13_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu14_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu15_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu16_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu17_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu18_a, i32 0, i32 0), double* getelementptr inbounds ([26 x double], [26 x double]* @coef_jnu19_a, i32 0, i32 0), double* getelementptr inbounds ([27 x double], [27 x double]* @coef_jnu20_a, i32 0, i32 0)], align 16
@size_jnu_a = internal constant [21 x i64] [i64 0, i64 24, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 20, i64 27, i64 27, i64 30, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 27], align 16
@coef_jnu_b = internal global [11 x double*] [double* null, double* getelementptr inbounds ([15 x double], [15 x double]* @coef_jnu1_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu2_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu3_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu4_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu5_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu6_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu7_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu8_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu9_b, i32 0, i32 0), double* getelementptr inbounds ([19 x double], [19 x double]* @coef_jnu10_b, i32 0, i32 0)], align 16
@size_jnu_b = internal constant [11 x i64] [i64 0, i64 15, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19], align 16
@.str.5 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_zero_J0_e(s, &result)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_zero_J1_e(s, &result)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_zero_Jnu_e(nu, s, &result)\00", align 1
@coef_jnu1_a = internal constant [24 x double] [double 0x400E6A0923912F8A, double 0x3FF5C57254B1F5DD, double 0xBF9F71D78D39D989, double 0x3F728AB7FF1D773D, double 0xBF4A7FB9288E9CCC, double 0x3F24DE7F03677AE7, double 0xBF016B68D3D17A10, double 0x3EDE38F42E5E82CD, double 0xBEBAF2310E971F0C, double 0x3E98863395702F54, double 0xBE76AEA938F43542, double 0x3E5540E1E76ED69B, double -4.687054e-09, double 1.120052e-09, double -2.697670e-10, double 6.542000e-11, double -1.596100e-11, double 3.914000e-12, double -9.650000e-13, double 2.390000e-13, double -5.900000e-14, double 1.500000e-14, double -4.000000e-15, double 1.000000e-15], align 16
@coef_jnu2_a = internal constant [19 x double] [double 0x401BF82FE7BECEA5, double 0x3FF7245E9A20B764, double 0xBF98058915ADD00F, double 0x3F61CB53DB039CB2, double 0xBF30239A9148574C, double 0x3F003F6E827D8C5F, double 0xBED16C852419FDFC, double 0x3EA37CBEA94BD81E, double 0xBE76744241C29DE9, double 0x3E4A73899B1B036B, double -1.844887e-09, double 2.800760e-10, double -4.298600e-11, double 6.658000e-12, double -1.039000e-12, double 1.630000e-13, double -2.600000e-14, double 4.000000e-15, double -1.000000e-15], align 16
@coef_jnu3_a = internal constant [19 x double] [double 0x4025BD42615087A1, double 0x40016B91DA59CB8D, double 0xBFA1D44BD96A5A8F, double 0x3F69F233EA055173, double 0xBF3732781FE0191B, double 0x3F0716D379D11254, double 0xBED88ADF5B5689A2, double 0x3EAB43F8624E5FDA, double 0xBE7F43519E1F9877, double 0x3E525A018477B3F9, double -2.554376e-09, double 3.873350e-10, double -5.942800e-11, double 9.207000e-12, double -1.438000e-12, double 2.260000e-13, double -3.600000e-14, double 6.000000e-15, double -1.000000e-15], align 16
@coef_jnu4_a = internal constant [19 x double] [double 0x402D8028AA5B06F2, double 0x4007439B3C6B2922, double 0xBFA7998A479C4132, double 0x3F70FCA017DC8851, double 0xBF3E164A75966DCE, double 0x3F0DB3067263C49C, double 0xBEDF57605A58967A, double 0x3EB14D0375079864, double 0xBE83BB293F81BEA8, double 0x3E570F101F2147B9, double -3.197208e-09, double 4.832490e-10, double -7.394600e-11, double 1.143100e-11, double -1.782000e-12, double 2.800000e-13, double -4.400000e-14, double 7.000000e-15, double -1.000000e-15], align 16
@coef_jnu5_a = internal constant [19 x double] [double 0x4032A1DBDCB98CBE, double 0x400D1B224C5E7752, double 0xBFAD5A51B8B561BC, double 0x3F74FA805330669F, double 0xBF427583C8835054, double 0x3F121D4727780E11, double 0xBEE303986E96D932, double 0x3EB4E40368C7CCB7, double 0xBE87B8A592ADC845, double 0x3E5B9CF38813A959, double -3.815184e-09, double 5.748390e-10, double -8.771500e-11, double 1.352600e-11, double -2.104000e-12, double 3.300000e-13, double -5.200000e-14, double 8.000000e-15, double -1.000000e-15], align 16
@coef_jnu6_a = internal constant [19 x double] [double 0x403683CC4D2E971C, double 0x4011793544308062, double 0xBFB18C80C316536B, double 0x3F78F5C9ACD3830B, double 0xBF45DC7BB2481C45, double 0x3F155C6F3482E259, double 0xBEE65525042A9628, double 0x3EB872270B763C9A, double 0xBE8BA9B7793F475F, double 0x3E600CB317BBC5D9, double -4.422012e-09, double 6.644710e-10, double -1.011400e-10, double 1.556100e-11, double -2.416000e-12, double 3.780000e-13, double -6.000000e-14, double 9.000000e-15, double -2.000000e-15], align 16
@coef_jnu7_a = internal constant [19 x double] [double 0x403A65D3A27DC88C, double 0x401464C7E09C43DA, double 0xBFB46B4690801BA5, double 0x3F7CEFAFFDC91031, double 0xBF4941A880E27CB5, double 0x3F189930BFE3B548, double 0xBEE9A3699CA47B28, double 0x3EBBFBBF345C1A4B, double 0xBE8F947084184E57, double 0x3E6246783C212889, double -5.023142e-09, double 7.531010e-10, double -1.143890e-10, double 1.756400e-11, double -2.722000e-12, double 4.250000e-13, double -6.700000e-14, double 1.100000e-14, double -2.000000e-15], align 16
@coef_jnu8_a = internal constant [19 x double] [double 0x403E47E9100058D2, double 0x4017504FBEE20762, double 0xBFB749B42E248B79, double 0x3F8074619D7B3603, double 0xBF4CA5C81996DC26, double 0x3F1BD48E3C98D9E2, double 0xBEECEFCC4080D5DE, double 0x3EBF82C0DEBB8B89, double 0xBE91BDC8B8B62B56, double 0x3E647DBA07E31ED0, double -5.621060e-09, double 8.411650e-10, double -1.275380e-10, double 1.955000e-11, double -3.025000e-12, double 4.720000e-13, double -7.400000e-14, double 1.200000e-14, double -2.000000e-15], align 16
@coef_jnu9_a = internal constant [19 x double] [double 0x40411503E3D6BCFD, double 0x401A3BD08D28088C, double 0xBFBA27E89360A1B5, double 0x3F8270A79CEEFA9D, double 0xBF50049EA285A5A0, double 0x3F1F0F0CC7D3058D, double 0xBEF01D81FFD25B0B, double 0x3EC184157AFED029, double 0xBE93B03FF5F53E47, double 4.228390e-08, double -6.217033e-09, double 9.288870e-10, double -1.406270e-10, double 2.152600e-11, double -3.326000e-12, double 5.180000e-13, double -8.100000e-14, double 1.300000e-14, double -2.000000e-15], align 16
@coef_jnu10_a = internal constant [20 x double] [double 0x40430616789FAAFA, double 0x401D274C77AF28E4, double 0xBFBD05F5C667840C, double 0x3F846CBFC724ED01, double 0xBF51B62010DE41E2, double 0x3F21247BA300C854, double 0xBEF1C2BB86482D13, double 0x3EC346457B72D4C7, double 0xBE95A200D8043B1C, double 0x3E68E8327F99B69F, double -6.811759e-09, double 1.016395e-09, double -1.536770e-10, double 2.348600e-11, double -3.616000e-12, double 5.610000e-13, double -9.500000e-14, double 2.700000e-14, double -1.300000e-14, double 5.000000e-15], align 16
@coef_jnu11_a = internal constant [27 x double] [double 0x4048C0B1367ED1E3, double 0x402EAC8124F83182, double 0xBFD58DAD94614E3B, double 0x3FA7ABC480ED86AD, double 0xBF7FFE44F9D5281D, double 0x3F581EBEBF3A783C, double 0xBF3376006BF8301F, double 0x3F1071FA80854A8E, double 0xBEECBE381BF53B0B, double 0x3EC9C473FB40A722, double 0xBEA79124E3FF26BC, double 0x3E85E7B394C9B9DE, double 0xBE64A1F0B158485C, double 9.150838e-09, double 0xBE22E4EB71749CD0, double 0x3E025077A61AB5CB, double 0xBDE1E09F22D1B0DE, double 3.193827e-11, double -7.886050e-12, double 1.959180e-12, double -4.902000e-13, double 1.220700e-13, double -2.820000e-14, double 5.250000e-15, double -1.880000e-15, double 2.800000e-15, double -2.450000e-15], align 16
@coef_jnu12_a = internal constant [27 x double] [double 0x404B0A1592670247, double 0x4030BBCF9EAD9677, double 0xBFD77FF1C95A3908, double 0x3FA9C829444830C2, double 0xBF8167D84F2AF604, double 0x3F5A380C44894DAA, double 0xBF352255FCF407DE, double 0x3F11D7AABC39833C, double 0xBEEF281BAAB958F2, double 0x3ECBE801FAAEA427, double 0xBEA98042A4FD1443, double 0x3E87AEC14F7DFCA6, double 0xBE6649D4A6B61ECE, double 0x3E45361038A24B7C, double 0xBE2460BEEC58762A, double 0x3E03BCBA8D5EA5A7, double 0xBDE3408B7C1DCF32, double 3.437166e-11, double -8.482150e-12, double 2.105540e-12, double -5.262300e-13, double 1.318900e-13, double -3.175000e-14, double 5.730000e-15, double 5.600000e-16, double -8.700000e-16, double -6.500000e-16], align 16
@coef_jnu13_a = internal constant [30 x double] [double 0x404D537B196B01EF, double 0x4032215DF3359FFE, double 0xBFD9722D52D79319, double 0x3FABE47EAEE1B6ED, double 0xBF82D07FAD15C82E, double 0x3F5C513D8FEE9695, double 0xBF36CE8F4F28E37D, double 0x3F133D3E2E9B63FF, double 0xBEF0C8E1D9C0F9ED, double 0x3ECE0B51B7ACFC07, double 0xBEAB6F1EA1C4C88C, double 0x3E897588F286DC90, double 0xBE67F16D5D310A42, double 0x3E46C515CEE794DD, double 0xBE25DC3DF5F516A7, double 0x3E0528A724E4FB35, double 0xBDE4A007F6D7F692, double 3.679707e-11, double -9.071590e-12, double 2.247130e-12, double -5.594300e-13, double 1.406900e-13, double -3.679000e-14, double 1.119000e-14, double -4.990000e-15, double 3.430000e-15, double -2.850000e-15, double 2.300000e-15, double -1.700000e-15, double 8.700000e-16], align 16
@coef_jnu14_a = internal constant [26 x double] [double 0x404F9CE18A6F2DAB, double 0x403386EBB8029B95, double 0xBFDB64621AE10B35, double 0x3FAE00C831EE84BF, double 0xBF84391BE2B02161, double 0x3F5E6A592E925BC2, double 0xBF387AB30EAE3781, double 0x3F14A2BBC2E54DD0, double 0xBEF1FD9F6122AD6F, double 0x3ED017395412772E, double 0xBEAD5DC97541AA9D, double 0x3E8B3C1C90E9AB21, double 0xBE6998CED0B1C117, double 0x3E4853E0C6D22E5B, double 0xBE27577FA8C73F33, double 0x3E069457AE35FFFA, double 0xBDE5FF610B9B950F, double 3.922557e-11, double -9.666370e-12, double 2.393790e-12, double -5.954100e-13, double 1.486800e-13, double -3.726000e-14, double 9.370000e-15, double -2.360000e-15, double 6.000000e-16], align 16
@coef_jnu15_a = internal constant [26 x double] [double 0x4050F3245AFA77AF, double 0x4034EC790A3888D8, double 0xBFDD569185402E22, double 0x3FB00E8424F81FDC, double 0xBF85A1AF4E56978D, double 0x3F6041B1E75F5B14, double 0xBF3A26C5F94EC4EE, double 0x3F1608285D4DE9CA, double 0xBEF3324B89BA64B4, double 0x3ED128B7D02379FA, double 0xBEAF4C4EAB5105DF, double 0x3E8D028881D00524, double 0xBE6B40060C5E621D, double 0x3E49E27E3EA099E3, double 0xBE28D28ED260F968, double 0x3E07FFCB3170E742, double 0xBDE75E6139B38D9A, double 4.164941e-11, double -1.025859e-11, double 2.539210e-12, double -6.312800e-13, double 1.575700e-13, double -3.947000e-14, double 9.920000e-15, double -2.500000e-15, double 6.300000e-16], align 16
@coef_jnu16_a = internal constant [26 x double] [double 0x405217D83C437075, double 0x40365205FF9ADC62, double 0xBFDF48BC9A7DA148, double 0x3FB11CA066FFCC93, double 0xBF870A3BAEA6FC7A, double 0x3F614E306F517E02, double 0xBF3BD2CB84171691, double 0x3F176D878A51402B, double 0xBEF466EA056E9D50, double 0x3ED23A28341BB23B, double 0xBEB09D5B44AE36B6, double 0x3E8EC8D5A39A7849, double 0xBE6CE71CB1EF736A, double 0x3E4B70F9077F3767, double 0xBE2A4D78DB952887, double 0x3E096B16C805A09C, double 0xBDE8BD3642CE97A6, double 4.407196e-11, double -1.085046e-11, double 2.684530e-12, double -6.671200e-13, double 1.664400e-13, double -4.168000e-14, double 1.047000e-14, double -2.640000e-15, double 6.700000e-16], align 16
@coef_jnu17_a = internal constant [26 x double] [double 0x40533C8C5B918D25, double 0x4037B792A8BE6F55, double 0xBFE09D7211AD3FB0, double 0x3FB22AB9911658D2, double 0xBF8872C253B8E355, double 0x3F625AA9780CDD14, double 0xBF3D7EC642F4BF4E, double 0x3F18D2DBEC3BE72A, double 0xBEF59B7D8F373C40, double 0x3ED34B8D5CF37106, double 0xBEB194838F9C9FD0, double 0x3E90478536E1B785, double 0xBE6E8E19B2F7132B, double 0x3E4CFF589F9A5AAD, double 0xBE2BC845E6DAB3E9, double 0x3E0AD64351358B92, double 0xBDEA1BE9E13C2CD9, double 4.649350e-11, double -1.144205e-11, double 2.829790e-12, double -7.029400e-13, double 1.753100e-13, double -4.388000e-14, double 1.102000e-14, double -2.780000e-15, double 7.000000e-16], align 16
@coef_jnu18_a = internal constant [26 x double] [double 0x40546140AE6D7F33, double 0x40391D1F127E1784, double 0xBFE196845D77333B, double 0x3FB338D02C45493A, double 0xBF89DB443F3B335D, double 0x3F63671DFCB546FF, double 0xBF3F2AB82B9C1550, double 0x3F1A3827817A3023, double 0xBEF6D00835EFD05F, double 0x3ED45CE970E6E0F6, double 0xBEB28BA27AAD1B12, double 0x3E912A95D8F595CA, double 0xBE701A811BAFBEB6, double 0x3E4E8DA293335714, double 0xBE2D42FBF30541A5, double 0x3E0C41574371E697, double 0xBDEB7A831B8B089D, double 4.891426e-11, double -1.203343e-11, double 2.974980e-12, double -7.387500e-13, double 1.841800e-13, double -4.608000e-14, double 1.157000e-14, double -2.910000e-15, double 7.400000e-16], align 16
@coef_jnu19_a = internal constant [26 x double] [double 0x405585F52C9AA013, double 0x403A82AB46F85E72, double 0xBFE28F956D772C05, double 0x3FB446E4A3BC24A8, double 0xBF8B43C23A022B4D, double 0x3F64738EC0461934, double 0xBF406B516102C7A7, double 0x3F1B9D6BD32B526E, double 0xBEF8048B8DC01C93, double 0x3ED56E3E14672822, double 0xBEB382B9BF957A90, double 0x3E920D9E8BE41715, double 0xBE70EDED12B6A36C, double 0x3E500DED88B68331, double 0xBE2EBD9F8271A8C8, double 8.636041e-10, double 0xBDECD907593CA76B, double 5.133439e-11, double -1.262465e-11, double 3.120130e-12, double -7.745500e-13, double 1.930400e-13, double -4.829000e-14, double 1.212000e-14, double -3.050000e-15, double 7.700000e-16], align 16
@coef_jnu20_a = internal constant [27 x double] [double 0x4056AAA9CF86B75A, double 0x403BE8374E4059EE, double 0xBFE388A57218E95B, double 0x3FB554F74C838538, double 0xBF8CAC3CE2DB5A6B, double 0x3F657FFC5C627C05, double 0xBF4141439B626AA7, double 0x3F1D02AA14C3BC6C, double 0xBEF93908D18B0C83, double 0x3ED67F8C8DCEE99A, double 0xBEB479CAB3F3E229, double 0x3E92F0A0B8561185, double 0xBE71C1523DFFF45D, double 0x3E50D502A753CB7F, double 0xBE301C1A02D58FE0, double 0x3E0F1747DFCE1364, double 0xBDEE377A90E33156, double 5.375401e-11, double -1.321572e-11, double 3.265240e-12, double -8.103300e-13, double 2.019000e-13, double -5.049000e-14, double 1.267000e-14, double -3.190000e-15, double 8.000000e-16, double -2.000000e-16], align 16
@coef_jnu1_b = internal constant [15 x double] [double 0x3FFBC2D1DA5553E7, double 0x3FE91A71D1808AB5, double 0x3FA906FE11614667, double 0xBF42F2F660C50A23, double 0xBF047078F3D6AEB5, double 0x3ED826ECDE589C62, double 0xBE95FBD64703A98E, double -3.853878e-09, double 2.284653e-09, double -1.530790e-10, double -8.950000e-13, double 2.830000e-13, double 4.300000e-14, double 1.000000e-14, double -3.000000e-15], align 16
@coef_jnu2_b = internal constant [19 x double] [double 0x4003B992B68D208D, double 0x3FF9BA2CE9AFD1BE, double 0x3FC1C2D2C1F86303, double 0xBF6E35DBD0AF4D31, double 0xBF0AE2263703AF8B, double 0x3F07A70A7CDF4643, double 0xBEDFCA12FA3E189E, double 0x3EA8B638EA56FF22, double 0xBE47E079906ED098, double 0xBE49990689202714, double 2.696788e-09, double -3.144880e-10, double 8.124000e-12, double 5.211000e-12, double -1.292000e-12, double 1.580000e-13, double -4.000000e-15, double -3.000000e-15, double 1.000000e-15], align 16
@coef_jnu3_b = internal constant [19 x double] [double 0x40042EBA8FB95AA9, double 0x3FFAC56CC29F2B8E, double 0x3FC2BE4570251EB6, double 0xBF7095AFA284E890, double 0xBF04B7FC24B54BD4, double 0x3F09935F7499F66D, double 0xBEE24EB99D661CB9, double 0x3EAF29CAF167B6E7, double 0xBE5E7B4D14668154, double 0xBE4BC2EE4F812440, double 3.441008e-09, double -4.716950e-10, double 2.559000e-11, double 5.502000e-12, double -1.881000e-12, double 2.950000e-13, double -2.000000e-14, double -3.000000e-15, double 1.000000e-15], align 16
@coef_jnu4_b = internal constant [19 x double] [double 0x400469D7E5C4D7F6, double 0x3FFB4C8147A1C68C, double 0x3FC33EEB74C75B3F, double 0xBF7157AC173C7817, double 0xBF01BFD67B60C622, double 0x3F0A9D5E58FFECAC, double 0xBEE3950349BF6196, double 0x3EB1469ABB57FC89, double 0xBE641E6A0E4880F7, double 0xBE4CE24CC04F9E4E, double 3.836180e-09, double -5.574040e-10, double 3.574800e-11, double 5.487000e-12, double -2.187000e-12, double 3.740000e-13, double -3.100000e-14, double -3.000000e-15, double 1.000000e-15], align 16
@coef_jnu5_b = internal constant [19 x double] [double 0x40048D798BE03CC9, double 0x3FFB9DFF19B7C4E6, double 0x3FC38D028094CF1F, double 0xBF71CD95324E0327, double 0xBEFFFEA069A4D68C, double 0x3F0B436E9B736C86, double 0xBEE45ECFD4DAB4C3, double 0x3EB25218590E56BF, double 0xBE671E5B1F32C226, double 0xBE4D974FFA047922, double 4.082870e-09, double -6.112590e-10, double 4.224200e-11, double 5.448000e-12, double -2.377000e-12, double 4.240000e-13, double -3.800000e-14, double -2.000000e-15, double 2.000000e-15], align 16
@coef_jnu6_b = internal constant [19 x double] [double 0x4004A54B6F25358D, double 0x3FFBD480E307BFA1, double 0x3FC3C16F99BE5A34, double 0xBF721CD55561DA2F, double 0xBEFDAE23860A1113, double 0x3F0BB4DDE250BFDA, double 0xBEE4E7F4AA7F26DC, double 0x3EB3079447EE0A38, double 0xBE6925CFA706BE6E, double 0xBE4E14BC1BD3B48E, double 4.251816e-09, double -6.482130e-10, double 4.672800e-11, double 5.414000e-12, double -2.508000e-12, double 4.590000e-13, double -4.300000e-14, double -2.000000e-15, double 2.000000e-15], align 16
@coef_jnu7_b = internal constant [19 x double] [double 0x4004B6571C0E11AA, double 0x3FFBFB85EA17111A, double 0x3FC3E70F6F072A12, double 0xBF7255C2694F9865, double 0xBEFC096A22492D20, double 0x3F0C073CA689E027, double 0xBEE54B39CC236466, double 0x3EB38ACBD7556B92, double 0xBE6A9C6CD9DCB9B4, double 0xBE4E71029D5958E9, double 4.374840e-09, double -6.751350e-10, double 5.000400e-11, double 5.387000e-12, double -2.603000e-12, double 4.850000e-13, double -4.700000e-14, double -2.000000e-15, double 2.000000e-15], align 16
@coef_jnu8_b = internal constant [19 x double] [double 0x4004C324318190BA, double 0x3FFC18D5903EEDB3, double 0x3FC4035FCB7BA4C1, double 0xBF7280A126A80223, double 0xBEFACF23C5C845B3, double 0x3F0C45C120E2FE4C, double 0xBEE596681856CD04, double 0x3EB3EE173EAF3685, double 0xBE6BB74D8067810B, double 0xBE4EB7D2DEAA0AE3, double 4.468450e-09, double -6.956200e-10, double 5.250000e-11, double 5.367000e-12, double -2.676000e-12, double 5.050000e-13, double -5.000000e-14, double -2.000000e-15, double 2.000000e-15], align 16
@coef_jnu9_b = internal constant [19 x double] [double 0x4004CD1B91CAFD9E, double 0x3FFC2FA8B284C7AB, double 0x3FC41973CC722CEE, double 0xBF72A213D4F52C5D, double 0xBEF9DB6AA962C1F3, double 0x3F0C76D1C2BAE6D4, double 0xBEE5D1514023EDE6, double 0x3EB43BD9493AF59B, double 0xBE6C946FFEC48275, double 0xBE4EEFEA2CCB973E, double 4.542078e-09, double -7.117280e-10, double 5.446400e-11, double 5.350000e-12, double -2.733000e-12, double 5.210000e-13, double -5.200000e-14, double -2.000000e-15, double 2.000000e-15], align 16
@coef_jnu10_b = internal constant [19 x double] [double 0x4004D51640488766, double 0x3FFC41EF8DA6E4E4, double 0x3FC42B266870E5BD, double 0xBF72BCE6EA0C19A5, double 0xBEF918DE5CFBC693, double 0x3F0C9E597FDE7897, double 0xBEE600B9423AE7C3, double 0x3EB47A6432CE1FE9, double 0xBE6D460AB7F26C03, double 0xBE4F1D74724101FA, double 4.601510e-09, double -7.247270e-10, double 5.604900e-11, double 5.337000e-12, double -2.779000e-12, double 5.330000e-13, double -5.400000e-14, double -2.000000e-15, double 2.000000e-15], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_zero_J0_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !43 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !137, metadata !138), !dbg !139
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !140, metadata !138), !dbg !141
  %11 = load i32, i32* %4, align 4, !dbg !142
  %12 = icmp eq i32 %11, 0, !dbg !144
  br i1 %12, label %13, label %20, !dbg !145

; <label>:13:                                     ; preds = %2
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !146
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !148
  store double 0.000000e+00, double* %15, align 8, !dbg !149
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !150
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !151
  store double 0.000000e+00, double* %17, align 8, !dbg !152
  br label %18, !dbg !153, !llvm.loop !154

; <label>:18:                                     ; preds = %13
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1031, i32 4), !dbg !155
  store i32 4, i32* %3, align 4, !dbg !155
  br label %72, !dbg !155
                                                  ; No predecessors!
  br label %72, !dbg !158

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !159, metadata !138), !dbg !161
  %21 = load i32, i32* %4, align 4, !dbg !162
  %22 = uitofp i32 %21 to double, !dbg !162
  %23 = fsub double %22, 2.500000e-01, !dbg !163
  %24 = fmul double %23, 0x400921FB54442D18, !dbg !164
  store double %24, double* %6, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %7, metadata !165, metadata !138), !dbg !166
  %25 = load double, double* %6, align 8, !dbg !167
  %26 = load double, double* %6, align 8, !dbg !168
  %27 = fmul double %25, %26, !dbg !169
  %28 = fdiv double 1.000000e+00, %27, !dbg !170
  store double %28, double* %7, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %8, metadata !171, metadata !138), !dbg !172
  %29 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.P, i64 0, i64 0), align 16, !dbg !173
  %30 = load double, double* %7, align 8, !dbg !174
  %31 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.P, i64 0, i64 1), align 8, !dbg !175
  %32 = load double, double* %7, align 8, !dbg !176
  %33 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.P, i64 0, i64 2), align 16, !dbg !177
  %34 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.P, i64 0, i64 3), align 8, !dbg !178
  %35 = load double, double* %7, align 8, !dbg !179
  %36 = fmul double %34, %35, !dbg !180
  %37 = fadd double %33, %36, !dbg !181
  %38 = fmul double %32, %37, !dbg !182
  %39 = fadd double %31, %38, !dbg !183
  %40 = fmul double %30, %39, !dbg !184
  %41 = fadd double %29, %40, !dbg !185
  store double %41, double* %8, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata double* %9, metadata !186, metadata !138), !dbg !187
  %42 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.Q, i64 0, i64 0), align 16, !dbg !188
  %43 = load double, double* %7, align 8, !dbg !189
  %44 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.Q, i64 0, i64 1), align 8, !dbg !190
  %45 = load double, double* %7, align 8, !dbg !191
  %46 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.Q, i64 0, i64 2), align 16, !dbg !192
  %47 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J0_e.Q, i64 0, i64 3), align 8, !dbg !193
  %48 = load double, double* %7, align 8, !dbg !194
  %49 = fmul double %47, %48, !dbg !195
  %50 = fadd double %46, %49, !dbg !196
  %51 = fmul double %45, %50, !dbg !197
  %52 = fadd double %44, %51, !dbg !198
  %53 = fmul double %43, %52, !dbg !199
  %54 = fadd double %42, %53, !dbg !200
  store double %54, double* %9, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double* %10, metadata !201, metadata !138), !dbg !202
  %55 = load double, double* %8, align 8, !dbg !203
  %56 = load double, double* %9, align 8, !dbg !204
  %57 = fdiv double %55, %56, !dbg !205
  store double %57, double* %10, align 8, !dbg !202
  %58 = load double, double* %6, align 8, !dbg !206
  %59 = load double, double* %10, align 8, !dbg !207
  %60 = load double, double* %6, align 8, !dbg !208
  %61 = fdiv double %59, %60, !dbg !209
  %62 = fadd double %58, %61, !dbg !210
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !211
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !212
  store double %62, double* %64, align 8, !dbg !213
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !214
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !215
  %67 = load double, double* %66, align 8, !dbg !215
  %68 = fmul double 3.000000e-15, %67, !dbg !216
  %69 = call double @fabs(double %68) #1, !dbg !217
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !218
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !219
  store double %69, double* %71, align 8, !dbg !220
  store i32 0, i32* %3, align 4, !dbg !221
  br label %72, !dbg !221

; <label>:72:                                     ; preds = %18, %20, %19
  %73 = load i32, i32* %3, align 4, !dbg !222
  ret i32 %73, !dbg !222
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_zero_J1_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !223, metadata !138), !dbg !224
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !225, metadata !138), !dbg !226
  %11 = load i32, i32* %4, align 4, !dbg !227
  %12 = icmp eq i32 %11, 0, !dbg !229
  br i1 %12, label %13, label %18, !dbg !230

; <label>:13:                                     ; preds = %2
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !231
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !233
  store double 0.000000e+00, double* %15, align 8, !dbg !234
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !236
  store double 0.000000e+00, double* %17, align 8, !dbg !237
  store i32 0, i32* %3, align 4, !dbg !238
  br label %71, !dbg !238

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !239, metadata !138), !dbg !241
  %19 = load i32, i32* %4, align 4, !dbg !242
  %20 = uitofp i32 %19 to double, !dbg !242
  %21 = fadd double %20, 2.500000e-01, !dbg !243
  %22 = fmul double %21, 0x400921FB54442D18, !dbg !244
  store double %22, double* %6, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata double* %7, metadata !245, metadata !138), !dbg !246
  %23 = load double, double* %6, align 8, !dbg !247
  %24 = load double, double* %6, align 8, !dbg !248
  %25 = fmul double %23, %24, !dbg !249
  %26 = fdiv double 1.000000e+00, %25, !dbg !250
  store double %26, double* %7, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata double* %8, metadata !251, metadata !138), !dbg !252
  %27 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.a, i64 0, i64 3), align 8, !dbg !253
  %28 = load double, double* %7, align 8, !dbg !254
  %29 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.a, i64 0, i64 2), align 16, !dbg !255
  %30 = load double, double* %7, align 8, !dbg !256
  %31 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.a, i64 0, i64 1), align 8, !dbg !257
  %32 = load double, double* %7, align 8, !dbg !258
  %33 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.a, i64 0, i64 0), align 16, !dbg !259
  %34 = fmul double %32, %33, !dbg !260
  %35 = fadd double %31, %34, !dbg !261
  %36 = fmul double %30, %35, !dbg !262
  %37 = fadd double %29, %36, !dbg !263
  %38 = fmul double %28, %37, !dbg !264
  %39 = fadd double %27, %38, !dbg !265
  store double %39, double* %8, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %9, metadata !266, metadata !138), !dbg !267
  %40 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.b, i64 0, i64 3), align 8, !dbg !268
  %41 = load double, double* %7, align 8, !dbg !269
  %42 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.b, i64 0, i64 2), align 16, !dbg !270
  %43 = load double, double* %7, align 8, !dbg !271
  %44 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.b, i64 0, i64 1), align 8, !dbg !272
  %45 = load double, double* %7, align 8, !dbg !273
  %46 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @gsl_sf_bessel_zero_J1_e.b, i64 0, i64 0), align 16, !dbg !274
  %47 = fmul double %45, %46, !dbg !275
  %48 = fadd double %44, %47, !dbg !276
  %49 = fmul double %43, %48, !dbg !277
  %50 = fadd double %42, %49, !dbg !278
  %51 = fmul double %41, %50, !dbg !279
  %52 = fadd double %40, %51, !dbg !280
  store double %52, double* %9, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata double* %10, metadata !281, metadata !138), !dbg !282
  %53 = load double, double* %8, align 8, !dbg !283
  %54 = load double, double* %9, align 8, !dbg !284
  %55 = fdiv double %53, %54, !dbg !285
  store double %55, double* %10, align 8, !dbg !282
  %56 = load double, double* %6, align 8, !dbg !286
  %57 = load double, double* %10, align 8, !dbg !287
  %58 = load double, double* %7, align 8, !dbg !288
  %59 = fmul double %57, %58, !dbg !289
  %60 = fadd double 1.000000e+00, %59, !dbg !290
  %61 = fmul double %56, %60, !dbg !291
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !293
  store double %61, double* %63, align 8, !dbg !294
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !295
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !296
  %66 = load double, double* %65, align 8, !dbg !296
  %67 = fmul double 2.000000e-14, %66, !dbg !297
  %68 = call double @fabs(double %67) #1, !dbg !298
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !300
  store double %68, double* %70, align 8, !dbg !301
  store i32 0, i32* %3, align 4, !dbg !302
  br label %71, !dbg !302

; <label>:71:                                     ; preds = %18, %13
  %72 = load i32, i32* %3, align 4, !dbg !303
  ret i32 %72, !dbg !303
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_zero_Jnu_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !304 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double*, align 8
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double*, align 8
  %25 = alloca i64, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !307, metadata !138), !dbg !308
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !309, metadata !138), !dbg !310
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !311, metadata !138), !dbg !312
  %36 = load double, double* %5, align 8, !dbg !313
  %37 = fcmp ole double %36, -1.000000e+00, !dbg !315
  br i1 %37, label %38, label %47, !dbg !316

; <label>:38:                                     ; preds = %3
  br label %39, !dbg !317, !llvm.loop !319

; <label>:39:                                     ; preds = %38
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !320
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !320
  store double 0x7FF8000000000000, double* %41, align 8, !dbg !320
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !320
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !320
  store double 0x7FF8000000000000, double* %43, align 8, !dbg !320
  br label %44, !dbg !320, !llvm.loop !323

; <label>:44:                                     ; preds = %39
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1101, i32 1), !dbg !325
  store i32 1, i32* %4, align 4, !dbg !325
  br label %337, !dbg !325
                                                  ; No predecessors!
  br label %46, !dbg !328

; <label>:46:                                     ; preds = %45
  br label %337, !dbg !330

; <label>:47:                                     ; preds = %3
  %48 = load i32, i32* %6, align 4, !dbg !331
  %49 = icmp eq i32 %48, 0, !dbg !333
  br i1 %49, label %50, label %61, !dbg !334

; <label>:50:                                     ; preds = %47
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !335
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !337
  store double 0.000000e+00, double* %52, align 8, !dbg !338
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !339
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !340
  store double 0.000000e+00, double* %54, align 8, !dbg !341
  %55 = load double, double* %5, align 8, !dbg !342
  %56 = fcmp oeq double %55, 0.000000e+00, !dbg !344
  br i1 %56, label %57, label %60, !dbg !345

; <label>:57:                                     ; preds = %50
  br label %58, !dbg !346, !llvm.loop !348

; <label>:58:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1107, i32 4), !dbg !349
  store i32 4, i32* %4, align 4, !dbg !349
  br label %337, !dbg !349
                                                  ; No predecessors!
  br label %60, !dbg !352

; <label>:60:                                     ; preds = %59, %50
  store i32 0, i32* %4, align 4, !dbg !353
  br label %337, !dbg !353

; <label>:61:                                     ; preds = %47
  %62 = load double, double* %5, align 8, !dbg !354
  %63 = fcmp olt double %62, 0.000000e+00, !dbg !356
  br i1 %63, label %64, label %71, !dbg !357

; <label>:64:                                     ; preds = %61
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !358
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !360
  store double 0.000000e+00, double* %66, align 8, !dbg !361
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !362
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !363
  store double 0.000000e+00, double* %68, align 8, !dbg !364
  br label %69, !dbg !365, !llvm.loop !366

; <label>:69:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1115, i32 24), !dbg !367
  store i32 24, i32* %4, align 4, !dbg !367
  br label %337, !dbg !367
                                                  ; No predecessors!
  br label %335, !dbg !370

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* %6, align 4, !dbg !371
  %73 = icmp eq i32 %72, 1, !dbg !373
  br i1 %73, label %74, label %133, !dbg !374

; <label>:74:                                     ; preds = %71
  %75 = load double, double* %5, align 8, !dbg !375
  %76 = fcmp olt double %75, 2.000000e+00, !dbg !378
  br i1 %76, label %77, label %103, !dbg !379

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double** %8, metadata !380, metadata !138), !dbg !382
  %78 = load i32, i32* %6, align 4, !dbg !383
  %79 = zext i32 %78 to i64, !dbg !384
  %80 = getelementptr inbounds [21 x double*], [21 x double*]* @coef_jnu_a, i64 0, i64 %79, !dbg !384
  %81 = load double*, double** %80, align 8, !dbg !384
  store double* %81, double** %8, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata i64* %9, metadata !385, metadata !138), !dbg !386
  %82 = load i32, i32* %6, align 4, !dbg !387
  %83 = zext i32 %82 to i64, !dbg !388
  %84 = getelementptr inbounds [21 x i64], [21 x i64]* @size_jnu_a, i64 0, i64 %83, !dbg !388
  %85 = load i64, i64* %84, align 8, !dbg !388
  store i64 %85, i64* %9, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata double* %10, metadata !389, metadata !138), !dbg !390
  %86 = load double, double* %5, align 8, !dbg !391
  %87 = fdiv double %86, 2.000000e+00, !dbg !392
  store double %87, double* %10, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %11, metadata !393, metadata !138), !dbg !394
  %88 = load double*, double** %8, align 8, !dbg !395
  %89 = load i64, i64* %9, align 8, !dbg !396
  %90 = sub i64 %89, 1, !dbg !397
  %91 = trunc i64 %90 to i32, !dbg !396
  %92 = load double, double* %10, align 8, !dbg !398
  %93 = call double @clenshaw(double* %88, i32 %91, double %92), !dbg !399
  store double %93, double* %11, align 8, !dbg !394
  %94 = load double, double* %11, align 8, !dbg !400
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !401
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !402
  store double %94, double* %96, align 8, !dbg !403
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !404
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !405
  %99 = load double, double* %98, align 8, !dbg !405
  %100 = fmul double 2.000000e-15, %99, !dbg !406
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !407
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !408
  store double %100, double* %102, align 8, !dbg !409
  br label %132, !dbg !410

; <label>:103:                                    ; preds = %74
  call void @llvm.dbg.declare(metadata double** %12, metadata !411, metadata !138), !dbg !413
  %104 = load i32, i32* %6, align 4, !dbg !414
  %105 = zext i32 %104 to i64, !dbg !415
  %106 = getelementptr inbounds [11 x double*], [11 x double*]* @coef_jnu_b, i64 0, i64 %105, !dbg !415
  %107 = load double*, double** %106, align 8, !dbg !415
  store double* %107, double** %12, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i64* %13, metadata !416, metadata !138), !dbg !417
  %108 = load i32, i32* %6, align 4, !dbg !418
  %109 = zext i32 %108 to i64, !dbg !419
  %110 = getelementptr inbounds [11 x i64], [11 x i64]* @size_jnu_b, i64 0, i64 %109, !dbg !419
  %111 = load i64, i64* %110, align 8, !dbg !419
  store i64 %111, i64* %13, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata double* %14, metadata !420, metadata !138), !dbg !421
  %112 = load double, double* %5, align 8, !dbg !422
  %113 = fdiv double 2.000000e+00, %112, !dbg !423
  %114 = call double @pow(double %113, double 0x3FE5555555555555) #6, !dbg !424
  store double %114, double* %14, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %15, metadata !425, metadata !138), !dbg !426
  %115 = load double*, double** %12, align 8, !dbg !427
  %116 = load i64, i64* %13, align 8, !dbg !428
  %117 = sub i64 %116, 1, !dbg !429
  %118 = trunc i64 %117 to i32, !dbg !428
  %119 = load double, double* %14, align 8, !dbg !430
  %120 = call double @clenshaw(double* %115, i32 %118, double %119), !dbg !431
  store double %120, double* %15, align 8, !dbg !426
  %121 = load double, double* %5, align 8, !dbg !432
  %122 = load double, double* %15, align 8, !dbg !433
  %123 = fmul double %121, %122, !dbg !434
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !435
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !436
  store double %123, double* %125, align 8, !dbg !437
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !438
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !439
  %128 = load double, double* %127, align 8, !dbg !439
  %129 = fmul double 2.000000e-15, %128, !dbg !440
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !441
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !442
  store double %129, double* %131, align 8, !dbg !443
  br label %132

; <label>:132:                                    ; preds = %103, %77
  store i32 0, i32* %4, align 4, !dbg !444
  br label %337, !dbg !444

; <label>:133:                                    ; preds = %71
  %134 = load i32, i32* %6, align 4, !dbg !445
  %135 = icmp ule i32 %134, 10, !dbg !447
  br i1 %135, label %136, label %209, !dbg !448

; <label>:136:                                    ; preds = %133
  %137 = load double, double* %5, align 8, !dbg !449
  %138 = load i32, i32* %6, align 4, !dbg !452
  %139 = uitofp i32 %138 to double, !dbg !452
  %140 = fcmp olt double %137, %139, !dbg !453
  br i1 %140, label %141, label %169, !dbg !454

; <label>:141:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata double** %16, metadata !455, metadata !138), !dbg !457
  %142 = load i32, i32* %6, align 4, !dbg !458
  %143 = zext i32 %142 to i64, !dbg !459
  %144 = getelementptr inbounds [21 x double*], [21 x double*]* @coef_jnu_a, i64 0, i64 %143, !dbg !459
  %145 = load double*, double** %144, align 8, !dbg !459
  store double* %145, double** %16, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %17, metadata !460, metadata !138), !dbg !461
  %146 = load i32, i32* %6, align 4, !dbg !462
  %147 = zext i32 %146 to i64, !dbg !463
  %148 = getelementptr inbounds [21 x i64], [21 x i64]* @size_jnu_a, i64 0, i64 %147, !dbg !463
  %149 = load i64, i64* %148, align 8, !dbg !463
  store i64 %149, i64* %17, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata double* %18, metadata !464, metadata !138), !dbg !465
  %150 = load double, double* %5, align 8, !dbg !466
  %151 = load i32, i32* %6, align 4, !dbg !467
  %152 = uitofp i32 %151 to double, !dbg !467
  %153 = fdiv double %150, %152, !dbg !468
  store double %153, double* %18, align 8, !dbg !465
  call void @llvm.dbg.declare(metadata double* %19, metadata !469, metadata !138), !dbg !470
  %154 = load double*, double** %16, align 8, !dbg !471
  %155 = load i64, i64* %17, align 8, !dbg !472
  %156 = sub i64 %155, 1, !dbg !473
  %157 = trunc i64 %156 to i32, !dbg !472
  %158 = load double, double* %18, align 8, !dbg !474
  %159 = call double @clenshaw(double* %154, i32 %157, double %158), !dbg !475
  store double %159, double* %19, align 8, !dbg !470
  %160 = load double, double* %19, align 8, !dbg !476
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !477
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !478
  store double %160, double* %162, align 8, !dbg !479
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !480
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !481
  %165 = load double, double* %164, align 8, !dbg !481
  %166 = fmul double 2.000000e-15, %165, !dbg !482
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !483
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !484
  store double %166, double* %168, align 8, !dbg !485
  br label %208, !dbg !486

; <label>:169:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata double** %20, metadata !487, metadata !138), !dbg !489
  %170 = load i32, i32* %6, align 4, !dbg !490
  %171 = zext i32 %170 to i64, !dbg !491
  %172 = getelementptr inbounds [11 x double*], [11 x double*]* @coef_jnu_b, i64 0, i64 %171, !dbg !491
  %173 = load double*, double** %172, align 8, !dbg !491
  store double* %173, double** %20, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata i64* %21, metadata !492, metadata !138), !dbg !493
  %174 = load i32, i32* %6, align 4, !dbg !494
  %175 = zext i32 %174 to i64, !dbg !495
  %176 = getelementptr inbounds [11 x i64], [11 x i64]* @size_jnu_b, i64 0, i64 %175, !dbg !495
  %177 = load i64, i64* %176, align 8, !dbg !495
  store i64 %177, i64* %21, align 8, !dbg !493
  call void @llvm.dbg.declare(metadata double* %22, metadata !496, metadata !138), !dbg !497
  %178 = load i32, i32* %6, align 4, !dbg !498
  %179 = uitofp i32 %178 to double, !dbg !498
  %180 = load double, double* %5, align 8, !dbg !499
  %181 = fdiv double %179, %180, !dbg !500
  %182 = call double @pow(double %181, double 0x3FE5555555555555) #6, !dbg !501
  store double %182, double* %22, align 8, !dbg !497
  call void @llvm.dbg.declare(metadata double* %23, metadata !502, metadata !138), !dbg !503
  %183 = load double*, double** %20, align 8, !dbg !504
  %184 = load i64, i64* %21, align 8, !dbg !505
  %185 = sub i64 %184, 1, !dbg !506
  %186 = trunc i64 %185 to i32, !dbg !505
  %187 = load double, double* %22, align 8, !dbg !507
  %188 = call double @clenshaw(double* %183, i32 %186, double %187), !dbg !508
  store double %188, double* %23, align 8, !dbg !503
  %189 = load double, double* %5, align 8, !dbg !509
  %190 = load double, double* %23, align 8, !dbg !510
  %191 = fmul double %189, %190, !dbg !511
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !512
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !513
  store double %191, double* %193, align 8, !dbg !514
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !515
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !516
  %196 = load double, double* %195, align 8, !dbg !516
  %197 = fmul double 2.000000e-15, %196, !dbg !517
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !518
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %198, i32 0, i32 1, !dbg !519
  store double %197, double* %199, align 8, !dbg !520
  %200 = load i32, i32* %6, align 4, !dbg !521
  %201 = icmp eq i32 %200, 5, !dbg !523
  br i1 %201, label %202, label %207, !dbg !524

; <label>:202:                                    ; preds = %169
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !525
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 1, !dbg !527
  %205 = load double, double* %204, align 8, !dbg !528
  %206 = fmul double %205, 5.000000e+06, !dbg !528
  store double %206, double* %204, align 8, !dbg !528
  br label %207, !dbg !529

; <label>:207:                                    ; preds = %202, %169
  br label %208

; <label>:208:                                    ; preds = %207, %141
  store i32 0, i32* %4, align 4, !dbg !530
  br label %337, !dbg !530

; <label>:209:                                    ; preds = %133
  %210 = load i32, i32* %6, align 4, !dbg !531
  %211 = uitofp i32 %210 to double, !dbg !531
  %212 = load double, double* %5, align 8, !dbg !533
  %213 = fmul double 5.000000e-01, %212, !dbg !534
  %214 = fcmp ogt double %211, %213, !dbg !535
  br i1 %214, label %215, label %245, !dbg !536

; <label>:215:                                    ; preds = %209
  %216 = load i32, i32* %6, align 4, !dbg !537
  %217 = icmp ule i32 %216, 20, !dbg !539
  br i1 %217, label %218, label %245, !dbg !540

; <label>:218:                                    ; preds = %215
  call void @llvm.dbg.declare(metadata double** %24, metadata !541, metadata !138), !dbg !543
  %219 = load i32, i32* %6, align 4, !dbg !544
  %220 = zext i32 %219 to i64, !dbg !545
  %221 = getelementptr inbounds [21 x double*], [21 x double*]* @coef_jnu_a, i64 0, i64 %220, !dbg !545
  %222 = load double*, double** %221, align 8, !dbg !545
  store double* %222, double** %24, align 8, !dbg !543
  call void @llvm.dbg.declare(metadata i64* %25, metadata !546, metadata !138), !dbg !547
  %223 = load i32, i32* %6, align 4, !dbg !548
  %224 = zext i32 %223 to i64, !dbg !549
  %225 = getelementptr inbounds [21 x i64], [21 x i64]* @size_jnu_a, i64 0, i64 %224, !dbg !549
  %226 = load i64, i64* %225, align 8, !dbg !549
  store i64 %226, i64* %25, align 8, !dbg !547
  call void @llvm.dbg.declare(metadata double* %26, metadata !550, metadata !138), !dbg !551
  %227 = load double, double* %5, align 8, !dbg !552
  %228 = load i32, i32* %6, align 4, !dbg !553
  %229 = uitofp i32 %228 to double, !dbg !553
  %230 = fmul double 2.000000e+00, %229, !dbg !554
  %231 = fdiv double %227, %230, !dbg !555
  store double %231, double* %26, align 8, !dbg !551
  call void @llvm.dbg.declare(metadata double* %27, metadata !556, metadata !138), !dbg !557
  %232 = load double*, double** %24, align 8, !dbg !558
  %233 = load i64, i64* %25, align 8, !dbg !559
  %234 = sub i64 %233, 1, !dbg !560
  %235 = trunc i64 %234 to i32, !dbg !559
  %236 = load double, double* %26, align 8, !dbg !561
  %237 = call double @clenshaw(double* %232, i32 %235, double %236), !dbg !562
  store double %237, double* %27, align 8, !dbg !557
  %238 = load double, double* %27, align 8, !dbg !563
  %239 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !564
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %239, i32 0, i32 0, !dbg !565
  store double %238, double* %240, align 8, !dbg !566
  %241 = load double, double* %27, align 8, !dbg !567
  %242 = fmul double 4.000000e-15, %241, !dbg !568
  %243 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !569
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %243, i32 0, i32 1, !dbg !570
  store double %242, double* %244, align 8, !dbg !571
  store i32 0, i32* %4, align 4, !dbg !572
  br label %337, !dbg !572

; <label>:245:                                    ; preds = %215, %209
  %246 = load i32, i32* %6, align 4, !dbg !573
  %247 = uitofp i32 %246 to double, !dbg !573
  %248 = load double, double* %5, align 8, !dbg !575
  %249 = fmul double 2.000000e+00, %248, !dbg !576
  %250 = fcmp ogt double %247, %249, !dbg !577
  br i1 %250, label %251, label %292, !dbg !578

; <label>:251:                                    ; preds = %245
  call void @llvm.dbg.declare(metadata double* %28, metadata !579, metadata !138), !dbg !581
  %252 = load i32, i32* %6, align 4, !dbg !582
  %253 = uitofp i32 %252 to double, !dbg !582
  %254 = load double, double* %5, align 8, !dbg !583
  %255 = fmul double 5.000000e-01, %254, !dbg !584
  %256 = fadd double %253, %255, !dbg !585
  %257 = fsub double %256, 2.500000e-01, !dbg !586
  %258 = fmul double %257, 0x400921FB54442D18, !dbg !587
  store double %258, double* %28, align 8, !dbg !581
  call void @llvm.dbg.declare(metadata double* %29, metadata !588, metadata !138), !dbg !589
  %259 = load double, double* %5, align 8, !dbg !590
  %260 = fmul double 4.000000e+00, %259, !dbg !591
  %261 = load double, double* %5, align 8, !dbg !592
  %262 = fmul double %260, %261, !dbg !593
  %263 = load double, double* %28, align 8, !dbg !594
  %264 = call double @mcmahon_correction(double %262, double %263), !dbg !595
  store double %264, double* %29, align 8, !dbg !589
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !596, metadata !138), !dbg !597
  %265 = load double, double* %5, align 8, !dbg !598
  %266 = load double, double* %28, align 8, !dbg !599
  %267 = fdiv double %265, %266, !dbg !600
  %268 = call i32 @gsl_sf_pow_int_e(double %267, i32 14, %struct.gsl_sf_result_struct* %30), !dbg !601
  %269 = load double, double* %28, align 8, !dbg !602
  %270 = load double, double* %29, align 8, !dbg !603
  %271 = fmul double %269, %270, !dbg !604
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !605
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !606
  store double %271, double* %273, align 8, !dbg !607
  %274 = load double, double* %28, align 8, !dbg !608
  %275 = call double @fabs(double %274) #1, !dbg !609
  %276 = fmul double 4.000000e+00, %275, !dbg !610
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !611
  %278 = load double, double* %277, align 8, !dbg !611
  %279 = fmul double %276, %278, !dbg !612
  %280 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !613
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %280, i32 0, i32 1, !dbg !614
  store double %279, double* %281, align 8, !dbg !615
  %282 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !616
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %282, i32 0, i32 0, !dbg !617
  %284 = load double, double* %283, align 8, !dbg !617
  %285 = fmul double 0x3CB0000000000000, %284, !dbg !618
  %286 = call double @fabs(double %285) #1, !dbg !619
  %287 = fmul double 4.000000e+00, %286, !dbg !620
  %288 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !621
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %288, i32 0, i32 1, !dbg !622
  %290 = load double, double* %289, align 8, !dbg !623
  %291 = fadd double %290, %287, !dbg !623
  store double %291, double* %289, align 8, !dbg !623
  store i32 0, i32* %4, align 4, !dbg !624
  br label %337, !dbg !624

; <label>:292:                                    ; preds = %245
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !625, metadata !138), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %32, metadata !628, metadata !138), !dbg !630
  %293 = load i32, i32* %6, align 4, !dbg !631
  %294 = call i32 @gsl_sf_airy_zero_Ai_e(i32 %293, %struct.gsl_sf_result_struct* %31), !dbg !632
  store i32 %294, i32* %32, align 4, !dbg !630
  call void @llvm.dbg.declare(metadata double* %33, metadata !633, metadata !138), !dbg !634
  %295 = load double, double* %5, align 8, !dbg !635
  %296 = call double @pow(double %295, double 0xBFE5555555555555) #6, !dbg !636
  %297 = fsub double -0.000000e+00, %296, !dbg !637
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !638
  %299 = load double, double* %298, align 8, !dbg !638
  %300 = fmul double %297, %299, !dbg !639
  store double %300, double* %33, align 8, !dbg !634
  call void @llvm.dbg.declare(metadata double* %34, metadata !640, metadata !138), !dbg !641
  %301 = load double, double* %33, align 8, !dbg !642
  %302 = call double @gsl_sf_bessel_Olver_zofmzeta(double %301), !dbg !643
  store double %302, double* %34, align 8, !dbg !641
  call void @llvm.dbg.declare(metadata double* %35, metadata !644, metadata !138), !dbg !645
  %303 = load double, double* %34, align 8, !dbg !646
  %304 = load double, double* %33, align 8, !dbg !647
  %305 = call double @olver_f1(double %303, double %304), !dbg !648
  store double %305, double* %35, align 8, !dbg !645
  %306 = load double, double* %5, align 8, !dbg !649
  %307 = load double, double* %34, align 8, !dbg !650
  %308 = load double, double* %35, align 8, !dbg !651
  %309 = load double, double* %5, align 8, !dbg !652
  %310 = load double, double* %5, align 8, !dbg !653
  %311 = fmul double %309, %310, !dbg !654
  %312 = fdiv double %308, %311, !dbg !655
  %313 = fadd double %307, %312, !dbg !656
  %314 = fmul double %306, %313, !dbg !657
  %315 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !658
  %316 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %315, i32 0, i32 0, !dbg !659
  store double %314, double* %316, align 8, !dbg !660
  %317 = load double, double* %5, align 8, !dbg !661
  %318 = load double, double* %5, align 8, !dbg !662
  %319 = fmul double %317, %318, !dbg !663
  %320 = load double, double* %5, align 8, !dbg !664
  %321 = fmul double %319, %320, !dbg !665
  %322 = fdiv double 1.000000e-03, %321, !dbg !666
  %323 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !667
  %324 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %323, i32 0, i32 1, !dbg !668
  store double %322, double* %324, align 8, !dbg !669
  %325 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !670
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %325, i32 0, i32 0, !dbg !671
  %327 = load double, double* %326, align 8, !dbg !671
  %328 = call double @fabs(double %327) #1, !dbg !672
  %329 = fmul double 0x3CC0000000000000, %328, !dbg !673
  %330 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !674
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %330, i32 0, i32 1, !dbg !675
  %332 = load double, double* %331, align 8, !dbg !676
  %333 = fadd double %332, %329, !dbg !676
  store double %333, double* %331, align 8, !dbg !676
  %334 = load i32, i32* %32, align 4, !dbg !677
  store i32 %334, i32* %4, align 4, !dbg !678
  br label %337, !dbg !678

; <label>:335:                                    ; preds = %70
  br label %336

; <label>:336:                                    ; preds = %335
  br label %337

; <label>:337:                                    ; preds = %44, %58, %60, %69, %132, %208, %218, %251, %292, %336, %46
  %338 = load i32, i32* %4, align 4, !dbg !679
  ret i32 %338, !dbg !679
}

; Function Attrs: nounwind uwtable
define internal double @clenshaw(double*, i32, double) #0 !dbg !680 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double* %0, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !683, metadata !138), !dbg !684
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !685, metadata !138), !dbg !686
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !687, metadata !138), !dbg !688
  call void @llvm.dbg.declare(metadata double* %7, metadata !689, metadata !138), !dbg !690
  store double 0.000000e+00, double* %7, align 8, !dbg !690
  call void @llvm.dbg.declare(metadata double* %8, metadata !691, metadata !138), !dbg !692
  %11 = load i32, i32* %5, align 4, !dbg !693
  %12 = sext i32 %11 to i64, !dbg !694
  %13 = load double*, double** %4, align 8, !dbg !694
  %14 = getelementptr inbounds double, double* %13, i64 %12, !dbg !694
  %15 = load double, double* %14, align 8, !dbg !694
  store double %15, double* %8, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata double* %9, metadata !695, metadata !138), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %10, metadata !697, metadata !138), !dbg !698
  %16 = load i32, i32* %5, align 4, !dbg !699
  store i32 %16, i32* %10, align 4, !dbg !701
  br label %17, !dbg !702

; <label>:17:                                     ; preds = %38, %3
  %18 = load i32, i32* %10, align 4, !dbg !703
  %19 = icmp sgt i32 %18, 0, !dbg !706
  br i1 %19, label %20, label %41, !dbg !707

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %6, align 8, !dbg !708
  %22 = fmul double 2.000000e+00, %21, !dbg !710
  %23 = fsub double %22, 1.000000e+00, !dbg !711
  %24 = fmul double 2.000000e+00, %23, !dbg !712
  %25 = load double, double* %8, align 8, !dbg !713
  %26 = fmul double %24, %25, !dbg !714
  %27 = load double, double* %7, align 8, !dbg !715
  %28 = fsub double %26, %27, !dbg !716
  %29 = load i32, i32* %10, align 4, !dbg !717
  %30 = sub nsw i32 %29, 1, !dbg !718
  %31 = sext i32 %30 to i64, !dbg !719
  %32 = load double*, double** %4, align 8, !dbg !719
  %33 = getelementptr inbounds double, double* %32, i64 %31, !dbg !719
  %34 = load double, double* %33, align 8, !dbg !719
  %35 = fadd double %28, %34, !dbg !720
  store double %35, double* %9, align 8, !dbg !721
  %36 = load double, double* %8, align 8, !dbg !722
  store double %36, double* %7, align 8, !dbg !723
  %37 = load double, double* %9, align 8, !dbg !724
  store double %37, double* %8, align 8, !dbg !725
  br label %38, !dbg !726

; <label>:38:                                     ; preds = %20
  %39 = load i32, i32* %10, align 4, !dbg !727
  %40 = add nsw i32 %39, -1, !dbg !727
  store i32 %40, i32* %10, align 4, !dbg !727
  br label %17, !dbg !729, !llvm.loop !730

; <label>:41:                                     ; preds = %17
  %42 = load double, double* %8, align 8, !dbg !732
  %43 = load double, double* %6, align 8, !dbg !733
  %44 = fmul double 2.000000e+00, %43, !dbg !734
  %45 = fsub double %44, 1.000000e+00, !dbg !735
  %46 = load double, double* %7, align 8, !dbg !736
  %47 = fmul double %45, %46, !dbg !737
  %48 = fsub double %42, %47, !dbg !738
  ret double %48, !dbg !739
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define internal double @mcmahon_correction(double, double) #0 !dbg !740 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !743, metadata !138), !dbg !744
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !745, metadata !138), !dbg !746
  call void @llvm.dbg.declare(metadata double* %6, metadata !747, metadata !138), !dbg !748
  %26 = load double, double* %5, align 8, !dbg !749
  %27 = fmul double 8.000000e+00, %26, !dbg !750
  store double %27, double* %6, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata double* %7, metadata !751, metadata !138), !dbg !752
  %28 = load double, double* %6, align 8, !dbg !753
  %29 = load double, double* %6, align 8, !dbg !754
  %30 = fmul double %28, %29, !dbg !755
  store double %30, double* %7, align 8, !dbg !752
  %31 = load double, double* %4, align 8, !dbg !756
  %32 = fcmp olt double %31, 0x3CB0000000000000, !dbg !758
  br i1 %32, label %33, label %79, !dbg !759

; <label>:33:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %8, metadata !760, metadata !138), !dbg !762
  %34 = load double, double* %7, align 8, !dbg !763
  %35 = fdiv double 1.000000e+00, %34, !dbg !764
  store double %35, double* %8, align 8, !dbg !762
  call void @llvm.dbg.declare(metadata double* %9, metadata !765, metadata !138), !dbg !766
  %36 = load double, double* %7, align 8, !dbg !767
  %37 = fmul double 3.000000e+00, %36, !dbg !768
  %38 = load double, double* %7, align 8, !dbg !769
  %39 = fmul double %37, %38, !dbg !770
  %40 = fdiv double -1.240000e+02, %39, !dbg !771
  store double %40, double* %9, align 8, !dbg !766
  call void @llvm.dbg.declare(metadata double* %10, metadata !772, metadata !138), !dbg !773
  %41 = load double, double* %7, align 8, !dbg !774
  %42 = fmul double 1.500000e+01, %41, !dbg !775
  %43 = load double, double* %7, align 8, !dbg !776
  %44 = fmul double %42, %43, !dbg !777
  %45 = load double, double* %7, align 8, !dbg !778
  %46 = fmul double %44, %45, !dbg !779
  %47 = fdiv double 1.209280e+05, %46, !dbg !780
  store double %47, double* %10, align 8, !dbg !773
  call void @llvm.dbg.declare(metadata double* %11, metadata !781, metadata !138), !dbg !782
  %48 = load double, double* %7, align 8, !dbg !783
  %49 = fmul double 1.050000e+02, %48, !dbg !784
  %50 = load double, double* %7, align 8, !dbg !785
  %51 = fmul double %49, %50, !dbg !786
  %52 = load double, double* %7, align 8, !dbg !787
  %53 = fmul double %51, %52, !dbg !788
  %54 = load double, double* %7, align 8, !dbg !789
  %55 = fmul double %53, %54, !dbg !790
  %56 = fdiv double 0xC1B7F21D40000000, %55, !dbg !791
  store double %56, double* %11, align 8, !dbg !782
  call void @llvm.dbg.declare(metadata double* %12, metadata !792, metadata !138), !dbg !793
  %57 = load double, double* %7, align 8, !dbg !794
  %58 = fmul double 3.150000e+02, %57, !dbg !795
  %59 = load double, double* %7, align 8, !dbg !796
  %60 = fmul double %58, %59, !dbg !797
  %61 = load double, double* %7, align 8, !dbg !798
  %62 = fmul double %60, %61, !dbg !799
  %63 = load double, double* %7, align 8, !dbg !800
  %64 = fmul double %62, %63, !dbg !801
  %65 = load double, double* %7, align 8, !dbg !802
  %66 = fmul double %64, %65, !dbg !803
  %67 = fdiv double 0x426F2CF87D400000, %66, !dbg !804
  store double %67, double* %12, align 8, !dbg !793
  %68 = load double, double* %8, align 8, !dbg !805
  %69 = load double, double* %9, align 8, !dbg !806
  %70 = fadd double %68, %69, !dbg !807
  %71 = load double, double* %10, align 8, !dbg !808
  %72 = fadd double %70, %71, !dbg !809
  %73 = load double, double* %11, align 8, !dbg !810
  %74 = fadd double %72, %73, !dbg !811
  %75 = load double, double* %12, align 8, !dbg !812
  %76 = fadd double %74, %75, !dbg !813
  %77 = fmul double 8.000000e+00, %76, !dbg !814
  %78 = fadd double 1.000000e+00, %77, !dbg !815
  store double %78, double* %3, align 8, !dbg !816
  br label %197, !dbg !816

; <label>:79:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %13, metadata !817, metadata !138), !dbg !819
  %80 = load double, double* %4, align 8, !dbg !820
  %81 = fdiv double 1.000000e+00, %80, !dbg !821
  store double %81, double* %13, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata double* %14, metadata !822, metadata !138), !dbg !823
  %82 = load double, double* %4, align 8, !dbg !824
  %83 = load double, double* %7, align 8, !dbg !825
  %84 = fdiv double %82, %83, !dbg !826
  store double %84, double* %14, align 8, !dbg !823
  call void @llvm.dbg.declare(metadata double* %15, metadata !827, metadata !138), !dbg !828
  %85 = load double, double* %13, align 8, !dbg !829
  %86 = fmul double 3.100000e+01, %85, !dbg !830
  %87 = fsub double 7.000000e+00, %86, !dbg !831
  %88 = fmul double 0x3FF5555555555555, %87, !dbg !832
  store double %88, double* %15, align 8, !dbg !828
  call void @llvm.dbg.declare(metadata double* %16, metadata !833, metadata !138), !dbg !834
  %89 = load double, double* %13, align 8, !dbg !835
  %90 = fmul double 3.779000e+03, %89, !dbg !836
  %91 = fadd double -9.820000e+02, %90, !dbg !837
  %92 = load double, double* %13, align 8, !dbg !838
  %93 = fmul double %91, %92, !dbg !839
  %94 = fadd double 8.300000e+01, %93, !dbg !840
  %95 = fmul double 0x4001111111111111, %94, !dbg !841
  store double %95, double* %16, align 8, !dbg !834
  call void @llvm.dbg.declare(metadata double* %17, metadata !842, metadata !138), !dbg !843
  %96 = load double, double* %13, align 8, !dbg !844
  %97 = fmul double 6.277237e+06, %96, !dbg !845
  %98 = fsub double 1.585743e+06, %97, !dbg !846
  %99 = load double, double* %13, align 8, !dbg !847
  %100 = fmul double %98, %99, !dbg !848
  %101 = fadd double -1.538550e+05, %100, !dbg !849
  %102 = load double, double* %13, align 8, !dbg !850
  %103 = fmul double %101, %102, !dbg !851
  %104 = fadd double 6.949000e+03, %103, !dbg !852
  %105 = fmul double 0x3FE3813813813814, %104, !dbg !853
  store double %105, double* %17, align 8, !dbg !843
  call void @llvm.dbg.declare(metadata double* %18, metadata !854, metadata !138), !dbg !855
  %106 = load double, double* %13, align 8, !dbg !856
  %107 = fmul double 0x41DF2CF87D400000, %106, !dbg !857
  %108 = fadd double 0xC1BE857454000000, %107, !dbg !858
  %109 = load double, double* %13, align 8, !dbg !859
  %110 = fmul double %108, %109, !dbg !860
  %111 = fadd double 0x4186E4A7F0000000, %110, !dbg !861
  %112 = load double, double* %13, align 8, !dbg !862
  %113 = fmul double %111, %112, !dbg !863
  %114 = fadd double -2.479316e+06, %113, !dbg !864
  %115 = load double, double* %13, align 8, !dbg !865
  %116 = fmul double %114, %115, !dbg !866
  %117 = fadd double 7.019700e+04, %116, !dbg !867
  %118 = fmul double 0x3FFA01A01A01A01A, %117, !dbg !868
  store double %118, double* %18, align 8, !dbg !855
  call void @llvm.dbg.declare(metadata double* %19, metadata !869, metadata !138), !dbg !870
  %119 = load double, double* %13, align 8, !dbg !871
  %120 = fmul double 0x429E0327E3572400, %119, !dbg !872
  %121 = fsub double 0x427CD9CDA00B5000, %120, !dbg !873
  %122 = load double, double* %13, align 8, !dbg !874
  %123 = fmul double %121, %122, !dbg !875
  %124 = fadd double 0xC244DF3F4FDD0000, %123, !dbg !876
  %125 = load double, double* %13, align 8, !dbg !877
  %126 = fmul double %124, %125, !dbg !878
  %127 = fadd double 0x420095BD56500000, %126, !dbg !879
  %128 = load double, double* %13, align 8, !dbg !880
  %129 = fmul double %127, %128, !dbg !881
  %130 = fadd double 0xC1B11D8C4D000000, %129, !dbg !882
  %131 = load double, double* %13, align 8, !dbg !883
  %132 = fmul double %130, %131, !dbg !884
  %133 = fadd double 5.592657e+06, %132, !dbg !885
  %134 = fmul double 0x3FE2E9E8CD187470, %133, !dbg !886
  store double %134, double* %19, align 8, !dbg !870
  call void @llvm.dbg.declare(metadata double* %20, metadata !887, metadata !138), !dbg !888
  %135 = load double, double* %13, align 8, !dbg !889
  %136 = fsub double 1.000000e+00, %135, !dbg !890
  %137 = load double, double* %14, align 8, !dbg !891
  %138 = fmul double %136, %137, !dbg !892
  store double %138, double* %20, align 8, !dbg !888
  call void @llvm.dbg.declare(metadata double* %21, metadata !893, metadata !138), !dbg !894
  %139 = load double, double* %20, align 8, !dbg !895
  %140 = load double, double* %15, align 8, !dbg !896
  %141 = fmul double %139, %140, !dbg !897
  %142 = load double, double* %14, align 8, !dbg !898
  %143 = fmul double %141, %142, !dbg !899
  store double %143, double* %21, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata double* %22, metadata !900, metadata !138), !dbg !901
  %144 = load double, double* %20, align 8, !dbg !902
  %145 = load double, double* %16, align 8, !dbg !903
  %146 = fmul double %144, %145, !dbg !904
  %147 = load double, double* %14, align 8, !dbg !905
  %148 = fmul double %146, %147, !dbg !906
  %149 = load double, double* %14, align 8, !dbg !907
  %150 = fmul double %148, %149, !dbg !908
  store double %150, double* %22, align 8, !dbg !901
  call void @llvm.dbg.declare(metadata double* %23, metadata !909, metadata !138), !dbg !910
  %151 = load double, double* %20, align 8, !dbg !911
  %152 = load double, double* %17, align 8, !dbg !912
  %153 = fmul double %151, %152, !dbg !913
  %154 = load double, double* %14, align 8, !dbg !914
  %155 = fmul double %153, %154, !dbg !915
  %156 = load double, double* %14, align 8, !dbg !916
  %157 = fmul double %155, %156, !dbg !917
  %158 = load double, double* %14, align 8, !dbg !918
  %159 = fmul double %157, %158, !dbg !919
  store double %159, double* %23, align 8, !dbg !910
  call void @llvm.dbg.declare(metadata double* %24, metadata !920, metadata !138), !dbg !921
  %160 = load double, double* %20, align 8, !dbg !922
  %161 = load double, double* %18, align 8, !dbg !923
  %162 = fmul double %160, %161, !dbg !924
  %163 = load double, double* %14, align 8, !dbg !925
  %164 = fmul double %162, %163, !dbg !926
  %165 = load double, double* %14, align 8, !dbg !927
  %166 = fmul double %164, %165, !dbg !928
  %167 = load double, double* %14, align 8, !dbg !929
  %168 = fmul double %166, %167, !dbg !930
  %169 = load double, double* %14, align 8, !dbg !931
  %170 = fmul double %168, %169, !dbg !932
  store double %170, double* %24, align 8, !dbg !921
  call void @llvm.dbg.declare(metadata double* %25, metadata !933, metadata !138), !dbg !934
  %171 = load double, double* %20, align 8, !dbg !935
  %172 = load double, double* %19, align 8, !dbg !936
  %173 = fmul double %171, %172, !dbg !937
  %174 = load double, double* %14, align 8, !dbg !938
  %175 = fmul double %173, %174, !dbg !939
  %176 = load double, double* %14, align 8, !dbg !940
  %177 = fmul double %175, %176, !dbg !941
  %178 = load double, double* %14, align 8, !dbg !942
  %179 = fmul double %177, %178, !dbg !943
  %180 = load double, double* %14, align 8, !dbg !944
  %181 = fmul double %179, %180, !dbg !945
  %182 = load double, double* %14, align 8, !dbg !946
  %183 = fmul double %181, %182, !dbg !947
  store double %183, double* %25, align 8, !dbg !934
  %184 = load double, double* %20, align 8, !dbg !948
  %185 = load double, double* %21, align 8, !dbg !949
  %186 = fadd double %184, %185, !dbg !950
  %187 = load double, double* %22, align 8, !dbg !951
  %188 = fadd double %186, %187, !dbg !952
  %189 = load double, double* %23, align 8, !dbg !953
  %190 = fadd double %188, %189, !dbg !954
  %191 = load double, double* %24, align 8, !dbg !955
  %192 = fadd double %190, %191, !dbg !956
  %193 = load double, double* %25, align 8, !dbg !957
  %194 = fadd double %192, %193, !dbg !958
  %195 = fmul double 8.000000e+00, %194, !dbg !959
  %196 = fsub double 1.000000e+00, %195, !dbg !960
  store double %196, double* %3, align 8, !dbg !961
  br label %197, !dbg !961

; <label>:197:                                    ; preds = %79, %33
  %198 = load double, double* %3, align 8, !dbg !962
  ret double %198, !dbg !962
}

declare i32 @gsl_sf_pow_int_e(double, i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_airy_zero_Ai_e(i32, %struct.gsl_sf_result_struct*) #2

declare double @gsl_sf_bessel_Olver_zofmzeta(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_f1(double, double) #5 !dbg !963 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !966, metadata !138), !dbg !967
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !968, metadata !138), !dbg !969
  call void @llvm.dbg.declare(metadata double* %5, metadata !970, metadata !138), !dbg !971
  %7 = load double, double* %3, align 8, !dbg !972
  %8 = load double, double* %4, align 8, !dbg !973
  %9 = call double @olver_b0(double %7, double %8), !dbg !974
  store double %9, double* %5, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata double* %6, metadata !975, metadata !138), !dbg !976
  %10 = load double, double* %4, align 8, !dbg !977
  %11 = fmul double 4.000000e+00, %10, !dbg !978
  %12 = load double, double* %3, align 8, !dbg !979
  %13 = load double, double* %3, align 8, !dbg !980
  %14 = fmul double %12, %13, !dbg !981
  %15 = fsub double %14, 1.000000e+00, !dbg !982
  %16 = fdiv double %11, %15, !dbg !983
  %17 = call double @sqrt(double %16) #6, !dbg !984
  store double %17, double* %6, align 8, !dbg !976
  %18 = load double, double* %3, align 8, !dbg !985
  %19 = fmul double 5.000000e-01, %18, !dbg !986
  %20 = load double, double* %6, align 8, !dbg !987
  %21 = fmul double %19, %20, !dbg !988
  %22 = load double, double* %5, align 8, !dbg !989
  %23 = fmul double %21, %22, !dbg !990
  ret double %23, !dbg !991
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_zero_J0(i32) #0 !dbg !992 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !995, metadata !138), !dbg !996
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !997, metadata !138), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %5, metadata !999, metadata !138), !dbg !998
  %6 = load i32, i32* %3, align 4, !dbg !998
  %7 = call i32 @gsl_sf_bessel_zero_J0_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !998
  store i32 %7, i32* %5, align 4, !dbg !998
  %8 = load i32, i32* %5, align 4, !dbg !1000
  %9 = icmp ne i32 %8, 0, !dbg !1000
  br i1 %9, label %10, label %16, !dbg !998

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1002, !llvm.loop !1005

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1007
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1208, i32 %12), !dbg !1007
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1007
  %14 = load double, double* %13, align 8, !dbg !1007
  store double %14, double* %2, align 8, !dbg !1007
  br label %19, !dbg !1007
                                                  ; No predecessors!
  br label %16, !dbg !1010

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1012
  %18 = load double, double* %17, align 8, !dbg !1012
  store double %18, double* %2, align 8, !dbg !1012
  br label %19, !dbg !1012

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1014
  ret double %20, !dbg !1014
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_zero_J1(i32) #0 !dbg !1015 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1016, metadata !138), !dbg !1017
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1018, metadata !138), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1020, metadata !138), !dbg !1019
  %6 = load i32, i32* %3, align 4, !dbg !1019
  %7 = call i32 @gsl_sf_bessel_zero_J1_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1019
  store i32 %7, i32* %5, align 4, !dbg !1019
  %8 = load i32, i32* %5, align 4, !dbg !1021
  %9 = icmp ne i32 %8, 0, !dbg !1021
  br i1 %9, label %10, label %16, !dbg !1019

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1023, !llvm.loop !1026

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1028
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1213, i32 %12), !dbg !1028
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1028
  %14 = load double, double* %13, align 8, !dbg !1028
  store double %14, double* %2, align 8, !dbg !1028
  br label %19, !dbg !1028
                                                  ; No predecessors!
  br label %16, !dbg !1031

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1033
  %18 = load double, double* %17, align 8, !dbg !1033
  store double %18, double* %2, align 8, !dbg !1033
  br label %19, !dbg !1033

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1035
  ret double %20, !dbg !1035
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_zero_Jnu(double, i32) #0 !dbg !1036 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1039, metadata !138), !dbg !1040
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1041, metadata !138), !dbg !1042
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1043, metadata !138), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1045, metadata !138), !dbg !1044
  %8 = load double, double* %4, align 8, !dbg !1044
  %9 = load i32, i32* %5, align 4, !dbg !1044
  %10 = call i32 @gsl_sf_bessel_zero_Jnu_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1044
  store i32 %10, i32* %7, align 4, !dbg !1044
  %11 = load i32, i32* %7, align 4, !dbg !1046
  %12 = icmp ne i32 %11, 0, !dbg !1046
  br i1 %12, label %13, label %19, !dbg !1044

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1048, !llvm.loop !1051

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1053
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1218, i32 %15), !dbg !1053
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1053
  %17 = load double, double* %16, align 8, !dbg !1053
  store double %17, double* %3, align 8, !dbg !1053
  br label %22, !dbg !1053
                                                  ; No predecessors!
  br label %19, !dbg !1056

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1058
  %21 = load double, double* %20, align 8, !dbg !1058
  store double %21, double* %3, align 8, !dbg !1058
  br label %22, !dbg !1058

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1060
  ret double %23, !dbg !1060
}

; Function Attrs: nounwind uwtable
define internal double @olver_b0(double, double) #0 !dbg !1061 {
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
  call void @llvm.dbg.declare(metadata double* %4, metadata !1062, metadata !138), !dbg !1063
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1064, metadata !138), !dbg !1065
  %18 = load double, double* %4, align 8, !dbg !1066
  %19 = fcmp olt double %18, 1.020000e+00, !dbg !1068
  br i1 %19, label %20, label %47, !dbg !1069

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1070, metadata !138), !dbg !1072
  %21 = load double, double* %4, align 8, !dbg !1073
  %22 = fsub double 1.000000e+00, %21, !dbg !1074
  store double %22, double* %6, align 8, !dbg !1072
  call void @llvm.dbg.declare(metadata double* %7, metadata !1075, metadata !138), !dbg !1076
  store double 0x3F926E4BDCD91844, double* %7, align 8, !dbg !1076
  call void @llvm.dbg.declare(metadata double* %8, metadata !1077, metadata !138), !dbg !1078
  store double 0x3F86EFA85CC9E550, double* %8, align 8, !dbg !1078
  call void @llvm.dbg.declare(metadata double* %9, metadata !1079, metadata !138), !dbg !1080
  store double 0x3F7854F7DB2B1A7F, double* %9, align 8, !dbg !1080
  call void @llvm.dbg.declare(metadata double* %10, metadata !1081, metadata !138), !dbg !1082
  store double 0x3F677DF1ECA75C1C, double* %10, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata double* %11, metadata !1083, metadata !138), !dbg !1084
  store double 0x3F54376E5603FE6D, double* %11, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata double* %12, metadata !1085, metadata !138), !dbg !1086
  store double 0x3F3B52D787939150, double* %12, align 8, !dbg !1086
  call void @llvm.dbg.declare(metadata double* %13, metadata !1087, metadata !138), !dbg !1088
  store double 0x3F014F831CDE0975, double* %13, align 8, !dbg !1088
  call void @llvm.dbg.declare(metadata double* %14, metadata !1089, metadata !138), !dbg !1090
  store double 0xBF2146BADE1F5571, double* %14, align 8, !dbg !1090
  call void @llvm.dbg.declare(metadata double* %15, metadata !1091, metadata !138), !dbg !1092
  store double 0xBF28FE652CE80F79, double* %15, align 8, !dbg !1092
  %23 = load double, double* %6, align 8, !dbg !1093
  %24 = load double, double* %6, align 8, !dbg !1094
  %25 = load double, double* %6, align 8, !dbg !1095
  %26 = load double, double* %6, align 8, !dbg !1096
  %27 = load double, double* %6, align 8, !dbg !1097
  %28 = load double, double* %6, align 8, !dbg !1098
  %29 = load double, double* %6, align 8, !dbg !1099
  %30 = load double, double* %6, align 8, !dbg !1100
  %31 = fmul double %30, 0xBF28FE652CE80F79, !dbg !1101
  %32 = fadd double 0xBF2146BADE1F5571, %31, !dbg !1102
  %33 = fmul double %29, %32, !dbg !1103
  %34 = fadd double 0x3F014F831CDE0975, %33, !dbg !1104
  %35 = fmul double %28, %34, !dbg !1105
  %36 = fadd double 0x3F3B52D787939150, %35, !dbg !1106
  %37 = fmul double %27, %36, !dbg !1107
  %38 = fadd double 0x3F54376E5603FE6D, %37, !dbg !1108
  %39 = fmul double %26, %38, !dbg !1109
  %40 = fadd double 0x3F677DF1ECA75C1C, %39, !dbg !1110
  %41 = fmul double %25, %40, !dbg !1111
  %42 = fadd double 0x3F7854F7DB2B1A7F, %41, !dbg !1112
  %43 = fmul double %24, %42, !dbg !1113
  %44 = fadd double 0x3F86EFA85CC9E550, %43, !dbg !1114
  %45 = fmul double %23, %44, !dbg !1115
  %46 = fadd double 0x3F926E4BDCD91844, %45, !dbg !1116
  store double %46, double* %3, align 8, !dbg !1117
  br label %75, !dbg !1117

; <label>:47:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %16, metadata !1118, metadata !138), !dbg !1120
  %48 = load double, double* %5, align 8, !dbg !1121
  store double %48, double* %16, align 8, !dbg !1120
  call void @llvm.dbg.declare(metadata double* %17, metadata !1122, metadata !138), !dbg !1123
  %49 = load double, double* %4, align 8, !dbg !1124
  %50 = load double, double* %4, align 8, !dbg !1125
  %51 = load double, double* %4, align 8, !dbg !1126
  %52 = fmul double %50, %51, !dbg !1127
  %53 = fdiv double 1.000000e+00, %52, !dbg !1128
  %54 = fsub double 1.000000e+00, %53, !dbg !1129
  %55 = call double @sqrt(double %54) #6, !dbg !1130
  %56 = fmul double %49, %55, !dbg !1131
  %57 = fdiv double 1.000000e+00, %56, !dbg !1132
  store double %57, double* %17, align 8, !dbg !1123
  %58 = load double, double* %16, align 8, !dbg !1133
  %59 = fmul double 4.800000e+01, %58, !dbg !1134
  %60 = load double, double* %16, align 8, !dbg !1135
  %61 = fmul double %59, %60, !dbg !1136
  %62 = fdiv double -5.000000e+00, %61, !dbg !1137
  %63 = load double, double* %17, align 8, !dbg !1138
  %64 = load double, double* %17, align 8, !dbg !1139
  %65 = fmul double 5.000000e+00, %64, !dbg !1140
  %66 = load double, double* %17, align 8, !dbg !1141
  %67 = fmul double %65, %66, !dbg !1142
  %68 = fadd double 3.000000e+00, %67, !dbg !1143
  %69 = fmul double %63, %68, !dbg !1144
  %70 = load double, double* %16, align 8, !dbg !1145
  %71 = call double @sqrt(double %70) #6, !dbg !1146
  %72 = fmul double 2.400000e+01, %71, !dbg !1147
  %73 = fdiv double %69, %72, !dbg !1148
  %74 = fadd double %62, %73, !dbg !1149
  store double %74, double* %3, align 8, !dbg !1150
  br label %75, !dbg !1150

; <label>:75:                                     ; preds = %47, %20
  %76 = load double, double* %3, align 8, !dbg !1151
  ret double %76, !dbg !1151
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!133, !134, !135}
!llvm.ident = !{!136}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_zero.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !61, !62, !64, !65, !70, !74, !78, !79, !80, !81, !82, !83, !84, !85, !89, !93, !94, !98, !102, !103, !104, !105, !106, !107, !108, !114, !118, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!42 = distinct !DIGlobalVariable(name: "P", scope: !43, file: !1, line: 1036, type: !57, isLocal: true, isDefinition: true, variable: [4 x double]* @gsl_sf_bessel_zero_J0_e.P)
!43 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J0_e", scope: !1, file: !1, line: 1024, type: !44, isLocal: false, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !48}
!46 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !50, line: 41, baseType: !51)
!50 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !50, line: 37, size: 128, align: 64, elements: !52)
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !50, line: 38, baseType: !54, size: 64, align: 64)
!54 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !51, file: !50, line: 39, baseType: !54, size: 64, align: 64, offset: 64)
!56 = !{}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, align: 64, elements: !59)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!59 = !{!60}
!60 = !DISubrange(count: 4)
!61 = distinct !DIGlobalVariable(name: "Q", scope: !43, file: !1, line: 1041, type: !57, isLocal: true, isDefinition: true, variable: [4 x double]* @gsl_sf_bessel_zero_J0_e.Q)
!62 = distinct !DIGlobalVariable(name: "a", scope: !63, file: !1, line: 1072, type: !57, isLocal: true, isDefinition: true, variable: [4 x double]* @gsl_sf_bessel_zero_J1_e.a)
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J1_e", scope: !1, file: !1, line: 1060, type: !44, isLocal: false, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!64 = distinct !DIGlobalVariable(name: "b", scope: !63, file: !1, line: 1077, type: !57, isLocal: true, isDefinition: true, variable: [4 x double]* @gsl_sf_bessel_zero_J1_e.b)
!65 = distinct !DIGlobalVariable(name: "coef_jnu_a", scope: !0, file: !1, line: 842, type: !66, isLocal: true, isDefinition: true, variable: [21 x double*]* @coef_jnu_a)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1344, align: 64, elements: !68)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!68 = !{!69}
!69 = !DISubrange(count: 21)
!70 = distinct !DIGlobalVariable(name: "coef_jnu1_a", scope: !0, file: !1, line: 40, type: !71, isLocal: true, isDefinition: true, variable: [24 x double]* @coef_jnu1_a)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1536, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = distinct !DIGlobalVariable(name: "coef_jnu2_a", scope: !0, file: !1, line: 89, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu2_a)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1216, align: 64, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 19)
!78 = distinct !DIGlobalVariable(name: "coef_jnu3_a", scope: !0, file: !1, line: 137, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu3_a)
!79 = distinct !DIGlobalVariable(name: "coef_jnu4_a", scope: !0, file: !1, line: 185, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu4_a)
!80 = distinct !DIGlobalVariable(name: "coef_jnu5_a", scope: !0, file: !1, line: 234, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu5_a)
!81 = distinct !DIGlobalVariable(name: "coef_jnu6_a", scope: !0, file: !1, line: 285, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu6_a)
!82 = distinct !DIGlobalVariable(name: "coef_jnu7_a", scope: !0, file: !1, line: 333, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu7_a)
!83 = distinct !DIGlobalVariable(name: "coef_jnu8_a", scope: !0, file: !1, line: 381, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu8_a)
!84 = distinct !DIGlobalVariable(name: "coef_jnu9_a", scope: !0, file: !1, line: 429, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu9_a)
!85 = distinct !DIGlobalVariable(name: "coef_jnu10_a", scope: !0, file: !1, line: 477, type: !86, isLocal: true, isDefinition: true, variable: [20 x double]* @coef_jnu10_a)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1280, align: 64, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = distinct !DIGlobalVariable(name: "coef_jnu11_a", scope: !0, file: !1, line: 526, type: !90, isLocal: true, isDefinition: true, variable: [27 x double]* @coef_jnu11_a)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1728, align: 64, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 27)
!93 = distinct !DIGlobalVariable(name: "coef_jnu12_a", scope: !0, file: !1, line: 558, type: !90, isLocal: true, isDefinition: true, variable: [27 x double]* @coef_jnu12_a)
!94 = distinct !DIGlobalVariable(name: "coef_jnu13_a", scope: !0, file: !1, line: 590, type: !95, isLocal: true, isDefinition: true, variable: [30 x double]* @coef_jnu13_a)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1920, align: 64, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 30)
!98 = distinct !DIGlobalVariable(name: "coef_jnu14_a", scope: !0, file: !1, line: 625, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu14_a)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1664, align: 64, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 26)
!102 = distinct !DIGlobalVariable(name: "coef_jnu15_a", scope: !0, file: !1, line: 656, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu15_a)
!103 = distinct !DIGlobalVariable(name: "coef_jnu16_a", scope: !0, file: !1, line: 687, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu16_a)
!104 = distinct !DIGlobalVariable(name: "coef_jnu17_a", scope: !0, file: !1, line: 718, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu17_a)
!105 = distinct !DIGlobalVariable(name: "coef_jnu18_a", scope: !0, file: !1, line: 749, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu18_a)
!106 = distinct !DIGlobalVariable(name: "coef_jnu19_a", scope: !0, file: !1, line: 780, type: !99, isLocal: true, isDefinition: true, variable: [26 x double]* @coef_jnu19_a)
!107 = distinct !DIGlobalVariable(name: "coef_jnu20_a", scope: !0, file: !1, line: 811, type: !90, isLocal: true, isDefinition: true, variable: [27 x double]* @coef_jnu20_a)
!108 = distinct !DIGlobalVariable(name: "size_jnu_a", scope: !0, file: !1, line: 866, type: !109, isLocal: true, isDefinition: true, variable: [21 x i64]* @size_jnu_a)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1344, align: 64, elements: !68)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!113 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!114 = distinct !DIGlobalVariable(name: "coef_jnu_b", scope: !0, file: !1, line: 891, type: !115, isLocal: true, isDefinition: true, variable: [11 x double*]* @coef_jnu_b)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 704, align: 64, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = distinct !DIGlobalVariable(name: "coef_jnu1_b", scope: !0, file: !1, line: 69, type: !119, isLocal: true, isDefinition: true, variable: [15 x double]* @coef_jnu1_b)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 960, align: 64, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 15)
!122 = distinct !DIGlobalVariable(name: "coef_jnu2_b", scope: !0, file: !1, line: 113, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu2_b)
!123 = distinct !DIGlobalVariable(name: "coef_jnu3_b", scope: !0, file: !1, line: 161, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu3_b)
!124 = distinct !DIGlobalVariable(name: "coef_jnu4_b", scope: !0, file: !1, line: 209, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu4_b)
!125 = distinct !DIGlobalVariable(name: "coef_jnu5_b", scope: !0, file: !1, line: 261, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu5_b)
!126 = distinct !DIGlobalVariable(name: "coef_jnu6_b", scope: !0, file: !1, line: 309, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu6_b)
!127 = distinct !DIGlobalVariable(name: "coef_jnu7_b", scope: !0, file: !1, line: 357, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu7_b)
!128 = distinct !DIGlobalVariable(name: "coef_jnu8_b", scope: !0, file: !1, line: 405, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu8_b)
!129 = distinct !DIGlobalVariable(name: "coef_jnu9_b", scope: !0, file: !1, line: 453, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu9_b)
!130 = distinct !DIGlobalVariable(name: "coef_jnu10_b", scope: !0, file: !1, line: 502, type: !75, isLocal: true, isDefinition: true, variable: [19 x double]* @coef_jnu10_b)
!131 = distinct !DIGlobalVariable(name: "size_jnu_b", scope: !0, file: !1, line: 905, type: !132, isLocal: true, isDefinition: true, variable: [11 x i64]* @size_jnu_b)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 704, align: 64, elements: !116)
!133 = !{i32 2, !"Dwarf Version", i32 4}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"PIC Level", i32 2}
!136 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!137 = !DILocalVariable(name: "s", arg: 1, scope: !43, file: !1, line: 1024, type: !47)
!138 = !DIExpression()
!139 = !DILocation(line: 1024, column: 38, scope: !43)
!140 = !DILocalVariable(name: "result", arg: 2, scope: !43, file: !1, line: 1024, type: !48)
!141 = !DILocation(line: 1024, column: 57, scope: !43)
!142 = !DILocation(line: 1028, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !43, file: !1, line: 1028, column: 6)
!144 = !DILocation(line: 1028, column: 8, scope: !143)
!145 = !DILocation(line: 1028, column: 6, scope: !43)
!146 = !DILocation(line: 1029, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 1028, column: 13)
!148 = !DILocation(line: 1029, column: 13, scope: !147)
!149 = !DILocation(line: 1029, column: 17, scope: !147)
!150 = !DILocation(line: 1030, column: 5, scope: !147)
!151 = !DILocation(line: 1030, column: 13, scope: !147)
!152 = !DILocation(line: 1030, column: 17, scope: !147)
!153 = !DILocation(line: 1031, column: 5, scope: !147)
!154 = distinct !{!154, !153}
!155 = !DILocation(line: 1031, column: 5, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!157 = distinct !DILexicalBlock(scope: !147, file: !1, line: 1031, column: 5)
!158 = !DILocation(line: 1032, column: 3, scope: !147)
!159 = !DILocalVariable(name: "beta", scope: !160, file: !1, line: 1047, type: !58)
!160 = distinct !DILexicalBlock(scope: !143, file: !1, line: 1033, column: 8)
!161 = !DILocation(line: 1047, column: 18, scope: !160)
!162 = !DILocation(line: 1047, column: 26, scope: !160)
!163 = !DILocation(line: 1047, column: 28, scope: !160)
!164 = !DILocation(line: 1047, column: 36, scope: !160)
!165 = !DILocalVariable(name: "bi2", scope: !160, file: !1, line: 1048, type: !58)
!166 = !DILocation(line: 1048, column: 18, scope: !160)
!167 = !DILocation(line: 1048, column: 30, scope: !160)
!168 = !DILocation(line: 1048, column: 35, scope: !160)
!169 = !DILocation(line: 1048, column: 34, scope: !160)
!170 = !DILocation(line: 1048, column: 28, scope: !160)
!171 = !DILocalVariable(name: "R33num", scope: !160, file: !1, line: 1049, type: !58)
!172 = !DILocation(line: 1049, column: 18, scope: !160)
!173 = !DILocation(line: 1049, column: 27, scope: !160)
!174 = !DILocation(line: 1049, column: 34, scope: !160)
!175 = !DILocation(line: 1049, column: 41, scope: !160)
!176 = !DILocation(line: 1049, column: 48, scope: !160)
!177 = !DILocation(line: 1049, column: 55, scope: !160)
!178 = !DILocation(line: 1049, column: 62, scope: !160)
!179 = !DILocation(line: 1049, column: 69, scope: !160)
!180 = !DILocation(line: 1049, column: 67, scope: !160)
!181 = !DILocation(line: 1049, column: 60, scope: !160)
!182 = !DILocation(line: 1049, column: 52, scope: !160)
!183 = !DILocation(line: 1049, column: 46, scope: !160)
!184 = !DILocation(line: 1049, column: 38, scope: !160)
!185 = !DILocation(line: 1049, column: 32, scope: !160)
!186 = !DILocalVariable(name: "R33den", scope: !160, file: !1, line: 1050, type: !58)
!187 = !DILocation(line: 1050, column: 18, scope: !160)
!188 = !DILocation(line: 1050, column: 27, scope: !160)
!189 = !DILocation(line: 1050, column: 34, scope: !160)
!190 = !DILocation(line: 1050, column: 41, scope: !160)
!191 = !DILocation(line: 1050, column: 48, scope: !160)
!192 = !DILocation(line: 1050, column: 55, scope: !160)
!193 = !DILocation(line: 1050, column: 62, scope: !160)
!194 = !DILocation(line: 1050, column: 69, scope: !160)
!195 = !DILocation(line: 1050, column: 67, scope: !160)
!196 = !DILocation(line: 1050, column: 60, scope: !160)
!197 = !DILocation(line: 1050, column: 52, scope: !160)
!198 = !DILocation(line: 1050, column: 46, scope: !160)
!199 = !DILocation(line: 1050, column: 38, scope: !160)
!200 = !DILocation(line: 1050, column: 32, scope: !160)
!201 = !DILocalVariable(name: "R33", scope: !160, file: !1, line: 1051, type: !58)
!202 = !DILocation(line: 1051, column: 18, scope: !160)
!203 = !DILocation(line: 1051, column: 24, scope: !160)
!204 = !DILocation(line: 1051, column: 31, scope: !160)
!205 = !DILocation(line: 1051, column: 30, scope: !160)
!206 = !DILocation(line: 1052, column: 19, scope: !160)
!207 = !DILocation(line: 1052, column: 26, scope: !160)
!208 = !DILocation(line: 1052, column: 30, scope: !160)
!209 = !DILocation(line: 1052, column: 29, scope: !160)
!210 = !DILocation(line: 1052, column: 24, scope: !160)
!211 = !DILocation(line: 1052, column: 5, scope: !160)
!212 = !DILocation(line: 1052, column: 13, scope: !160)
!213 = !DILocation(line: 1052, column: 17, scope: !160)
!214 = !DILocation(line: 1053, column: 34, scope: !160)
!215 = !DILocation(line: 1053, column: 42, scope: !160)
!216 = !DILocation(line: 1053, column: 32, scope: !160)
!217 = !DILocation(line: 1053, column: 19, scope: !160)
!218 = !DILocation(line: 1053, column: 5, scope: !160)
!219 = !DILocation(line: 1053, column: 13, scope: !160)
!220 = !DILocation(line: 1053, column: 17, scope: !160)
!221 = !DILocation(line: 1054, column: 5, scope: !160)
!222 = !DILocation(line: 1056, column: 1, scope: !43)
!223 = !DILocalVariable(name: "s", arg: 1, scope: !63, file: !1, line: 1060, type: !47)
!224 = !DILocation(line: 1060, column: 38, scope: !63)
!225 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 1060, type: !48)
!226 = !DILocation(line: 1060, column: 57, scope: !63)
!227 = !DILocation(line: 1064, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !63, file: !1, line: 1064, column: 6)
!229 = !DILocation(line: 1064, column: 8, scope: !228)
!230 = !DILocation(line: 1064, column: 6, scope: !63)
!231 = !DILocation(line: 1065, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 1064, column: 14)
!233 = !DILocation(line: 1065, column: 13, scope: !232)
!234 = !DILocation(line: 1065, column: 17, scope: !232)
!235 = !DILocation(line: 1066, column: 5, scope: !232)
!236 = !DILocation(line: 1066, column: 13, scope: !232)
!237 = !DILocation(line: 1066, column: 17, scope: !232)
!238 = !DILocation(line: 1067, column: 5, scope: !232)
!239 = !DILocalVariable(name: "beta", scope: !240, file: !1, line: 1083, type: !58)
!240 = distinct !DILexicalBlock(scope: !228, file: !1, line: 1069, column: 8)
!241 = !DILocation(line: 1083, column: 18, scope: !240)
!242 = !DILocation(line: 1083, column: 26, scope: !240)
!243 = !DILocation(line: 1083, column: 28, scope: !240)
!244 = !DILocation(line: 1083, column: 36, scope: !240)
!245 = !DILocalVariable(name: "bi2", scope: !240, file: !1, line: 1084, type: !58)
!246 = !DILocation(line: 1084, column: 18, scope: !240)
!247 = !DILocation(line: 1084, column: 30, scope: !240)
!248 = !DILocation(line: 1084, column: 35, scope: !240)
!249 = !DILocation(line: 1084, column: 34, scope: !240)
!250 = !DILocation(line: 1084, column: 28, scope: !240)
!251 = !DILocalVariable(name: "Rnum", scope: !240, file: !1, line: 1085, type: !58)
!252 = !DILocation(line: 1085, column: 18, scope: !240)
!253 = !DILocation(line: 1085, column: 25, scope: !240)
!254 = !DILocation(line: 1085, column: 32, scope: !240)
!255 = !DILocation(line: 1085, column: 39, scope: !240)
!256 = !DILocation(line: 1085, column: 46, scope: !240)
!257 = !DILocation(line: 1085, column: 53, scope: !240)
!258 = !DILocation(line: 1085, column: 60, scope: !240)
!259 = !DILocation(line: 1085, column: 66, scope: !240)
!260 = !DILocation(line: 1085, column: 64, scope: !240)
!261 = !DILocation(line: 1085, column: 58, scope: !240)
!262 = !DILocation(line: 1085, column: 50, scope: !240)
!263 = !DILocation(line: 1085, column: 44, scope: !240)
!264 = !DILocation(line: 1085, column: 36, scope: !240)
!265 = !DILocation(line: 1085, column: 30, scope: !240)
!266 = !DILocalVariable(name: "Rden", scope: !240, file: !1, line: 1086, type: !58)
!267 = !DILocation(line: 1086, column: 18, scope: !240)
!268 = !DILocation(line: 1086, column: 25, scope: !240)
!269 = !DILocation(line: 1086, column: 32, scope: !240)
!270 = !DILocation(line: 1086, column: 39, scope: !240)
!271 = !DILocation(line: 1086, column: 46, scope: !240)
!272 = !DILocation(line: 1086, column: 53, scope: !240)
!273 = !DILocation(line: 1086, column: 60, scope: !240)
!274 = !DILocation(line: 1086, column: 66, scope: !240)
!275 = !DILocation(line: 1086, column: 64, scope: !240)
!276 = !DILocation(line: 1086, column: 58, scope: !240)
!277 = !DILocation(line: 1086, column: 50, scope: !240)
!278 = !DILocation(line: 1086, column: 44, scope: !240)
!279 = !DILocation(line: 1086, column: 36, scope: !240)
!280 = !DILocation(line: 1086, column: 30, scope: !240)
!281 = !DILocalVariable(name: "R", scope: !240, file: !1, line: 1087, type: !58)
!282 = !DILocation(line: 1087, column: 18, scope: !240)
!283 = !DILocation(line: 1087, column: 22, scope: !240)
!284 = !DILocation(line: 1087, column: 27, scope: !240)
!285 = !DILocation(line: 1087, column: 26, scope: !240)
!286 = !DILocation(line: 1088, column: 19, scope: !240)
!287 = !DILocation(line: 1088, column: 33, scope: !240)
!288 = !DILocation(line: 1088, column: 35, scope: !240)
!289 = !DILocation(line: 1088, column: 34, scope: !240)
!290 = !DILocation(line: 1088, column: 31, scope: !240)
!291 = !DILocation(line: 1088, column: 24, scope: !240)
!292 = !DILocation(line: 1088, column: 5, scope: !240)
!293 = !DILocation(line: 1088, column: 13, scope: !240)
!294 = !DILocation(line: 1088, column: 17, scope: !240)
!295 = !DILocation(line: 1089, column: 34, scope: !240)
!296 = !DILocation(line: 1089, column: 42, scope: !240)
!297 = !DILocation(line: 1089, column: 32, scope: !240)
!298 = !DILocation(line: 1089, column: 19, scope: !240)
!299 = !DILocation(line: 1089, column: 5, scope: !240)
!300 = !DILocation(line: 1089, column: 13, scope: !240)
!301 = !DILocation(line: 1089, column: 17, scope: !240)
!302 = !DILocation(line: 1090, column: 5, scope: !240)
!303 = !DILocation(line: 1092, column: 1, scope: !63)
!304 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu_e", scope: !1, file: !1, line: 1096, type: !305, isLocal: false, isDefinition: true, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!305 = !DISubroutineType(types: !306)
!306 = !{!46, !54, !47, !48}
!307 = !DILocalVariable(name: "nu", arg: 1, scope: !304, file: !1, line: 1096, type: !54)
!308 = !DILocation(line: 1096, column: 33, scope: !304)
!309 = !DILocalVariable(name: "s", arg: 2, scope: !304, file: !1, line: 1096, type: !47)
!310 = !DILocation(line: 1096, column: 50, scope: !304)
!311 = !DILocalVariable(name: "result", arg: 3, scope: !304, file: !1, line: 1096, type: !48)
!312 = !DILocation(line: 1096, column: 69, scope: !304)
!313 = !DILocation(line: 1100, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !304, file: !1, line: 1100, column: 6)
!315 = !DILocation(line: 1100, column: 9, scope: !314)
!316 = !DILocation(line: 1100, column: 6, scope: !304)
!317 = !DILocation(line: 1101, column: 5, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 1100, column: 18)
!319 = distinct !{!319, !317}
!320 = !DILocation(line: 1101, column: 5, scope: !321)
!321 = !DILexicalBlockFile(scope: !322, file: !1, discriminator: 1)
!322 = distinct !DILexicalBlock(scope: !318, file: !1, line: 1101, column: 5)
!323 = distinct !{!323, !324}
!324 = !DILocation(line: 1101, column: 5, scope: !322)
!325 = !DILocation(line: 1101, column: 5, scope: !326)
!326 = !DILexicalBlockFile(scope: !327, file: !1, discriminator: 2)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 1101, column: 5)
!328 = !DILocation(line: 1101, column: 5, scope: !329)
!329 = !DILexicalBlockFile(scope: !322, file: !1, discriminator: 3)
!330 = !DILocation(line: 1102, column: 3, scope: !318)
!331 = !DILocation(line: 1103, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !314, file: !1, line: 1103, column: 11)
!333 = !DILocation(line: 1103, column: 13, scope: !332)
!334 = !DILocation(line: 1103, column: 11, scope: !314)
!335 = !DILocation(line: 1104, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 1103, column: 19)
!337 = !DILocation(line: 1104, column: 13, scope: !336)
!338 = !DILocation(line: 1104, column: 17, scope: !336)
!339 = !DILocation(line: 1105, column: 5, scope: !336)
!340 = !DILocation(line: 1105, column: 13, scope: !336)
!341 = !DILocation(line: 1105, column: 17, scope: !336)
!342 = !DILocation(line: 1106, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !1, line: 1106, column: 9)
!344 = !DILocation(line: 1106, column: 12, scope: !343)
!345 = !DILocation(line: 1106, column: 9, scope: !336)
!346 = !DILocation(line: 1107, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 1106, column: 20)
!348 = distinct !{!348, !346}
!349 = !DILocation(line: 1107, column: 7, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !1, discriminator: 1)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 1107, column: 7)
!352 = !DILocation(line: 1108, column: 5, scope: !347)
!353 = !DILocation(line: 1109, column: 5, scope: !336)
!354 = !DILocation(line: 1111, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !332, file: !1, line: 1111, column: 11)
!356 = !DILocation(line: 1111, column: 14, scope: !355)
!357 = !DILocation(line: 1111, column: 11, scope: !332)
!358 = !DILocation(line: 1113, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 1111, column: 21)
!360 = !DILocation(line: 1113, column: 13, scope: !359)
!361 = !DILocation(line: 1113, column: 17, scope: !359)
!362 = !DILocation(line: 1114, column: 5, scope: !359)
!363 = !DILocation(line: 1114, column: 13, scope: !359)
!364 = !DILocation(line: 1114, column: 17, scope: !359)
!365 = !DILocation(line: 1115, column: 5, scope: !359)
!366 = distinct !{!366, !365}
!367 = !DILocation(line: 1115, column: 5, scope: !368)
!368 = !DILexicalBlockFile(scope: !369, file: !1, discriminator: 1)
!369 = distinct !DILexicalBlock(scope: !359, file: !1, line: 1115, column: 5)
!370 = !DILocation(line: 1116, column: 3, scope: !359)
!371 = !DILocation(line: 1117, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !355, file: !1, line: 1117, column: 11)
!373 = !DILocation(line: 1117, column: 13, scope: !372)
!374 = !DILocation(line: 1117, column: 11, scope: !355)
!375 = !DILocation(line: 1121, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 1121, column: 8)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 1117, column: 19)
!378 = !DILocation(line: 1121, column: 11, scope: !376)
!379 = !DILocation(line: 1121, column: 8, scope: !377)
!380 = !DILocalVariable(name: "c", scope: !381, file: !1, line: 1122, type: !67)
!381 = distinct !DILexicalBlock(scope: !376, file: !1, line: 1121, column: 18)
!382 = !DILocation(line: 1122, column: 22, scope: !381)
!383 = !DILocation(line: 1122, column: 37, scope: !381)
!384 = !DILocation(line: 1122, column: 26, scope: !381)
!385 = !DILocalVariable(name: "L", scope: !381, file: !1, line: 1123, type: !110)
!386 = !DILocation(line: 1123, column: 22, scope: !381)
!387 = !DILocation(line: 1123, column: 37, scope: !381)
!388 = !DILocation(line: 1123, column: 26, scope: !381)
!389 = !DILocalVariable(name: "arg", scope: !381, file: !1, line: 1124, type: !58)
!390 = !DILocation(line: 1124, column: 20, scope: !381)
!391 = !DILocation(line: 1124, column: 26, scope: !381)
!392 = !DILocation(line: 1124, column: 28, scope: !381)
!393 = !DILocalVariable(name: "chb", scope: !381, file: !1, line: 1125, type: !58)
!394 = !DILocation(line: 1125, column: 20, scope: !381)
!395 = !DILocation(line: 1125, column: 35, scope: !381)
!396 = !DILocation(line: 1125, column: 38, scope: !381)
!397 = !DILocation(line: 1125, column: 39, scope: !381)
!398 = !DILocation(line: 1125, column: 43, scope: !381)
!399 = !DILocation(line: 1125, column: 26, scope: !381)
!400 = !DILocation(line: 1126, column: 21, scope: !381)
!401 = !DILocation(line: 1126, column: 7, scope: !381)
!402 = !DILocation(line: 1126, column: 15, scope: !381)
!403 = !DILocation(line: 1126, column: 19, scope: !381)
!404 = !DILocation(line: 1127, column: 31, scope: !381)
!405 = !DILocation(line: 1127, column: 39, scope: !381)
!406 = !DILocation(line: 1127, column: 29, scope: !381)
!407 = !DILocation(line: 1127, column: 7, scope: !381)
!408 = !DILocation(line: 1127, column: 15, scope: !381)
!409 = !DILocation(line: 1127, column: 19, scope: !381)
!410 = !DILocation(line: 1128, column: 5, scope: !381)
!411 = !DILocalVariable(name: "c", scope: !412, file: !1, line: 1130, type: !67)
!412 = distinct !DILexicalBlock(scope: !376, file: !1, line: 1129, column: 10)
!413 = !DILocation(line: 1130, column: 22, scope: !412)
!414 = !DILocation(line: 1130, column: 37, scope: !412)
!415 = !DILocation(line: 1130, column: 26, scope: !412)
!416 = !DILocalVariable(name: "L", scope: !412, file: !1, line: 1131, type: !110)
!417 = !DILocation(line: 1131, column: 22, scope: !412)
!418 = !DILocation(line: 1131, column: 37, scope: !412)
!419 = !DILocation(line: 1131, column: 26, scope: !412)
!420 = !DILocalVariable(name: "arg", scope: !412, file: !1, line: 1132, type: !58)
!421 = !DILocation(line: 1132, column: 20, scope: !412)
!422 = !DILocation(line: 1132, column: 34, scope: !412)
!423 = !DILocation(line: 1132, column: 33, scope: !412)
!424 = !DILocation(line: 1132, column: 26, scope: !412)
!425 = !DILocalVariable(name: "chb", scope: !412, file: !1, line: 1133, type: !58)
!426 = !DILocation(line: 1133, column: 20, scope: !412)
!427 = !DILocation(line: 1133, column: 35, scope: !412)
!428 = !DILocation(line: 1133, column: 38, scope: !412)
!429 = !DILocation(line: 1133, column: 39, scope: !412)
!430 = !DILocation(line: 1133, column: 43, scope: !412)
!431 = !DILocation(line: 1133, column: 26, scope: !412)
!432 = !DILocation(line: 1134, column: 21, scope: !412)
!433 = !DILocation(line: 1134, column: 26, scope: !412)
!434 = !DILocation(line: 1134, column: 24, scope: !412)
!435 = !DILocation(line: 1134, column: 7, scope: !412)
!436 = !DILocation(line: 1134, column: 15, scope: !412)
!437 = !DILocation(line: 1134, column: 19, scope: !412)
!438 = !DILocation(line: 1135, column: 31, scope: !412)
!439 = !DILocation(line: 1135, column: 39, scope: !412)
!440 = !DILocation(line: 1135, column: 29, scope: !412)
!441 = !DILocation(line: 1135, column: 7, scope: !412)
!442 = !DILocation(line: 1135, column: 15, scope: !412)
!443 = !DILocation(line: 1135, column: 19, scope: !412)
!444 = !DILocation(line: 1137, column: 5, scope: !377)
!445 = !DILocation(line: 1139, column: 11, scope: !446)
!446 = distinct !DILexicalBlock(scope: !372, file: !1, line: 1139, column: 11)
!447 = !DILocation(line: 1139, column: 13, scope: !446)
!448 = !DILocation(line: 1139, column: 11, scope: !372)
!449 = !DILocation(line: 1141, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 1141, column: 8)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 1139, column: 20)
!452 = !DILocation(line: 1141, column: 13, scope: !450)
!453 = !DILocation(line: 1141, column: 11, scope: !450)
!454 = !DILocation(line: 1141, column: 8, scope: !451)
!455 = !DILocalVariable(name: "c", scope: !456, file: !1, line: 1142, type: !67)
!456 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1141, column: 16)
!457 = !DILocation(line: 1142, column: 22, scope: !456)
!458 = !DILocation(line: 1142, column: 37, scope: !456)
!459 = !DILocation(line: 1142, column: 26, scope: !456)
!460 = !DILocalVariable(name: "L", scope: !456, file: !1, line: 1143, type: !110)
!461 = !DILocation(line: 1143, column: 22, scope: !456)
!462 = !DILocation(line: 1143, column: 37, scope: !456)
!463 = !DILocation(line: 1143, column: 26, scope: !456)
!464 = !DILocalVariable(name: "arg", scope: !456, file: !1, line: 1144, type: !58)
!465 = !DILocation(line: 1144, column: 20, scope: !456)
!466 = !DILocation(line: 1144, column: 26, scope: !456)
!467 = !DILocation(line: 1144, column: 29, scope: !456)
!468 = !DILocation(line: 1144, column: 28, scope: !456)
!469 = !DILocalVariable(name: "chb", scope: !456, file: !1, line: 1145, type: !58)
!470 = !DILocation(line: 1145, column: 20, scope: !456)
!471 = !DILocation(line: 1145, column: 35, scope: !456)
!472 = !DILocation(line: 1145, column: 38, scope: !456)
!473 = !DILocation(line: 1145, column: 39, scope: !456)
!474 = !DILocation(line: 1145, column: 43, scope: !456)
!475 = !DILocation(line: 1145, column: 26, scope: !456)
!476 = !DILocation(line: 1146, column: 21, scope: !456)
!477 = !DILocation(line: 1146, column: 7, scope: !456)
!478 = !DILocation(line: 1146, column: 15, scope: !456)
!479 = !DILocation(line: 1146, column: 19, scope: !456)
!480 = !DILocation(line: 1147, column: 31, scope: !456)
!481 = !DILocation(line: 1147, column: 39, scope: !456)
!482 = !DILocation(line: 1147, column: 29, scope: !456)
!483 = !DILocation(line: 1147, column: 7, scope: !456)
!484 = !DILocation(line: 1147, column: 15, scope: !456)
!485 = !DILocation(line: 1147, column: 19, scope: !456)
!486 = !DILocation(line: 1148, column: 5, scope: !456)
!487 = !DILocalVariable(name: "c", scope: !488, file: !1, line: 1150, type: !67)
!488 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1149, column: 10)
!489 = !DILocation(line: 1150, column: 22, scope: !488)
!490 = !DILocation(line: 1150, column: 37, scope: !488)
!491 = !DILocation(line: 1150, column: 26, scope: !488)
!492 = !DILocalVariable(name: "L", scope: !488, file: !1, line: 1151, type: !110)
!493 = !DILocation(line: 1151, column: 22, scope: !488)
!494 = !DILocation(line: 1151, column: 37, scope: !488)
!495 = !DILocation(line: 1151, column: 26, scope: !488)
!496 = !DILocalVariable(name: "arg", scope: !488, file: !1, line: 1152, type: !58)
!497 = !DILocation(line: 1152, column: 20, scope: !488)
!498 = !DILocation(line: 1152, column: 30, scope: !488)
!499 = !DILocation(line: 1152, column: 32, scope: !488)
!500 = !DILocation(line: 1152, column: 31, scope: !488)
!501 = !DILocation(line: 1152, column: 26, scope: !488)
!502 = !DILocalVariable(name: "chb", scope: !488, file: !1, line: 1153, type: !58)
!503 = !DILocation(line: 1153, column: 20, scope: !488)
!504 = !DILocation(line: 1153, column: 35, scope: !488)
!505 = !DILocation(line: 1153, column: 38, scope: !488)
!506 = !DILocation(line: 1153, column: 39, scope: !488)
!507 = !DILocation(line: 1153, column: 43, scope: !488)
!508 = !DILocation(line: 1153, column: 26, scope: !488)
!509 = !DILocation(line: 1154, column: 21, scope: !488)
!510 = !DILocation(line: 1154, column: 26, scope: !488)
!511 = !DILocation(line: 1154, column: 24, scope: !488)
!512 = !DILocation(line: 1154, column: 7, scope: !488)
!513 = !DILocation(line: 1154, column: 15, scope: !488)
!514 = !DILocation(line: 1154, column: 19, scope: !488)
!515 = !DILocation(line: 1155, column: 31, scope: !488)
!516 = !DILocation(line: 1155, column: 39, scope: !488)
!517 = !DILocation(line: 1155, column: 29, scope: !488)
!518 = !DILocation(line: 1155, column: 7, scope: !488)
!519 = !DILocation(line: 1155, column: 15, scope: !488)
!520 = !DILocation(line: 1155, column: 19, scope: !488)
!521 = !DILocation(line: 1160, column: 10, scope: !522)
!522 = distinct !DILexicalBlock(scope: !488, file: !1, line: 1160, column: 10)
!523 = !DILocation(line: 1160, column: 12, scope: !522)
!524 = !DILocation(line: 1160, column: 10, scope: !488)
!525 = !DILocation(line: 1161, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !1, line: 1160, column: 18)
!527 = !DILocation(line: 1161, column: 17, scope: !526)
!528 = !DILocation(line: 1161, column: 21, scope: !526)
!529 = !DILocation(line: 1162, column: 7, scope: !526)
!530 = !DILocation(line: 1164, column: 5, scope: !451)
!531 = !DILocation(line: 1166, column: 11, scope: !532)
!532 = distinct !DILexicalBlock(scope: !446, file: !1, line: 1166, column: 11)
!533 = !DILocation(line: 1166, column: 19, scope: !532)
!534 = !DILocation(line: 1166, column: 18, scope: !532)
!535 = !DILocation(line: 1166, column: 13, scope: !532)
!536 = !DILocation(line: 1166, column: 22, scope: !532)
!537 = !DILocation(line: 1166, column: 25, scope: !538)
!538 = !DILexicalBlockFile(scope: !532, file: !1, discriminator: 1)
!539 = !DILocation(line: 1166, column: 27, scope: !538)
!540 = !DILocation(line: 1166, column: 11, scope: !538)
!541 = !DILocalVariable(name: "c", scope: !542, file: !1, line: 1168, type: !67)
!542 = distinct !DILexicalBlock(scope: !532, file: !1, line: 1166, column: 34)
!543 = !DILocation(line: 1168, column: 20, scope: !542)
!544 = !DILocation(line: 1168, column: 35, scope: !542)
!545 = !DILocation(line: 1168, column: 24, scope: !542)
!546 = !DILocalVariable(name: "L", scope: !542, file: !1, line: 1169, type: !110)
!547 = !DILocation(line: 1169, column: 20, scope: !542)
!548 = !DILocation(line: 1169, column: 35, scope: !542)
!549 = !DILocation(line: 1169, column: 24, scope: !542)
!550 = !DILocalVariable(name: "arg", scope: !542, file: !1, line: 1170, type: !58)
!551 = !DILocation(line: 1170, column: 18, scope: !542)
!552 = !DILocation(line: 1170, column: 24, scope: !542)
!553 = !DILocation(line: 1170, column: 32, scope: !542)
!554 = !DILocation(line: 1170, column: 31, scope: !542)
!555 = !DILocation(line: 1170, column: 26, scope: !542)
!556 = !DILocalVariable(name: "chb", scope: !542, file: !1, line: 1171, type: !58)
!557 = !DILocation(line: 1171, column: 18, scope: !542)
!558 = !DILocation(line: 1171, column: 33, scope: !542)
!559 = !DILocation(line: 1171, column: 36, scope: !542)
!560 = !DILocation(line: 1171, column: 37, scope: !542)
!561 = !DILocation(line: 1171, column: 41, scope: !542)
!562 = !DILocation(line: 1171, column: 24, scope: !542)
!563 = !DILocation(line: 1172, column: 19, scope: !542)
!564 = !DILocation(line: 1172, column: 5, scope: !542)
!565 = !DILocation(line: 1172, column: 13, scope: !542)
!566 = !DILocation(line: 1172, column: 17, scope: !542)
!567 = !DILocation(line: 1173, column: 29, scope: !542)
!568 = !DILocation(line: 1173, column: 27, scope: !542)
!569 = !DILocation(line: 1173, column: 5, scope: !542)
!570 = !DILocation(line: 1173, column: 13, scope: !542)
!571 = !DILocation(line: 1173, column: 17, scope: !542)
!572 = !DILocation(line: 1174, column: 5, scope: !542)
!573 = !DILocation(line: 1176, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !532, file: !1, line: 1176, column: 11)
!575 = !DILocation(line: 1176, column: 21, scope: !574)
!576 = !DILocation(line: 1176, column: 19, scope: !574)
!577 = !DILocation(line: 1176, column: 13, scope: !574)
!578 = !DILocation(line: 1176, column: 11, scope: !532)
!579 = !DILocalVariable(name: "beta", scope: !580, file: !1, line: 1178, type: !58)
!580 = distinct !DILexicalBlock(scope: !574, file: !1, line: 1176, column: 25)
!581 = !DILocation(line: 1178, column: 18, scope: !580)
!582 = !DILocation(line: 1178, column: 26, scope: !580)
!583 = !DILocation(line: 1178, column: 34, scope: !580)
!584 = !DILocation(line: 1178, column: 33, scope: !580)
!585 = !DILocation(line: 1178, column: 28, scope: !580)
!586 = !DILocation(line: 1178, column: 37, scope: !580)
!587 = !DILocation(line: 1178, column: 45, scope: !580)
!588 = !DILocalVariable(name: "mc", scope: !580, file: !1, line: 1179, type: !58)
!589 = !DILocation(line: 1179, column: 18, scope: !580)
!590 = !DILocation(line: 1179, column: 48, scope: !580)
!591 = !DILocation(line: 1179, column: 47, scope: !580)
!592 = !DILocation(line: 1179, column: 51, scope: !580)
!593 = !DILocation(line: 1179, column: 50, scope: !580)
!594 = !DILocation(line: 1179, column: 55, scope: !580)
!595 = !DILocation(line: 1179, column: 25, scope: !580)
!596 = !DILocalVariable(name: "rat12", scope: !580, file: !1, line: 1180, type: !49)
!597 = !DILocation(line: 1180, column: 19, scope: !580)
!598 = !DILocation(line: 1181, column: 22, scope: !580)
!599 = !DILocation(line: 1181, column: 25, scope: !580)
!600 = !DILocation(line: 1181, column: 24, scope: !580)
!601 = !DILocation(line: 1181, column: 5, scope: !580)
!602 = !DILocation(line: 1182, column: 20, scope: !580)
!603 = !DILocation(line: 1182, column: 27, scope: !580)
!604 = !DILocation(line: 1182, column: 25, scope: !580)
!605 = !DILocation(line: 1182, column: 5, scope: !580)
!606 = !DILocation(line: 1182, column: 13, scope: !580)
!607 = !DILocation(line: 1182, column: 18, scope: !580)
!608 = !DILocation(line: 1183, column: 31, scope: !580)
!609 = !DILocation(line: 1183, column: 26, scope: !580)
!610 = !DILocation(line: 1183, column: 24, scope: !580)
!611 = !DILocation(line: 1183, column: 45, scope: !580)
!612 = !DILocation(line: 1183, column: 37, scope: !580)
!613 = !DILocation(line: 1183, column: 5, scope: !580)
!614 = !DILocation(line: 1183, column: 13, scope: !580)
!615 = !DILocation(line: 1183, column: 18, scope: !580)
!616 = !DILocation(line: 1184, column: 49, scope: !580)
!617 = !DILocation(line: 1184, column: 57, scope: !580)
!618 = !DILocation(line: 1184, column: 47, scope: !580)
!619 = !DILocation(line: 1184, column: 26, scope: !580)
!620 = !DILocation(line: 1184, column: 24, scope: !580)
!621 = !DILocation(line: 1184, column: 5, scope: !580)
!622 = !DILocation(line: 1184, column: 13, scope: !580)
!623 = !DILocation(line: 1184, column: 17, scope: !580)
!624 = !DILocation(line: 1185, column: 5, scope: !580)
!625 = !DILocalVariable(name: "as", scope: !626, file: !1, line: 1189, type: !49)
!626 = distinct !DILexicalBlock(scope: !574, file: !1, line: 1187, column: 8)
!627 = !DILocation(line: 1189, column: 19, scope: !626)
!628 = !DILocalVariable(name: "stat_as", scope: !626, file: !1, line: 1190, type: !629)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!630 = !DILocation(line: 1190, column: 15, scope: !626)
!631 = !DILocation(line: 1190, column: 47, scope: !626)
!632 = !DILocation(line: 1190, column: 25, scope: !626)
!633 = !DILocalVariable(name: "minus_zeta", scope: !626, file: !1, line: 1191, type: !58)
!634 = !DILocation(line: 1191, column: 18, scope: !626)
!635 = !DILocation(line: 1191, column: 36, scope: !626)
!636 = !DILocation(line: 1191, column: 32, scope: !626)
!637 = !DILocation(line: 1191, column: 31, scope: !626)
!638 = !DILocation(line: 1191, column: 54, scope: !626)
!639 = !DILocation(line: 1191, column: 49, scope: !626)
!640 = !DILocalVariable(name: "z", scope: !626, file: !1, line: 1192, type: !58)
!641 = !DILocation(line: 1192, column: 18, scope: !626)
!642 = !DILocation(line: 1192, column: 52, scope: !626)
!643 = !DILocation(line: 1192, column: 23, scope: !626)
!644 = !DILocalVariable(name: "f1", scope: !626, file: !1, line: 1193, type: !58)
!645 = !DILocation(line: 1193, column: 18, scope: !626)
!646 = !DILocation(line: 1193, column: 32, scope: !626)
!647 = !DILocation(line: 1193, column: 35, scope: !626)
!648 = !DILocation(line: 1193, column: 23, scope: !626)
!649 = !DILocation(line: 1194, column: 20, scope: !626)
!650 = !DILocation(line: 1194, column: 26, scope: !626)
!651 = !DILocation(line: 1194, column: 30, scope: !626)
!652 = !DILocation(line: 1194, column: 34, scope: !626)
!653 = !DILocation(line: 1194, column: 37, scope: !626)
!654 = !DILocation(line: 1194, column: 36, scope: !626)
!655 = !DILocation(line: 1194, column: 32, scope: !626)
!656 = !DILocation(line: 1194, column: 28, scope: !626)
!657 = !DILocation(line: 1194, column: 23, scope: !626)
!658 = !DILocation(line: 1194, column: 5, scope: !626)
!659 = !DILocation(line: 1194, column: 13, scope: !626)
!660 = !DILocation(line: 1194, column: 18, scope: !626)
!661 = !DILocation(line: 1195, column: 27, scope: !626)
!662 = !DILocation(line: 1195, column: 30, scope: !626)
!663 = !DILocation(line: 1195, column: 29, scope: !626)
!664 = !DILocation(line: 1195, column: 33, scope: !626)
!665 = !DILocation(line: 1195, column: 32, scope: !626)
!666 = !DILocation(line: 1195, column: 25, scope: !626)
!667 = !DILocation(line: 1195, column: 5, scope: !626)
!668 = !DILocation(line: 1195, column: 13, scope: !626)
!669 = !DILocation(line: 1195, column: 18, scope: !626)
!670 = !DILocation(line: 1196, column: 49, scope: !626)
!671 = !DILocation(line: 1196, column: 57, scope: !626)
!672 = !DILocation(line: 1196, column: 44, scope: !626)
!673 = !DILocation(line: 1196, column: 42, scope: !626)
!674 = !DILocation(line: 1196, column: 5, scope: !626)
!675 = !DILocation(line: 1196, column: 13, scope: !626)
!676 = !DILocation(line: 1196, column: 17, scope: !626)
!677 = !DILocation(line: 1197, column: 12, scope: !626)
!678 = !DILocation(line: 1197, column: 5, scope: !626)
!679 = !DILocation(line: 1199, column: 1, scope: !304)
!680 = distinct !DISubprogram(name: "clenshaw", scope: !1, file: !1, line: 926, type: !681, isLocal: true, isDefinition: true, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!681 = !DISubroutineType(types: !682)
!682 = !{!54, !67, !46, !54}
!683 = !DILocalVariable(name: "c", arg: 1, scope: !680, file: !1, line: 926, type: !67)
!684 = !DILocation(line: 926, column: 25, scope: !680)
!685 = !DILocalVariable(name: "N", arg: 2, scope: !680, file: !1, line: 926, type: !46)
!686 = !DILocation(line: 926, column: 32, scope: !680)
!687 = !DILocalVariable(name: "u", arg: 3, scope: !680, file: !1, line: 926, type: !54)
!688 = !DILocation(line: 926, column: 42, scope: !680)
!689 = !DILocalVariable(name: "B_np1", scope: !680, file: !1, line: 928, type: !54)
!690 = !DILocation(line: 928, column: 10, scope: !680)
!691 = !DILocalVariable(name: "B_n", scope: !680, file: !1, line: 929, type: !54)
!692 = !DILocation(line: 929, column: 10, scope: !680)
!693 = !DILocation(line: 929, column: 20, scope: !680)
!694 = !DILocation(line: 929, column: 18, scope: !680)
!695 = !DILocalVariable(name: "B_nm1", scope: !680, file: !1, line: 930, type: !54)
!696 = !DILocation(line: 930, column: 10, scope: !680)
!697 = !DILocalVariable(name: "n", scope: !680, file: !1, line: 931, type: !46)
!698 = !DILocation(line: 931, column: 7, scope: !680)
!699 = !DILocation(line: 932, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !680, file: !1, line: 932, column: 3)
!701 = !DILocation(line: 932, column: 8, scope: !700)
!702 = !DILocation(line: 932, column: 7, scope: !700)
!703 = !DILocation(line: 932, column: 12, scope: !704)
!704 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 1)
!705 = distinct !DILexicalBlock(scope: !700, file: !1, line: 932, column: 3)
!706 = !DILocation(line: 932, column: 13, scope: !704)
!707 = !DILocation(line: 932, column: 3, scope: !704)
!708 = !DILocation(line: 933, column: 22, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 932, column: 22)
!710 = !DILocation(line: 933, column: 21, scope: !709)
!711 = !DILocation(line: 933, column: 23, scope: !709)
!712 = !DILocation(line: 933, column: 16, scope: !709)
!713 = !DILocation(line: 933, column: 31, scope: !709)
!714 = !DILocation(line: 933, column: 29, scope: !709)
!715 = !DILocation(line: 933, column: 37, scope: !709)
!716 = !DILocation(line: 933, column: 35, scope: !709)
!717 = !DILocation(line: 933, column: 47, scope: !709)
!718 = !DILocation(line: 933, column: 48, scope: !709)
!719 = !DILocation(line: 933, column: 45, scope: !709)
!720 = !DILocation(line: 933, column: 43, scope: !709)
!721 = !DILocation(line: 933, column: 11, scope: !709)
!722 = !DILocation(line: 934, column: 13, scope: !709)
!723 = !DILocation(line: 934, column: 11, scope: !709)
!724 = !DILocation(line: 935, column: 13, scope: !709)
!725 = !DILocation(line: 935, column: 11, scope: !709)
!726 = !DILocation(line: 936, column: 3, scope: !709)
!727 = !DILocation(line: 932, column: 18, scope: !728)
!728 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 2)
!729 = !DILocation(line: 932, column: 3, scope: !728)
!730 = distinct !{!730, !731}
!731 = !DILocation(line: 932, column: 3, scope: !680)
!732 = !DILocation(line: 937, column: 10, scope: !680)
!733 = !DILocation(line: 937, column: 21, scope: !680)
!734 = !DILocation(line: 937, column: 20, scope: !680)
!735 = !DILocation(line: 937, column: 22, scope: !680)
!736 = !DILocation(line: 937, column: 28, scope: !680)
!737 = !DILocation(line: 937, column: 27, scope: !680)
!738 = !DILocation(line: 937, column: 14, scope: !680)
!739 = !DILocation(line: 937, column: 3, scope: !680)
!740 = distinct !DISubprogram(name: "mcmahon_correction", scope: !1, file: !1, line: 951, type: !741, isLocal: true, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!741 = !DISubroutineType(types: !742)
!742 = !{!54, !58, !58}
!743 = !DILocalVariable(name: "mu", arg: 1, scope: !740, file: !1, line: 951, type: !58)
!744 = !DILocation(line: 951, column: 33, scope: !740)
!745 = !DILocalVariable(name: "beta", arg: 2, scope: !740, file: !1, line: 951, type: !58)
!746 = !DILocation(line: 951, column: 50, scope: !740)
!747 = !DILocalVariable(name: "eb", scope: !740, file: !1, line: 953, type: !58)
!748 = !DILocation(line: 953, column: 16, scope: !740)
!749 = !DILocation(line: 953, column: 27, scope: !740)
!750 = !DILocation(line: 953, column: 26, scope: !740)
!751 = !DILocalVariable(name: "ebsq", scope: !740, file: !1, line: 954, type: !58)
!752 = !DILocation(line: 954, column: 16, scope: !740)
!753 = !DILocation(line: 954, column: 23, scope: !740)
!754 = !DILocation(line: 954, column: 26, scope: !740)
!755 = !DILocation(line: 954, column: 25, scope: !740)
!756 = !DILocation(line: 956, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !740, file: !1, line: 956, column: 6)
!758 = !DILocation(line: 956, column: 9, scope: !757)
!759 = !DILocation(line: 956, column: 6, scope: !740)
!760 = !DILocalVariable(name: "term1", scope: !761, file: !1, line: 958, type: !58)
!761 = distinct !DILexicalBlock(scope: !757, file: !1, line: 956, column: 28)
!762 = !DILocation(line: 958, column: 18, scope: !761)
!763 = !DILocation(line: 958, column: 31, scope: !761)
!764 = !DILocation(line: 958, column: 30, scope: !761)
!765 = !DILocalVariable(name: "term2", scope: !761, file: !1, line: 959, type: !58)
!766 = !DILocation(line: 959, column: 18, scope: !761)
!767 = !DILocation(line: 959, column: 39, scope: !761)
!768 = !DILocation(line: 959, column: 38, scope: !761)
!769 = !DILocation(line: 959, column: 44, scope: !761)
!770 = !DILocation(line: 959, column: 43, scope: !761)
!771 = !DILocation(line: 959, column: 35, scope: !761)
!772 = !DILocalVariable(name: "term3", scope: !761, file: !1, line: 960, type: !58)
!773 = !DILocation(line: 960, column: 18, scope: !761)
!774 = !DILocation(line: 960, column: 45, scope: !761)
!775 = !DILocation(line: 960, column: 44, scope: !761)
!776 = !DILocation(line: 960, column: 50, scope: !761)
!777 = !DILocation(line: 960, column: 49, scope: !761)
!778 = !DILocation(line: 960, column: 55, scope: !761)
!779 = !DILocation(line: 960, column: 54, scope: !761)
!780 = !DILocation(line: 960, column: 38, scope: !761)
!781 = !DILocalVariable(name: "term4", scope: !761, file: !1, line: 961, type: !58)
!782 = !DILocation(line: 961, column: 18, scope: !761)
!783 = !DILocation(line: 961, column: 49, scope: !761)
!784 = !DILocation(line: 961, column: 48, scope: !761)
!785 = !DILocation(line: 961, column: 54, scope: !761)
!786 = !DILocation(line: 961, column: 53, scope: !761)
!787 = !DILocation(line: 961, column: 59, scope: !761)
!788 = !DILocation(line: 961, column: 58, scope: !761)
!789 = !DILocation(line: 961, column: 64, scope: !761)
!790 = !DILocation(line: 961, column: 63, scope: !761)
!791 = !DILocation(line: 961, column: 41, scope: !761)
!792 = !DILocalVariable(name: "term5", scope: !761, file: !1, line: 962, type: !58)
!793 = !DILocation(line: 962, column: 18, scope: !761)
!794 = !DILocation(line: 962, column: 53, scope: !761)
!795 = !DILocation(line: 962, column: 52, scope: !761)
!796 = !DILocation(line: 962, column: 58, scope: !761)
!797 = !DILocation(line: 962, column: 57, scope: !761)
!798 = !DILocation(line: 962, column: 63, scope: !761)
!799 = !DILocation(line: 962, column: 62, scope: !761)
!800 = !DILocation(line: 962, column: 68, scope: !761)
!801 = !DILocation(line: 962, column: 67, scope: !761)
!802 = !DILocation(line: 962, column: 73, scope: !761)
!803 = !DILocation(line: 962, column: 72, scope: !761)
!804 = !DILocation(line: 962, column: 45, scope: !761)
!805 = !DILocation(line: 963, column: 23, scope: !761)
!806 = !DILocation(line: 963, column: 31, scope: !761)
!807 = !DILocation(line: 963, column: 29, scope: !761)
!808 = !DILocation(line: 963, column: 39, scope: !761)
!809 = !DILocation(line: 963, column: 37, scope: !761)
!810 = !DILocation(line: 963, column: 47, scope: !761)
!811 = !DILocation(line: 963, column: 45, scope: !761)
!812 = !DILocation(line: 963, column: 55, scope: !761)
!813 = !DILocation(line: 963, column: 53, scope: !761)
!814 = !DILocation(line: 963, column: 21, scope: !761)
!815 = !DILocation(line: 963, column: 16, scope: !761)
!816 = !DILocation(line: 963, column: 5, scope: !761)
!817 = !DILocalVariable(name: "mi", scope: !818, file: !1, line: 970, type: !58)
!818 = distinct !DILexicalBlock(scope: !757, file: !1, line: 965, column: 8)
!819 = !DILocation(line: 970, column: 18, scope: !818)
!820 = !DILocation(line: 970, column: 29, scope: !818)
!821 = !DILocation(line: 970, column: 28, scope: !818)
!822 = !DILocalVariable(name: "r", scope: !818, file: !1, line: 971, type: !58)
!823 = !DILocation(line: 971, column: 18, scope: !818)
!824 = !DILocation(line: 971, column: 23, scope: !818)
!825 = !DILocation(line: 971, column: 26, scope: !818)
!826 = !DILocation(line: 971, column: 25, scope: !818)
!827 = !DILocalVariable(name: "n2", scope: !818, file: !1, line: 972, type: !58)
!828 = !DILocation(line: 972, column: 18, scope: !818)
!829 = !DILocation(line: 972, column: 48, scope: !818)
!830 = !DILocation(line: 972, column: 47, scope: !818)
!831 = !DILocation(line: 972, column: 41, scope: !818)
!832 = !DILocation(line: 972, column: 34, scope: !818)
!833 = !DILocalVariable(name: "n3", scope: !818, file: !1, line: 973, type: !58)
!834 = !DILocation(line: 973, column: 18, scope: !818)
!835 = !DILocation(line: 973, column: 61, scope: !818)
!836 = !DILocation(line: 973, column: 60, scope: !818)
!837 = !DILocation(line: 973, column: 52, scope: !818)
!838 = !DILocation(line: 973, column: 65, scope: !818)
!839 = !DILocation(line: 973, column: 64, scope: !818)
!840 = !DILocation(line: 973, column: 42, scope: !818)
!841 = !DILocation(line: 973, column: 34, scope: !818)
!842 = !DILocalVariable(name: "n4", scope: !818, file: !1, line: 974, type: !58)
!843 = !DILocation(line: 974, column: 18, scope: !818)
!844 = !DILocation(line: 974, column: 82, scope: !818)
!845 = !DILocation(line: 974, column: 81, scope: !818)
!846 = !DILocation(line: 974, column: 70, scope: !818)
!847 = !DILocation(line: 974, column: 86, scope: !818)
!848 = !DILocation(line: 974, column: 85, scope: !818)
!849 = !DILocation(line: 974, column: 57, scope: !818)
!850 = !DILocation(line: 974, column: 90, scope: !818)
!851 = !DILocation(line: 974, column: 89, scope: !818)
!852 = !DILocation(line: 974, column: 44, scope: !818)
!853 = !DILocation(line: 974, column: 34, scope: !818)
!854 = !DILocalVariable(name: "n5", scope: !818, file: !1, line: 975, type: !58)
!855 = !DILocation(line: 975, column: 18, scope: !818)
!856 = !DILocation(line: 975, column: 105, scope: !818)
!857 = !DILocation(line: 975, column: 104, scope: !818)
!858 = !DILocation(line: 975, column: 90, scope: !818)
!859 = !DILocation(line: 975, column: 109, scope: !818)
!860 = !DILocation(line: 975, column: 108, scope: !818)
!861 = !DILocation(line: 975, column: 74, scope: !818)
!862 = !DILocation(line: 975, column: 113, scope: !818)
!863 = !DILocation(line: 975, column: 112, scope: !818)
!864 = !DILocation(line: 975, column: 60, scope: !818)
!865 = !DILocation(line: 975, column: 117, scope: !818)
!866 = !DILocation(line: 975, column: 116, scope: !818)
!867 = !DILocation(line: 975, column: 46, scope: !818)
!868 = !DILocation(line: 975, column: 35, scope: !818)
!869 = !DILocalVariable(name: "n6", scope: !818, file: !1, line: 976, type: !58)
!870 = !DILocation(line: 976, column: 18, scope: !818)
!871 = !DILocation(line: 976, column: 138, scope: !818)
!872 = !DILocation(line: 976, column: 137, scope: !818)
!873 = !DILocation(line: 976, column: 120, scope: !818)
!874 = !DILocation(line: 976, column: 142, scope: !818)
!875 = !DILocation(line: 976, column: 141, scope: !818)
!876 = !DILocation(line: 976, column: 101, scope: !818)
!877 = !DILocation(line: 976, column: 146, scope: !818)
!878 = !DILocation(line: 976, column: 145, scope: !818)
!879 = !DILocation(line: 976, column: 82, scope: !818)
!880 = !DILocation(line: 976, column: 150, scope: !818)
!881 = !DILocation(line: 976, column: 149, scope: !818)
!882 = !DILocation(line: 976, column: 66, scope: !818)
!883 = !DILocation(line: 976, column: 154, scope: !818)
!884 = !DILocation(line: 976, column: 153, scope: !818)
!885 = !DILocation(line: 976, column: 50, scope: !818)
!886 = !DILocation(line: 976, column: 37, scope: !818)
!887 = !DILocalVariable(name: "term1", scope: !818, file: !1, line: 977, type: !58)
!888 = !DILocation(line: 977, column: 18, scope: !818)
!889 = !DILocation(line: 977, column: 33, scope: !818)
!890 = !DILocation(line: 977, column: 31, scope: !818)
!891 = !DILocation(line: 977, column: 39, scope: !818)
!892 = !DILocation(line: 977, column: 37, scope: !818)
!893 = !DILocalVariable(name: "term2", scope: !818, file: !1, line: 978, type: !58)
!894 = !DILocation(line: 978, column: 18, scope: !818)
!895 = !DILocation(line: 978, column: 26, scope: !818)
!896 = !DILocation(line: 978, column: 34, scope: !818)
!897 = !DILocation(line: 978, column: 32, scope: !818)
!898 = !DILocation(line: 978, column: 39, scope: !818)
!899 = !DILocation(line: 978, column: 37, scope: !818)
!900 = !DILocalVariable(name: "term3", scope: !818, file: !1, line: 979, type: !58)
!901 = !DILocation(line: 979, column: 18, scope: !818)
!902 = !DILocation(line: 979, column: 26, scope: !818)
!903 = !DILocation(line: 979, column: 34, scope: !818)
!904 = !DILocation(line: 979, column: 32, scope: !818)
!905 = !DILocation(line: 979, column: 39, scope: !818)
!906 = !DILocation(line: 979, column: 37, scope: !818)
!907 = !DILocation(line: 979, column: 41, scope: !818)
!908 = !DILocation(line: 979, column: 40, scope: !818)
!909 = !DILocalVariable(name: "term4", scope: !818, file: !1, line: 980, type: !58)
!910 = !DILocation(line: 980, column: 18, scope: !818)
!911 = !DILocation(line: 980, column: 26, scope: !818)
!912 = !DILocation(line: 980, column: 34, scope: !818)
!913 = !DILocation(line: 980, column: 32, scope: !818)
!914 = !DILocation(line: 980, column: 39, scope: !818)
!915 = !DILocation(line: 980, column: 37, scope: !818)
!916 = !DILocation(line: 980, column: 41, scope: !818)
!917 = !DILocation(line: 980, column: 40, scope: !818)
!918 = !DILocation(line: 980, column: 43, scope: !818)
!919 = !DILocation(line: 980, column: 42, scope: !818)
!920 = !DILocalVariable(name: "term5", scope: !818, file: !1, line: 981, type: !58)
!921 = !DILocation(line: 981, column: 18, scope: !818)
!922 = !DILocation(line: 981, column: 26, scope: !818)
!923 = !DILocation(line: 981, column: 34, scope: !818)
!924 = !DILocation(line: 981, column: 32, scope: !818)
!925 = !DILocation(line: 981, column: 39, scope: !818)
!926 = !DILocation(line: 981, column: 37, scope: !818)
!927 = !DILocation(line: 981, column: 41, scope: !818)
!928 = !DILocation(line: 981, column: 40, scope: !818)
!929 = !DILocation(line: 981, column: 43, scope: !818)
!930 = !DILocation(line: 981, column: 42, scope: !818)
!931 = !DILocation(line: 981, column: 45, scope: !818)
!932 = !DILocation(line: 981, column: 44, scope: !818)
!933 = !DILocalVariable(name: "term6", scope: !818, file: !1, line: 982, type: !58)
!934 = !DILocation(line: 982, column: 18, scope: !818)
!935 = !DILocation(line: 982, column: 26, scope: !818)
!936 = !DILocation(line: 982, column: 34, scope: !818)
!937 = !DILocation(line: 982, column: 32, scope: !818)
!938 = !DILocation(line: 982, column: 39, scope: !818)
!939 = !DILocation(line: 982, column: 37, scope: !818)
!940 = !DILocation(line: 982, column: 41, scope: !818)
!941 = !DILocation(line: 982, column: 40, scope: !818)
!942 = !DILocation(line: 982, column: 43, scope: !818)
!943 = !DILocation(line: 982, column: 42, scope: !818)
!944 = !DILocation(line: 982, column: 45, scope: !818)
!945 = !DILocation(line: 982, column: 44, scope: !818)
!946 = !DILocation(line: 982, column: 47, scope: !818)
!947 = !DILocation(line: 982, column: 46, scope: !818)
!948 = !DILocation(line: 983, column: 23, scope: !818)
!949 = !DILocation(line: 983, column: 31, scope: !818)
!950 = !DILocation(line: 983, column: 29, scope: !818)
!951 = !DILocation(line: 983, column: 39, scope: !818)
!952 = !DILocation(line: 983, column: 37, scope: !818)
!953 = !DILocation(line: 983, column: 47, scope: !818)
!954 = !DILocation(line: 983, column: 45, scope: !818)
!955 = !DILocation(line: 983, column: 55, scope: !818)
!956 = !DILocation(line: 983, column: 53, scope: !818)
!957 = !DILocation(line: 983, column: 63, scope: !818)
!958 = !DILocation(line: 983, column: 61, scope: !818)
!959 = !DILocation(line: 983, column: 21, scope: !818)
!960 = !DILocation(line: 983, column: 16, scope: !818)
!961 = !DILocation(line: 983, column: 5, scope: !818)
!962 = !DILocation(line: 985, column: 1, scope: !740)
!963 = distinct !DISubprogram(name: "olver_f1", scope: !1, file: !1, line: 1015, type: !964, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!964 = !DISubroutineType(types: !965)
!965 = !{!54, !54, !54}
!966 = !DILocalVariable(name: "z", arg: 1, scope: !963, file: !1, line: 1015, type: !54)
!967 = !DILocation(line: 1015, column: 17, scope: !963)
!968 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !963, file: !1, line: 1015, type: !54)
!969 = !DILocation(line: 1015, column: 27, scope: !963)
!970 = !DILocalVariable(name: "b0", scope: !963, file: !1, line: 1017, type: !58)
!971 = !DILocation(line: 1017, column: 16, scope: !963)
!972 = !DILocation(line: 1017, column: 30, scope: !963)
!973 = !DILocation(line: 1017, column: 33, scope: !963)
!974 = !DILocation(line: 1017, column: 21, scope: !963)
!975 = !DILocalVariable(name: "h2", scope: !963, file: !1, line: 1018, type: !58)
!976 = !DILocation(line: 1018, column: 16, scope: !963)
!977 = !DILocation(line: 1018, column: 30, scope: !963)
!978 = !DILocation(line: 1018, column: 29, scope: !963)
!979 = !DILocation(line: 1018, column: 42, scope: !963)
!980 = !DILocation(line: 1018, column: 44, scope: !963)
!981 = !DILocation(line: 1018, column: 43, scope: !963)
!982 = !DILocation(line: 1018, column: 45, scope: !963)
!983 = !DILocation(line: 1018, column: 40, scope: !963)
!984 = !DILocation(line: 1018, column: 21, scope: !963)
!985 = !DILocation(line: 1019, column: 16, scope: !963)
!986 = !DILocation(line: 1019, column: 14, scope: !963)
!987 = !DILocation(line: 1019, column: 20, scope: !963)
!988 = !DILocation(line: 1019, column: 18, scope: !963)
!989 = !DILocation(line: 1019, column: 25, scope: !963)
!990 = !DILocation(line: 1019, column: 23, scope: !963)
!991 = !DILocation(line: 1019, column: 3, scope: !963)
!992 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J0", scope: !1, file: !1, line: 1206, type: !993, isLocal: false, isDefinition: true, scopeLine: 1207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!993 = !DISubroutineType(types: !994)
!994 = !{!54, !47}
!995 = !DILocalVariable(name: "s", arg: 1, scope: !992, file: !1, line: 1206, type: !47)
!996 = !DILocation(line: 1206, column: 43, scope: !992)
!997 = !DILocalVariable(name: "result", scope: !992, file: !1, line: 1208, type: !49)
!998 = !DILocation(line: 1208, column: 3, scope: !992)
!999 = !DILocalVariable(name: "status", scope: !992, file: !1, line: 1208, type: !46)
!1000 = !DILocation(line: 1208, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !992, file: !1, line: 1208, column: 3)
!1002 = !DILocation(line: 1208, column: 3, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !1, discriminator: 1)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 1208, column: 3)
!1005 = distinct !{!1005, !1006}
!1006 = !DILocation(line: 1208, column: 3, scope: !1004)
!1007 = !DILocation(line: 1208, column: 3, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1009, file: !1, discriminator: 2)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 1208, column: 3)
!1010 = !DILocation(line: 1208, column: 3, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1004, file: !1, discriminator: 3)
!1012 = !DILocation(line: 1208, column: 3, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !992, file: !1, discriminator: 4)
!1014 = !DILocation(line: 1209, column: 1, scope: !992)
!1015 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J1", scope: !1, file: !1, line: 1211, type: !993, isLocal: false, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1016 = !DILocalVariable(name: "s", arg: 1, scope: !1015, file: !1, line: 1211, type: !47)
!1017 = !DILocation(line: 1211, column: 43, scope: !1015)
!1018 = !DILocalVariable(name: "result", scope: !1015, file: !1, line: 1213, type: !49)
!1019 = !DILocation(line: 1213, column: 3, scope: !1015)
!1020 = !DILocalVariable(name: "status", scope: !1015, file: !1, line: 1213, type: !46)
!1021 = !DILocation(line: 1213, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 1213, column: 3)
!1023 = !DILocation(line: 1213, column: 3, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1025, file: !1, discriminator: 1)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 1213, column: 3)
!1026 = distinct !{!1026, !1027}
!1027 = !DILocation(line: 1213, column: 3, scope: !1025)
!1028 = !DILocation(line: 1213, column: 3, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !1, discriminator: 2)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 1213, column: 3)
!1031 = !DILocation(line: 1213, column: 3, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1025, file: !1, discriminator: 3)
!1033 = !DILocation(line: 1213, column: 3, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 4)
!1035 = !DILocation(line: 1214, column: 1, scope: !1015)
!1036 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu", scope: !1, file: !1, line: 1216, type: !1037, isLocal: false, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!54, !54, !47}
!1039 = !DILocalVariable(name: "nu", arg: 1, scope: !1036, file: !1, line: 1216, type: !54)
!1040 = !DILocation(line: 1216, column: 38, scope: !1036)
!1041 = !DILocalVariable(name: "s", arg: 2, scope: !1036, file: !1, line: 1216, type: !47)
!1042 = !DILocation(line: 1216, column: 55, scope: !1036)
!1043 = !DILocalVariable(name: "result", scope: !1036, file: !1, line: 1218, type: !49)
!1044 = !DILocation(line: 1218, column: 3, scope: !1036)
!1045 = !DILocalVariable(name: "status", scope: !1036, file: !1, line: 1218, type: !46)
!1046 = !DILocation(line: 1218, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 1218, column: 3)
!1048 = !DILocation(line: 1218, column: 3, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 1)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 1218, column: 3)
!1051 = distinct !{!1051, !1052}
!1052 = !DILocation(line: 1218, column: 3, scope: !1050)
!1053 = !DILocation(line: 1218, column: 3, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 2)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 1218, column: 3)
!1056 = !DILocation(line: 1218, column: 3, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 3)
!1058 = !DILocation(line: 1218, column: 3, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 4)
!1060 = !DILocation(line: 1219, column: 1, scope: !1036)
!1061 = distinct !DISubprogram(name: "olver_b0", scope: !1, file: !1, line: 990, type: !964, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1062 = !DILocalVariable(name: "z", arg: 1, scope: !1061, file: !1, line: 990, type: !54)
!1063 = !DILocation(line: 990, column: 17, scope: !1061)
!1064 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !1061, file: !1, line: 990, type: !54)
!1065 = !DILocation(line: 990, column: 27, scope: !1061)
!1066 = !DILocation(line: 992, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 992, column: 6)
!1068 = !DILocation(line: 992, column: 8, scope: !1067)
!1069 = !DILocation(line: 992, column: 6, scope: !1061)
!1070 = !DILocalVariable(name: "a", scope: !1071, file: !1, line: 993, type: !58)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 992, column: 16)
!1072 = !DILocation(line: 993, column: 18, scope: !1071)
!1073 = !DILocation(line: 993, column: 26, scope: !1071)
!1074 = !DILocation(line: 993, column: 25, scope: !1071)
!1075 = !DILocalVariable(name: "c0", scope: !1071, file: !1, line: 994, type: !58)
!1076 = !DILocation(line: 994, column: 18, scope: !1071)
!1077 = !DILocalVariable(name: "c1", scope: !1071, file: !1, line: 995, type: !58)
!1078 = !DILocation(line: 995, column: 18, scope: !1071)
!1079 = !DILocalVariable(name: "c2", scope: !1071, file: !1, line: 996, type: !58)
!1080 = !DILocation(line: 996, column: 18, scope: !1071)
!1081 = !DILocalVariable(name: "c3", scope: !1071, file: !1, line: 997, type: !58)
!1082 = !DILocation(line: 997, column: 18, scope: !1071)
!1083 = !DILocalVariable(name: "c4", scope: !1071, file: !1, line: 998, type: !58)
!1084 = !DILocation(line: 998, column: 18, scope: !1071)
!1085 = !DILocalVariable(name: "c5", scope: !1071, file: !1, line: 999, type: !58)
!1086 = !DILocation(line: 999, column: 18, scope: !1071)
!1087 = !DILocalVariable(name: "c6", scope: !1071, file: !1, line: 1000, type: !58)
!1088 = !DILocation(line: 1000, column: 18, scope: !1071)
!1089 = !DILocalVariable(name: "c7", scope: !1071, file: !1, line: 1001, type: !58)
!1090 = !DILocation(line: 1001, column: 18, scope: !1071)
!1091 = !DILocalVariable(name: "c8", scope: !1071, file: !1, line: 1002, type: !58)
!1092 = !DILocation(line: 1002, column: 18, scope: !1071)
!1093 = !DILocation(line: 1003, column: 17, scope: !1071)
!1094 = !DILocation(line: 1003, column: 25, scope: !1071)
!1095 = !DILocation(line: 1003, column: 33, scope: !1071)
!1096 = !DILocation(line: 1003, column: 41, scope: !1071)
!1097 = !DILocation(line: 1003, column: 49, scope: !1071)
!1098 = !DILocation(line: 1003, column: 57, scope: !1071)
!1099 = !DILocation(line: 1003, column: 65, scope: !1071)
!1100 = !DILocation(line: 1003, column: 73, scope: !1071)
!1101 = !DILocation(line: 1003, column: 74, scope: !1071)
!1102 = !DILocation(line: 1003, column: 71, scope: !1071)
!1103 = !DILocation(line: 1003, column: 66, scope: !1071)
!1104 = !DILocation(line: 1003, column: 63, scope: !1071)
!1105 = !DILocation(line: 1003, column: 58, scope: !1071)
!1106 = !DILocation(line: 1003, column: 55, scope: !1071)
!1107 = !DILocation(line: 1003, column: 50, scope: !1071)
!1108 = !DILocation(line: 1003, column: 47, scope: !1071)
!1109 = !DILocation(line: 1003, column: 42, scope: !1071)
!1110 = !DILocation(line: 1003, column: 39, scope: !1071)
!1111 = !DILocation(line: 1003, column: 34, scope: !1071)
!1112 = !DILocation(line: 1003, column: 31, scope: !1071)
!1113 = !DILocation(line: 1003, column: 26, scope: !1071)
!1114 = !DILocation(line: 1003, column: 23, scope: !1071)
!1115 = !DILocation(line: 1003, column: 18, scope: !1071)
!1116 = !DILocation(line: 1003, column: 15, scope: !1071)
!1117 = !DILocation(line: 1003, column: 5, scope: !1071)
!1118 = !DILocalVariable(name: "abs_zeta", scope: !1119, file: !1, line: 1006, type: !58)
!1119 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 1005, column: 8)
!1120 = !DILocation(line: 1006, column: 18, scope: !1119)
!1121 = !DILocation(line: 1006, column: 29, scope: !1119)
!1122 = !DILocalVariable(name: "t", scope: !1119, file: !1, line: 1007, type: !58)
!1123 = !DILocation(line: 1007, column: 18, scope: !1119)
!1124 = !DILocation(line: 1007, column: 27, scope: !1119)
!1125 = !DILocation(line: 1007, column: 45, scope: !1119)
!1126 = !DILocation(line: 1007, column: 47, scope: !1119)
!1127 = !DILocation(line: 1007, column: 46, scope: !1119)
!1128 = !DILocation(line: 1007, column: 43, scope: !1119)
!1129 = !DILocation(line: 1007, column: 38, scope: !1119)
!1130 = !DILocation(line: 1007, column: 29, scope: !1119)
!1131 = !DILocation(line: 1007, column: 28, scope: !1119)
!1132 = !DILocation(line: 1007, column: 25, scope: !1119)
!1133 = !DILocation(line: 1008, column: 23, scope: !1119)
!1134 = !DILocation(line: 1008, column: 22, scope: !1119)
!1135 = !DILocation(line: 1008, column: 32, scope: !1119)
!1136 = !DILocation(line: 1008, column: 31, scope: !1119)
!1137 = !DILocation(line: 1008, column: 16, scope: !1119)
!1138 = !DILocation(line: 1008, column: 44, scope: !1119)
!1139 = !DILocation(line: 1008, column: 57, scope: !1119)
!1140 = !DILocation(line: 1008, column: 56, scope: !1119)
!1141 = !DILocation(line: 1008, column: 59, scope: !1119)
!1142 = !DILocation(line: 1008, column: 58, scope: !1119)
!1143 = !DILocation(line: 1008, column: 51, scope: !1119)
!1144 = !DILocation(line: 1008, column: 45, scope: !1119)
!1145 = !DILocation(line: 1008, column: 73, scope: !1119)
!1146 = !DILocation(line: 1008, column: 68, scope: !1119)
!1147 = !DILocation(line: 1008, column: 67, scope: !1119)
!1148 = !DILocation(line: 1008, column: 61, scope: !1119)
!1149 = !DILocation(line: 1008, column: 42, scope: !1119)
!1150 = !DILocation(line: 1008, column: 5, scope: !1119)
!1151 = !DILocation(line: 1010, column: 1, scope: !1061)
