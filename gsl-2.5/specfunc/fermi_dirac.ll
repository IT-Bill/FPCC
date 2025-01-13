; ModuleID = 'fermi_dirac.c'
source_filename = "fermi_dirac.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fermi_dirac.c\00", align 1
@fd_1_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @fd_1_a_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_1_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @fd_1_b_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@fd_1_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @fd_1_c_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@fd_1_d_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @fd_1_d_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@fd_1_e_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([10 x double], [10 x double]* @fd_1_e_data, i32 0, i32 0), i32 9, double -1.000000e+00, double 1.000000e+00, i32 4 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@fd_2_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @fd_2_a_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_2_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @fd_2_b_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_2_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @fd_2_c_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_2_d_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @fd_2_d_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@fd_2_e_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([4 x double], [4 x double]* @fd_2_e_data, i32 0, i32 0), i32 3, double -1.000000e+00, double 1.000000e+00, i32 3 }, align 8
@fd_mhalf_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @fd_mhalf_a_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_mhalf_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @fd_mhalf_b_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_mhalf_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @fd_mhalf_c_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@fd_mhalf_d_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @fd_mhalf_d_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@fd_half_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @fd_half_a_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@fd_half_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @fd_half_b_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_half_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @fd_half_c_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@fd_half_d_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @fd_half_d_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@fd_3half_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @fd_3half_a_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@fd_3half_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @fd_3half_b_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_3half_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @fd_3half_c_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@fd_3half_d_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @fd_3half_d_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"gsl_sf_fermi_dirac_m1_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_0_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_1_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_2_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"gsl_sf_fermi_dirac_int_e(j, x, &result)\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"gsl_sf_fermi_dirac_mhalf_e(x, &result)\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"gsl_sf_fermi_dirac_half_e(x, &result)\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"gsl_sf_fermi_dirac_3half_e(x, &result)\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"gsl_sf_fermi_dirac_inc_0_e(x, b, &result)\00", align 1
@fd_1_a_data = internal global [22 x double] [double 0x3FFE51A6625307D3, double 0x3FE72923B39FC55B, double 1.250000e-01, double 0x3F84B2BA1AC3DAE9, double 0.000000e+00, double 0xBF0F7D5242126B8D, double 0.000000e+00, double 0x3EA6DF5A870DD001, double 0.000000e+00, double 0xBE4497ED1C5BF4D0, double 0.000000e+00, double 0x3DE4D2CC7BCAC3DC, double 0.000000e+00, double 0xBD86AE678F4ED67A, double 0.000000e+00, double 4.622700e-14, double 0.000000e+00, double -8.612000e-16, double 0.000000e+00, double 1.650000e-17, double 0.000000e+00, double -3.000000e-19], align 16
@fd_1_b_data = internal global [22 x double] [double 0x4024D17A60C63EEE, double 0x400F3210458B6589, double 0x3FE06EAE7C44FE64, double 0x3F85BF46B9392E8B, double 0xBF59F5BD95237DDC, double 0x3F23279F01022B24, double 0xBEB79FB9A2131120, double 0xBEC24534CF110D04, double 0x3E9A449B770CF27A, double 0xBE599EA8B8192088, double 0xBE31C61E9736E9CB, double 0x3E160EF056F020DB, double 0xBDE3331D9DF4E961, double -4.907743e-12, double 4.399878e-12, double -7.172910e-13, double 2.432000e-14, double 1.423000e-14, double -3.446000e-15, double 2.930000e-16, double 3.700000e-17, double -1.600000e-17], align 16
@fd_1_c_data = internal global [23 x double] [double 0x404C63F7A0A31F57, double 0x403501D6DAF7D709, double 0x4001F7A74D212D0F, double 0x3F5C796F01346ABE, double 0xBF433D7E909ACE25, double 0x3F255FB511859B55, double 0xBF0403A971560471, double 0x3EE0088641113F16, double 0xBEB60960083DA41E, double 0x3E898092807CEDA9, double 0xBE56FE09C77CBB0B, double 0x3E154975BA176F1E, double 0x3DEE07194E841DF9, double 0xBDDBDB5DF20FDF75, double 2.484728e-11, double -4.730670e-12, double 7.355500e-13, double -8.740000e-14, double 4.850000e-15, double 1.230000e-15, double -5.600000e-16, double 1.400000e-16, double -3.000000e-17], align 16
@fd_1_d_data = internal global [30 x double] [double 0x3FF033DDB35F77EA, double 0xBF79EECCAA91E0D3, double 0x3F6458C36C4CAB01, double 0xBF4CB80E548497FD, double 0x3F3317C7E8A18C5A, double 0xBF186DBA0E13742C, double 0x3EFE6CB0D7055CF9, double 0xBEE291EC2A6C03B6, double 0x3EC6510D74D71E99, double 0xBEAA7AACA9896CCD, double 0x3E8F14C9DBAA8581, double 0xBE72120DD15A0D37, double 0x3E54D5F3A856BFBF, double 0xBE37D712CA2194E5, double 0x3E1B160006F08AA9, double 0xBDFE934F7AD8CBDD, double 0x3DE1280A25F37781, double 0xBDC32731AFA2C722, double 9.679155e-12, double -2.678624e-12, double 7.388852e-13, double -2.032828e-13, double 5.581150e-14, double -1.529870e-14, double 4.188600e-15, double -1.145800e-15, double 3.132000e-16, double -8.560000e-17, double 2.330000e-17, double -5.900000e-18], align 16
@fd_1_e_data = internal global [10 x double] [double 0x3FF0059D5D859DA9, double 0x3F4DF1F2C89E2EE0, double 0x3F2DF1F2C89E2CF9, double -1.570000e-17, double -1.270000e-17, double -9.700000e-18, double -6.900000e-18, double -4.600000e-18, double -2.900000e-18, double -1.700000e-18], align 16
@fd_2_a_data = internal global [21 x double] [double 0x4001424934B74A67, double 0x3FEC51A6625307D3, double 0x3FC6D658CB34B5F0, double 0x3F95555555555555, double 0x3F54D2376D05ED55, double 0.000000e+00, double 0xBED53B351D746C75, double 0.000000e+00, double 0x3E6731BA3B7F55F7, double 0.000000e+00, double 0xBE00BC2D0B67EBC0, double 0.000000e+00, double 6.420374e-12, double 0.000000e+00, double -9.374240e-14, double 0.000000e+00, double 1.471500e-15, double 0.000000e+00, double -2.440000e-17, double 0.000000e+00, double 4.000000e-19], align 16
@fd_2_b_data = internal global [22 x double] [double 0x4030821D3FDE9433, double 0x401DAFD73582E68B, double 0x3FF7553CBF1DA144, double 0x3FC07BA95B0F9023, double 0x3F6015FE2DE7DC66, double 0xBF2F1FCD2E79F7AD, double 0x3EF370B3D43E6FEB, double 0xBE89E0C06D9303B7, double 0xBE8B1AF33C712340, double 0x3E61B277F6471CFE, double 0xBE2032F4A4E3E701, double 0xBDF2BC34B96AE616, double 0x3DD62485F6AF2B69, double -8.313223e-12, double -2.244890e-13, double 2.187780e-13, double -3.429000e-14, double 1.225000e-15, double 5.810000e-16, double -1.370000e-16, double 1.200000e-17, double 1.000000e-18], align 16
@fd_2_c_data = internal global [20 x double] [double 0x40651BE1ABDAB856, double 0x4054735DE0DCC964, double 0x402F82176FD9BB54, double 0x3FF1F8DB250A36BC, double 0x3F435A1A4742C98A, double 0xBF25965191D350C9, double 0x3F045F2CAD748764, double 0xBEE0909A17C82129, double 0x3EB773C5F296CE79, double 0xBE8CE7352C275FB9, double 0x3E5E6732B2E9BDB8, double 0xBE2956A5CBAC87A2, double 0x3DE7072B9EFC2A66, double 2.234229e-11, double -1.035130e-11, double 2.411170e-12, double -4.353100e-13, double 6.447000e-14, double -7.390000e-15, double 4.300000e-16], align 16
@fd_2_d_data = internal global [30 x double] [double 0x3FD624CC9FDC3485, double 0xBF79EEEA9384E201, double 0x3F6458F7DB848E8C, double 0xBF4CB8B703530ED2, double 0x3F3318C17CD6E98A, double 0xBF187063961C7361, double 0x3EFE736CA9FB18E5, double 0xBEE299D7A789DC20, double 0x3EC66273C03437A7, double 0xBEAA9E87903182D1, double 0x3E8F5A63C5F61848, double 0xBE7251F5E8A8FE5D, double 0x3E55456E86CCD13F, double 0xBE38908D2E85A4F7, double 0x3E1C3D7BCF8B700D, double 0xBE002BE02D2A0278, double 0x3DE2762E51AFD15E, double 0xBDC504F537B5BCCE, double 0x3DA7E05A59EA1534, double 0xBD8B11680F4DF492, double 0x3D6EA21AB60A0765, double 0xBD514EB80D77200A, double 6.938531e-14, double -1.954939e-14, double 5.501620e-15, double -1.546570e-15, double 4.342900e-16, double -1.217800e-16, double 3.394000e-17, double -8.810000e-18], align 16
@fd_2_e_data = internal global [4 x double] [double 0x3FD56BCACB6BCBF9, double 0x3F4DF1F2C89E2F9C, double 0x3F2DF1F2C89E2FAC, double 5.200000e-19], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@fd_mhalf_a_data = internal global [20 x double] [double 0x3FF442E233B626ED, double 0x3FD7AA99B72A537E, double 0x3F9C7B099EDE2259, double 0xBF6B4E67AE4F8786, double 0xBF3D15E8FC509F51, double 0x3F10293AA656C6CB, double 0x3EE25E6E740974DF, double 0xBEB52D82996B97BF, double 0xBE88A97A75AAB0BA, double 0x3E5CEFD31D486B4A, double 0x3E3113C0E3EF2FF2, double 0xBE0440D45F997738, double 0xBDD81D9A2929AFFA, double 0x3DACCF93C6EE2EA7, double 0x3D814265533430C9, double -2.945887e-13, double -4.432340e-14, double 6.681600e-15, double 1.008400e-15, double -1.561000e-16], align 16
@fd_mhalf_b_data = internal global [20 x double] [double 0x400A2A9729949892, double 0x3FE296BCA1C5BCD5, double 0xBF9EA6527C59C141, double 0xBF55C55D3361F168, double 0x3F503CA5E6DEAC90, double 0xBF2629E73BA58559, double 0x3EDBA9F499318845, double 0x3ECE290E2F9931DE, double 0xBEAFA4E2B59E3E84, double 0x3E778245D738D5DB, double 0x3E46D106C6F3AFB9, double 0xBE354C262456F47B, double 0x3E089A621F9516E4, double 0x3D93D2AE437DAA06, double 0xBDBA0DAB50B159F9, double 0x3D959AAB3FB9801E, double -2.905277e-13, double -9.592910e-14, double 3.000280e-14, double -3.497000e-15], align 16
@fd_mhalf_c_data = internal global [25 x double] [double 0x401750297D8CD53B, double 0x3FE5AE40C4AD67C9, double 0xBFA6801F6A35CBAF, double 0x3F77DC9475CD7CD0, double 0xBF4C56F65C867D0C, double 0x3F1CD72CF59C3283, double 0xBEDD3F878B7AAE46, double 0xBEBCCB4FFA92F588, double 0x3EACD9B9AA0FA34D, double 0xBE8F481D237D2070, double 0x3E6A0A3A5342891D, double 0xBE4175DB1284770F, double 0x3E118AB4A5C62974, double 0xBDCD3D9AE561F24C, double 0xBDB55D3755150569, double 8.750506e-12, double -2.324897e-12, double 4.831020e-13, double -8.120700e-14, double 1.013200e-14, double -4.640000e-16, double -2.240000e-16, double 9.700000e-17, double -2.600000e-17, double 5.000000e-18], align 16
@fd_mhalf_d_data = internal global [30 x double] [double 0x4002064BE1B4AB2A, double 0x3F5EB64972814CA0, double 0xBF48BD90C8003778, double 0x3F321635188D693D, double 0xBF19267771C5D997, double 0x3F00FD6AE0942DD5, double 0xBEE68957ED27AD90, double 0x3ECD776FD67997B9, double 0xBEB2FAED8052A6F9, double 0x3E980204FADBF483, double 0xBE7DA8FF8C3BEF2A, double 0x3E61C968E76E6D67, double 0xBE4494B73AB7755B, double 0x3E26D413FB718731, double 0xBE081AA2EE5EA926, double 0x3DE80319FE0B199F, double 0xBDC6429898D2330A, double 0x3DA2B6FC4B307370, double 0xBD7AD9578AAF0EBE, double 1.876851e-13, double 1.005740e-14, double -1.820020e-14, double 8.663400e-15, double -3.205800e-15, double 1.057200e-15, double -3.259000e-16, double 9.600000e-17, double -2.740000e-17, double 7.600000e-18, double -1.900000e-18], align 16
@fd_half_a_data = internal global [23 x double] [double 0x3FFB7BC18E91C6D6, double 0x3FE3D0F60D3AAE63, double 0x3FB7E1368686F28D, double 0x3F734A40D734EDE4, double 0xBF3BCFB183823DBD, double 0xBF07BA49F3272259, double 0x3ED5FD40EBA5F1BE, double 0x3EA56EF2B46DDB89, double 0xBE75A141E5E0B20B, double 0xBE46656B1996D909, double 0x3E17A7E1669F9DD9, double 0x3DE96339299944F4, double 0xBDBB9AC3932630CA, double 0xBD8E5837CFCC450C, double 4.784373e-13, double 6.688280e-14, double -9.414700e-15, double -1.333300e-15, double 1.898000e-16, double 2.720000e-17, double -3.900000e-18, double -6.000000e-19, double 1.000000e-19], align 16
@fd_half_b_data = internal global [20 x double] [double 0x401E9AA35C08D3F8, double 0x4003CDEADAE9F910, double 0x3FCBF26EF88F24B4, double 0xBF7FAA1CDAC7AC0A, double 0xBF2C803071E3E10F, double 0x3F235AC7EF86939A, double 0xBEF6A28B7463E9F4, double 0x3EAB1A3316C49200, double 0x3E9611BD00A78253, double 0xBE75556F35D1DE12, double 0x3E3DCED6AB681B0C, double 0x3E073697FA0FBB48, double 0xBDF5511ACFA91BD9, double 0x3DC776495D7668C0, double -2.169600e-14, double -1.170245e-12, double 2.347570e-13, double -1.413900e-14, double -3.864000e-15, double 1.202000e-15], align 16
@fd_half_c_data = internal global [23 x double] [double 0x403D95974379086F, double 0x40219DDF4D48F09E, double 0x3FE01EE5B4D1599B, double 0xBF960EC390C3B1BA, double 0x3F618EE9D1794906, double 0xBF30DDE12E761E32, double 0x3EFD4A5A35867EA3, double 0xBEBC2935C9C64641, double 0xBE92A9B9409A7D1B, double 0x3E82260EADE7A728, double 0xBE621D3FAAFEE6CB, double 0x3E3BCF2803B69606, double 0xBE11589D779F151D, double 0x3DE0802651E668ED, double -6.636314e-12, double -1.710566e-12, double 7.750690e-13, double -1.979730e-13, double 3.941400e-14, double -6.374000e-15, double 7.770000e-16, double -4.000000e-17, double -1.400000e-17], align 16
@fd_half_d_data = internal global [30 x double] [double 0x3FF82FE2D7B9FF85, double 0xBF6D86D9976267BE, double 0x3F574728D0DF1B86, double 0xBF408863323E8436, double 0x3F26293E11AE55BB, double 0xBF0CA464AF7977FA, double 0x3EF20F1503AAC40A, double 0xBED660B134B8D328, double 0x3EBB5F5CD623536D, double 0xBEA0929638F811BE, double 0x3E83E5E2617B0F9E, double 0xBE67B4A5F555CFC5, double 0x3E4C067CB5A8E270, double 0xBE306F04705639F4, double 0x3E131C0C0588058D, double 0xBDF605E216231BE8, double 0x3DD925D42847810A, double 0xBDBC73FAD2DA45FD, double 0x3D9FE87C72D8D632, double 0xBD81BE61A855D13A, double 5.566891e-13, double -1.526247e-13, double 4.161210e-14, double -1.129330e-14, double 3.053700e-15, double -8.234000e-16, double 2.215000e-16, double -5.950000e-17, double 1.590000e-17, double -4.000000e-18], align 16
@fd_3half_a_data = internal global [20 x double] [double 0x400052E5EAB5AC6F, double 0x3FE9FDAE262957AD, double 0x3FC3AA618B8C4487, double 0x3F8FFC084AB89BB9, double 0x3F4379B56B1B3C29, double 0xBF06861ED28D779E, double 0xBED00AAE7EA5E67B, double 0x3E99844FF16ACF5E, double 0x3E65C88860D41D1A, double 0xBE338E1DB4DFB081, double 0xBE023BF998356BDC, double 0x3DD18494B20AB09A, double 0x3DA13DBC05BE49A3, double -9.840241e-13, double -1.255952e-13, double 1.626170e-14, double 2.131800e-15, double -2.825000e-16, double -3.780000e-17, double 5.100000e-18], align 16
@fd_3half_b_data = internal global [22 x double] [double 0x402ACE711A4647E3, double 0x40164C4BEB33441E, double 0x3FEDCC9FDE030B59, double 0x3FABF98F04AB9DAD, double 0xBF5833B653B2E87F, double 0xBEFECE3ED0CF44FB, double 0x3EF33FADBC6FCF76, double 0xBEC3B26B34EA2FB4, double 0x3E7653A8BE1F2CC4, double 0x3E5CCE0232A28289, double 0xBE39D16EE07E6D1E, double 0x3E00FC50301AFDB7, double 3.955734e-11, double -1.789493e-11, double 2.348972e-12, double -1.282300e-14, double -5.419200e-14, double 1.052700e-14, double -6.390000e-16, double -1.470000e-16, double 4.500000e-17, double -5.000000e-18], align 16
@fd_3half_c_data = internal global [21 x double] [double 0x4059425BCABAD971, double 0x4045CF78105DDE3A, double 0x401A7D5A0699FBB2, double 0x3FD00D56CAFFE052, double 0xBF805879090762F2, double 0x3F44CB99561114FB, double 0xBF10C1B7F8AC570F, double 0x3ED95B258475506D, double 0xBE96D279B7A206E7, double 0xBE65DD6C64545122, double 0x3E54BC4CEA2213EA, double 0xBE332B6EA21F3F72, double 0x3E0B4B26CF3552D9, double 0xBDDFD02CD767F2A9, double 1.304658e-11, double -7.411400e-13, double -1.418100e-13, double 6.491000e-14, double -1.597000e-14, double 3.050000e-15, double -4.800000e-16], align 16
@fd_3half_d_data = internal global [25 x double] [double 0x3FE3B6CCF1848CE5, double 0xBF7D2E00307F065E, double 0x3F66DC7E77B11A14, double 0xBF501ACCD389AB08, double 0x3F355DC20A5E714A, double 0xBF1B4466D766C55F, double 0x3F00EE4F3BEECBA8, double 0xBEE49A68791C5973, double 0x3EC8ADECE16B857C, double 0xBEAD308457A6D334, double 0x3E9115112DCB24BD, double 0xBE73D197FDA865E0, double 0x3E56D26930A49726, double 0xBE3A1CA641818C84, double 0x3E1DB639FB7BCA46, double 0xBE00D30AF0CFAD0C, double 0x3DE2FA357F104A42, double 0xBDC5556BC9903C75, double 0x3DA7EA42F5CAA4B4, double 0xBD8ABF1DF6EACB94, double 8.485626e-13, double -2.364275e-13, double 6.576360e-14, double -1.818070e-14, double 4.688400e-15], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_m1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !151 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !154, metadata !155), !dbg !156
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !157, metadata !155), !dbg !158
  %8 = load double, double* %4, align 8, !dbg !159
  %9 = fcmp olt double %8, 0xC086232BDD7ABCD2, !dbg !161
  br i1 %9, label %10, label %19, !dbg !162

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !163, !llvm.loop !165

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !166
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !166
  store double 0.000000e+00, double* %13, align 8, !dbg !166
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !166
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !166
  store double 0x10000000000000, double* %15, align 8, !dbg !166
  br label %16, !dbg !166, !llvm.loop !169

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1218, i32 15), !dbg !171
  store i32 15, i32* %3, align 4, !dbg !171
  br label %59, !dbg !171
                                                  ; No predecessors!
  br label %18, !dbg !174

; <label>:18:                                     ; preds = %17
  br label %59, !dbg !176

; <label>:19:                                     ; preds = %2
  %20 = load double, double* %4, align 8, !dbg !177
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !179
  br i1 %21, label %22, label %43, !dbg !180

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !181, metadata !155), !dbg !183
  %23 = load double, double* %4, align 8, !dbg !184
  %24 = call double @exp(double %23) #6, !dbg !185
  store double %24, double* %6, align 8, !dbg !183
  %25 = load double, double* %6, align 8, !dbg !186
  %26 = load double, double* %6, align 8, !dbg !187
  %27 = fadd double 1.000000e+00, %26, !dbg !188
  %28 = fdiv double %25, %27, !dbg !189
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !190
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !191
  store double %28, double* %30, align 8, !dbg !192
  %31 = load double, double* %4, align 8, !dbg !193
  %32 = call double @fabs(double %31) #1, !dbg !194
  %33 = fadd double %32, 1.000000e+00, !dbg !195
  %34 = fmul double 2.000000e+00, %33, !dbg !196
  %35 = fmul double %34, 0x3CB0000000000000, !dbg !197
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !199
  %38 = load double, double* %37, align 8, !dbg !199
  %39 = call double @fabs(double %38) #1, !dbg !200
  %40 = fmul double %35, %39, !dbg !202
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !203
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !204
  store double %40, double* %42, align 8, !dbg !205
  store i32 0, i32* %3, align 4, !dbg !206
  br label %59, !dbg !206

; <label>:43:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %7, metadata !207, metadata !155), !dbg !209
  %44 = load double, double* %4, align 8, !dbg !210
  %45 = fsub double -0.000000e+00, %44, !dbg !211
  %46 = call double @exp(double %45) #6, !dbg !212
  store double %46, double* %7, align 8, !dbg !209
  %47 = load double, double* %7, align 8, !dbg !213
  %48 = fadd double 1.000000e+00, %47, !dbg !214
  %49 = fdiv double 1.000000e+00, %48, !dbg !215
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !216
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !217
  store double %49, double* %51, align 8, !dbg !218
  %52 = load double, double* %4, align 8, !dbg !219
  %53 = fadd double %52, 1.000000e+00, !dbg !220
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !221
  %55 = load double, double* %7, align 8, !dbg !222
  %56 = fmul double %54, %55, !dbg !223
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !224
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !225
  store double %56, double* %58, align 8, !dbg !226
  store i32 0, i32* %3, align 4, !dbg !227
  br label %59, !dbg !227

; <label>:59:                                     ; preds = %16, %22, %43, %18
  %60 = load i32, i32* %3, align 4, !dbg !228
  ret i32 %60, !dbg !228
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !229 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !230, metadata !155), !dbg !231
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !232, metadata !155), !dbg !233
  %9 = load double, double* %4, align 8, !dbg !234
  %10 = fcmp olt double %9, 0xC086232BDD7ABCD2, !dbg !236
  br i1 %10, label %11, label %20, !dbg !237

; <label>:11:                                     ; preds = %2
  br label %12, !dbg !238, !llvm.loop !240

; <label>:12:                                     ; preds = %11
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !241
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !241
  store double 0.000000e+00, double* %14, align 8, !dbg !241
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !241
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !241
  store double 0x10000000000000, double* %16, align 8, !dbg !241
  br label %17, !dbg !241, !llvm.loop !244

; <label>:17:                                     ; preds = %12
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1239, i32 15), !dbg !246
  store i32 15, i32* %3, align 4, !dbg !246
  br label %99, !dbg !246
                                                  ; No predecessors!
  br label %19, !dbg !249

; <label>:19:                                     ; preds = %18
  br label %99, !dbg !251

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %4, align 8, !dbg !252
  %22 = fcmp olt double %21, -5.000000e+00, !dbg !254
  br i1 %22, label %23, label %53, !dbg !255

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata double* %6, metadata !256, metadata !155), !dbg !258
  %24 = load double, double* %4, align 8, !dbg !259
  %25 = call double @exp(double %24) #6, !dbg !260
  store double %25, double* %6, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata double* %7, metadata !261, metadata !155), !dbg !262
  %26 = load double, double* %6, align 8, !dbg !263
  %27 = load double, double* %6, align 8, !dbg !264
  %28 = load double, double* %6, align 8, !dbg !265
  %29 = load double, double* %6, align 8, !dbg !266
  %30 = load double, double* %6, align 8, !dbg !267
  %31 = fdiv double %30, 6.000000e+00, !dbg !268
  %32 = fsub double 2.000000e-01, %31, !dbg !269
  %33 = fmul double %29, %32, !dbg !270
  %34 = fsub double 2.500000e-01, %33, !dbg !271
  %35 = fmul double %28, %34, !dbg !272
  %36 = fsub double 0x3FD5555555555555, %35, !dbg !273
  %37 = fmul double %27, %36, !dbg !274
  %38 = fsub double 5.000000e-01, %37, !dbg !275
  %39 = fmul double %26, %38, !dbg !276
  %40 = fsub double 1.000000e+00, %39, !dbg !277
  store double %40, double* %7, align 8, !dbg !262
  %41 = load double, double* %6, align 8, !dbg !278
  %42 = load double, double* %7, align 8, !dbg !279
  %43 = fmul double %41, %42, !dbg !280
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !281
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !282
  store double %43, double* %45, align 8, !dbg !283
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !284
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !285
  %48 = load double, double* %47, align 8, !dbg !285
  %49 = call double @fabs(double %48) #1, !dbg !286
  %50 = fmul double 0x3CC0000000000000, %49, !dbg !287
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !288
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !289
  store double %50, double* %52, align 8, !dbg !290
  store i32 0, i32* %3, align 4, !dbg !291
  br label %99, !dbg !291

; <label>:53:                                     ; preds = %20
  %54 = load double, double* %4, align 8, !dbg !292
  %55 = fcmp olt double %54, 1.000000e+01, !dbg !294
  br i1 %55, label %56, label %68, !dbg !295

; <label>:56:                                     ; preds = %53
  %57 = load double, double* %4, align 8, !dbg !296
  %58 = call double @exp(double %57) #6, !dbg !298
  %59 = fadd double 1.000000e+00, %58, !dbg !299
  %60 = call double @log(double %59) #6, !dbg !300
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !302
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !303
  store double %60, double* %62, align 8, !dbg !304
  %63 = load double, double* %4, align 8, !dbg !305
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !306
  %65 = call double @fabs(double %64) #1, !dbg !307
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !308
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !309
  store double %65, double* %67, align 8, !dbg !310
  store i32 0, i32* %3, align 4, !dbg !311
  br label %99, !dbg !311

; <label>:68:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata double* %8, metadata !312, metadata !155), !dbg !314
  %69 = load double, double* %4, align 8, !dbg !315
  %70 = fsub double -0.000000e+00, %69, !dbg !316
  %71 = call double @exp(double %70) #6, !dbg !317
  store double %71, double* %8, align 8, !dbg !314
  %72 = load double, double* %4, align 8, !dbg !318
  %73 = load double, double* %8, align 8, !dbg !319
  %74 = load double, double* %8, align 8, !dbg !320
  %75 = fmul double 5.000000e-01, %74, !dbg !321
  %76 = fsub double 1.000000e+00, %75, !dbg !322
  %77 = load double, double* %8, align 8, !dbg !323
  %78 = load double, double* %8, align 8, !dbg !324
  %79 = fmul double %77, %78, !dbg !325
  %80 = fdiv double %79, 3.000000e+00, !dbg !326
  %81 = fadd double %76, %80, !dbg !327
  %82 = load double, double* %8, align 8, !dbg !328
  %83 = load double, double* %8, align 8, !dbg !329
  %84 = fmul double %82, %83, !dbg !330
  %85 = load double, double* %8, align 8, !dbg !331
  %86 = fmul double %84, %85, !dbg !332
  %87 = fdiv double %86, 4.000000e+00, !dbg !333
  %88 = fsub double %81, %87, !dbg !334
  %89 = fmul double %73, %88, !dbg !335
  %90 = fadd double %72, %89, !dbg !336
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !337
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !338
  store double %90, double* %92, align 8, !dbg !339
  %93 = load double, double* %4, align 8, !dbg !340
  %94 = load double, double* %8, align 8, !dbg !341
  %95 = fadd double %93, %94, !dbg !342
  %96 = fmul double %95, 0x3CB0000000000000, !dbg !343
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !344
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !345
  store double %96, double* %98, align 8, !dbg !346
  store i32 0, i32* %3, align 4, !dbg !347
  br label %99, !dbg !347

; <label>:99:                                     ; preds = %17, %23, %56, %68, %19
  %100 = load i32, i32* %3, align 4, !dbg !348
  ret i32 %100, !dbg !348
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !349 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !350, metadata !155), !dbg !351
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !352, metadata !155), !dbg !353
  %17 = load double, double* %4, align 8, !dbg !354
  %18 = fcmp olt double %17, 0xC086232BDD7ABCD2, !dbg !356
  br i1 %18, label %19, label %28, !dbg !357

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !358, !llvm.loop !360

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !361
  store double 0.000000e+00, double* %22, align 8, !dbg !361
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !361
  store double 0x10000000000000, double* %24, align 8, !dbg !361
  br label %25, !dbg !361, !llvm.loop !364

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1265, i32 15), !dbg !366
  store i32 15, i32* %3, align 4, !dbg !366
  br label %201, !dbg !366
                                                  ; No predecessors!
  br label %27, !dbg !369

; <label>:27:                                     ; preds = %26
  br label %201, !dbg !371

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %4, align 8, !dbg !372
  %30 = fcmp olt double %29, -1.000000e+00, !dbg !374
  br i1 %30, label %31, label %77, !dbg !375

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %6, metadata !376, metadata !155), !dbg !378
  %32 = load double, double* %4, align 8, !dbg !379
  %33 = call double @exp(double %32) #6, !dbg !380
  store double %33, double* %6, align 8, !dbg !378
  call void @llvm.dbg.declare(metadata double* %7, metadata !381, metadata !155), !dbg !382
  %34 = load double, double* %6, align 8, !dbg !383
  store double %34, double* %7, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata double* %8, metadata !384, metadata !155), !dbg !385
  %35 = load double, double* %7, align 8, !dbg !386
  store double %35, double* %8, align 8, !dbg !385
  call void @llvm.dbg.declare(metadata i32* %9, metadata !387, metadata !155), !dbg !388
  store i32 2, i32* %9, align 4, !dbg !389
  br label %36, !dbg !391

; <label>:36:                                     ; preds = %64, %31
  %37 = load i32, i32* %9, align 4, !dbg !392
  %38 = icmp slt i32 %37, 100, !dbg !395
  br i1 %38, label %39, label %67, !dbg !396

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %10, metadata !397, metadata !155), !dbg !399
  %40 = load i32, i32* %9, align 4, !dbg !400
  %41 = sitofp i32 %40 to double, !dbg !400
  %42 = fsub double %41, 1.000000e+00, !dbg !401
  %43 = load i32, i32* %9, align 4, !dbg !402
  %44 = sitofp i32 %43 to double, !dbg !402
  %45 = fdiv double %42, %44, !dbg !403
  store double %45, double* %10, align 8, !dbg !399
  %46 = load double, double* %6, align 8, !dbg !404
  %47 = fsub double -0.000000e+00, %46, !dbg !405
  %48 = load double, double* %10, align 8, !dbg !406
  %49 = fmul double %47, %48, !dbg !407
  %50 = load double, double* %10, align 8, !dbg !408
  %51 = fmul double %49, %50, !dbg !409
  %52 = load double, double* %7, align 8, !dbg !410
  %53 = fmul double %52, %51, !dbg !410
  store double %53, double* %7, align 8, !dbg !410
  %54 = load double, double* %7, align 8, !dbg !411
  %55 = load double, double* %8, align 8, !dbg !412
  %56 = fadd double %55, %54, !dbg !412
  store double %56, double* %8, align 8, !dbg !412
  %57 = load double, double* %7, align 8, !dbg !413
  %58 = load double, double* %8, align 8, !dbg !415
  %59 = fdiv double %57, %58, !dbg !416
  %60 = call double @fabs(double %59) #1, !dbg !417
  %61 = fcmp olt double %60, 0x3CB0000000000000, !dbg !418
  br i1 %61, label %62, label %63, !dbg !419

; <label>:62:                                     ; preds = %39
  br label %67, !dbg !420

; <label>:63:                                     ; preds = %39
  br label %64, !dbg !422

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %9, align 4, !dbg !423
  %66 = add nsw i32 %65, 1, !dbg !423
  store i32 %66, i32* %9, align 4, !dbg !423
  br label %36, !dbg !425, !llvm.loop !426

; <label>:67:                                     ; preds = %62, %36
  %68 = load double, double* %8, align 8, !dbg !428
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !429
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !430
  store double %68, double* %70, align 8, !dbg !431
  %71 = load double, double* %8, align 8, !dbg !432
  %72 = call double @fabs(double %71) #1, !dbg !433
  %73 = fmul double 2.000000e+00, %72, !dbg !434
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !435
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !436
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !437
  store double %74, double* %76, align 8, !dbg !438
  store i32 0, i32* %3, align 4, !dbg !439
  br label %201, !dbg !439

; <label>:77:                                     ; preds = %28
  %78 = load double, double* %4, align 8, !dbg !440
  %79 = fcmp olt double %78, 1.000000e+00, !dbg !442
  br i1 %79, label %80, label %84, !dbg !443

; <label>:80:                                     ; preds = %77
  %81 = load double, double* %4, align 8, !dbg !444
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !446
  %83 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_1_a_cs, double %81, %struct.gsl_sf_result_struct* %82), !dbg !447
  store i32 %83, i32* %3, align 4, !dbg !448
  br label %201, !dbg !448

; <label>:84:                                     ; preds = %77
  %85 = load double, double* %4, align 8, !dbg !449
  %86 = fcmp olt double %85, 4.000000e+00, !dbg !451
  br i1 %86, label %87, label %95, !dbg !452

; <label>:87:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata double* %11, metadata !453, metadata !155), !dbg !455
  %88 = load double, double* %4, align 8, !dbg !456
  %89 = fsub double %88, 1.000000e+00, !dbg !457
  %90 = fmul double 0x3FE5555555555555, %89, !dbg !458
  %91 = fsub double %90, 1.000000e+00, !dbg !459
  store double %91, double* %11, align 8, !dbg !455
  %92 = load double, double* %11, align 8, !dbg !460
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !461
  %94 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_1_b_cs, double %92, %struct.gsl_sf_result_struct* %93), !dbg !462
  store i32 %94, i32* %3, align 4, !dbg !463
  br label %201, !dbg !463

; <label>:95:                                     ; preds = %84
  %96 = load double, double* %4, align 8, !dbg !464
  %97 = fcmp olt double %96, 1.000000e+01, !dbg !466
  br i1 %97, label %98, label %106, !dbg !467

; <label>:98:                                     ; preds = %95
  call void @llvm.dbg.declare(metadata double* %12, metadata !468, metadata !155), !dbg !470
  %99 = load double, double* %4, align 8, !dbg !471
  %100 = fsub double %99, 4.000000e+00, !dbg !472
  %101 = fmul double 0x3FD5555555555555, %100, !dbg !473
  %102 = fsub double %101, 1.000000e+00, !dbg !474
  store double %102, double* %12, align 8, !dbg !470
  %103 = load double, double* %12, align 8, !dbg !475
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !476
  %105 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_1_c_cs, double %103, %struct.gsl_sf_result_struct* %104), !dbg !477
  store i32 %105, i32* %3, align 4, !dbg !478
  br label %201, !dbg !478

; <label>:106:                                    ; preds = %95
  %107 = load double, double* %4, align 8, !dbg !479
  %108 = fcmp olt double %107, 3.000000e+01, !dbg !481
  br i1 %108, label %109, label %137, !dbg !482

; <label>:109:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata double* %13, metadata !483, metadata !155), !dbg !485
  %110 = load double, double* %4, align 8, !dbg !486
  %111 = fmul double 1.000000e-01, %110, !dbg !487
  %112 = fsub double %111, 2.000000e+00, !dbg !488
  store double %112, double* %13, align 8, !dbg !485
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !489, metadata !155), !dbg !490
  %113 = load double, double* %13, align 8, !dbg !491
  %114 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_1_d_cs, double %113, %struct.gsl_sf_result_struct* %14), !dbg !492
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !493
  %116 = load double, double* %115, align 8, !dbg !493
  %117 = load double, double* %4, align 8, !dbg !494
  %118 = fmul double %116, %117, !dbg !495
  %119 = load double, double* %4, align 8, !dbg !496
  %120 = fmul double %118, %119, !dbg !497
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !498
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !499
  store double %120, double* %122, align 8, !dbg !500
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !501
  %124 = load double, double* %123, align 8, !dbg !501
  %125 = load double, double* %4, align 8, !dbg !502
  %126 = fmul double %124, %125, !dbg !503
  %127 = load double, double* %4, align 8, !dbg !504
  %128 = fmul double %126, %127, !dbg !505
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !506
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !507
  %131 = load double, double* %130, align 8, !dbg !507
  %132 = call double @fabs(double %131) #1, !dbg !508
  %133 = fmul double 0x3CB0000000000000, %132, !dbg !509
  %134 = fadd double %128, %133, !dbg !510
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !511
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !512
  store double %134, double* %136, align 8, !dbg !513
  store i32 0, i32* %3, align 4, !dbg !514
  br label %201, !dbg !514

; <label>:137:                                    ; preds = %106
  %138 = load double, double* %4, align 8, !dbg !515
  %139 = fcmp olt double %138, 0x4190000000000000, !dbg !517
  br i1 %139, label %140, label %168, !dbg !518

; <label>:140:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %15, metadata !519, metadata !155), !dbg !521
  %141 = load double, double* %4, align 8, !dbg !522
  %142 = fdiv double 6.000000e+01, %141, !dbg !523
  %143 = fsub double %142, 1.000000e+00, !dbg !524
  store double %143, double* %15, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !525, metadata !155), !dbg !526
  %144 = load double, double* %15, align 8, !dbg !527
  %145 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_1_e_cs, double %144, %struct.gsl_sf_result_struct* %16), !dbg !528
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !529
  %147 = load double, double* %146, align 8, !dbg !529
  %148 = load double, double* %4, align 8, !dbg !530
  %149 = fmul double %147, %148, !dbg !531
  %150 = load double, double* %4, align 8, !dbg !532
  %151 = fmul double %149, %150, !dbg !533
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !534
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !535
  store double %151, double* %153, align 8, !dbg !536
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !537
  %155 = load double, double* %154, align 8, !dbg !537
  %156 = load double, double* %4, align 8, !dbg !538
  %157 = fmul double %155, %156, !dbg !539
  %158 = load double, double* %4, align 8, !dbg !540
  %159 = fmul double %157, %158, !dbg !541
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !542
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 0, !dbg !543
  %162 = load double, double* %161, align 8, !dbg !543
  %163 = call double @fabs(double %162) #1, !dbg !544
  %164 = fmul double 0x3CB0000000000000, %163, !dbg !545
  %165 = fadd double %159, %164, !dbg !546
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !547
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !548
  store double %165, double* %167, align 8, !dbg !549
  store i32 0, i32* %3, align 4, !dbg !550
  br label %201, !dbg !550

; <label>:168:                                    ; preds = %137
  %169 = load double, double* %4, align 8, !dbg !551
  %170 = fcmp olt double %169, 0x5FEFFFFFFFFFFFFF, !dbg !553
  br i1 %170, label %171, label %185, !dbg !554

; <label>:171:                                    ; preds = %168
  %172 = load double, double* %4, align 8, !dbg !555
  %173 = fmul double 5.000000e-01, %172, !dbg !557
  %174 = load double, double* %4, align 8, !dbg !558
  %175 = fmul double %173, %174, !dbg !559
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !560
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !561
  store double %175, double* %177, align 8, !dbg !562
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !563
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !564
  %180 = load double, double* %179, align 8, !dbg !564
  %181 = call double @fabs(double %180) #1, !dbg !565
  %182 = fmul double 0x3CC0000000000000, %181, !dbg !566
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !567
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 1, !dbg !568
  store double %182, double* %184, align 8, !dbg !569
  store i32 0, i32* %3, align 4, !dbg !570
  br label %201, !dbg !570

; <label>:185:                                    ; preds = %168
  br label %186, !dbg !571, !llvm.loop !573

; <label>:186:                                    ; preds = %185
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !574
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !574
  store double 0x7FF0000000000000, double* %188, align 8, !dbg !574
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !574
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 1, !dbg !574
  store double 0x7FF0000000000000, double* %190, align 8, !dbg !574
  br label %191, !dbg !574, !llvm.loop !577

; <label>:191:                                    ; preds = %186
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1317, i32 16), !dbg !579
  store i32 16, i32* %3, align 4, !dbg !579
  br label %201, !dbg !579
                                                  ; No predecessors!
  br label %193, !dbg !582

; <label>:193:                                    ; preds = %192
  br label %194

; <label>:194:                                    ; preds = %193
  br label %195

; <label>:195:                                    ; preds = %194
  br label %196

; <label>:196:                                    ; preds = %195
  br label %197

; <label>:197:                                    ; preds = %196
  br label %198

; <label>:198:                                    ; preds = %197
  br label %199

; <label>:199:                                    ; preds = %198
  br label %200

; <label>:200:                                    ; preds = %199
  br label %201

; <label>:201:                                    ; preds = %25, %67, %80, %87, %98, %109, %140, %171, %191, %200, %27
  %202 = load i32, i32* %3, align 4, !dbg !584
  ret i32 %202, !dbg !584
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !585 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !591, metadata !155), !dbg !592
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !593, metadata !155), !dbg !594
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !595, metadata !155), !dbg !596
  call void @llvm.dbg.declare(metadata i32* %7, metadata !597, metadata !155), !dbg !598
  call void @llvm.dbg.declare(metadata double* %8, metadata !599, metadata !155), !dbg !600
  store double 0.000000e+00, double* %8, align 8, !dbg !600
  call void @llvm.dbg.declare(metadata double* %9, metadata !601, metadata !155), !dbg !602
  store double 0.000000e+00, double* %9, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata double* %10, metadata !603, metadata !155), !dbg !604
  %15 = load double, double* %5, align 8, !dbg !605
  %16 = fmul double 2.000000e+00, %15, !dbg !606
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !607
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !608
  %19 = load double, double* %18, align 8, !dbg !608
  %20 = fsub double %16, %19, !dbg !609
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !610
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !611
  %23 = load double, double* %22, align 8, !dbg !611
  %24 = fsub double %20, %23, !dbg !612
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !613
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !614
  %27 = load double, double* %26, align 8, !dbg !614
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !615
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !616
  %30 = load double, double* %29, align 8, !dbg !616
  %31 = fsub double %27, %30, !dbg !617
  %32 = fdiv double %24, %31, !dbg !618
  store double %32, double* %10, align 8, !dbg !604
  call void @llvm.dbg.declare(metadata double* %11, metadata !619, metadata !155), !dbg !620
  %33 = load double, double* %10, align 8, !dbg !621
  %34 = fmul double 2.000000e+00, %33, !dbg !622
  store double %34, double* %11, align 8, !dbg !620
  call void @llvm.dbg.declare(metadata double* %12, metadata !623, metadata !155), !dbg !624
  store double 0.000000e+00, double* %12, align 8, !dbg !624
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !625
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !627
  %37 = load i32, i32* %36, align 8, !dbg !627
  store i32 %37, i32* %7, align 4, !dbg !628
  br label %38, !dbg !629

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !630
  %40 = icmp sge i32 %39, 1, !dbg !633
  br i1 %40, label %41, label %78, !dbg !634

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !635, metadata !155), !dbg !637
  %42 = load double, double* %8, align 8, !dbg !638
  store double %42, double* %13, align 8, !dbg !637
  %43 = load double, double* %11, align 8, !dbg !639
  %44 = load double, double* %8, align 8, !dbg !640
  %45 = fmul double %43, %44, !dbg !641
  %46 = load double, double* %9, align 8, !dbg !642
  %47 = fsub double %45, %46, !dbg !643
  %48 = load i32, i32* %7, align 4, !dbg !644
  %49 = sext i32 %48 to i64, !dbg !645
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !645
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !646
  %52 = load double*, double** %51, align 8, !dbg !646
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !645
  %54 = load double, double* %53, align 8, !dbg !645
  %55 = fadd double %47, %54, !dbg !647
  store double %55, double* %8, align 8, !dbg !648
  %56 = load double, double* %11, align 8, !dbg !649
  %57 = load double, double* %13, align 8, !dbg !650
  %58 = fmul double %56, %57, !dbg !651
  %59 = call double @fabs(double %58) #1, !dbg !652
  %60 = load double, double* %9, align 8, !dbg !653
  %61 = call double @fabs(double %60) #1, !dbg !654
  %62 = fadd double %59, %61, !dbg !656
  %63 = load i32, i32* %7, align 4, !dbg !657
  %64 = sext i32 %63 to i64, !dbg !658
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !658
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !659
  %67 = load double*, double** %66, align 8, !dbg !659
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !658
  %69 = load double, double* %68, align 8, !dbg !658
  %70 = call double @fabs(double %69) #1, !dbg !660
  %71 = fadd double %62, %70, !dbg !662
  %72 = load double, double* %12, align 8, !dbg !663
  %73 = fadd double %72, %71, !dbg !663
  store double %73, double* %12, align 8, !dbg !663
  %74 = load double, double* %13, align 8, !dbg !664
  store double %74, double* %9, align 8, !dbg !665
  br label %75, !dbg !666

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !667
  %77 = add nsw i32 %76, -1, !dbg !667
  store i32 %77, i32* %7, align 4, !dbg !667
  br label %38, !dbg !669, !llvm.loop !670

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !672, metadata !155), !dbg !674
  %79 = load double, double* %8, align 8, !dbg !675
  store double %79, double* %14, align 8, !dbg !674
  %80 = load double, double* %10, align 8, !dbg !676
  %81 = load double, double* %8, align 8, !dbg !677
  %82 = fmul double %80, %81, !dbg !678
  %83 = load double, double* %9, align 8, !dbg !679
  %84 = fsub double %82, %83, !dbg !680
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !681
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !682
  %87 = load double*, double** %86, align 8, !dbg !682
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !681
  %89 = load double, double* %88, align 8, !dbg !681
  %90 = fmul double 5.000000e-01, %89, !dbg !683
  %91 = fadd double %84, %90, !dbg !684
  store double %91, double* %8, align 8, !dbg !685
  %92 = load double, double* %10, align 8, !dbg !686
  %93 = load double, double* %14, align 8, !dbg !687
  %94 = fmul double %92, %93, !dbg !688
  %95 = call double @fabs(double %94) #1, !dbg !689
  %96 = load double, double* %9, align 8, !dbg !690
  %97 = call double @fabs(double %96) #1, !dbg !691
  %98 = fadd double %95, %97, !dbg !693
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !694
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !695
  %101 = load double*, double** %100, align 8, !dbg !695
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !694
  %103 = load double, double* %102, align 8, !dbg !694
  %104 = call double @fabs(double %103) #1, !dbg !696
  %105 = fmul double 5.000000e-01, %104, !dbg !698
  %106 = fadd double %98, %105, !dbg !699
  %107 = load double, double* %12, align 8, !dbg !700
  %108 = fadd double %107, %106, !dbg !700
  store double %108, double* %12, align 8, !dbg !700
  %109 = load double, double* %8, align 8, !dbg !701
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !702
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !703
  store double %109, double* %111, align 8, !dbg !704
  %112 = load double, double* %12, align 8, !dbg !705
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !706
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !707
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !708
  %116 = load i32, i32* %115, align 8, !dbg !708
  %117 = sext i32 %116 to i64, !dbg !709
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !709
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !710
  %120 = load double*, double** %119, align 8, !dbg !710
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !709
  %122 = load double, double* %121, align 8, !dbg !709
  %123 = call double @fabs(double %122) #1, !dbg !711
  %124 = fadd double %113, %123, !dbg !712
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !713
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !714
  store double %124, double* %126, align 8, !dbg !715
  ret i32 0, !dbg !716
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !717 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !718, metadata !155), !dbg !719
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !720, metadata !155), !dbg !721
  %17 = load double, double* %4, align 8, !dbg !722
  %18 = fcmp olt double %17, 0xC086232BDD7ABCD2, !dbg !724
  br i1 %18, label %19, label %28, !dbg !725

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !726, !llvm.loop !728

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !729
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !729
  store double 0.000000e+00, double* %22, align 8, !dbg !729
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !729
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !729
  store double 0x10000000000000, double* %24, align 8, !dbg !729
  br label %25, !dbg !729, !llvm.loop !732

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1325, i32 15), !dbg !734
  store i32 15, i32* %3, align 4, !dbg !734
  br label %212, !dbg !734
                                                  ; No predecessors!
  br label %27, !dbg !737

; <label>:27:                                     ; preds = %26
  br label %212, !dbg !739

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %4, align 8, !dbg !740
  %30 = fcmp olt double %29, -1.000000e+00, !dbg !742
  br i1 %30, label %31, label %78, !dbg !743

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %6, metadata !744, metadata !155), !dbg !746
  %32 = load double, double* %4, align 8, !dbg !747
  %33 = call double @exp(double %32) #6, !dbg !748
  store double %33, double* %6, align 8, !dbg !746
  call void @llvm.dbg.declare(metadata double* %7, metadata !749, metadata !155), !dbg !750
  %34 = load double, double* %6, align 8, !dbg !751
  store double %34, double* %7, align 8, !dbg !750
  call void @llvm.dbg.declare(metadata double* %8, metadata !752, metadata !155), !dbg !753
  %35 = load double, double* %7, align 8, !dbg !754
  store double %35, double* %8, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata i32* %9, metadata !755, metadata !155), !dbg !756
  store i32 2, i32* %9, align 4, !dbg !757
  br label %36, !dbg !759

; <label>:36:                                     ; preds = %66, %31
  %37 = load i32, i32* %9, align 4, !dbg !760
  %38 = icmp slt i32 %37, 100, !dbg !763
  br i1 %38, label %39, label %69, !dbg !764

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %10, metadata !765, metadata !155), !dbg !767
  %40 = load i32, i32* %9, align 4, !dbg !768
  %41 = sitofp i32 %40 to double, !dbg !768
  %42 = fsub double %41, 1.000000e+00, !dbg !769
  %43 = load i32, i32* %9, align 4, !dbg !770
  %44 = sitofp i32 %43 to double, !dbg !770
  %45 = fdiv double %42, %44, !dbg !771
  store double %45, double* %10, align 8, !dbg !767
  %46 = load double, double* %6, align 8, !dbg !772
  %47 = fsub double -0.000000e+00, %46, !dbg !773
  %48 = load double, double* %10, align 8, !dbg !774
  %49 = fmul double %47, %48, !dbg !775
  %50 = load double, double* %10, align 8, !dbg !776
  %51 = fmul double %49, %50, !dbg !777
  %52 = load double, double* %10, align 8, !dbg !778
  %53 = fmul double %51, %52, !dbg !779
  %54 = load double, double* %7, align 8, !dbg !780
  %55 = fmul double %54, %53, !dbg !780
  store double %55, double* %7, align 8, !dbg !780
  %56 = load double, double* %7, align 8, !dbg !781
  %57 = load double, double* %8, align 8, !dbg !782
  %58 = fadd double %57, %56, !dbg !782
  store double %58, double* %8, align 8, !dbg !782
  %59 = load double, double* %7, align 8, !dbg !783
  %60 = load double, double* %8, align 8, !dbg !785
  %61 = fdiv double %59, %60, !dbg !786
  %62 = call double @fabs(double %61) #1, !dbg !787
  %63 = fcmp olt double %62, 0x3CB0000000000000, !dbg !788
  br i1 %63, label %64, label %65, !dbg !789

; <label>:64:                                     ; preds = %39
  br label %69, !dbg !790

; <label>:65:                                     ; preds = %39
  br label %66, !dbg !792

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %9, align 4, !dbg !793
  %68 = add nsw i32 %67, 1, !dbg !793
  store i32 %68, i32* %9, align 4, !dbg !793
  br label %36, !dbg !795, !llvm.loop !796

; <label>:69:                                     ; preds = %64, %36
  %70 = load double, double* %8, align 8, !dbg !798
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !799
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !800
  store double %70, double* %72, align 8, !dbg !801
  %73 = load double, double* %8, align 8, !dbg !802
  %74 = call double @fabs(double %73) #1, !dbg !803
  %75 = fmul double 0x3CC0000000000000, %74, !dbg !804
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !805
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !806
  store double %75, double* %77, align 8, !dbg !807
  store i32 0, i32* %3, align 4, !dbg !808
  br label %212, !dbg !808

; <label>:78:                                     ; preds = %28
  %79 = load double, double* %4, align 8, !dbg !809
  %80 = fcmp olt double %79, 1.000000e+00, !dbg !811
  br i1 %80, label %81, label %85, !dbg !812

; <label>:81:                                     ; preds = %78
  %82 = load double, double* %4, align 8, !dbg !813
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !815
  %84 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_2_a_cs, double %82, %struct.gsl_sf_result_struct* %83), !dbg !816
  store i32 %84, i32* %3, align 4, !dbg !817
  br label %212, !dbg !817

; <label>:85:                                     ; preds = %78
  %86 = load double, double* %4, align 8, !dbg !818
  %87 = fcmp olt double %86, 4.000000e+00, !dbg !820
  br i1 %87, label %88, label %96, !dbg !821

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata double* %11, metadata !822, metadata !155), !dbg !824
  %89 = load double, double* %4, align 8, !dbg !825
  %90 = fsub double %89, 1.000000e+00, !dbg !826
  %91 = fmul double 0x3FE5555555555555, %90, !dbg !827
  %92 = fsub double %91, 1.000000e+00, !dbg !828
  store double %92, double* %11, align 8, !dbg !824
  %93 = load double, double* %11, align 8, !dbg !829
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !830
  %95 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_2_b_cs, double %93, %struct.gsl_sf_result_struct* %94), !dbg !831
  store i32 %95, i32* %3, align 4, !dbg !832
  br label %212, !dbg !832

; <label>:96:                                     ; preds = %85
  %97 = load double, double* %4, align 8, !dbg !833
  %98 = fcmp olt double %97, 1.000000e+01, !dbg !835
  br i1 %98, label %99, label %107, !dbg !836

; <label>:99:                                     ; preds = %96
  call void @llvm.dbg.declare(metadata double* %12, metadata !837, metadata !155), !dbg !839
  %100 = load double, double* %4, align 8, !dbg !840
  %101 = fsub double %100, 4.000000e+00, !dbg !841
  %102 = fmul double 0x3FD5555555555555, %101, !dbg !842
  %103 = fsub double %102, 1.000000e+00, !dbg !843
  store double %103, double* %12, align 8, !dbg !839
  %104 = load double, double* %12, align 8, !dbg !844
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !845
  %106 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_2_c_cs, double %104, %struct.gsl_sf_result_struct* %105), !dbg !846
  store i32 %106, i32* %3, align 4, !dbg !847
  br label %212, !dbg !847

; <label>:107:                                    ; preds = %96
  %108 = load double, double* %4, align 8, !dbg !848
  %109 = fcmp olt double %108, 3.000000e+01, !dbg !850
  br i1 %109, label %110, label %142, !dbg !851

; <label>:110:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata double* %13, metadata !852, metadata !155), !dbg !854
  %111 = load double, double* %4, align 8, !dbg !855
  %112 = fmul double 1.000000e-01, %111, !dbg !856
  %113 = fsub double %112, 2.000000e+00, !dbg !857
  store double %113, double* %13, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !858, metadata !155), !dbg !859
  %114 = load double, double* %13, align 8, !dbg !860
  %115 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_2_d_cs, double %114, %struct.gsl_sf_result_struct* %14), !dbg !861
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !862
  %117 = load double, double* %116, align 8, !dbg !862
  %118 = load double, double* %4, align 8, !dbg !863
  %119 = fmul double %117, %118, !dbg !864
  %120 = load double, double* %4, align 8, !dbg !865
  %121 = fmul double %119, %120, !dbg !866
  %122 = load double, double* %4, align 8, !dbg !867
  %123 = fmul double %121, %122, !dbg !868
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !869
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !870
  store double %123, double* %125, align 8, !dbg !871
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !872
  %127 = load double, double* %126, align 8, !dbg !872
  %128 = load double, double* %4, align 8, !dbg !873
  %129 = fmul double %127, %128, !dbg !874
  %130 = load double, double* %4, align 8, !dbg !875
  %131 = fmul double %129, %130, !dbg !876
  %132 = load double, double* %4, align 8, !dbg !877
  %133 = fmul double %131, %132, !dbg !878
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !879
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !880
  %136 = load double, double* %135, align 8, !dbg !880
  %137 = call double @fabs(double %136) #1, !dbg !881
  %138 = fmul double 0x3CC8000000000000, %137, !dbg !882
  %139 = fadd double %133, %138, !dbg !883
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !884
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !885
  store double %139, double* %141, align 8, !dbg !886
  store i32 0, i32* %3, align 4, !dbg !887
  br label %212, !dbg !887

; <label>:142:                                    ; preds = %107
  %143 = load double, double* %4, align 8, !dbg !888
  %144 = fcmp olt double %143, 0x410428A2F98D7287, !dbg !890
  br i1 %144, label %145, label %177, !dbg !891

; <label>:145:                                    ; preds = %142
  call void @llvm.dbg.declare(metadata double* %15, metadata !892, metadata !155), !dbg !894
  %146 = load double, double* %4, align 8, !dbg !895
  %147 = fdiv double 6.000000e+01, %146, !dbg !896
  %148 = fsub double %147, 1.000000e+00, !dbg !897
  store double %148, double* %15, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !898, metadata !155), !dbg !899
  %149 = load double, double* %15, align 8, !dbg !900
  %150 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_2_e_cs, double %149, %struct.gsl_sf_result_struct* %16), !dbg !901
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !902
  %152 = load double, double* %151, align 8, !dbg !902
  %153 = load double, double* %4, align 8, !dbg !903
  %154 = fmul double %152, %153, !dbg !904
  %155 = load double, double* %4, align 8, !dbg !905
  %156 = fmul double %154, %155, !dbg !906
  %157 = load double, double* %4, align 8, !dbg !907
  %158 = fmul double %156, %157, !dbg !908
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !909
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !910
  store double %158, double* %160, align 8, !dbg !911
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !912
  %162 = load double, double* %161, align 8, !dbg !912
  %163 = load double, double* %4, align 8, !dbg !913
  %164 = fmul double %162, %163, !dbg !914
  %165 = load double, double* %4, align 8, !dbg !915
  %166 = fmul double %164, %165, !dbg !916
  %167 = load double, double* %4, align 8, !dbg !917
  %168 = fmul double %166, %167, !dbg !918
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !919
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !920
  %171 = load double, double* %170, align 8, !dbg !920
  %172 = call double @fabs(double %171) #1, !dbg !921
  %173 = fmul double 0x3CC8000000000000, %172, !dbg !922
  %174 = fadd double %168, %173, !dbg !923
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !924
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 1, !dbg !925
  store double %174, double* %176, align 8, !dbg !926
  store i32 0, i32* %3, align 4, !dbg !927
  br label %212, !dbg !927

; <label>:177:                                    ; preds = %142
  %178 = load double, double* %4, align 8, !dbg !928
  %179 = fcmp olt double %178, 0x554428A2F98D7242, !dbg !930
  br i1 %179, label %180, label %196, !dbg !931

; <label>:180:                                    ; preds = %177
  %181 = load double, double* %4, align 8, !dbg !932
  %182 = fmul double 0x3FC5555555555555, %181, !dbg !934
  %183 = load double, double* %4, align 8, !dbg !935
  %184 = fmul double %182, %183, !dbg !936
  %185 = load double, double* %4, align 8, !dbg !937
  %186 = fmul double %184, %185, !dbg !938
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !939
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !940
  store double %186, double* %188, align 8, !dbg !941
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !942
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 0, !dbg !943
  %191 = load double, double* %190, align 8, !dbg !943
  %192 = call double @fabs(double %191) #1, !dbg !944
  %193 = fmul double 0x3CC8000000000000, %192, !dbg !945
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !946
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 1, !dbg !947
  store double %193, double* %195, align 8, !dbg !948
  store i32 0, i32* %3, align 4, !dbg !949
  br label %212, !dbg !949

; <label>:196:                                    ; preds = %177
  br label %197, !dbg !950, !llvm.loop !952

; <label>:197:                                    ; preds = %196
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !953
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %198, i32 0, i32 0, !dbg !953
  store double 0x7FF0000000000000, double* %199, align 8, !dbg !953
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !953
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 1, !dbg !953
  store double 0x7FF0000000000000, double* %201, align 8, !dbg !953
  br label %202, !dbg !953, !llvm.loop !956

; <label>:202:                                    ; preds = %197
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1377, i32 16), !dbg !958
  store i32 16, i32* %3, align 4, !dbg !958
  br label %212, !dbg !958
                                                  ; No predecessors!
  br label %204, !dbg !961

; <label>:204:                                    ; preds = %203
  br label %205

; <label>:205:                                    ; preds = %204
  br label %206

; <label>:206:                                    ; preds = %205
  br label %207

; <label>:207:                                    ; preds = %206
  br label %208

; <label>:208:                                    ; preds = %207
  br label %209

; <label>:209:                                    ; preds = %208
  br label %210

; <label>:210:                                    ; preds = %209
  br label %211

; <label>:211:                                    ; preds = %210
  br label %212

; <label>:212:                                    ; preds = %25, %69, %81, %88, %99, %110, %145, %180, %202, %211, %27
  %213 = load i32, i32* %3, align 4, !dbg !963
  ret i32 %213, !dbg !963
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_int_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !964 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !965, metadata !155), !dbg !966
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !967, metadata !155), !dbg !968
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !969, metadata !155), !dbg !970
  %10 = load i32, i32* %5, align 4, !dbg !971
  %11 = icmp slt i32 %10, -1, !dbg !973
  br i1 %11, label %12, label %17, !dbg !974

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %5, align 4, !dbg !975
  %14 = load double, double* %6, align 8, !dbg !977
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !978
  %16 = call i32 @fd_nint(i32 %13, double %14, %struct.gsl_sf_result_struct* %15), !dbg !979
  store i32 %16, i32* %4, align 4, !dbg !980
  br label %101, !dbg !980

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %5, align 4, !dbg !981
  %19 = icmp eq i32 %18, -1, !dbg !983
  br i1 %19, label %20, label %24, !dbg !984

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %6, align 8, !dbg !985
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !987
  %23 = call i32 @gsl_sf_fermi_dirac_m1_e(double %21, %struct.gsl_sf_result_struct* %22), !dbg !988
  store i32 %23, i32* %4, align 4, !dbg !989
  br label %101, !dbg !989

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %5, align 4, !dbg !990
  %26 = icmp eq i32 %25, 0, !dbg !992
  br i1 %26, label %27, label %31, !dbg !993

; <label>:27:                                     ; preds = %24
  %28 = load double, double* %6, align 8, !dbg !994
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !996
  %30 = call i32 @gsl_sf_fermi_dirac_0_e(double %28, %struct.gsl_sf_result_struct* %29), !dbg !997
  store i32 %30, i32* %4, align 4, !dbg !998
  br label %101, !dbg !998

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %5, align 4, !dbg !999
  %33 = icmp eq i32 %32, 1, !dbg !1001
  br i1 %33, label %34, label %38, !dbg !1002

; <label>:34:                                     ; preds = %31
  %35 = load double, double* %6, align 8, !dbg !1003
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1005
  %37 = call i32 @gsl_sf_fermi_dirac_1_e(double %35, %struct.gsl_sf_result_struct* %36), !dbg !1006
  store i32 %37, i32* %4, align 4, !dbg !1007
  br label %101, !dbg !1007

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %5, align 4, !dbg !1008
  %40 = icmp eq i32 %39, 2, !dbg !1010
  br i1 %40, label %41, label %45, !dbg !1011

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %6, align 8, !dbg !1012
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1014
  %44 = call i32 @gsl_sf_fermi_dirac_2_e(double %42, %struct.gsl_sf_result_struct* %43), !dbg !1015
  store i32 %44, i32* %4, align 4, !dbg !1016
  br label %101, !dbg !1016

; <label>:45:                                     ; preds = %38
  %46 = load double, double* %6, align 8, !dbg !1017
  %47 = fcmp olt double %46, 0.000000e+00, !dbg !1019
  br i1 %47, label %48, label %54, !dbg !1020

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %5, align 4, !dbg !1021
  %50 = sitofp i32 %49 to double, !dbg !1021
  %51 = load double, double* %6, align 8, !dbg !1023
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1024
  %53 = call i32 @fd_neg(double %50, double %51, %struct.gsl_sf_result_struct* %52), !dbg !1025
  store i32 %53, i32* %4, align 4, !dbg !1026
  br label %101, !dbg !1026

; <label>:54:                                     ; preds = %45
  %55 = load double, double* %6, align 8, !dbg !1027
  %56 = fcmp oeq double %55, 0.000000e+00, !dbg !1029
  br i1 %56, label %57, label %62, !dbg !1030

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %5, align 4, !dbg !1031
  %59 = add nsw i32 %58, 1, !dbg !1033
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1034
  %61 = call i32 @gsl_sf_eta_int_e(i32 %59, %struct.gsl_sf_result_struct* %60), !dbg !1035
  store i32 %61, i32* %4, align 4, !dbg !1036
  br label %101, !dbg !1036

; <label>:62:                                     ; preds = %54
  %63 = load double, double* %6, align 8, !dbg !1037
  %64 = fcmp olt double %63, 1.500000e+00, !dbg !1039
  br i1 %64, label %65, label %70, !dbg !1040

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %5, align 4, !dbg !1041
  %67 = load double, double* %6, align 8, !dbg !1043
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1044
  %69 = call i32 @fd_series_int(i32 %66, double %67, %struct.gsl_sf_result_struct* %68), !dbg !1045
  store i32 %69, i32* %4, align 4, !dbg !1046
  br label %101, !dbg !1046

; <label>:70:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1047, metadata !155), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1050, metadata !155), !dbg !1051
  %71 = load i32, i32* %5, align 4, !dbg !1052
  %72 = sitofp i32 %71 to double, !dbg !1052
  %73 = load double, double* %6, align 8, !dbg !1053
  %74 = call i32 @fd_asymp(double %72, double %73, %struct.gsl_sf_result_struct* %8), !dbg !1054
  store i32 %74, i32* %9, align 4, !dbg !1051
  %75 = load i32, i32* %9, align 4, !dbg !1055
  %76 = icmp eq i32 %75, 0, !dbg !1057
  br i1 %76, label %77, label %96, !dbg !1058

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1059
  %79 = load double, double* %78, align 8, !dbg !1059
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1061
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1062
  store double %79, double* %81, align 8, !dbg !1063
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1064
  %83 = load double, double* %82, align 8, !dbg !1064
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1065
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !1066
  store double %83, double* %85, align 8, !dbg !1067
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1068
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !1069
  %88 = load double, double* %87, align 8, !dbg !1069
  %89 = call double @fabs(double %88) #1, !dbg !1070
  %90 = fmul double 0x3CC0000000000000, %89, !dbg !1071
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1072
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !1073
  %93 = load double, double* %92, align 8, !dbg !1074
  %94 = fadd double %93, %90, !dbg !1074
  store double %94, double* %92, align 8, !dbg !1074
  %95 = load i32, i32* %9, align 4, !dbg !1075
  store i32 %95, i32* %4, align 4, !dbg !1076
  br label %101, !dbg !1076

; <label>:96:                                     ; preds = %70
  %97 = load i32, i32* %5, align 4, !dbg !1077
  %98 = load double, double* %6, align 8, !dbg !1079
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1080
  %100 = call i32 @fd_UMseries_int(i32 %97, double %98, %struct.gsl_sf_result_struct* %99), !dbg !1081
  store i32 %100, i32* %4, align 4, !dbg !1082
  br label %101, !dbg !1082

; <label>:101:                                    ; preds = %96, %77, %65, %57, %48, %41, %34, %27, %20, %12
  %102 = load i32, i32* %4, align 4, !dbg !1083
  ret i32 %102, !dbg !1083
}

; Function Attrs: nounwind uwtable
define internal i32 @fd_nint(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !42 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca [101 x double], align 16
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1084, metadata !155), !dbg !1085
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1086, metadata !155), !dbg !1087
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1088, metadata !155), !dbg !1089
  call void @llvm.dbg.declare(metadata [101 x double]* %8, metadata !1090, metadata !155), !dbg !1094
  %15 = load i32, i32* %5, align 4, !dbg !1095
  %16 = icmp sge i32 %15, -1, !dbg !1097
  br i1 %16, label %17, label %24, !dbg !1098

; <label>:17:                                     ; preds = %3
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1099
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1101
  store double 0.000000e+00, double* %19, align 8, !dbg !1102
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1103
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1104
  store double 0.000000e+00, double* %21, align 8, !dbg !1105
  br label %22, !dbg !1106, !llvm.loop !1107

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 862, i32 7), !dbg !1108
  store i32 7, i32* %4, align 4, !dbg !1108
  br label %161, !dbg !1108
                                                  ; No predecessors!
  br label %161, !dbg !1111

; <label>:24:                                     ; preds = %3
  %25 = load i32, i32* %5, align 4, !dbg !1112
  %26 = icmp slt i32 %25, -101, !dbg !1114
  br i1 %26, label %27, label %34, !dbg !1115

; <label>:27:                                     ; preds = %24
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1116
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1118
  store double 0.000000e+00, double* %29, align 8, !dbg !1119
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1120
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1121
  store double 0.000000e+00, double* %31, align 8, !dbg !1122
  br label %32, !dbg !1123, !llvm.loop !1124

; <label>:32:                                     ; preds = %27
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 867, i32 24), !dbg !1125
  store i32 24, i32* %4, align 4, !dbg !1125
  br label %161, !dbg !1125
                                                  ; No predecessors!
  br label %160, !dbg !1128

; <label>:34:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %9, metadata !1129, metadata !155), !dbg !1131
  call void @llvm.dbg.declare(metadata double* %10, metadata !1132, metadata !155), !dbg !1133
  call void @llvm.dbg.declare(metadata double* %11, metadata !1134, metadata !155), !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1136, metadata !155), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1138, metadata !155), !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1140, metadata !155), !dbg !1141
  %35 = load i32, i32* %5, align 4, !dbg !1142
  %36 = add nsw i32 %35, 1, !dbg !1143
  %37 = sub nsw i32 0, %36, !dbg !1144
  store i32 %37, i32* %14, align 4, !dbg !1141
  %38 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 1, !dbg !1145
  store double 1.000000e+00, double* %38, align 8, !dbg !1146
  store i32 2, i32* %13, align 4, !dbg !1147
  br label %39, !dbg !1149

; <label>:39:                                     ; preds = %85, %34
  %40 = load i32, i32* %13, align 4, !dbg !1150
  %41 = load i32, i32* %14, align 4, !dbg !1153
  %42 = icmp sle i32 %40, %41, !dbg !1154
  br i1 %42, label %43, label %88, !dbg !1155

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %13, align 4, !dbg !1156
  %45 = sub nsw i32 %44, 1, !dbg !1158
  %46 = sext i32 %45 to i64, !dbg !1159
  %47 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %46, !dbg !1159
  %48 = load double, double* %47, align 8, !dbg !1159
  %49 = fsub double -0.000000e+00, %48, !dbg !1160
  %50 = load i32, i32* %13, align 4, !dbg !1161
  %51 = sext i32 %50 to i64, !dbg !1162
  %52 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %51, !dbg !1162
  store double %49, double* %52, align 8, !dbg !1163
  %53 = load i32, i32* %13, align 4, !dbg !1164
  %54 = sub nsw i32 %53, 1, !dbg !1166
  store i32 %54, i32* %12, align 4, !dbg !1167
  br label %55, !dbg !1168

; <label>:55:                                     ; preds = %81, %43
  %56 = load i32, i32* %12, align 4, !dbg !1169
  %57 = icmp sge i32 %56, 2, !dbg !1172
  br i1 %57, label %58, label %84, !dbg !1173

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %12, align 4, !dbg !1174
  %60 = sitofp i32 %59 to double, !dbg !1174
  %61 = load i32, i32* %12, align 4, !dbg !1176
  %62 = sext i32 %61 to i64, !dbg !1177
  %63 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %62, !dbg !1177
  %64 = load double, double* %63, align 8, !dbg !1177
  %65 = fmul double %60, %64, !dbg !1178
  %66 = load i32, i32* %13, align 4, !dbg !1179
  %67 = load i32, i32* %12, align 4, !dbg !1180
  %68 = sub nsw i32 %67, 1, !dbg !1181
  %69 = sub nsw i32 %66, %68, !dbg !1182
  %70 = sitofp i32 %69 to double, !dbg !1183
  %71 = load i32, i32* %12, align 4, !dbg !1184
  %72 = sub nsw i32 %71, 1, !dbg !1185
  %73 = sext i32 %72 to i64, !dbg !1186
  %74 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %73, !dbg !1186
  %75 = load double, double* %74, align 8, !dbg !1186
  %76 = fmul double %70, %75, !dbg !1187
  %77 = fsub double %65, %76, !dbg !1188
  %78 = load i32, i32* %12, align 4, !dbg !1189
  %79 = sext i32 %78 to i64, !dbg !1190
  %80 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %79, !dbg !1190
  store double %77, double* %80, align 8, !dbg !1191
  br label %81, !dbg !1192

; <label>:81:                                     ; preds = %58
  %82 = load i32, i32* %12, align 4, !dbg !1193
  %83 = add nsw i32 %82, -1, !dbg !1193
  store i32 %83, i32* %12, align 4, !dbg !1193
  br label %55, !dbg !1195, !llvm.loop !1196

; <label>:84:                                     ; preds = %55
  br label %85, !dbg !1198

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %13, align 4, !dbg !1199
  %87 = add nsw i32 %86, 1, !dbg !1199
  store i32 %87, i32* %13, align 4, !dbg !1199
  br label %39, !dbg !1201, !llvm.loop !1202

; <label>:88:                                     ; preds = %39
  %89 = load double, double* %6, align 8, !dbg !1204
  %90 = fcmp oge double %89, 0.000000e+00, !dbg !1206
  br i1 %90, label %91, label %114, !dbg !1207

; <label>:91:                                     ; preds = %88
  %92 = load double, double* %6, align 8, !dbg !1208
  %93 = fsub double -0.000000e+00, %92, !dbg !1210
  %94 = call double @exp(double %93) #6, !dbg !1211
  store double %94, double* %9, align 8, !dbg !1212
  %95 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 1, !dbg !1213
  %96 = load double, double* %95, align 8, !dbg !1213
  store double %96, double* %11, align 8, !dbg !1214
  store i32 2, i32* %12, align 4, !dbg !1215
  br label %97, !dbg !1217

; <label>:97:                                     ; preds = %110, %91
  %98 = load i32, i32* %12, align 4, !dbg !1218
  %99 = load i32, i32* %14, align 4, !dbg !1221
  %100 = icmp sle i32 %98, %99, !dbg !1222
  br i1 %100, label %101, label %113, !dbg !1223

; <label>:101:                                    ; preds = %97
  %102 = load double, double* %11, align 8, !dbg !1224
  %103 = load double, double* %9, align 8, !dbg !1226
  %104 = fmul double %102, %103, !dbg !1227
  %105 = load i32, i32* %12, align 4, !dbg !1228
  %106 = sext i32 %105 to i64, !dbg !1229
  %107 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %106, !dbg !1229
  %108 = load double, double* %107, align 8, !dbg !1229
  %109 = fadd double %104, %108, !dbg !1230
  store double %109, double* %11, align 8, !dbg !1231
  br label %110, !dbg !1232

; <label>:110:                                    ; preds = %101
  %111 = load i32, i32* %12, align 4, !dbg !1233
  %112 = add nsw i32 %111, 1, !dbg !1233
  store i32 %112, i32* %12, align 4, !dbg !1233
  br label %97, !dbg !1235, !llvm.loop !1236

; <label>:113:                                    ; preds = %97
  br label %139, !dbg !1238

; <label>:114:                                    ; preds = %88
  %115 = load double, double* %6, align 8, !dbg !1239
  %116 = call double @exp(double %115) #6, !dbg !1241
  store double %116, double* %9, align 8, !dbg !1242
  %117 = load i32, i32* %14, align 4, !dbg !1243
  %118 = sext i32 %117 to i64, !dbg !1244
  %119 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %118, !dbg !1244
  %120 = load double, double* %119, align 8, !dbg !1244
  store double %120, double* %11, align 8, !dbg !1245
  %121 = load i32, i32* %14, align 4, !dbg !1246
  %122 = sub nsw i32 %121, 1, !dbg !1248
  store i32 %122, i32* %12, align 4, !dbg !1249
  br label %123, !dbg !1250

; <label>:123:                                    ; preds = %135, %114
  %124 = load i32, i32* %12, align 4, !dbg !1251
  %125 = icmp sge i32 %124, 1, !dbg !1254
  br i1 %125, label %126, label %138, !dbg !1255

; <label>:126:                                    ; preds = %123
  %127 = load double, double* %11, align 8, !dbg !1256
  %128 = load double, double* %9, align 8, !dbg !1258
  %129 = fmul double %127, %128, !dbg !1259
  %130 = load i32, i32* %12, align 4, !dbg !1260
  %131 = sext i32 %130 to i64, !dbg !1261
  %132 = getelementptr inbounds [101 x double], [101 x double]* %8, i64 0, i64 %131, !dbg !1261
  %133 = load double, double* %132, align 8, !dbg !1261
  %134 = fadd double %129, %133, !dbg !1262
  store double %134, double* %11, align 8, !dbg !1263
  br label %135, !dbg !1264

; <label>:135:                                    ; preds = %126
  %136 = load i32, i32* %12, align 4, !dbg !1265
  %137 = add nsw i32 %136, -1, !dbg !1265
  store i32 %137, i32* %12, align 4, !dbg !1265
  br label %123, !dbg !1267, !llvm.loop !1268

; <label>:138:                                    ; preds = %123
  br label %139

; <label>:139:                                    ; preds = %138, %113
  %140 = load double, double* %9, align 8, !dbg !1270
  %141 = fadd double 1.000000e+00, %140, !dbg !1271
  %142 = load i32, i32* %5, align 4, !dbg !1272
  %143 = call double @gsl_sf_pow_int(double %141, i32 %142), !dbg !1273
  store double %143, double* %10, align 8, !dbg !1274
  %144 = load double, double* %11, align 8, !dbg !1275
  %145 = load double, double* %9, align 8, !dbg !1276
  %146 = fmul double %144, %145, !dbg !1277
  %147 = load double, double* %10, align 8, !dbg !1278
  %148 = fmul double %146, %147, !dbg !1279
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1280
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !1281
  store double %148, double* %150, align 8, !dbg !1282
  %151 = load double, double* %11, align 8, !dbg !1283
  %152 = load double, double* %9, align 8, !dbg !1284
  %153 = fmul double %151, %152, !dbg !1285
  %154 = load double, double* %10, align 8, !dbg !1286
  %155 = fmul double %153, %154, !dbg !1287
  %156 = call double @fabs(double %155) #1, !dbg !1288
  %157 = fmul double 0x3CC8000000000000, %156, !dbg !1289
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1290
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !1291
  store double %157, double* %159, align 8, !dbg !1292
  store i32 0, i32* %4, align 4, !dbg !1293
  br label %161, !dbg !1293

; <label>:160:                                    ; preds = %33
  br label %161

; <label>:161:                                    ; preds = %22, %32, %139, %160, %23
  %162 = load i32, i32* %4, align 4, !dbg !1294
  ret i32 %162, !dbg !1294
}

; Function Attrs: nounwind uwtable
define internal i32 @fd_neg(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !60 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca [101 x double], align 16
  %9 = alloca [101 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1295, metadata !155), !dbg !1296
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1297, metadata !155), !dbg !1298
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1299, metadata !155), !dbg !1300
  call void @llvm.dbg.declare(metadata [101 x double]* %8, metadata !1301, metadata !155), !dbg !1302
  call void @llvm.dbg.declare(metadata [101 x double]* %9, metadata !1303, metadata !155), !dbg !1304
  %25 = load double, double* %6, align 8, !dbg !1305
  %26 = fcmp olt double %25, 0xC086232BDD7ABCD2, !dbg !1307
  br i1 %26, label %27, label %32, !dbg !1308

; <label>:27:                                     ; preds = %3
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1309
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1311
  store double 0.000000e+00, double* %29, align 8, !dbg !1312
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1313
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1314
  store double 0.000000e+00, double* %31, align 8, !dbg !1315
  store i32 0, i32* %4, align 4, !dbg !1316
  br label %163, !dbg !1316

; <label>:32:                                     ; preds = %3
  %33 = load double, double* %6, align 8, !dbg !1317
  %34 = fcmp olt double %33, -1.000000e+00, !dbg !1319
  br i1 %34, label %35, label %89, !dbg !1320

; <label>:35:                                     ; preds = %32
  %36 = load double, double* %6, align 8, !dbg !1321
  %37 = load double, double* %5, align 8, !dbg !1323
  %38 = fadd double %37, 1.000000e+00, !dbg !1324
  %39 = call double @fabs(double %38) #1, !dbg !1325
  %40 = fsub double -0.000000e+00, %39, !dbg !1326
  %41 = fcmp olt double %36, %40, !dbg !1327
  br i1 %41, label %42, label %89, !dbg !1328

; <label>:42:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %10, metadata !1329, metadata !155), !dbg !1331
  %43 = load double, double* %6, align 8, !dbg !1332
  %44 = call double @exp(double %43) #6, !dbg !1333
  store double %44, double* %10, align 8, !dbg !1331
  call void @llvm.dbg.declare(metadata double* %11, metadata !1334, metadata !155), !dbg !1335
  %45 = load double, double* %10, align 8, !dbg !1336
  store double %45, double* %11, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata double* %12, metadata !1337, metadata !155), !dbg !1338
  %46 = load double, double* %11, align 8, !dbg !1339
  store double %46, double* %12, align 8, !dbg !1338
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1340, metadata !155), !dbg !1341
  store i32 2, i32* %13, align 4, !dbg !1342
  br label %47, !dbg !1344

; <label>:47:                                     ; preds = %77, %42
  %48 = load i32, i32* %13, align 4, !dbg !1345
  %49 = icmp slt i32 %48, 100, !dbg !1348
  br i1 %49, label %50, label %80, !dbg !1349

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata double* %14, metadata !1350, metadata !155), !dbg !1352
  %51 = load i32, i32* %13, align 4, !dbg !1353
  %52 = sitofp i32 %51 to double, !dbg !1353
  %53 = fsub double %52, 1.000000e+00, !dbg !1354
  %54 = load i32, i32* %13, align 4, !dbg !1355
  %55 = sitofp i32 %54 to double, !dbg !1355
  %56 = fdiv double %53, %55, !dbg !1356
  store double %56, double* %14, align 8, !dbg !1352
  call void @llvm.dbg.declare(metadata double* %15, metadata !1357, metadata !155), !dbg !1358
  %57 = load double, double* %14, align 8, !dbg !1359
  %58 = load double, double* %5, align 8, !dbg !1360
  %59 = fadd double %58, 1.000000e+00, !dbg !1361
  %60 = call double @pow(double %57, double %59) #6, !dbg !1362
  store double %60, double* %15, align 8, !dbg !1358
  %61 = load double, double* %10, align 8, !dbg !1363
  %62 = fsub double -0.000000e+00, %61, !dbg !1364
  %63 = load double, double* %15, align 8, !dbg !1365
  %64 = fmul double %62, %63, !dbg !1366
  %65 = load double, double* %11, align 8, !dbg !1367
  %66 = fmul double %65, %64, !dbg !1367
  store double %66, double* %11, align 8, !dbg !1367
  %67 = load double, double* %11, align 8, !dbg !1368
  %68 = load double, double* %12, align 8, !dbg !1369
  %69 = fadd double %68, %67, !dbg !1369
  store double %69, double* %12, align 8, !dbg !1369
  %70 = load double, double* %11, align 8, !dbg !1370
  %71 = load double, double* %12, align 8, !dbg !1372
  %72 = fdiv double %70, %71, !dbg !1373
  %73 = call double @fabs(double %72) #1, !dbg !1374
  %74 = fcmp olt double %73, 0x3CB0000000000000, !dbg !1375
  br i1 %74, label %75, label %76, !dbg !1376

; <label>:75:                                     ; preds = %50
  br label %80, !dbg !1377

; <label>:76:                                     ; preds = %50
  br label %77, !dbg !1379

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %13, align 4, !dbg !1380
  %79 = add nsw i32 %78, 1, !dbg !1380
  store i32 %79, i32* %13, align 4, !dbg !1380
  br label %47, !dbg !1382, !llvm.loop !1383

; <label>:80:                                     ; preds = %75, %47
  %81 = load double, double* %12, align 8, !dbg !1385
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1386
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1387
  store double %81, double* %83, align 8, !dbg !1388
  %84 = load double, double* %12, align 8, !dbg !1389
  %85 = call double @fabs(double %84) #1, !dbg !1390
  %86 = fmul double 0x3CC0000000000000, %85, !dbg !1391
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1392
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !1393
  store double %86, double* %88, align 8, !dbg !1394
  store i32 0, i32* %4, align 4, !dbg !1395
  br label %163, !dbg !1395

; <label>:89:                                     ; preds = %35, %32
  call void @llvm.dbg.declare(metadata double* %16, metadata !1396, metadata !155), !dbg !1398
  store double 0.000000e+00, double* %16, align 8, !dbg !1398
  call void @llvm.dbg.declare(metadata double* %17, metadata !1399, metadata !155), !dbg !1400
  %90 = load double, double* %6, align 8, !dbg !1401
  store double %90, double* %17, align 8, !dbg !1400
  call void @llvm.dbg.declare(metadata double* %18, metadata !1402, metadata !155), !dbg !1403
  %91 = load double, double* %6, align 8, !dbg !1404
  %92 = call double @exp(double %91) #6, !dbg !1405
  %93 = fsub double -0.000000e+00, %92, !dbg !1406
  store double %93, double* %18, align 8, !dbg !1403
  call void @llvm.dbg.declare(metadata double* %19, metadata !1407, metadata !155), !dbg !1408
  %94 = load double, double* %18, align 8, !dbg !1409
  %95 = fsub double -0.000000e+00, %94, !dbg !1410
  store double %95, double* %19, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata double* %20, metadata !1411, metadata !155), !dbg !1412
  store double 0.000000e+00, double* %20, align 8, !dbg !1412
  call void @llvm.dbg.declare(metadata double* %21, metadata !1413, metadata !155), !dbg !1414
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1415, metadata !155), !dbg !1416
  store i32 0, i32* %22, align 4, !dbg !1417
  br label %96, !dbg !1419

; <label>:96:                                     ; preds = %135, %89
  %97 = load i32, i32* %22, align 4, !dbg !1420
  %98 = icmp sle i32 %97, 100, !dbg !1423
  br i1 %98, label %99, label %138, !dbg !1424

; <label>:99:                                     ; preds = %96
  call void @llvm.dbg.declare(metadata double* %23, metadata !1425, metadata !155), !dbg !1427
  %100 = load i32, i32* %22, align 4, !dbg !1428
  %101 = sitofp i32 %100 to double, !dbg !1428
  %102 = fadd double %101, 1.000000e+00, !dbg !1429
  %103 = load double, double* %5, align 8, !dbg !1430
  %104 = fadd double %103, 1.000000e+00, !dbg !1431
  %105 = call double @pow(double %102, double %104) #6, !dbg !1432
  store double %105, double* %23, align 8, !dbg !1427
  call void @llvm.dbg.declare(metadata double* %24, metadata !1433, metadata !155), !dbg !1434
  %106 = load double, double* %19, align 8, !dbg !1435
  %107 = load double, double* %23, align 8, !dbg !1436
  %108 = fdiv double %106, %107, !dbg !1437
  store double %108, double* %24, align 8, !dbg !1434
  %109 = load double, double* %20, align 8, !dbg !1438
  store double %109, double* %21, align 8, !dbg !1439
  %110 = load double, double* %24, align 8, !dbg !1440
  %111 = load i32, i32* %22, align 4, !dbg !1441
  %112 = getelementptr inbounds [101 x double], [101 x double]* %8, i32 0, i32 0, !dbg !1442
  %113 = getelementptr inbounds [101 x double], [101 x double]* %9, i32 0, i32 0, !dbg !1443
  %114 = call i32 @fd_whiz(double %110, i32 %111, double* %112, double* %113, double* %20, double* %16), !dbg !1444
  %115 = load double, double* %6, align 8, !dbg !1445
  %116 = load double, double* %17, align 8, !dbg !1446
  %117 = fadd double %116, %115, !dbg !1446
  store double %117, double* %17, align 8, !dbg !1446
  %118 = load double, double* %20, align 8, !dbg !1447
  %119 = load double, double* %21, align 8, !dbg !1449
  %120 = fsub double %118, %119, !dbg !1450
  %121 = call double @fabs(double %120) #1, !dbg !1451
  %122 = load double, double* %20, align 8, !dbg !1452
  %123 = call double @fabs(double %122) #1, !dbg !1453
  %124 = fmul double %123, 2.000000e+00, !dbg !1455
  %125 = fmul double %124, 0x3CB0000000000000, !dbg !1456
  %126 = fcmp olt double %121, %125, !dbg !1457
  br i1 %126, label %130, label %127, !dbg !1458

; <label>:127:                                    ; preds = %99
  %128 = load double, double* %17, align 8, !dbg !1459
  %129 = fcmp olt double %128, 0xC086232BDD7ABCD2, !dbg !1461
  br i1 %129, label %130, label %131, !dbg !1462

; <label>:130:                                    ; preds = %127, %99
  br label %138, !dbg !1463

; <label>:131:                                    ; preds = %127
  %132 = load double, double* %18, align 8, !dbg !1465
  %133 = load double, double* %19, align 8, !dbg !1466
  %134 = fmul double %133, %132, !dbg !1466
  store double %134, double* %19, align 8, !dbg !1466
  br label %135, !dbg !1467

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %22, align 4, !dbg !1468
  %137 = add nsw i32 %136, 1, !dbg !1468
  store i32 %137, i32* %22, align 4, !dbg !1468
  br label %96, !dbg !1470, !llvm.loop !1471

; <label>:138:                                    ; preds = %130, %96
  %139 = load double, double* %20, align 8, !dbg !1473
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1474
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !1475
  store double %139, double* %141, align 8, !dbg !1476
  %142 = load double, double* %20, align 8, !dbg !1477
  %143 = load double, double* %21, align 8, !dbg !1478
  %144 = fsub double %142, %143, !dbg !1479
  %145 = call double @fabs(double %144) #1, !dbg !1480
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1481
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !1482
  store double %145, double* %147, align 8, !dbg !1483
  %148 = load double, double* %20, align 8, !dbg !1484
  %149 = call double @fabs(double %148) #1, !dbg !1485
  %150 = fmul double 0x3CC0000000000000, %149, !dbg !1486
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1487
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !1488
  %153 = load double, double* %152, align 8, !dbg !1489
  %154 = fadd double %153, %150, !dbg !1489
  store double %154, double* %152, align 8, !dbg !1489
  %155 = load i32, i32* %22, align 4, !dbg !1490
  %156 = icmp eq i32 %155, 100, !dbg !1492
  br i1 %156, label %157, label %160, !dbg !1493

; <label>:157:                                    ; preds = %138
  br label %158, !dbg !1494, !llvm.loop !1495

; <label>:158:                                    ; preds = %157
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 968, i32 11), !dbg !1496
  store i32 11, i32* %4, align 4, !dbg !1496
  br label %163, !dbg !1496
                                                  ; No predecessors!
  br label %161, !dbg !1499

; <label>:160:                                    ; preds = %138
  store i32 0, i32* %4, align 4, !dbg !1501
  br label %163, !dbg !1501

; <label>:161:                                    ; preds = %159
  br label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %27, %80, %158, %160, %162
  %164 = load i32, i32* %4, align 4, !dbg !1502
  ret i32 %164, !dbg !1502
}

declare i32 @gsl_sf_eta_int_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @fd_series_int(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1503 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1504, metadata !155), !dbg !1505
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1506, metadata !155), !dbg !1507
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1508, metadata !155), !dbg !1509
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1510, metadata !155), !dbg !1511
  call void @llvm.dbg.declare(metadata double* %8, metadata !1512, metadata !155), !dbg !1513
  store double 0.000000e+00, double* %8, align 8, !dbg !1513
  call void @llvm.dbg.declare(metadata double* %9, metadata !1514, metadata !155), !dbg !1515
  call void @llvm.dbg.declare(metadata double* %10, metadata !1516, metadata !155), !dbg !1517
  store double 1.000000e+00, double* %10, align 8, !dbg !1517
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1518, metadata !155), !dbg !1519
  %16 = load i32, i32* %4, align 4, !dbg !1520
  %17 = add nsw i32 %16, 1, !dbg !1521
  %18 = call i32 @gsl_sf_eta_int_e(i32 %17, %struct.gsl_sf_result_struct* %11), !dbg !1522
  %19 = load double, double* %10, align 8, !dbg !1523
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1524
  %21 = load double, double* %20, align 8, !dbg !1524
  %22 = fmul double %19, %21, !dbg !1525
  store double %22, double* %9, align 8, !dbg !1526
  %23 = load double, double* %9, align 8, !dbg !1527
  %24 = load double, double* %8, align 8, !dbg !1528
  %25 = fadd double %24, %23, !dbg !1528
  store double %25, double* %8, align 8, !dbg !1528
  store i32 1, i32* %7, align 4, !dbg !1529
  br label %26, !dbg !1531

; <label>:26:                                     ; preds = %57, %3
  %27 = load i32, i32* %7, align 4, !dbg !1532
  %28 = load i32, i32* %4, align 4, !dbg !1535
  %29 = add nsw i32 %28, 2, !dbg !1536
  %30 = icmp sle i32 %27, %29, !dbg !1537
  br i1 %30, label %31, label %60, !dbg !1538

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %4, align 4, !dbg !1539
  %33 = add nsw i32 %32, 1, !dbg !1541
  %34 = load i32, i32* %7, align 4, !dbg !1542
  %35 = sub nsw i32 %33, %34, !dbg !1543
  %36 = call i32 @gsl_sf_eta_int_e(i32 %35, %struct.gsl_sf_result_struct* %11), !dbg !1544
  %37 = load double, double* %5, align 8, !dbg !1545
  %38 = load i32, i32* %7, align 4, !dbg !1546
  %39 = sitofp i32 %38 to double, !dbg !1546
  %40 = fdiv double %37, %39, !dbg !1547
  %41 = load double, double* %10, align 8, !dbg !1548
  %42 = fmul double %41, %40, !dbg !1548
  store double %42, double* %10, align 8, !dbg !1548
  %43 = load double, double* %10, align 8, !dbg !1549
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1550
  %45 = load double, double* %44, align 8, !dbg !1550
  %46 = fmul double %43, %45, !dbg !1551
  store double %46, double* %9, align 8, !dbg !1552
  %47 = load double, double* %9, align 8, !dbg !1553
  %48 = load double, double* %8, align 8, !dbg !1554
  %49 = fadd double %48, %47, !dbg !1554
  store double %49, double* %8, align 8, !dbg !1554
  %50 = load double, double* %9, align 8, !dbg !1555
  %51 = load double, double* %8, align 8, !dbg !1557
  %52 = fdiv double %50, %51, !dbg !1558
  %53 = call double @fabs(double %52) #1, !dbg !1559
  %54 = fcmp olt double %53, 0x3CB0000000000000, !dbg !1560
  br i1 %54, label %55, label %56, !dbg !1561

; <label>:55:                                     ; preds = %31
  br label %60, !dbg !1562

; <label>:56:                                     ; preds = %31
  br label %57, !dbg !1564

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %7, align 4, !dbg !1565
  %59 = add nsw i32 %58, 1, !dbg !1565
  store i32 %59, i32* %7, align 4, !dbg !1565
  br label %26, !dbg !1567, !llvm.loop !1568

; <label>:60:                                     ; preds = %55, %26
  %61 = load i32, i32* %4, align 4, !dbg !1570
  %62 = icmp slt i32 %61, 32, !dbg !1572
  br i1 %62, label %63, label %137, !dbg !1573

; <label>:63:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1574, metadata !155), !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1577, metadata !155), !dbg !1578
  call void @llvm.dbg.declare(metadata double* %14, metadata !1579, metadata !155), !dbg !1580
  call void @llvm.dbg.declare(metadata double* %15, metadata !1581, metadata !155), !dbg !1582
  %64 = load i32, i32* %4, align 4, !dbg !1583
  %65 = call i32 @gsl_sf_fact_e(i32 %64, %struct.gsl_sf_result_struct* %13), !dbg !1584
  %66 = load double, double* %5, align 8, !dbg !1585
  %67 = load i32, i32* %4, align 4, !dbg !1586
  %68 = call double @gsl_sf_pow_int(double %66, i32 %67), !dbg !1587
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1588
  %70 = load double, double* %69, align 8, !dbg !1588
  %71 = fdiv double %68, %70, !dbg !1589
  store double %71, double* %15, align 8, !dbg !1590
  %72 = call i32 @gsl_sf_eta_int_e(i32 -3, %struct.gsl_sf_result_struct* %11), !dbg !1591
  %73 = load double, double* %5, align 8, !dbg !1592
  %74 = load double, double* %5, align 8, !dbg !1593
  %75 = fmul double %73, %74, !dbg !1594
  %76 = load double, double* %5, align 8, !dbg !1595
  %77 = fmul double %75, %76, !dbg !1596
  %78 = load double, double* %5, align 8, !dbg !1597
  %79 = fmul double %77, %78, !dbg !1598
  %80 = load i32, i32* %4, align 4, !dbg !1599
  %81 = add nsw i32 %80, 4, !dbg !1600
  %82 = load i32, i32* %4, align 4, !dbg !1601
  %83 = add nsw i32 %82, 3, !dbg !1602
  %84 = mul nsw i32 %81, %83, !dbg !1603
  %85 = load i32, i32* %4, align 4, !dbg !1604
  %86 = add nsw i32 %85, 2, !dbg !1605
  %87 = mul nsw i32 %84, %86, !dbg !1606
  %88 = load i32, i32* %4, align 4, !dbg !1607
  %89 = add nsw i32 %88, 1, !dbg !1608
  %90 = mul nsw i32 %87, %89, !dbg !1609
  %91 = sitofp i32 %90 to double, !dbg !1610
  %92 = fdiv double %79, %91, !dbg !1611
  store double %92, double* %10, align 8, !dbg !1612
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1613
  %94 = load double, double* %93, align 8, !dbg !1613
  %95 = load double, double* %10, align 8, !dbg !1614
  %96 = fmul double %94, %95, !dbg !1615
  store double %96, double* %14, align 8, !dbg !1616
  store i32 3, i32* %12, align 4, !dbg !1617
  br label %97, !dbg !1619

; <label>:97:                                     ; preds = %128, %63
  %98 = load i32, i32* %12, align 4, !dbg !1620
  %99 = icmp slt i32 %98, 24, !dbg !1623
  br i1 %99, label %100, label %131, !dbg !1624

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %12, align 4, !dbg !1625
  %102 = mul nsw i32 2, %101, !dbg !1627
  %103 = sub nsw i32 1, %102, !dbg !1628
  %104 = call i32 @gsl_sf_eta_int_e(i32 %103, %struct.gsl_sf_result_struct* %11), !dbg !1629
  %105 = load double, double* %5, align 8, !dbg !1630
  %106 = load double, double* %5, align 8, !dbg !1631
  %107 = fmul double %105, %106, !dbg !1632
  %108 = load i32, i32* %4, align 4, !dbg !1633
  %109 = load i32, i32* %12, align 4, !dbg !1634
  %110 = mul nsw i32 2, %109, !dbg !1635
  %111 = add nsw i32 %108, %110, !dbg !1636
  %112 = load i32, i32* %4, align 4, !dbg !1637
  %113 = load i32, i32* %12, align 4, !dbg !1638
  %114 = mul nsw i32 2, %113, !dbg !1639
  %115 = add nsw i32 %112, %114, !dbg !1640
  %116 = sub nsw i32 %115, 1, !dbg !1641
  %117 = mul nsw i32 %111, %116, !dbg !1642
  %118 = sitofp i32 %117 to double, !dbg !1643
  %119 = fdiv double %107, %118, !dbg !1644
  %120 = load double, double* %10, align 8, !dbg !1645
  %121 = fmul double %120, %119, !dbg !1645
  store double %121, double* %10, align 8, !dbg !1645
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1646
  %123 = load double, double* %122, align 8, !dbg !1646
  %124 = load double, double* %10, align 8, !dbg !1647
  %125 = fmul double %123, %124, !dbg !1648
  %126 = load double, double* %14, align 8, !dbg !1649
  %127 = fadd double %126, %125, !dbg !1649
  store double %127, double* %14, align 8, !dbg !1649
  br label %128, !dbg !1650

; <label>:128:                                    ; preds = %100
  %129 = load i32, i32* %12, align 4, !dbg !1651
  %130 = add nsw i32 %129, 1, !dbg !1651
  store i32 %130, i32* %12, align 4, !dbg !1651
  br label %97, !dbg !1653, !llvm.loop !1654

; <label>:131:                                    ; preds = %97
  %132 = load double, double* %15, align 8, !dbg !1656
  %133 = load double, double* %14, align 8, !dbg !1657
  %134 = fmul double %132, %133, !dbg !1658
  %135 = load double, double* %8, align 8, !dbg !1659
  %136 = fadd double %135, %134, !dbg !1659
  store double %136, double* %8, align 8, !dbg !1659
  br label %137, !dbg !1660

; <label>:137:                                    ; preds = %131, %60
  %138 = load double, double* %8, align 8, !dbg !1661
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1662
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !1663
  store double %138, double* %140, align 8, !dbg !1664
  %141 = load double, double* %8, align 8, !dbg !1665
  %142 = call double @fabs(double %141) #1, !dbg !1666
  %143 = fmul double 0x3CC0000000000000, %142, !dbg !1667
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1668
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !1669
  store double %143, double* %145, align 8, !dbg !1670
  ret i32 0, !dbg !1671
}

; Function Attrs: nounwind uwtable
define internal i32 @fd_asymp(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1672 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
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
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1673, metadata !155), !dbg !1674
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1675, metadata !155), !dbg !1676
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1677, metadata !155), !dbg !1678
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1679, metadata !155), !dbg !1680
  %28 = load double, double* %4, align 8, !dbg !1681
  %29 = load double, double* %4, align 8, !dbg !1682
  %30 = fadd double %29, 5.000000e-01, !dbg !1683
  %31 = call double @floor(double %30) #1, !dbg !1684
  %32 = fsub double %28, %31, !dbg !1685
  %33 = call double @fabs(double %32) #1, !dbg !1686
  %34 = fcmp olt double %33, 0x3D19000000000000, !dbg !1688
  %35 = zext i1 %34 to i32, !dbg !1688
  store i32 %35, i32* %7, align 4, !dbg !1680
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1689, metadata !155), !dbg !1690
  store i32 200, i32* %8, align 4, !dbg !1690
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1691, metadata !155), !dbg !1692
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1693, metadata !155), !dbg !1694
  %36 = load double, double* %4, align 8, !dbg !1695
  %37 = fadd double %36, 2.000000e+00, !dbg !1696
  %38 = call i32 @gsl_sf_lngamma_e(double %37, %struct.gsl_sf_result_struct* %9), !dbg !1697
  store i32 %38, i32* %10, align 4, !dbg !1694
  call void @llvm.dbg.declare(metadata double* %11, metadata !1698, metadata !155), !dbg !1699
  store double 5.000000e-01, double* %11, align 8, !dbg !1699
  call void @llvm.dbg.declare(metadata double* %12, metadata !1700, metadata !155), !dbg !1701
  store double 0.000000e+00, double* %12, align 8, !dbg !1701
  call void @llvm.dbg.declare(metadata double* %13, metadata !1702, metadata !155), !dbg !1703
  %39 = load double, double* %5, align 8, !dbg !1704
  %40 = fdiv double 1.000000e+00, %39, !dbg !1705
  %41 = load double, double* %5, align 8, !dbg !1706
  %42 = fdiv double %40, %41, !dbg !1707
  store double %42, double* %13, align 8, !dbg !1703
  call void @llvm.dbg.declare(metadata double* %14, metadata !1708, metadata !155), !dbg !1709
  store double 1.000000e+00, double* %14, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata double* %15, metadata !1710, metadata !155), !dbg !1711
  store double 0x7FEFFFFFFFFFFFFF, double* %15, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata double* %16, metadata !1712, metadata !155), !dbg !1713
  call void @llvm.dbg.declare(metadata double* %17, metadata !1714, metadata !155), !dbg !1715
  call void @llvm.dbg.declare(metadata double* %18, metadata !1716, metadata !155), !dbg !1717
  call void @llvm.dbg.declare(metadata double* %19, metadata !1718, metadata !155), !dbg !1719
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1720, metadata !155), !dbg !1721
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !1722, metadata !155), !dbg !1723
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !1724, metadata !155), !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1726, metadata !155), !dbg !1727
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1728, metadata !155), !dbg !1729
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1730, metadata !155), !dbg !1731
  store i32 1, i32* %25, align 4, !dbg !1732
  br label %43, !dbg !1734

; <label>:43:                                     ; preds = %99, %3
  %44 = load i32, i32* %25, align 4, !dbg !1735
  %45 = icmp sle i32 %44, 200, !dbg !1738
  br i1 %45, label %46, label %102, !dbg !1739

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata double* %26, metadata !1740, metadata !155), !dbg !1742
  %47 = load double, double* %15, align 8, !dbg !1743
  store double %47, double* %26, align 8, !dbg !1742
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !1744, metadata !155), !dbg !1745
  %48 = load i32, i32* %25, align 4, !dbg !1746
  %49 = mul nsw i32 2, %48, !dbg !1747
  %50 = call i32 @gsl_sf_eta_int_e(i32 %49, %struct.gsl_sf_result_struct* %27), !dbg !1748
  %51 = load double, double* %14, align 8, !dbg !1749
  %52 = load double, double* %13, align 8, !dbg !1750
  %53 = fmul double %51, %52, !dbg !1751
  %54 = load double, double* %4, align 8, !dbg !1752
  %55 = fadd double %54, 1.000000e+00, !dbg !1753
  %56 = load i32, i32* %25, align 4, !dbg !1754
  %57 = mul nsw i32 2, %56, !dbg !1755
  %58 = sub nsw i32 %57, 2, !dbg !1756
  %59 = sitofp i32 %58 to double, !dbg !1757
  %60 = fsub double %55, %59, !dbg !1758
  %61 = fmul double %53, %60, !dbg !1759
  %62 = load double, double* %4, align 8, !dbg !1760
  %63 = fadd double %62, 1.000000e+00, !dbg !1761
  %64 = load i32, i32* %25, align 4, !dbg !1762
  %65 = mul nsw i32 2, %64, !dbg !1763
  %66 = sub nsw i32 %65, 1, !dbg !1764
  %67 = sitofp i32 %66 to double, !dbg !1765
  %68 = fsub double %63, %67, !dbg !1766
  %69 = fmul double %61, %68, !dbg !1767
  store double %69, double* %14, align 8, !dbg !1768
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !1769
  %71 = load double, double* %70, align 8, !dbg !1769
  %72 = load double, double* %14, align 8, !dbg !1770
  %73 = fmul double %71, %72, !dbg !1771
  store double %73, double* %15, align 8, !dbg !1772
  %74 = load i32, i32* %7, align 4, !dbg !1773
  %75 = icmp ne i32 %74, 0, !dbg !1773
  br i1 %75, label %83, label %76, !dbg !1775

; <label>:76:                                     ; preds = %46
  %77 = load double, double* %15, align 8, !dbg !1776
  %78 = call double @fabs(double %77) #1, !dbg !1778
  %79 = load double, double* %26, align 8, !dbg !1779
  %80 = call double @fabs(double %79) #1, !dbg !1780
  %81 = fcmp ogt double %78, %80, !dbg !1782
  br i1 %81, label %82, label %83, !dbg !1783

; <label>:82:                                     ; preds = %76
  br label %102, !dbg !1784

; <label>:83:                                     ; preds = %76, %46
  %84 = load double, double* %15, align 8, !dbg !1786
  %85 = load double, double* %11, align 8, !dbg !1788
  %86 = fdiv double %84, %85, !dbg !1789
  %87 = call double @fabs(double %86) #1, !dbg !1790
  %88 = fcmp olt double %87, 0x3CB0000000000000, !dbg !1791
  br i1 %88, label %89, label %90, !dbg !1792

; <label>:89:                                     ; preds = %83
  br label %102, !dbg !1793

; <label>:90:                                     ; preds = %83
  %91 = load double, double* %15, align 8, !dbg !1795
  %92 = load double, double* %11, align 8, !dbg !1796
  %93 = fadd double %92, %91, !dbg !1796
  store double %93, double* %11, align 8, !dbg !1796
  %94 = load double, double* %15, align 8, !dbg !1797
  %95 = call double @fabs(double %94) #1, !dbg !1798
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !1799
  %97 = load double, double* %12, align 8, !dbg !1800
  %98 = fadd double %97, %96, !dbg !1800
  store double %98, double* %12, align 8, !dbg !1800
  br label %99, !dbg !1801

; <label>:99:                                     ; preds = %90
  %100 = load i32, i32* %25, align 4, !dbg !1802
  %101 = add nsw i32 %100, 1, !dbg !1802
  store i32 %101, i32* %25, align 4, !dbg !1802
  br label %43, !dbg !1804, !llvm.loop !1805

; <label>:102:                                    ; preds = %89, %82, %43
  %103 = load double, double* %15, align 8, !dbg !1807
  %104 = call double @fabs(double %103) #1, !dbg !1808
  %105 = load double, double* %12, align 8, !dbg !1809
  %106 = fadd double %105, %104, !dbg !1809
  store double %106, double* %12, align 8, !dbg !1809
  %107 = load double, double* %4, align 8, !dbg !1810
  %108 = load double, double* %5, align 8, !dbg !1811
  %109 = fsub double -0.000000e+00, %108, !dbg !1812
  %110 = call i32 @fd_neg(double %107, double %109, %struct.gsl_sf_result_struct* %20), !dbg !1813
  store i32 %110, i32* %23, align 4, !dbg !1814
  %111 = load double, double* %5, align 8, !dbg !1815
  %112 = call double @log(double %111) #6, !dbg !1816
  store double %112, double* %17, align 8, !dbg !1817
  %113 = load double, double* %4, align 8, !dbg !1818
  %114 = fadd double %113, 1.000000e+00, !dbg !1819
  %115 = load double, double* %17, align 8, !dbg !1820
  %116 = fmul double %114, %115, !dbg !1821
  store double %116, double* %18, align 8, !dbg !1822
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1823
  %118 = load double, double* %117, align 8, !dbg !1823
  store double %118, double* %19, align 8, !dbg !1824
  %119 = load double, double* %18, align 8, !dbg !1825
  %120 = load double, double* %19, align 8, !dbg !1826
  %121 = fsub double %119, %120, !dbg !1827
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1828
  store double %121, double* %122, align 8, !dbg !1829
  %123 = load double, double* %18, align 8, !dbg !1830
  %124 = call double @fabs(double %123) #1, !dbg !1831
  %125 = load double, double* %19, align 8, !dbg !1832
  %126 = call double @fabs(double %125) #1, !dbg !1833
  %127 = fadd double %124, %126, !dbg !1834
  %128 = fmul double 0x3CB0000000000000, %127, !dbg !1835
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1836
  %130 = load double, double* %129, align 8, !dbg !1836
  %131 = fadd double %128, %130, !dbg !1837
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1838
  store double %131, double* %132, align 8, !dbg !1839
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1840
  %134 = load double, double* %133, align 8, !dbg !1840
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1841
  %136 = load double, double* %135, align 8, !dbg !1841
  %137 = call i32 @gsl_sf_exp_err_e(double %134, double %136, %struct.gsl_sf_result_struct* %22), !dbg !1842
  store i32 %137, i32* %24, align 4, !dbg !1843
  %138 = load double, double* %4, align 8, !dbg !1844
  %139 = fmul double %138, 0x400921FB54442D18, !dbg !1845
  %140 = call double @cos(double %139) #6, !dbg !1846
  store double %140, double* %16, align 8, !dbg !1847
  %141 = load double, double* %16, align 8, !dbg !1848
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1849
  %143 = load double, double* %142, align 8, !dbg !1849
  %144 = fmul double %141, %143, !dbg !1850
  %145 = load double, double* %11, align 8, !dbg !1851
  %146 = fmul double 2.000000e+00, %145, !dbg !1852
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1853
  %148 = load double, double* %147, align 8, !dbg !1853
  %149 = fmul double %146, %148, !dbg !1854
  %150 = fadd double %144, %149, !dbg !1855
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1856
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !1857
  store double %150, double* %152, align 8, !dbg !1858
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !1859
  %154 = load double, double* %153, align 8, !dbg !1859
  %155 = fmul double 2.000000e+00, %154, !dbg !1860
  %156 = load double, double* %11, align 8, !dbg !1861
  %157 = fmul double %155, %156, !dbg !1862
  %158 = call double @fabs(double %157) #1, !dbg !1863
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1864
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !1865
  store double %158, double* %160, align 8, !dbg !1866
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1867
  %162 = load double, double* %161, align 8, !dbg !1867
  %163 = fmul double 2.000000e+00, %162, !dbg !1868
  %164 = load double, double* %12, align 8, !dbg !1869
  %165 = fmul double %163, %164, !dbg !1870
  %166 = call double @fabs(double %165) #1, !dbg !1871
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1872
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !1873
  %169 = load double, double* %168, align 8, !dbg !1874
  %170 = fadd double %169, %166, !dbg !1874
  store double %170, double* %168, align 8, !dbg !1874
  %171 = load double, double* %16, align 8, !dbg !1875
  %172 = call double @fabs(double %171) #1, !dbg !1876
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1877
  %174 = load double, double* %173, align 8, !dbg !1877
  %175 = fmul double %172, %174, !dbg !1878
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1879
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 1, !dbg !1880
  %178 = load double, double* %177, align 8, !dbg !1881
  %179 = fadd double %178, %175, !dbg !1881
  store double %179, double* %177, align 8, !dbg !1881
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1882
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 0, !dbg !1883
  %182 = load double, double* %181, align 8, !dbg !1883
  %183 = call double @fabs(double %182) #1, !dbg !1884
  %184 = fmul double 0x3CD0000000000000, %183, !dbg !1885
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1886
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 1, !dbg !1887
  %187 = load double, double* %186, align 8, !dbg !1888
  %188 = fadd double %187, %184, !dbg !1888
  store double %188, double* %186, align 8, !dbg !1888
  %189 = load i32, i32* %24, align 4, !dbg !1889
  %190 = icmp ne i32 %189, 0, !dbg !1889
  br i1 %190, label %191, label %193, !dbg !1889

; <label>:191:                                    ; preds = %102
  %192 = load i32, i32* %24, align 4, !dbg !1890
  br label %208, !dbg !1890

; <label>:193:                                    ; preds = %102
  %194 = load i32, i32* %23, align 4, !dbg !1891
  %195 = icmp ne i32 %194, 0, !dbg !1891
  br i1 %195, label %196, label %198, !dbg !1891

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %23, align 4, !dbg !1893
  br label %206, !dbg !1893

; <label>:198:                                    ; preds = %193
  %199 = load i32, i32* %10, align 4, !dbg !1895
  %200 = icmp ne i32 %199, 0, !dbg !1895
  br i1 %200, label %201, label %203, !dbg !1895

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %10, align 4, !dbg !1897
  br label %204, !dbg !1897

; <label>:203:                                    ; preds = %198
  br label %204, !dbg !1899

; <label>:204:                                    ; preds = %203, %201
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], !dbg !1901
  br label %206, !dbg !1901

; <label>:206:                                    ; preds = %204, %196
  %207 = phi i32 [ %197, %196 ], [ %205, %204 ], !dbg !1903
  br label %208, !dbg !1903

; <label>:208:                                    ; preds = %206, %191
  %209 = phi i32 [ %192, %191 ], [ %207, %206 ], !dbg !1905
  ret i32 %209, !dbg !1907
}

; Function Attrs: nounwind uwtable
define internal i32 @fd_UMseries_int(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1908 {
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1909, metadata !155), !dbg !1910
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1911, metadata !155), !dbg !1912
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1913, metadata !155), !dbg !1914
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1915, metadata !155), !dbg !1916
  store i32 2000, i32* %7, align 4, !dbg !1916
  call void @llvm.dbg.declare(metadata double* %8, metadata !1917, metadata !155), !dbg !1918
  call void @llvm.dbg.declare(metadata double* %9, metadata !1919, metadata !155), !dbg !1920
  call void @llvm.dbg.declare(metadata double* %10, metadata !1921, metadata !155), !dbg !1922
  call void @llvm.dbg.declare(metadata double* %11, metadata !1923, metadata !155), !dbg !1924
  store double 1.000000e+00, double* %11, align 8, !dbg !1924
  call void @llvm.dbg.declare(metadata double* %12, metadata !1925, metadata !155), !dbg !1926
  store double 0.000000e+00, double* %12, align 8, !dbg !1926
  call void @llvm.dbg.declare(metadata double* %13, metadata !1927, metadata !155), !dbg !1928
  store double 0.000000e+00, double* %13, align 8, !dbg !1928
  call void @llvm.dbg.declare(metadata double* %14, metadata !1929, metadata !155), !dbg !1930
  store double 0.000000e+00, double* %14, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1931, metadata !155), !dbg !1932
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1933, metadata !155), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1935, metadata !155), !dbg !1936
  store i32 0, i32* %17, align 4, !dbg !1936
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1937, metadata !155), !dbg !1938
  %35 = load double, double* %5, align 8, !dbg !1939
  %36 = fcmp olt double %35, 5.000000e+02, !dbg !1941
  br i1 %36, label %37, label %52, !dbg !1942

; <label>:37:                                     ; preds = %3
  %38 = load i32, i32* %4, align 4, !dbg !1943
  %39 = icmp slt i32 %38, 80, !dbg !1945
  br i1 %39, label %40, label %52, !dbg !1946

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %19, metadata !1947, metadata !155), !dbg !1949
  %41 = load double, double* %5, align 8, !dbg !1950
  %42 = load i32, i32* %4, align 4, !dbg !1951
  %43 = add nsw i32 %42, 1, !dbg !1952
  %44 = call double @gsl_sf_pow_int(double %41, i32 %43), !dbg !1953
  store double %44, double* %19, align 8, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1954, metadata !155), !dbg !1955
  %45 = load i32, i32* %4, align 4, !dbg !1956
  %46 = add nsw i32 %45, 1, !dbg !1957
  %47 = call i32 @gsl_sf_fact_e(i32 %46, %struct.gsl_sf_result_struct* %20), !dbg !1958
  store double 0.000000e+00, double* %9, align 8, !dbg !1959
  store double 0.000000e+00, double* %10, align 8, !dbg !1960
  %48 = load double, double* %19, align 8, !dbg !1961
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1962
  %50 = load double, double* %49, align 8, !dbg !1962
  %51 = fdiv double %48, %50, !dbg !1963
  store double %51, double* %8, align 8, !dbg !1964
  br label %77, !dbg !1965

; <label>:52:                                     ; preds = %37, %3
  call void @llvm.dbg.declare(metadata double* %21, metadata !1966, metadata !155), !dbg !1968
  %53 = load double, double* %5, align 8, !dbg !1969
  %54 = call double @log(double %53) #6, !dbg !1970
  store double %54, double* %21, align 8, !dbg !1968
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !1971, metadata !155), !dbg !1972
  %55 = load i32, i32* %4, align 4, !dbg !1973
  %56 = sitofp i32 %55 to double, !dbg !1973
  %57 = fadd double %56, 2.000000e+00, !dbg !1974
  %58 = call i32 @gsl_sf_lngamma_e(double %57, %struct.gsl_sf_result_struct* %22), !dbg !1975
  %59 = load i32, i32* %4, align 4, !dbg !1976
  %60 = sitofp i32 %59 to double, !dbg !1976
  %61 = fadd double %60, 1.000000e+00, !dbg !1977
  %62 = load double, double* %21, align 8, !dbg !1978
  %63 = fmul double %61, %62, !dbg !1979
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1980
  %65 = load double, double* %64, align 8, !dbg !1980
  %66 = fsub double %63, %65, !dbg !1981
  store double %66, double* %9, align 8, !dbg !1982
  %67 = load i32, i32* %4, align 4, !dbg !1983
  %68 = sitofp i32 %67 to double, !dbg !1983
  %69 = fadd double %68, 1.000000e+00, !dbg !1984
  %70 = load double, double* %21, align 8, !dbg !1985
  %71 = fmul double %69, %70, !dbg !1986
  %72 = call double @fabs(double %71) #1, !dbg !1987
  %73 = fmul double 0x3CC0000000000000, %72, !dbg !1988
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !1989
  %75 = load double, double* %74, align 8, !dbg !1989
  %76 = fadd double %73, %75, !dbg !1990
  store double %76, double* %10, align 8, !dbg !1991
  store double 1.000000e+00, double* %8, align 8, !dbg !1992
  br label %77

; <label>:77:                                     ; preds = %52, %40
  store i32 1, i32* %18, align 4, !dbg !1993
  br label %78, !dbg !1995

; <label>:78:                                     ; preds = %150, %77
  %79 = load i32, i32* %18, align 4, !dbg !1996
  %80 = icmp slt i32 %79, 2000, !dbg !1999
  br i1 %80, label %81, label %153, !dbg !2000

; <label>:81:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata double* %23, metadata !2001, metadata !155), !dbg !2003
  call void @llvm.dbg.declare(metadata double* %24, metadata !2004, metadata !155), !dbg !2005
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !2006, metadata !155), !dbg !2007
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !2008, metadata !155), !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %27, metadata !2010, metadata !155), !dbg !2011
  %82 = load i32, i32* %4, align 4, !dbg !2012
  %83 = add nsw i32 %82, 2, !dbg !2013
  %84 = load i32, i32* %18, align 4, !dbg !2014
  %85 = sitofp i32 %84 to double, !dbg !2014
  %86 = load double, double* %5, align 8, !dbg !2015
  %87 = fmul double %85, %86, !dbg !2016
  %88 = call i32 @gsl_sf_hyperg_U_int_e(i32 1, i32 %83, double %87, %struct.gsl_sf_result_struct* %25), !dbg !2017
  store i32 %88, i32* %27, align 4, !dbg !2011
  call void @llvm.dbg.declare(metadata i32* %28, metadata !2018, metadata !155), !dbg !2019
  %89 = load i32, i32* %4, align 4, !dbg !2020
  %90 = add nsw i32 %89, 2, !dbg !2021
  %91 = load i32, i32* %18, align 4, !dbg !2022
  %92 = sub nsw i32 0, %91, !dbg !2023
  %93 = sitofp i32 %92 to double, !dbg !2023
  %94 = load double, double* %5, align 8, !dbg !2024
  %95 = fmul double %93, %94, !dbg !2025
  %96 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 1, i32 %90, double %95, %struct.gsl_sf_result_struct* %26), !dbg !2026
  store i32 %96, i32* %28, align 4, !dbg !2019
  %97 = load i32, i32* %17, align 4, !dbg !2027
  %98 = icmp ne i32 %97, 0, !dbg !2027
  br i1 %98, label %99, label %101, !dbg !2027

; <label>:99:                                     ; preds = %81
  %100 = load i32, i32* %17, align 4, !dbg !2028
  br label %116, !dbg !2028

; <label>:101:                                    ; preds = %81
  %102 = load i32, i32* %27, align 4, !dbg !2030
  %103 = icmp ne i32 %102, 0, !dbg !2030
  br i1 %103, label %104, label %106, !dbg !2030

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %27, align 4, !dbg !2032
  br label %114, !dbg !2032

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* %28, align 4, !dbg !2034
  %108 = icmp ne i32 %107, 0, !dbg !2034
  br i1 %108, label %109, label %111, !dbg !2034

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %28, align 4, !dbg !2036
  br label %112, !dbg !2036

; <label>:111:                                    ; preds = %106
  br label %112, !dbg !2038

; <label>:112:                                    ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ], !dbg !2040
  br label %114, !dbg !2040

; <label>:114:                                    ; preds = %112, %104
  %115 = phi i32 [ %105, %104 ], [ %113, %112 ], !dbg !2042
  br label %116, !dbg !2042

; <label>:116:                                    ; preds = %114, %99
  %117 = phi i32 [ %100, %99 ], [ %115, %114 ], !dbg !2044
  store i32 %117, i32* %17, align 4, !dbg !2046
  %118 = load i32, i32* %4, align 4, !dbg !2047
  %119 = sitofp i32 %118 to double, !dbg !2047
  %120 = fadd double %119, 1.000000e+00, !dbg !2048
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !2049
  %122 = load double, double* %121, align 8, !dbg !2049
  %123 = fmul double %120, %122, !dbg !2050
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !2051
  %125 = load double, double* %124, align 8, !dbg !2051
  %126 = fsub double %123, %125, !dbg !2052
  store double %126, double* %23, align 8, !dbg !2053
  %127 = load i32, i32* %4, align 4, !dbg !2054
  %128 = sitofp i32 %127 to double, !dbg !2054
  %129 = fadd double %128, 1.000000e+00, !dbg !2055
  %130 = call double @fabs(double %129) #1, !dbg !2056
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !2057
  %132 = load double, double* %131, align 8, !dbg !2057
  %133 = fmul double %130, %132, !dbg !2058
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !2059
  %135 = load double, double* %134, align 8, !dbg !2059
  %136 = fadd double %133, %135, !dbg !2060
  store double %136, double* %24, align 8, !dbg !2061
  %137 = load double, double* %23, align 8, !dbg !2062
  %138 = load double, double* %13, align 8, !dbg !2063
  %139 = fadd double %138, %137, !dbg !2063
  store double %139, double* %13, align 8, !dbg !2063
  %140 = load double, double* %24, align 8, !dbg !2064
  %141 = load double, double* %14, align 8, !dbg !2065
  %142 = fadd double %141, %140, !dbg !2065
  store double %142, double* %14, align 8, !dbg !2065
  %143 = load double, double* %23, align 8, !dbg !2066
  %144 = load double, double* %13, align 8, !dbg !2068
  %145 = fdiv double %143, %144, !dbg !2069
  %146 = call double @fabs(double %145) #1, !dbg !2070
  %147 = fcmp olt double %146, 0x3CB0000000000000, !dbg !2071
  br i1 %147, label %148, label %149, !dbg !2072

; <label>:148:                                    ; preds = %116
  br label %153, !dbg !2073

; <label>:149:                                    ; preds = %116
  br label %150, !dbg !2075

; <label>:150:                                    ; preds = %149
  %151 = load i32, i32* %18, align 4, !dbg !2076
  %152 = add nsw i32 %151, 2, !dbg !2076
  store i32 %152, i32* %18, align 4, !dbg !2076
  br label %78, !dbg !2078, !llvm.loop !2079

; <label>:153:                                    ; preds = %148, %78
  store i32 2, i32* %18, align 4, !dbg !2081
  br label %154, !dbg !2083

; <label>:154:                                    ; preds = %226, %153
  %155 = load i32, i32* %18, align 4, !dbg !2084
  %156 = icmp slt i32 %155, 2000, !dbg !2087
  br i1 %156, label %157, label %229, !dbg !2088

; <label>:157:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata double* %29, metadata !2089, metadata !155), !dbg !2091
  call void @llvm.dbg.declare(metadata double* %30, metadata !2092, metadata !155), !dbg !2093
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !2094, metadata !155), !dbg !2095
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !2096, metadata !155), !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2098, metadata !155), !dbg !2099
  %158 = load i32, i32* %4, align 4, !dbg !2100
  %159 = add nsw i32 %158, 2, !dbg !2101
  %160 = load i32, i32* %18, align 4, !dbg !2102
  %161 = sitofp i32 %160 to double, !dbg !2102
  %162 = load double, double* %5, align 8, !dbg !2103
  %163 = fmul double %161, %162, !dbg !2104
  %164 = call i32 @gsl_sf_hyperg_U_int_e(i32 1, i32 %159, double %163, %struct.gsl_sf_result_struct* %31), !dbg !2105
  store i32 %164, i32* %33, align 4, !dbg !2099
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2106, metadata !155), !dbg !2107
  %165 = load i32, i32* %4, align 4, !dbg !2108
  %166 = add nsw i32 %165, 2, !dbg !2109
  %167 = load i32, i32* %18, align 4, !dbg !2110
  %168 = sub nsw i32 0, %167, !dbg !2111
  %169 = sitofp i32 %168 to double, !dbg !2111
  %170 = load double, double* %5, align 8, !dbg !2112
  %171 = fmul double %169, %170, !dbg !2113
  %172 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 1, i32 %166, double %171, %struct.gsl_sf_result_struct* %32), !dbg !2114
  store i32 %172, i32* %34, align 4, !dbg !2107
  %173 = load i32, i32* %17, align 4, !dbg !2115
  %174 = icmp ne i32 %173, 0, !dbg !2115
  br i1 %174, label %175, label %177, !dbg !2115

; <label>:175:                                    ; preds = %157
  %176 = load i32, i32* %17, align 4, !dbg !2116
  br label %192, !dbg !2116

; <label>:177:                                    ; preds = %157
  %178 = load i32, i32* %33, align 4, !dbg !2118
  %179 = icmp ne i32 %178, 0, !dbg !2118
  br i1 %179, label %180, label %182, !dbg !2118

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %33, align 4, !dbg !2120
  br label %190, !dbg !2120

; <label>:182:                                    ; preds = %177
  %183 = load i32, i32* %34, align 4, !dbg !2122
  %184 = icmp ne i32 %183, 0, !dbg !2122
  br i1 %184, label %185, label %187, !dbg !2122

; <label>:185:                                    ; preds = %182
  %186 = load i32, i32* %34, align 4, !dbg !2124
  br label %188, !dbg !2124

; <label>:187:                                    ; preds = %182
  br label %188, !dbg !2126

; <label>:188:                                    ; preds = %187, %185
  %189 = phi i32 [ %186, %185 ], [ 0, %187 ], !dbg !2128
  br label %190, !dbg !2128

; <label>:190:                                    ; preds = %188, %180
  %191 = phi i32 [ %181, %180 ], [ %189, %188 ], !dbg !2130
  br label %192, !dbg !2130

; <label>:192:                                    ; preds = %190, %175
  %193 = phi i32 [ %176, %175 ], [ %191, %190 ], !dbg !2132
  store i32 %193, i32* %17, align 4, !dbg !2134
  %194 = load i32, i32* %4, align 4, !dbg !2135
  %195 = sitofp i32 %194 to double, !dbg !2135
  %196 = fadd double %195, 1.000000e+00, !dbg !2136
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2137
  %198 = load double, double* %197, align 8, !dbg !2137
  %199 = fmul double %196, %198, !dbg !2138
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2139
  %201 = load double, double* %200, align 8, !dbg !2139
  %202 = fsub double %199, %201, !dbg !2140
  store double %202, double* %29, align 8, !dbg !2141
  %203 = load i32, i32* %4, align 4, !dbg !2142
  %204 = sitofp i32 %203 to double, !dbg !2142
  %205 = fadd double %204, 1.000000e+00, !dbg !2143
  %206 = call double @fabs(double %205) #1, !dbg !2144
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2145
  %208 = load double, double* %207, align 8, !dbg !2145
  %209 = fmul double %206, %208, !dbg !2146
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !2147
  %211 = load double, double* %210, align 8, !dbg !2147
  %212 = fadd double %209, %211, !dbg !2148
  store double %212, double* %30, align 8, !dbg !2149
  %213 = load double, double* %29, align 8, !dbg !2150
  %214 = load double, double* %11, align 8, !dbg !2151
  %215 = fsub double %214, %213, !dbg !2151
  store double %215, double* %11, align 8, !dbg !2151
  %216 = load double, double* %30, align 8, !dbg !2152
  %217 = load double, double* %12, align 8, !dbg !2153
  %218 = fadd double %217, %216, !dbg !2153
  store double %218, double* %12, align 8, !dbg !2153
  %219 = load double, double* %29, align 8, !dbg !2154
  %220 = load double, double* %11, align 8, !dbg !2156
  %221 = fdiv double %219, %220, !dbg !2157
  %222 = call double @fabs(double %221) #1, !dbg !2158
  %223 = fcmp olt double %222, 0x3CB0000000000000, !dbg !2159
  br i1 %223, label %224, label %225, !dbg !2160

; <label>:224:                                    ; preds = %192
  br label %229, !dbg !2161

; <label>:225:                                    ; preds = %192
  br label %226, !dbg !2163

; <label>:226:                                    ; preds = %225
  %227 = load i32, i32* %18, align 4, !dbg !2164
  %228 = add nsw i32 %227, 2, !dbg !2164
  store i32 %228, i32* %18, align 4, !dbg !2164
  br label %154, !dbg !2166, !llvm.loop !2167

; <label>:229:                                    ; preds = %224, %154
  %230 = load i32, i32* %18, align 4, !dbg !2169
  %231 = icmp sge i32 %230, 2000, !dbg !2170
  %232 = select i1 %231, i32 11, i32 0, !dbg !2169
  store i32 %232, i32* %15, align 4, !dbg !2171
  %233 = load double, double* %9, align 8, !dbg !2172
  %234 = load double, double* %10, align 8, !dbg !2173
  %235 = load double, double* %8, align 8, !dbg !2174
  %236 = load double, double* %11, align 8, !dbg !2175
  %237 = load double, double* %13, align 8, !dbg !2176
  %238 = fadd double %236, %237, !dbg !2177
  %239 = fmul double %235, %238, !dbg !2178
  %240 = load double, double* %8, align 8, !dbg !2179
  %241 = load double, double* %12, align 8, !dbg !2180
  %242 = load double, double* %14, align 8, !dbg !2181
  %243 = fadd double %241, %242, !dbg !2182
  %244 = fmul double %240, %243, !dbg !2183
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2184
  %246 = call i32 @gsl_sf_exp_mult_err_e(double %233, double %234, double %239, double %244, %struct.gsl_sf_result_struct* %245), !dbg !2185
  store i32 %246, i32* %16, align 4, !dbg !2186
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2187
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %247, i32 0, i32 0, !dbg !2188
  %249 = load double, double* %248, align 8, !dbg !2188
  %250 = call double @fabs(double %249) #1, !dbg !2189
  %251 = fmul double 0x3CC0000000000000, %250, !dbg !2190
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2191
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 1, !dbg !2192
  %254 = load double, double* %253, align 8, !dbg !2193
  %255 = fadd double %254, %251, !dbg !2193
  store double %255, double* %253, align 8, !dbg !2193
  %256 = load i32, i32* %16, align 4, !dbg !2194
  %257 = icmp ne i32 %256, 0, !dbg !2194
  br i1 %257, label %258, label %260, !dbg !2194

; <label>:258:                                    ; preds = %229
  %259 = load i32, i32* %16, align 4, !dbg !2195
  br label %275, !dbg !2195

; <label>:260:                                    ; preds = %229
  %261 = load i32, i32* %17, align 4, !dbg !2197
  %262 = icmp ne i32 %261, 0, !dbg !2197
  br i1 %262, label %263, label %265, !dbg !2197

; <label>:263:                                    ; preds = %260
  %264 = load i32, i32* %17, align 4, !dbg !2199
  br label %273, !dbg !2199

; <label>:265:                                    ; preds = %260
  %266 = load i32, i32* %15, align 4, !dbg !2201
  %267 = icmp ne i32 %266, 0, !dbg !2201
  br i1 %267, label %268, label %270, !dbg !2201

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* %15, align 4, !dbg !2203
  br label %271, !dbg !2203

; <label>:270:                                    ; preds = %265
  br label %271, !dbg !2205

; <label>:271:                                    ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 0, %270 ], !dbg !2207
  br label %273, !dbg !2207

; <label>:273:                                    ; preds = %271, %263
  %274 = phi i32 [ %264, %263 ], [ %272, %271 ], !dbg !2209
  br label %275, !dbg !2209

; <label>:275:                                    ; preds = %273, %258
  %276 = phi i32 [ %259, %258 ], [ %274, %273 ], !dbg !2211
  ret i32 %276, !dbg !2213
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_mhalf_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !2214 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2215, metadata !155), !dbg !2216
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2217, metadata !155), !dbg !2218
  %16 = load double, double* %4, align 8, !dbg !2219
  %17 = fcmp olt double %16, 0xC086232BDD7ABCD2, !dbg !2221
  br i1 %17, label %18, label %27, !dbg !2222

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !2223, !llvm.loop !2225

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2226
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2226
  store double 0.000000e+00, double* %21, align 8, !dbg !2226
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2226
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !2226
  store double 0x10000000000000, double* %23, align 8, !dbg !2226
  br label %24, !dbg !2226, !llvm.loop !2229

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1428, i32 15), !dbg !2231
  store i32 15, i32* %3, align 4, !dbg !2231
  br label %137, !dbg !2231
                                                  ; No predecessors!
  br label %26, !dbg !2234

; <label>:26:                                     ; preds = %25
  br label %137, !dbg !2236

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !2237
  %29 = fcmp olt double %28, -1.000000e+00, !dbg !2239
  br i1 %29, label %30, label %75, !dbg !2240

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %6, metadata !2241, metadata !155), !dbg !2243
  %31 = load double, double* %4, align 8, !dbg !2244
  %32 = call double @exp(double %31) #6, !dbg !2245
  store double %32, double* %6, align 8, !dbg !2243
  call void @llvm.dbg.declare(metadata double* %7, metadata !2246, metadata !155), !dbg !2247
  %33 = load double, double* %6, align 8, !dbg !2248
  store double %33, double* %7, align 8, !dbg !2247
  call void @llvm.dbg.declare(metadata double* %8, metadata !2249, metadata !155), !dbg !2250
  %34 = load double, double* %7, align 8, !dbg !2251
  store double %34, double* %8, align 8, !dbg !2250
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2252, metadata !155), !dbg !2253
  store i32 2, i32* %9, align 4, !dbg !2254
  br label %35, !dbg !2256

; <label>:35:                                     ; preds = %62, %30
  %36 = load i32, i32* %9, align 4, !dbg !2257
  %37 = icmp slt i32 %36, 200, !dbg !2260
  br i1 %37, label %38, label %65, !dbg !2261

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %10, metadata !2262, metadata !155), !dbg !2264
  %39 = load i32, i32* %9, align 4, !dbg !2265
  %40 = sitofp i32 %39 to double, !dbg !2265
  %41 = fsub double %40, 1.000000e+00, !dbg !2266
  %42 = load i32, i32* %9, align 4, !dbg !2267
  %43 = sitofp i32 %42 to double, !dbg !2267
  %44 = fdiv double %41, %43, !dbg !2268
  store double %44, double* %10, align 8, !dbg !2264
  %45 = load double, double* %6, align 8, !dbg !2269
  %46 = fsub double -0.000000e+00, %45, !dbg !2270
  %47 = load double, double* %10, align 8, !dbg !2271
  %48 = call double @sqrt(double %47) #6, !dbg !2272
  %49 = fmul double %46, %48, !dbg !2273
  %50 = load double, double* %7, align 8, !dbg !2274
  %51 = fmul double %50, %49, !dbg !2274
  store double %51, double* %7, align 8, !dbg !2274
  %52 = load double, double* %7, align 8, !dbg !2275
  %53 = load double, double* %8, align 8, !dbg !2276
  %54 = fadd double %53, %52, !dbg !2276
  store double %54, double* %8, align 8, !dbg !2276
  %55 = load double, double* %7, align 8, !dbg !2277
  %56 = load double, double* %8, align 8, !dbg !2279
  %57 = fdiv double %55, %56, !dbg !2280
  %58 = call double @fabs(double %57) #1, !dbg !2281
  %59 = fcmp olt double %58, 0x3CB0000000000000, !dbg !2282
  br i1 %59, label %60, label %61, !dbg !2283

; <label>:60:                                     ; preds = %38
  br label %65, !dbg !2284

; <label>:61:                                     ; preds = %38
  br label %62, !dbg !2286

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %9, align 4, !dbg !2287
  %64 = add nsw i32 %63, 1, !dbg !2287
  store i32 %64, i32* %9, align 4, !dbg !2287
  br label %35, !dbg !2289, !llvm.loop !2290

; <label>:65:                                     ; preds = %60, %35
  %66 = load double, double* %8, align 8, !dbg !2292
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2293
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2294
  store double %66, double* %68, align 8, !dbg !2295
  %69 = load double, double* %8, align 8, !dbg !2296
  %70 = call double @fabs(double %69) #1, !dbg !2297
  %71 = fmul double 2.000000e+00, %70, !dbg !2298
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !2299
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2300
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !2301
  store double %72, double* %74, align 8, !dbg !2302
  store i32 0, i32* %3, align 4, !dbg !2303
  br label %137, !dbg !2303

; <label>:75:                                     ; preds = %27
  %76 = load double, double* %4, align 8, !dbg !2304
  %77 = fcmp olt double %76, 1.000000e+00, !dbg !2306
  br i1 %77, label %78, label %82, !dbg !2307

; <label>:78:                                     ; preds = %75
  %79 = load double, double* %4, align 8, !dbg !2308
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2310
  %81 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_mhalf_a_cs, double %79, %struct.gsl_sf_result_struct* %80), !dbg !2311
  store i32 %81, i32* %3, align 4, !dbg !2312
  br label %137, !dbg !2312

; <label>:82:                                     ; preds = %75
  %83 = load double, double* %4, align 8, !dbg !2313
  %84 = fcmp olt double %83, 4.000000e+00, !dbg !2315
  br i1 %84, label %85, label %93, !dbg !2316

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata double* %11, metadata !2317, metadata !155), !dbg !2319
  %86 = load double, double* %4, align 8, !dbg !2320
  %87 = fsub double %86, 1.000000e+00, !dbg !2321
  %88 = fmul double 0x3FE5555555555555, %87, !dbg !2322
  %89 = fsub double %88, 1.000000e+00, !dbg !2323
  store double %89, double* %11, align 8, !dbg !2319
  %90 = load double, double* %11, align 8, !dbg !2324
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2325
  %92 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_mhalf_b_cs, double %90, %struct.gsl_sf_result_struct* %91), !dbg !2326
  store i32 %92, i32* %3, align 4, !dbg !2327
  br label %137, !dbg !2327

; <label>:93:                                     ; preds = %82
  %94 = load double, double* %4, align 8, !dbg !2328
  %95 = fcmp olt double %94, 1.000000e+01, !dbg !2330
  br i1 %95, label %96, label %104, !dbg !2331

; <label>:96:                                     ; preds = %93
  call void @llvm.dbg.declare(metadata double* %12, metadata !2332, metadata !155), !dbg !2334
  %97 = load double, double* %4, align 8, !dbg !2335
  %98 = fsub double %97, 4.000000e+00, !dbg !2336
  %99 = fmul double 0x3FD5555555555555, %98, !dbg !2337
  %100 = fsub double %99, 1.000000e+00, !dbg !2338
  store double %100, double* %12, align 8, !dbg !2334
  %101 = load double, double* %12, align 8, !dbg !2339
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2340
  %103 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_mhalf_c_cs, double %101, %struct.gsl_sf_result_struct* %102), !dbg !2341
  store i32 %103, i32* %3, align 4, !dbg !2342
  br label %137, !dbg !2342

; <label>:104:                                    ; preds = %93
  %105 = load double, double* %4, align 8, !dbg !2343
  %106 = fcmp olt double %105, 3.000000e+01, !dbg !2345
  br i1 %106, label %107, label %133, !dbg !2346

; <label>:107:                                    ; preds = %104
  call void @llvm.dbg.declare(metadata double* %13, metadata !2347, metadata !155), !dbg !2349
  %108 = load double, double* %4, align 8, !dbg !2350
  %109 = call double @sqrt(double %108) #6, !dbg !2351
  store double %109, double* %13, align 8, !dbg !2349
  call void @llvm.dbg.declare(metadata double* %14, metadata !2352, metadata !155), !dbg !2353
  %110 = load double, double* %4, align 8, !dbg !2354
  %111 = fmul double 1.000000e-01, %110, !dbg !2355
  %112 = fsub double %111, 2.000000e+00, !dbg !2356
  store double %112, double* %14, align 8, !dbg !2353
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2357, metadata !155), !dbg !2358
  %113 = load double, double* %14, align 8, !dbg !2359
  %114 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_mhalf_d_cs, double %113, %struct.gsl_sf_result_struct* %15), !dbg !2360
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2361
  %116 = load double, double* %115, align 8, !dbg !2361
  %117 = load double, double* %13, align 8, !dbg !2362
  %118 = fmul double %116, %117, !dbg !2363
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2364
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !2365
  store double %118, double* %120, align 8, !dbg !2366
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2367
  %122 = load double, double* %121, align 8, !dbg !2367
  %123 = load double, double* %13, align 8, !dbg !2368
  %124 = fmul double %122, %123, !dbg !2369
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2370
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !2371
  %127 = load double, double* %126, align 8, !dbg !2371
  %128 = call double @fabs(double %127) #1, !dbg !2372
  %129 = fmul double 0x3CA0000000000000, %128, !dbg !2373
  %130 = fadd double %124, %129, !dbg !2374
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2375
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !2376
  store double %130, double* %132, align 8, !dbg !2377
  store i32 0, i32* %3, align 4, !dbg !2378
  br label %137, !dbg !2378

; <label>:133:                                    ; preds = %104
  %134 = load double, double* %4, align 8, !dbg !2379
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2381
  %136 = call i32 @fd_asymp(double -5.000000e-01, double %134, %struct.gsl_sf_result_struct* %135), !dbg !2382
  store i32 %136, i32* %3, align 4, !dbg !2383
  br label %137, !dbg !2383

; <label>:137:                                    ; preds = %24, %65, %78, %85, %96, %107, %133, %26
  %138 = load i32, i32* %3, align 4, !dbg !2384
  ret i32 %138, !dbg !2384
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_half_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !2385 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2386, metadata !155), !dbg !2387
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2388, metadata !155), !dbg !2389
  %16 = load double, double* %4, align 8, !dbg !2390
  %17 = fcmp olt double %16, 0xC086232BDD7ABCD2, !dbg !2392
  br i1 %17, label %18, label %27, !dbg !2393

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !2394, !llvm.loop !2396

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2397
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2397
  store double 0.000000e+00, double* %21, align 8, !dbg !2397
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2397
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !2397
  store double 0x10000000000000, double* %23, align 8, !dbg !2397
  br label %24, !dbg !2397, !llvm.loop !2400

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1476, i32 15), !dbg !2402
  store i32 15, i32* %3, align 4, !dbg !2402
  br label %141, !dbg !2402
                                                  ; No predecessors!
  br label %26, !dbg !2405

; <label>:26:                                     ; preds = %25
  br label %141, !dbg !2407

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !2408
  %29 = fcmp olt double %28, -1.000000e+00, !dbg !2410
  br i1 %29, label %30, label %77, !dbg !2411

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %6, metadata !2412, metadata !155), !dbg !2414
  %31 = load double, double* %4, align 8, !dbg !2415
  %32 = call double @exp(double %31) #6, !dbg !2416
  store double %32, double* %6, align 8, !dbg !2414
  call void @llvm.dbg.declare(metadata double* %7, metadata !2417, metadata !155), !dbg !2418
  %33 = load double, double* %6, align 8, !dbg !2419
  store double %33, double* %7, align 8, !dbg !2418
  call void @llvm.dbg.declare(metadata double* %8, metadata !2420, metadata !155), !dbg !2421
  %34 = load double, double* %7, align 8, !dbg !2422
  store double %34, double* %8, align 8, !dbg !2421
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2423, metadata !155), !dbg !2424
  store i32 2, i32* %9, align 4, !dbg !2425
  br label %35, !dbg !2427

; <label>:35:                                     ; preds = %64, %30
  %36 = load i32, i32* %9, align 4, !dbg !2428
  %37 = icmp slt i32 %36, 100, !dbg !2431
  br i1 %37, label %38, label %67, !dbg !2432

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %10, metadata !2433, metadata !155), !dbg !2435
  %39 = load i32, i32* %9, align 4, !dbg !2436
  %40 = sitofp i32 %39 to double, !dbg !2436
  %41 = fsub double %40, 1.000000e+00, !dbg !2437
  %42 = load i32, i32* %9, align 4, !dbg !2438
  %43 = sitofp i32 %42 to double, !dbg !2438
  %44 = fdiv double %41, %43, !dbg !2439
  store double %44, double* %10, align 8, !dbg !2435
  %45 = load double, double* %6, align 8, !dbg !2440
  %46 = fsub double -0.000000e+00, %45, !dbg !2441
  %47 = load double, double* %10, align 8, !dbg !2442
  %48 = fmul double %46, %47, !dbg !2443
  %49 = load double, double* %10, align 8, !dbg !2444
  %50 = call double @sqrt(double %49) #6, !dbg !2445
  %51 = fmul double %48, %50, !dbg !2446
  %52 = load double, double* %7, align 8, !dbg !2447
  %53 = fmul double %52, %51, !dbg !2447
  store double %53, double* %7, align 8, !dbg !2447
  %54 = load double, double* %7, align 8, !dbg !2448
  %55 = load double, double* %8, align 8, !dbg !2449
  %56 = fadd double %55, %54, !dbg !2449
  store double %56, double* %8, align 8, !dbg !2449
  %57 = load double, double* %7, align 8, !dbg !2450
  %58 = load double, double* %8, align 8, !dbg !2452
  %59 = fdiv double %57, %58, !dbg !2453
  %60 = call double @fabs(double %59) #1, !dbg !2454
  %61 = fcmp olt double %60, 0x3CB0000000000000, !dbg !2455
  br i1 %61, label %62, label %63, !dbg !2456

; <label>:62:                                     ; preds = %38
  br label %67, !dbg !2457

; <label>:63:                                     ; preds = %38
  br label %64, !dbg !2459

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %9, align 4, !dbg !2460
  %66 = add nsw i32 %65, 1, !dbg !2460
  store i32 %66, i32* %9, align 4, !dbg !2460
  br label %35, !dbg !2462, !llvm.loop !2463

; <label>:67:                                     ; preds = %62, %35
  %68 = load double, double* %8, align 8, !dbg !2465
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2466
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !2467
  store double %68, double* %70, align 8, !dbg !2468
  %71 = load double, double* %8, align 8, !dbg !2469
  %72 = call double @fabs(double %71) #1, !dbg !2470
  %73 = fmul double 2.000000e+00, %72, !dbg !2471
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !2472
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2473
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !2474
  store double %74, double* %76, align 8, !dbg !2475
  store i32 0, i32* %3, align 4, !dbg !2476
  br label %141, !dbg !2476

; <label>:77:                                     ; preds = %27
  %78 = load double, double* %4, align 8, !dbg !2477
  %79 = fcmp olt double %78, 1.000000e+00, !dbg !2479
  br i1 %79, label %80, label %84, !dbg !2480

; <label>:80:                                     ; preds = %77
  %81 = load double, double* %4, align 8, !dbg !2481
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2483
  %83 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_half_a_cs, double %81, %struct.gsl_sf_result_struct* %82), !dbg !2484
  store i32 %83, i32* %3, align 4, !dbg !2485
  br label %141, !dbg !2485

; <label>:84:                                     ; preds = %77
  %85 = load double, double* %4, align 8, !dbg !2486
  %86 = fcmp olt double %85, 4.000000e+00, !dbg !2488
  br i1 %86, label %87, label %95, !dbg !2489

; <label>:87:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata double* %11, metadata !2490, metadata !155), !dbg !2492
  %88 = load double, double* %4, align 8, !dbg !2493
  %89 = fsub double %88, 1.000000e+00, !dbg !2494
  %90 = fmul double 0x3FE5555555555555, %89, !dbg !2495
  %91 = fsub double %90, 1.000000e+00, !dbg !2496
  store double %91, double* %11, align 8, !dbg !2492
  %92 = load double, double* %11, align 8, !dbg !2497
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2498
  %94 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_half_b_cs, double %92, %struct.gsl_sf_result_struct* %93), !dbg !2499
  store i32 %94, i32* %3, align 4, !dbg !2500
  br label %141, !dbg !2500

; <label>:95:                                     ; preds = %84
  %96 = load double, double* %4, align 8, !dbg !2501
  %97 = fcmp olt double %96, 1.000000e+01, !dbg !2503
  br i1 %97, label %98, label %106, !dbg !2504

; <label>:98:                                     ; preds = %95
  call void @llvm.dbg.declare(metadata double* %12, metadata !2505, metadata !155), !dbg !2507
  %99 = load double, double* %4, align 8, !dbg !2508
  %100 = fsub double %99, 4.000000e+00, !dbg !2509
  %101 = fmul double 0x3FD5555555555555, %100, !dbg !2510
  %102 = fsub double %101, 1.000000e+00, !dbg !2511
  store double %102, double* %12, align 8, !dbg !2507
  %103 = load double, double* %12, align 8, !dbg !2512
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2513
  %105 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_half_c_cs, double %103, %struct.gsl_sf_result_struct* %104), !dbg !2514
  store i32 %105, i32* %3, align 4, !dbg !2515
  br label %141, !dbg !2515

; <label>:106:                                    ; preds = %95
  %107 = load double, double* %4, align 8, !dbg !2516
  %108 = fcmp olt double %107, 3.000000e+01, !dbg !2518
  br i1 %108, label %109, label %137, !dbg !2519

; <label>:109:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata double* %13, metadata !2520, metadata !155), !dbg !2522
  %110 = load double, double* %4, align 8, !dbg !2523
  %111 = load double, double* %4, align 8, !dbg !2524
  %112 = call double @sqrt(double %111) #6, !dbg !2525
  %113 = fmul double %110, %112, !dbg !2526
  store double %113, double* %13, align 8, !dbg !2522
  call void @llvm.dbg.declare(metadata double* %14, metadata !2527, metadata !155), !dbg !2528
  %114 = load double, double* %4, align 8, !dbg !2529
  %115 = fmul double 1.000000e-01, %114, !dbg !2530
  %116 = fsub double %115, 2.000000e+00, !dbg !2531
  store double %116, double* %14, align 8, !dbg !2528
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2532, metadata !155), !dbg !2533
  %117 = load double, double* %14, align 8, !dbg !2534
  %118 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_half_d_cs, double %117, %struct.gsl_sf_result_struct* %15), !dbg !2535
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2536
  %120 = load double, double* %119, align 8, !dbg !2536
  %121 = load double, double* %13, align 8, !dbg !2537
  %122 = fmul double %120, %121, !dbg !2538
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2539
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !2540
  store double %122, double* %124, align 8, !dbg !2541
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2542
  %126 = load double, double* %125, align 8, !dbg !2542
  %127 = load double, double* %13, align 8, !dbg !2543
  %128 = fmul double %126, %127, !dbg !2544
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2545
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !2546
  %131 = load double, double* %130, align 8, !dbg !2546
  %132 = call double @fabs(double %131) #1, !dbg !2547
  %133 = fmul double 0x3CB8000000000000, %132, !dbg !2548
  %134 = fadd double %128, %133, !dbg !2549
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2550
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !2551
  store double %134, double* %136, align 8, !dbg !2552
  store i32 0, i32* %3, align 4, !dbg !2553
  br label %141, !dbg !2553

; <label>:137:                                    ; preds = %106
  %138 = load double, double* %4, align 8, !dbg !2554
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2556
  %140 = call i32 @fd_asymp(double 5.000000e-01, double %138, %struct.gsl_sf_result_struct* %139), !dbg !2557
  store i32 %140, i32* %3, align 4, !dbg !2558
  br label %141, !dbg !2558

; <label>:141:                                    ; preds = %24, %67, %80, %87, %98, %109, %137, %26
  %142 = load i32, i32* %3, align 4, !dbg !2559
  ret i32 %142, !dbg !2559
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_3half_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !2560 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2561, metadata !155), !dbg !2562
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2563, metadata !155), !dbg !2564
  %16 = load double, double* %4, align 8, !dbg !2565
  %17 = fcmp olt double %16, 0xC086232BDD7ABCD2, !dbg !2567
  br i1 %17, label %18, label %27, !dbg !2568

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !2569, !llvm.loop !2571

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2572
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2572
  store double 0.000000e+00, double* %21, align 8, !dbg !2572
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2572
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !2572
  store double 0x10000000000000, double* %23, align 8, !dbg !2572
  br label %24, !dbg !2572, !llvm.loop !2575

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1524, i32 15), !dbg !2577
  store i32 15, i32* %3, align 4, !dbg !2577
  br label %145, !dbg !2577
                                                  ; No predecessors!
  br label %26, !dbg !2580

; <label>:26:                                     ; preds = %25
  br label %145, !dbg !2582

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !2583
  %29 = fcmp olt double %28, -1.000000e+00, !dbg !2585
  br i1 %29, label %30, label %79, !dbg !2586

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %6, metadata !2587, metadata !155), !dbg !2589
  %31 = load double, double* %4, align 8, !dbg !2590
  %32 = call double @exp(double %31) #6, !dbg !2591
  store double %32, double* %6, align 8, !dbg !2589
  call void @llvm.dbg.declare(metadata double* %7, metadata !2592, metadata !155), !dbg !2593
  %33 = load double, double* %6, align 8, !dbg !2594
  store double %33, double* %7, align 8, !dbg !2593
  call void @llvm.dbg.declare(metadata double* %8, metadata !2595, metadata !155), !dbg !2596
  %34 = load double, double* %7, align 8, !dbg !2597
  store double %34, double* %8, align 8, !dbg !2596
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2598, metadata !155), !dbg !2599
  store i32 2, i32* %9, align 4, !dbg !2600
  br label %35, !dbg !2602

; <label>:35:                                     ; preds = %66, %30
  %36 = load i32, i32* %9, align 4, !dbg !2603
  %37 = icmp slt i32 %36, 100, !dbg !2606
  br i1 %37, label %38, label %69, !dbg !2607

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %10, metadata !2608, metadata !155), !dbg !2610
  %39 = load i32, i32* %9, align 4, !dbg !2611
  %40 = sitofp i32 %39 to double, !dbg !2611
  %41 = fsub double %40, 1.000000e+00, !dbg !2612
  %42 = load i32, i32* %9, align 4, !dbg !2613
  %43 = sitofp i32 %42 to double, !dbg !2613
  %44 = fdiv double %41, %43, !dbg !2614
  store double %44, double* %10, align 8, !dbg !2610
  %45 = load double, double* %6, align 8, !dbg !2615
  %46 = fsub double -0.000000e+00, %45, !dbg !2616
  %47 = load double, double* %10, align 8, !dbg !2617
  %48 = fmul double %46, %47, !dbg !2618
  %49 = load double, double* %10, align 8, !dbg !2619
  %50 = fmul double %48, %49, !dbg !2620
  %51 = load double, double* %10, align 8, !dbg !2621
  %52 = call double @sqrt(double %51) #6, !dbg !2622
  %53 = fmul double %50, %52, !dbg !2623
  %54 = load double, double* %7, align 8, !dbg !2624
  %55 = fmul double %54, %53, !dbg !2624
  store double %55, double* %7, align 8, !dbg !2624
  %56 = load double, double* %7, align 8, !dbg !2625
  %57 = load double, double* %8, align 8, !dbg !2626
  %58 = fadd double %57, %56, !dbg !2626
  store double %58, double* %8, align 8, !dbg !2626
  %59 = load double, double* %7, align 8, !dbg !2627
  %60 = load double, double* %8, align 8, !dbg !2629
  %61 = fdiv double %59, %60, !dbg !2630
  %62 = call double @fabs(double %61) #1, !dbg !2631
  %63 = fcmp olt double %62, 0x3CB0000000000000, !dbg !2632
  br i1 %63, label %64, label %65, !dbg !2633

; <label>:64:                                     ; preds = %38
  br label %69, !dbg !2634

; <label>:65:                                     ; preds = %38
  br label %66, !dbg !2636

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %9, align 4, !dbg !2637
  %68 = add nsw i32 %67, 1, !dbg !2637
  store i32 %68, i32* %9, align 4, !dbg !2637
  br label %35, !dbg !2639, !llvm.loop !2640

; <label>:69:                                     ; preds = %64, %35
  %70 = load double, double* %8, align 8, !dbg !2642
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2643
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2644
  store double %70, double* %72, align 8, !dbg !2645
  %73 = load double, double* %8, align 8, !dbg !2646
  %74 = call double @fabs(double %73) #1, !dbg !2647
  %75 = fmul double 2.000000e+00, %74, !dbg !2648
  %76 = fmul double %75, 0x3CB0000000000000, !dbg !2649
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2650
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !2651
  store double %76, double* %78, align 8, !dbg !2652
  store i32 0, i32* %3, align 4, !dbg !2653
  br label %145, !dbg !2653

; <label>:79:                                     ; preds = %27
  %80 = load double, double* %4, align 8, !dbg !2654
  %81 = fcmp olt double %80, 1.000000e+00, !dbg !2656
  br i1 %81, label %82, label %86, !dbg !2657

; <label>:82:                                     ; preds = %79
  %83 = load double, double* %4, align 8, !dbg !2658
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2660
  %85 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_3half_a_cs, double %83, %struct.gsl_sf_result_struct* %84), !dbg !2661
  store i32 %85, i32* %3, align 4, !dbg !2662
  br label %145, !dbg !2662

; <label>:86:                                     ; preds = %79
  %87 = load double, double* %4, align 8, !dbg !2663
  %88 = fcmp olt double %87, 4.000000e+00, !dbg !2665
  br i1 %88, label %89, label %97, !dbg !2666

; <label>:89:                                     ; preds = %86
  call void @llvm.dbg.declare(metadata double* %11, metadata !2667, metadata !155), !dbg !2669
  %90 = load double, double* %4, align 8, !dbg !2670
  %91 = fsub double %90, 1.000000e+00, !dbg !2671
  %92 = fmul double 0x3FE5555555555555, %91, !dbg !2672
  %93 = fsub double %92, 1.000000e+00, !dbg !2673
  store double %93, double* %11, align 8, !dbg !2669
  %94 = load double, double* %11, align 8, !dbg !2674
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2675
  %96 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_3half_b_cs, double %94, %struct.gsl_sf_result_struct* %95), !dbg !2676
  store i32 %96, i32* %3, align 4, !dbg !2677
  br label %145, !dbg !2677

; <label>:97:                                     ; preds = %86
  %98 = load double, double* %4, align 8, !dbg !2678
  %99 = fcmp olt double %98, 1.000000e+01, !dbg !2680
  br i1 %99, label %100, label %108, !dbg !2681

; <label>:100:                                    ; preds = %97
  call void @llvm.dbg.declare(metadata double* %12, metadata !2682, metadata !155), !dbg !2684
  %101 = load double, double* %4, align 8, !dbg !2685
  %102 = fsub double %101, 4.000000e+00, !dbg !2686
  %103 = fmul double 0x3FD5555555555555, %102, !dbg !2687
  %104 = fsub double %103, 1.000000e+00, !dbg !2688
  store double %104, double* %12, align 8, !dbg !2684
  %105 = load double, double* %12, align 8, !dbg !2689
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2690
  %107 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_3half_c_cs, double %105, %struct.gsl_sf_result_struct* %106), !dbg !2691
  store i32 %107, i32* %3, align 4, !dbg !2692
  br label %145, !dbg !2692

; <label>:108:                                    ; preds = %97
  %109 = load double, double* %4, align 8, !dbg !2693
  %110 = fcmp olt double %109, 3.000000e+01, !dbg !2695
  br i1 %110, label %111, label %141, !dbg !2696

; <label>:111:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata double* %13, metadata !2697, metadata !155), !dbg !2699
  %112 = load double, double* %4, align 8, !dbg !2700
  %113 = load double, double* %4, align 8, !dbg !2701
  %114 = fmul double %112, %113, !dbg !2702
  %115 = load double, double* %4, align 8, !dbg !2703
  %116 = call double @sqrt(double %115) #6, !dbg !2704
  %117 = fmul double %114, %116, !dbg !2705
  store double %117, double* %13, align 8, !dbg !2699
  call void @llvm.dbg.declare(metadata double* %14, metadata !2706, metadata !155), !dbg !2707
  %118 = load double, double* %4, align 8, !dbg !2708
  %119 = fmul double 1.000000e-01, %118, !dbg !2709
  %120 = fsub double %119, 2.000000e+00, !dbg !2710
  store double %120, double* %14, align 8, !dbg !2707
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2711, metadata !155), !dbg !2712
  %121 = load double, double* %14, align 8, !dbg !2713
  %122 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @fd_3half_d_cs, double %121, %struct.gsl_sf_result_struct* %15), !dbg !2714
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2715
  %124 = load double, double* %123, align 8, !dbg !2715
  %125 = load double, double* %13, align 8, !dbg !2716
  %126 = fmul double %124, %125, !dbg !2717
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2718
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !2719
  store double %126, double* %128, align 8, !dbg !2720
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2721
  %130 = load double, double* %129, align 8, !dbg !2721
  %131 = load double, double* %13, align 8, !dbg !2722
  %132 = fmul double %130, %131, !dbg !2723
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2724
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !2725
  %135 = load double, double* %134, align 8, !dbg !2725
  %136 = call double @fabs(double %135) #1, !dbg !2726
  %137 = fmul double 0x3CC4000000000000, %136, !dbg !2727
  %138 = fadd double %132, %137, !dbg !2728
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2729
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !2730
  store double %138, double* %140, align 8, !dbg !2731
  store i32 0, i32* %3, align 4, !dbg !2732
  br label %145, !dbg !2732

; <label>:141:                                    ; preds = %108
  %142 = load double, double* %4, align 8, !dbg !2733
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2735
  %144 = call i32 @fd_asymp(double 1.500000e+00, double %142, %struct.gsl_sf_result_struct* %143), !dbg !2736
  store i32 %144, i32* %3, align 4, !dbg !2737
  br label %145, !dbg !2737

; <label>:145:                                    ; preds = %24, %69, %82, %89, %100, %111, %141, %26
  %146 = load i32, i32* %3, align 4, !dbg !2738
  ret i32 %146, !dbg !2738
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fermi_dirac_inc_0_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2739 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2740, metadata !155), !dbg !2741
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2742, metadata !155), !dbg !2743
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2744, metadata !155), !dbg !2745
  %11 = load double, double* %6, align 8, !dbg !2746
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !2748
  br i1 %12, label %13, label %22, !dbg !2749

; <label>:13:                                     ; preds = %3
  br label %14, !dbg !2750, !llvm.loop !2752

; <label>:14:                                     ; preds = %13
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2753
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2753
  store double 0x7FF8000000000000, double* %16, align 8, !dbg !2753
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2753
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !2753
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !2753
  br label %19, !dbg !2753, !llvm.loop !2756

; <label>:19:                                     ; preds = %14
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1572, i32 1), !dbg !2758
  store i32 1, i32* %4, align 4, !dbg !2758
  br label %46, !dbg !2758
                                                  ; No predecessors!
  br label %21, !dbg !2761

; <label>:21:                                     ; preds = %20
  br label %46, !dbg !2763

; <label>:22:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !2764, metadata !155), !dbg !2766
  %23 = load double, double* %6, align 8, !dbg !2767
  %24 = load double, double* %5, align 8, !dbg !2768
  %25 = fsub double %23, %24, !dbg !2769
  store double %25, double* %8, align 8, !dbg !2766
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2770, metadata !155), !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2772, metadata !155), !dbg !2773
  %26 = load double, double* %8, align 8, !dbg !2774
  %27 = call i32 @gsl_sf_fermi_dirac_0_e(double %26, %struct.gsl_sf_result_struct* %9), !dbg !2775
  store i32 %27, i32* %10, align 4, !dbg !2773
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2776
  %29 = load double, double* %28, align 8, !dbg !2776
  %30 = load double, double* %8, align 8, !dbg !2777
  %31 = fsub double %29, %30, !dbg !2778
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2779
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2780
  store double %31, double* %33, align 8, !dbg !2781
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2782
  %35 = load double, double* %34, align 8, !dbg !2782
  %36 = load double, double* %5, align 8, !dbg !2783
  %37 = call double @fabs(double %36) #1, !dbg !2784
  %38 = load double, double* %6, align 8, !dbg !2785
  %39 = call double @fabs(double %38) #1, !dbg !2786
  %40 = fadd double %37, %39, !dbg !2788
  %41 = fmul double 0x3CB0000000000000, %40, !dbg !2789
  %42 = fadd double %35, %41, !dbg !2790
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2791
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !2792
  store double %42, double* %44, align 8, !dbg !2793
  %45 = load i32, i32* %10, align 4, !dbg !2794
  store i32 %45, i32* %4, align 4, !dbg !2795
  br label %46, !dbg !2795

; <label>:46:                                     ; preds = %19, %22, %21
  %47 = load i32, i32* %4, align 4, !dbg !2796
  ret i32 %47, !dbg !2796
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_m1(double) #0 !dbg !2797 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2800, metadata !155), !dbg !2801
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2802, metadata !155), !dbg !2803
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2804, metadata !155), !dbg !2803
  %6 = load double, double* %3, align 8, !dbg !2803
  %7 = call i32 @gsl_sf_fermi_dirac_m1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2803
  store i32 %7, i32* %5, align 4, !dbg !2803
  %8 = load i32, i32* %5, align 4, !dbg !2805
  %9 = icmp ne i32 %8, 0, !dbg !2805
  br i1 %9, label %10, label %16, !dbg !2803

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2807, !llvm.loop !2810

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2812
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1592, i32 %12), !dbg !2812
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2812
  %14 = load double, double* %13, align 8, !dbg !2812
  store double %14, double* %2, align 8, !dbg !2812
  br label %19, !dbg !2812
                                                  ; No predecessors!
  br label %16, !dbg !2815

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2817
  %18 = load double, double* %17, align 8, !dbg !2817
  store double %18, double* %2, align 8, !dbg !2817
  br label %19, !dbg !2817

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2819
  ret double %20, !dbg !2819
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_0(double) #0 !dbg !2820 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2821, metadata !155), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2823, metadata !155), !dbg !2824
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2825, metadata !155), !dbg !2824
  %6 = load double, double* %3, align 8, !dbg !2824
  %7 = call i32 @gsl_sf_fermi_dirac_0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2824
  store i32 %7, i32* %5, align 4, !dbg !2824
  %8 = load i32, i32* %5, align 4, !dbg !2826
  %9 = icmp ne i32 %8, 0, !dbg !2826
  br i1 %9, label %10, label %16, !dbg !2824

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2828, !llvm.loop !2831

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2833
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1597, i32 %12), !dbg !2833
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2833
  %14 = load double, double* %13, align 8, !dbg !2833
  store double %14, double* %2, align 8, !dbg !2833
  br label %19, !dbg !2833
                                                  ; No predecessors!
  br label %16, !dbg !2836

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2838
  %18 = load double, double* %17, align 8, !dbg !2838
  store double %18, double* %2, align 8, !dbg !2838
  br label %19, !dbg !2838

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2840
  ret double %20, !dbg !2840
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_1(double) #0 !dbg !2841 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2842, metadata !155), !dbg !2843
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2844, metadata !155), !dbg !2845
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2846, metadata !155), !dbg !2845
  %6 = load double, double* %3, align 8, !dbg !2845
  %7 = call i32 @gsl_sf_fermi_dirac_1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2845
  store i32 %7, i32* %5, align 4, !dbg !2845
  %8 = load i32, i32* %5, align 4, !dbg !2847
  %9 = icmp ne i32 %8, 0, !dbg !2847
  br i1 %9, label %10, label %16, !dbg !2845

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2849, !llvm.loop !2852

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2854
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1602, i32 %12), !dbg !2854
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2854
  %14 = load double, double* %13, align 8, !dbg !2854
  store double %14, double* %2, align 8, !dbg !2854
  br label %19, !dbg !2854
                                                  ; No predecessors!
  br label %16, !dbg !2857

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2859
  %18 = load double, double* %17, align 8, !dbg !2859
  store double %18, double* %2, align 8, !dbg !2859
  br label %19, !dbg !2859

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2861
  ret double %20, !dbg !2861
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_2(double) #0 !dbg !2862 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2863, metadata !155), !dbg !2864
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2865, metadata !155), !dbg !2866
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2867, metadata !155), !dbg !2866
  %6 = load double, double* %3, align 8, !dbg !2866
  %7 = call i32 @gsl_sf_fermi_dirac_2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2866
  store i32 %7, i32* %5, align 4, !dbg !2866
  %8 = load i32, i32* %5, align 4, !dbg !2868
  %9 = icmp ne i32 %8, 0, !dbg !2868
  br i1 %9, label %10, label %16, !dbg !2866

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2870, !llvm.loop !2873

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2875
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1607, i32 %12), !dbg !2875
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2875
  %14 = load double, double* %13, align 8, !dbg !2875
  store double %14, double* %2, align 8, !dbg !2875
  br label %19, !dbg !2875
                                                  ; No predecessors!
  br label %16, !dbg !2878

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2880
  %18 = load double, double* %17, align 8, !dbg !2880
  store double %18, double* %2, align 8, !dbg !2880
  br label %19, !dbg !2880

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2882
  ret double %20, !dbg !2882
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_int(i32, double) #0 !dbg !2883 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2886, metadata !155), !dbg !2887
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2888, metadata !155), !dbg !2889
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2890, metadata !155), !dbg !2891
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2892, metadata !155), !dbg !2891
  %8 = load i32, i32* %4, align 4, !dbg !2891
  %9 = load double, double* %5, align 8, !dbg !2891
  %10 = call i32 @gsl_sf_fermi_dirac_int_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2891
  store i32 %10, i32* %7, align 4, !dbg !2891
  %11 = load i32, i32* %7, align 4, !dbg !2893
  %12 = icmp ne i32 %11, 0, !dbg !2893
  br i1 %12, label %13, label %19, !dbg !2891

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2895, !llvm.loop !2898

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2900
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1612, i32 %15), !dbg !2900
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2900
  %17 = load double, double* %16, align 8, !dbg !2900
  store double %17, double* %3, align 8, !dbg !2900
  br label %22, !dbg !2900
                                                  ; No predecessors!
  br label %19, !dbg !2903

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2905
  %21 = load double, double* %20, align 8, !dbg !2905
  store double %21, double* %3, align 8, !dbg !2905
  br label %22, !dbg !2905

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2907
  ret double %23, !dbg !2907
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_mhalf(double) #0 !dbg !2908 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2909, metadata !155), !dbg !2910
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2911, metadata !155), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2913, metadata !155), !dbg !2912
  %6 = load double, double* %3, align 8, !dbg !2912
  %7 = call i32 @gsl_sf_fermi_dirac_mhalf_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2912
  store i32 %7, i32* %5, align 4, !dbg !2912
  %8 = load i32, i32* %5, align 4, !dbg !2914
  %9 = icmp ne i32 %8, 0, !dbg !2914
  br i1 %9, label %10, label %16, !dbg !2912

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2916, !llvm.loop !2919

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2921
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1617, i32 %12), !dbg !2921
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2921
  %14 = load double, double* %13, align 8, !dbg !2921
  store double %14, double* %2, align 8, !dbg !2921
  br label %19, !dbg !2921
                                                  ; No predecessors!
  br label %16, !dbg !2924

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2926
  %18 = load double, double* %17, align 8, !dbg !2926
  store double %18, double* %2, align 8, !dbg !2926
  br label %19, !dbg !2926

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2928
  ret double %20, !dbg !2928
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_half(double) #0 !dbg !2929 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2930, metadata !155), !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2932, metadata !155), !dbg !2933
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2934, metadata !155), !dbg !2933
  %6 = load double, double* %3, align 8, !dbg !2933
  %7 = call i32 @gsl_sf_fermi_dirac_half_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2933
  store i32 %7, i32* %5, align 4, !dbg !2933
  %8 = load i32, i32* %5, align 4, !dbg !2935
  %9 = icmp ne i32 %8, 0, !dbg !2935
  br i1 %9, label %10, label %16, !dbg !2933

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2937, !llvm.loop !2940

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2942
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1622, i32 %12), !dbg !2942
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2942
  %14 = load double, double* %13, align 8, !dbg !2942
  store double %14, double* %2, align 8, !dbg !2942
  br label %19, !dbg !2942
                                                  ; No predecessors!
  br label %16, !dbg !2945

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2947
  %18 = load double, double* %17, align 8, !dbg !2947
  store double %18, double* %2, align 8, !dbg !2947
  br label %19, !dbg !2947

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2949
  ret double %20, !dbg !2949
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_3half(double) #0 !dbg !2950 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2951, metadata !155), !dbg !2952
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2953, metadata !155), !dbg !2954
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2955, metadata !155), !dbg !2954
  %6 = load double, double* %3, align 8, !dbg !2954
  %7 = call i32 @gsl_sf_fermi_dirac_3half_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2954
  store i32 %7, i32* %5, align 4, !dbg !2954
  %8 = load i32, i32* %5, align 4, !dbg !2956
  %9 = icmp ne i32 %8, 0, !dbg !2956
  br i1 %9, label %10, label %16, !dbg !2954

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2958, !llvm.loop !2961

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2963
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1627, i32 %12), !dbg !2963
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2963
  %14 = load double, double* %13, align 8, !dbg !2963
  store double %14, double* %2, align 8, !dbg !2963
  br label %19, !dbg !2963
                                                  ; No predecessors!
  br label %16, !dbg !2966

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2968
  %18 = load double, double* %17, align 8, !dbg !2968
  store double %18, double* %2, align 8, !dbg !2968
  br label %19, !dbg !2968

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2970
  ret double %20, !dbg !2970
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fermi_dirac_inc_0(double, double) #0 !dbg !2971 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2974, metadata !155), !dbg !2975
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2976, metadata !155), !dbg !2977
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2978, metadata !155), !dbg !2979
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2980, metadata !155), !dbg !2979
  %8 = load double, double* %4, align 8, !dbg !2979
  %9 = load double, double* %5, align 8, !dbg !2979
  %10 = call i32 @gsl_sf_fermi_dirac_inc_0_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2979
  store i32 %10, i32* %7, align 4, !dbg !2979
  %11 = load i32, i32* %7, align 4, !dbg !2981
  %12 = icmp ne i32 %11, 0, !dbg !2981
  br i1 %12, label %13, label %19, !dbg !2979

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2983, !llvm.loop !2986

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2988
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1632, i32 %15), !dbg !2988
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2988
  %17 = load double, double* %16, align 8, !dbg !2988
  store double %17, double* %3, align 8, !dbg !2988
  br label %22, !dbg !2988
                                                  ; No predecessors!
  br label %19, !dbg !2991

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2993
  %21 = load double, double* %20, align 8, !dbg !2993
  store double %21, double* %3, align 8, !dbg !2993
  br label %22, !dbg !2993

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2995
  ret double %23, !dbg !2995
}

declare double @gsl_sf_pow_int(double, i32) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @fd_whiz(double, i32, double*, double*, double*, double*) #0 !dbg !2996 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2999, metadata !155), !dbg !3000
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3001, metadata !155), !dbg !3002
  store double* %2, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !3003, metadata !155), !dbg !3004
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !3005, metadata !155), !dbg !3006
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !3007, metadata !155), !dbg !3008
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !3009, metadata !155), !dbg !3010
  %17 = load i32, i32* %8, align 4, !dbg !3011
  %18 = icmp eq i32 %17, 0, !dbg !3013
  br i1 %18, label %19, label %21, !dbg !3014

; <label>:19:                                     ; preds = %6
  %20 = load double*, double** %12, align 8, !dbg !3015
  store double 0.000000e+00, double* %20, align 8, !dbg !3017
  br label %21, !dbg !3018

; <label>:21:                                     ; preds = %19, %6
  %22 = load double, double* %7, align 8, !dbg !3019
  %23 = load double*, double** %12, align 8, !dbg !3020
  %24 = load double, double* %23, align 8, !dbg !3021
  %25 = fadd double %24, %22, !dbg !3021
  store double %25, double* %23, align 8, !dbg !3021
  %26 = load double, double* %7, align 8, !dbg !3022
  %27 = load i32, i32* %8, align 4, !dbg !3023
  %28 = sitofp i32 %27 to double, !dbg !3023
  %29 = fadd double %28, 1.000000e+00, !dbg !3024
  %30 = fmul double %26, %29, !dbg !3025
  %31 = load i32, i32* %8, align 4, !dbg !3026
  %32 = sitofp i32 %31 to double, !dbg !3026
  %33 = fadd double %32, 1.000000e+00, !dbg !3027
  %34 = fmul double %30, %33, !dbg !3028
  %35 = fdiv double 1.000000e+00, %34, !dbg !3029
  %36 = load i32, i32* %8, align 4, !dbg !3030
  %37 = sext i32 %36 to i64, !dbg !3031
  %38 = load double*, double** %10, align 8, !dbg !3031
  %39 = getelementptr inbounds double, double* %38, i64 %37, !dbg !3031
  store double %35, double* %39, align 8, !dbg !3032
  %40 = load double*, double** %12, align 8, !dbg !3033
  %41 = load double, double* %40, align 8, !dbg !3034
  %42 = load i32, i32* %8, align 4, !dbg !3035
  %43 = sext i32 %42 to i64, !dbg !3036
  %44 = load double*, double** %10, align 8, !dbg !3036
  %45 = getelementptr inbounds double, double* %44, i64 %43, !dbg !3036
  %46 = load double, double* %45, align 8, !dbg !3036
  %47 = fmul double %41, %46, !dbg !3037
  %48 = load i32, i32* %8, align 4, !dbg !3038
  %49 = sext i32 %48 to i64, !dbg !3039
  %50 = load double*, double** %9, align 8, !dbg !3039
  %51 = getelementptr inbounds double, double* %50, i64 %49, !dbg !3039
  store double %47, double* %51, align 8, !dbg !3040
  %52 = load i32, i32* %8, align 4, !dbg !3041
  %53 = icmp sgt i32 %52, 0, !dbg !3043
  br i1 %53, label %54, label %119, !dbg !3044

; <label>:54:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata double* %13, metadata !3045, metadata !155), !dbg !3047
  store double 1.000000e+00, double* %13, align 8, !dbg !3047
  call void @llvm.dbg.declare(metadata double* %14, metadata !3048, metadata !155), !dbg !3049
  %55 = load i32, i32* %8, align 4, !dbg !3050
  %56 = sitofp i32 %55 to double, !dbg !3050
  %57 = load i32, i32* %8, align 4, !dbg !3051
  %58 = sitofp i32 %57 to double, !dbg !3051
  %59 = fadd double %58, 1.000000e+00, !dbg !3052
  %60 = fdiv double %56, %59, !dbg !3053
  store double %60, double* %14, align 8, !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3054, metadata !155), !dbg !3055
  %61 = load i32, i32* %8, align 4, !dbg !3056
  %62 = sub nsw i32 %61, 1, !dbg !3058
  store i32 %62, i32* %15, align 4, !dbg !3059
  br label %63, !dbg !3060

; <label>:63:                                     ; preds = %115, %54
  %64 = load i32, i32* %15, align 4, !dbg !3061
  %65 = icmp sge i32 %64, 0, !dbg !3064
  br i1 %65, label %66, label %118, !dbg !3065

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata double* %16, metadata !3066, metadata !155), !dbg !3068
  %67 = load double, double* %13, align 8, !dbg !3069
  %68 = load i32, i32* %15, align 4, !dbg !3070
  %69 = sitofp i32 %68 to double, !dbg !3070
  %70 = fadd double %69, 1.000000e+00, !dbg !3071
  %71 = fmul double %67, %70, !dbg !3072
  %72 = load i32, i32* %8, align 4, !dbg !3073
  %73 = sitofp i32 %72 to double, !dbg !3073
  %74 = fadd double %73, 1.000000e+00, !dbg !3074
  %75 = fdiv double %71, %74, !dbg !3075
  store double %75, double* %16, align 8, !dbg !3068
  %76 = load double, double* %14, align 8, !dbg !3076
  %77 = load double, double* %13, align 8, !dbg !3077
  %78 = fmul double %77, %76, !dbg !3077
  store double %78, double* %13, align 8, !dbg !3077
  %79 = load i32, i32* %15, align 4, !dbg !3078
  %80 = add nsw i32 %79, 1, !dbg !3079
  %81 = sext i32 %80 to i64, !dbg !3080
  %82 = load double*, double** %10, align 8, !dbg !3080
  %83 = getelementptr inbounds double, double* %82, i64 %81, !dbg !3080
  %84 = load double, double* %83, align 8, !dbg !3080
  %85 = load double, double* %16, align 8, !dbg !3081
  %86 = load i32, i32* %15, align 4, !dbg !3082
  %87 = sext i32 %86 to i64, !dbg !3083
  %88 = load double*, double** %10, align 8, !dbg !3083
  %89 = getelementptr inbounds double, double* %88, i64 %87, !dbg !3083
  %90 = load double, double* %89, align 8, !dbg !3083
  %91 = fmul double %85, %90, !dbg !3084
  %92 = fsub double %84, %91, !dbg !3085
  %93 = load i32, i32* %15, align 4, !dbg !3086
  %94 = sext i32 %93 to i64, !dbg !3087
  %95 = load double*, double** %10, align 8, !dbg !3087
  %96 = getelementptr inbounds double, double* %95, i64 %94, !dbg !3087
  store double %92, double* %96, align 8, !dbg !3088
  %97 = load i32, i32* %15, align 4, !dbg !3089
  %98 = add nsw i32 %97, 1, !dbg !3090
  %99 = sext i32 %98 to i64, !dbg !3091
  %100 = load double*, double** %9, align 8, !dbg !3091
  %101 = getelementptr inbounds double, double* %100, i64 %99, !dbg !3091
  %102 = load double, double* %101, align 8, !dbg !3091
  %103 = load double, double* %16, align 8, !dbg !3092
  %104 = load i32, i32* %15, align 4, !dbg !3093
  %105 = sext i32 %104 to i64, !dbg !3094
  %106 = load double*, double** %9, align 8, !dbg !3094
  %107 = getelementptr inbounds double, double* %106, i64 %105, !dbg !3094
  %108 = load double, double* %107, align 8, !dbg !3094
  %109 = fmul double %103, %108, !dbg !3095
  %110 = fsub double %102, %109, !dbg !3096
  %111 = load i32, i32* %15, align 4, !dbg !3097
  %112 = sext i32 %111 to i64, !dbg !3098
  %113 = load double*, double** %9, align 8, !dbg !3098
  %114 = getelementptr inbounds double, double* %113, i64 %112, !dbg !3098
  store double %110, double* %114, align 8, !dbg !3099
  br label %115, !dbg !3100

; <label>:115:                                    ; preds = %66
  %116 = load i32, i32* %15, align 4, !dbg !3101
  %117 = add nsw i32 %116, -1, !dbg !3101
  store i32 %117, i32* %15, align 4, !dbg !3101
  br label %63, !dbg !3103, !llvm.loop !3104

; <label>:118:                                    ; preds = %63
  br label %119, !dbg !3106

; <label>:119:                                    ; preds = %118, %21
  %120 = load double*, double** %9, align 8, !dbg !3107
  %121 = getelementptr inbounds double, double* %120, i64 0, !dbg !3107
  %122 = load double, double* %121, align 8, !dbg !3107
  %123 = load double*, double** %10, align 8, !dbg !3108
  %124 = getelementptr inbounds double, double* %123, i64 0, !dbg !3108
  %125 = load double, double* %124, align 8, !dbg !3108
  %126 = fdiv double %122, %125, !dbg !3109
  %127 = load double*, double** %11, align 8, !dbg !3110
  store double %126, double* %127, align 8, !dbg !3111
  ret i32 0, !dbg !3112
}

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @cos(double) #3

declare i32 @gsl_sf_hyperg_U_int_e(i32, i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_hyperg_1F1_int_e(i32, i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!147, !148, !149}
!llvm.ident = !{!150}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66, globals: !68)
!1 = !DIFile(filename: "fermi_dirac.c", directory: "/fpcc/gsl-2.5/specfunc")
!2 = !{!3, !41, !59}
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
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !1, line: 854, size: 32, align: 32, elements: !57)
!42 = distinct !DISubprogram(name: "fd_nint", scope: !1, file: !1, line: 851, type: !43, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !47, !49}
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !51, line: 41, baseType: !52)
!51 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !51, line: 37, size: 128, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !51, line: 38, baseType: !48, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !52, file: !51, line: 39, baseType: !48, size: 64, align: 64, offset: 64)
!56 = !{}
!57 = !{!58}
!58 = !DIEnumerator(name: "nsize", value: 101)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !60, file: !1, line: 912, size: 32, align: 32, elements: !63)
!60 = distinct !DISubprogram(name: "fd_neg", scope: !1, file: !1, line: 910, type: !61, isLocal: true, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!61 = !DISubroutineType(types: !62)
!62 = !{!45, !47, !47, !49}
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "itmax", value: 100)
!65 = !DIEnumerator(name: "qsize", value: 101)
!66 = !{!67}
!67 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!68 = !{!69, !80, !84, !85, !86, !87, !91, !92, !96, !97, !101, !102, !106, !107, !108, !109, !113, !114, !115, !116, !120, !121, !122, !123, !124, !125, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!69 = distinct !DIGlobalVariable(name: "fd_1_a_cs", scope: !0, file: !1, line: 66, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_1_a_cs)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !71, line: 29, baseType: !72)
!71 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !71, line: 22, size: 320, align: 64, elements: !73)
!73 = !{!74, !76, !77, !78, !79}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !72, file: !71, line: 23, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !72, file: !71, line: 24, baseType: !45, size: 32, align: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !72, file: !71, line: 25, baseType: !48, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !72, file: !71, line: 26, baseType: !48, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !72, file: !71, line: 27, baseType: !45, size: 32, align: 32, offset: 256)
!80 = distinct !DIGlobalVariable(name: "fd_1_a_data", scope: !0, file: !1, line: 42, type: !81, isLocal: true, isDefinition: true, variable: [22 x double]* @fd_1_a_data)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1408, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 22)
!84 = distinct !DIGlobalVariable(name: "fd_1_b_cs", scope: !0, file: !1, line: 100, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_1_b_cs)
!85 = distinct !DIGlobalVariable(name: "fd_1_b_data", scope: !0, file: !1, line: 76, type: !81, isLocal: true, isDefinition: true, variable: [22 x double]* @fd_1_b_data)
!86 = distinct !DIGlobalVariable(name: "fd_1_c_cs", scope: !0, file: !1, line: 135, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_1_c_cs)
!87 = distinct !DIGlobalVariable(name: "fd_1_c_data", scope: !0, file: !1, line: 110, type: !88, isLocal: true, isDefinition: true, variable: [23 x double]* @fd_1_c_data)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1472, align: 64, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 23)
!91 = distinct !DIGlobalVariable(name: "fd_1_d_cs", scope: !0, file: !1, line: 181, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_1_d_cs)
!92 = distinct !DIGlobalVariable(name: "fd_1_d_data", scope: !0, file: !1, line: 149, type: !93, isLocal: true, isDefinition: true, variable: [30 x double]* @fd_1_d_data)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1920, align: 64, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 30)
!96 = distinct !DIGlobalVariable(name: "fd_1_e_cs", scope: !0, file: !1, line: 207, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_1_e_cs)
!97 = distinct !DIGlobalVariable(name: "fd_1_e_data", scope: !0, file: !1, line: 195, type: !98, isLocal: true, isDefinition: true, variable: [10 x double]* @fd_1_e_data)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, align: 64, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 10)
!101 = distinct !DIGlobalVariable(name: "fd_2_a_cs", scope: !0, file: !1, line: 240, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_2_a_cs)
!102 = distinct !DIGlobalVariable(name: "fd_2_a_data", scope: !0, file: !1, line: 217, type: !103, isLocal: true, isDefinition: true, variable: [21 x double]* @fd_2_a_data)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1344, align: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 21)
!106 = distinct !DIGlobalVariable(name: "fd_2_b_cs", scope: !0, file: !1, line: 274, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_2_b_cs)
!107 = distinct !DIGlobalVariable(name: "fd_2_b_data", scope: !0, file: !1, line: 250, type: !81, isLocal: true, isDefinition: true, variable: [22 x double]* @fd_2_b_data)
!108 = distinct !DIGlobalVariable(name: "fd_2_c_cs", scope: !0, file: !1, line: 306, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_2_c_cs)
!109 = distinct !DIGlobalVariable(name: "fd_2_c_data", scope: !0, file: !1, line: 284, type: !110, isLocal: true, isDefinition: true, variable: [20 x double]* @fd_2_c_data)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1280, align: 64, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = distinct !DIGlobalVariable(name: "fd_2_d_cs", scope: !0, file: !1, line: 352, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_2_d_cs)
!114 = distinct !DIGlobalVariable(name: "fd_2_d_data", scope: !0, file: !1, line: 320, type: !93, isLocal: true, isDefinition: true, variable: [30 x double]* @fd_2_d_data)
!115 = distinct !DIGlobalVariable(name: "fd_2_e_cs", scope: !0, file: !1, line: 372, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_2_e_cs)
!116 = distinct !DIGlobalVariable(name: "fd_2_e_data", scope: !0, file: !1, line: 366, type: !117, isLocal: true, isDefinition: true, variable: [4 x double]* @fd_2_e_data)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, align: 64, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = distinct !DIGlobalVariable(name: "fd_mhalf_a_cs", scope: !0, file: !1, line: 404, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_mhalf_a_cs)
!121 = distinct !DIGlobalVariable(name: "fd_mhalf_a_data", scope: !0, file: !1, line: 382, type: !110, isLocal: true, isDefinition: true, variable: [20 x double]* @fd_mhalf_a_data)
!122 = distinct !DIGlobalVariable(name: "fd_mhalf_b_cs", scope: !0, file: !1, line: 436, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_mhalf_b_cs)
!123 = distinct !DIGlobalVariable(name: "fd_mhalf_b_data", scope: !0, file: !1, line: 414, type: !110, isLocal: true, isDefinition: true, variable: [20 x double]* @fd_mhalf_b_data)
!124 = distinct !DIGlobalVariable(name: "fd_mhalf_c_cs", scope: !0, file: !1, line: 473, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_mhalf_c_cs)
!125 = distinct !DIGlobalVariable(name: "fd_mhalf_c_data", scope: !0, file: !1, line: 446, type: !126, isLocal: true, isDefinition: true, variable: [25 x double]* @fd_mhalf_c_data)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1600, align: 64, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 25)
!129 = distinct !DIGlobalVariable(name: "fd_mhalf_d_cs", scope: !0, file: !1, line: 518, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_mhalf_d_cs)
!130 = distinct !DIGlobalVariable(name: "fd_mhalf_d_data", scope: !0, file: !1, line: 486, type: !93, isLocal: true, isDefinition: true, variable: [30 x double]* @fd_mhalf_d_data)
!131 = distinct !DIGlobalVariable(name: "fd_half_a_cs", scope: !0, file: !1, line: 553, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_half_a_cs)
!132 = distinct !DIGlobalVariable(name: "fd_half_a_data", scope: !0, file: !1, line: 528, type: !88, isLocal: true, isDefinition: true, variable: [23 x double]* @fd_half_a_data)
!133 = distinct !DIGlobalVariable(name: "fd_half_b_cs", scope: !0, file: !1, line: 585, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_half_b_cs)
!134 = distinct !DIGlobalVariable(name: "fd_half_b_data", scope: !0, file: !1, line: 563, type: !110, isLocal: true, isDefinition: true, variable: [20 x double]* @fd_half_b_data)
!135 = distinct !DIGlobalVariable(name: "fd_half_c_cs", scope: !0, file: !1, line: 620, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_half_c_cs)
!136 = distinct !DIGlobalVariable(name: "fd_half_c_data", scope: !0, file: !1, line: 595, type: !88, isLocal: true, isDefinition: true, variable: [23 x double]* @fd_half_c_data)
!137 = distinct !DIGlobalVariable(name: "fd_half_d_cs", scope: !0, file: !1, line: 665, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_half_d_cs)
!138 = distinct !DIGlobalVariable(name: "fd_half_d_data", scope: !0, file: !1, line: 633, type: !93, isLocal: true, isDefinition: true, variable: [30 x double]* @fd_half_d_data)
!139 = distinct !DIGlobalVariable(name: "fd_3half_a_cs", scope: !0, file: !1, line: 698, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_3half_a_cs)
!140 = distinct !DIGlobalVariable(name: "fd_3half_a_data", scope: !0, file: !1, line: 676, type: !110, isLocal: true, isDefinition: true, variable: [20 x double]* @fd_3half_a_data)
!141 = distinct !DIGlobalVariable(name: "fd_3half_b_cs", scope: !0, file: !1, line: 732, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_3half_b_cs)
!142 = distinct !DIGlobalVariable(name: "fd_3half_b_data", scope: !0, file: !1, line: 708, type: !81, isLocal: true, isDefinition: true, variable: [22 x double]* @fd_3half_b_data)
!143 = distinct !DIGlobalVariable(name: "fd_3half_c_cs", scope: !0, file: !1, line: 765, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_3half_c_cs)
!144 = distinct !DIGlobalVariable(name: "fd_3half_c_data", scope: !0, file: !1, line: 742, type: !103, isLocal: true, isDefinition: true, variable: [21 x double]* @fd_3half_c_data)
!145 = distinct !DIGlobalVariable(name: "fd_3half_d_cs", scope: !0, file: !1, line: 805, type: !70, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @fd_3half_d_cs)
!146 = distinct !DIGlobalVariable(name: "fd_3half_d_data", scope: !0, file: !1, line: 778, type: !126, isLocal: true, isDefinition: true, variable: [25 x double]* @fd_3half_d_data)
!147 = !{i32 2, !"Dwarf Version", i32 4}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"PIC Level", i32 2}
!150 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!151 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_m1_e", scope: !1, file: !1, line: 1215, type: !152, isLocal: false, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!152 = !DISubroutineType(types: !153)
!153 = !{!45, !47, !49}
!154 = !DILocalVariable(name: "x", arg: 1, scope: !151, file: !1, line: 1215, type: !47)
!155 = !DIExpression()
!156 = !DILocation(line: 1215, column: 42, scope: !151)
!157 = !DILocalVariable(name: "result", arg: 2, scope: !151, file: !1, line: 1215, type: !49)
!158 = !DILocation(line: 1215, column: 61, scope: !151)
!159 = !DILocation(line: 1217, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !151, file: !1, line: 1217, column: 6)
!161 = !DILocation(line: 1217, column: 8, scope: !160)
!162 = !DILocation(line: 1217, column: 6, scope: !151)
!163 = !DILocation(line: 1218, column: 5, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 1217, column: 27)
!165 = distinct !{!165, !163}
!166 = !DILocation(line: 1218, column: 5, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 1)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 1218, column: 5)
!169 = distinct !{!169, !170}
!170 = !DILocation(line: 1218, column: 5, scope: !168)
!171 = !DILocation(line: 1218, column: 5, scope: !172)
!172 = !DILexicalBlockFile(scope: !173, file: !1, discriminator: 2)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 1218, column: 5)
!174 = !DILocation(line: 1218, column: 5, scope: !175)
!175 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 3)
!176 = !DILocation(line: 1219, column: 3, scope: !164)
!177 = !DILocation(line: 1220, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !160, file: !1, line: 1220, column: 11)
!179 = !DILocation(line: 1220, column: 13, scope: !178)
!180 = !DILocation(line: 1220, column: 11, scope: !160)
!181 = !DILocalVariable(name: "ex", scope: !182, file: !1, line: 1221, type: !47)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 1220, column: 20)
!183 = !DILocation(line: 1221, column: 18, scope: !182)
!184 = !DILocation(line: 1221, column: 27, scope: !182)
!185 = !DILocation(line: 1221, column: 23, scope: !182)
!186 = !DILocation(line: 1222, column: 19, scope: !182)
!187 = !DILocation(line: 1222, column: 27, scope: !182)
!188 = !DILocation(line: 1222, column: 26, scope: !182)
!189 = !DILocation(line: 1222, column: 21, scope: !182)
!190 = !DILocation(line: 1222, column: 5, scope: !182)
!191 = !DILocation(line: 1222, column: 13, scope: !182)
!192 = !DILocation(line: 1222, column: 17, scope: !182)
!193 = !DILocation(line: 1223, column: 31, scope: !182)
!194 = !DILocation(line: 1223, column: 26, scope: !182)
!195 = !DILocation(line: 1223, column: 34, scope: !182)
!196 = !DILocation(line: 1223, column: 23, scope: !182)
!197 = !DILocation(line: 1223, column: 41, scope: !182)
!198 = !DILocation(line: 1223, column: 66, scope: !182)
!199 = !DILocation(line: 1223, column: 74, scope: !182)
!200 = !DILocation(line: 1223, column: 61, scope: !201)
!201 = !DILexicalBlockFile(scope: !182, file: !1, discriminator: 1)
!202 = !DILocation(line: 1223, column: 59, scope: !182)
!203 = !DILocation(line: 1223, column: 5, scope: !182)
!204 = !DILocation(line: 1223, column: 13, scope: !182)
!205 = !DILocation(line: 1223, column: 17, scope: !182)
!206 = !DILocation(line: 1224, column: 5, scope: !182)
!207 = !DILocalVariable(name: "ex", scope: !208, file: !1, line: 1227, type: !48)
!208 = distinct !DILexicalBlock(scope: !178, file: !1, line: 1226, column: 8)
!209 = !DILocation(line: 1227, column: 12, scope: !208)
!210 = !DILocation(line: 1227, column: 22, scope: !208)
!211 = !DILocation(line: 1227, column: 21, scope: !208)
!212 = !DILocation(line: 1227, column: 17, scope: !208)
!213 = !DILocation(line: 1228, column: 30, scope: !208)
!214 = !DILocation(line: 1228, column: 28, scope: !208)
!215 = !DILocation(line: 1228, column: 22, scope: !208)
!216 = !DILocation(line: 1228, column: 5, scope: !208)
!217 = !DILocation(line: 1228, column: 13, scope: !208)
!218 = !DILocation(line: 1228, column: 17, scope: !208)
!219 = !DILocation(line: 1229, column: 44, scope: !208)
!220 = !DILocation(line: 1229, column: 46, scope: !208)
!221 = !DILocation(line: 1229, column: 41, scope: !208)
!222 = !DILocation(line: 1229, column: 55, scope: !208)
!223 = !DILocation(line: 1229, column: 53, scope: !208)
!224 = !DILocation(line: 1229, column: 5, scope: !208)
!225 = !DILocation(line: 1229, column: 13, scope: !208)
!226 = !DILocation(line: 1229, column: 17, scope: !208)
!227 = !DILocation(line: 1230, column: 5, scope: !208)
!228 = !DILocation(line: 1232, column: 1, scope: !151)
!229 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0_e", scope: !1, file: !1, line: 1236, type: !152, isLocal: false, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!230 = !DILocalVariable(name: "x", arg: 1, scope: !229, file: !1, line: 1236, type: !47)
!231 = !DILocation(line: 1236, column: 41, scope: !229)
!232 = !DILocalVariable(name: "result", arg: 2, scope: !229, file: !1, line: 1236, type: !49)
!233 = !DILocation(line: 1236, column: 60, scope: !229)
!234 = !DILocation(line: 1238, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 1238, column: 6)
!236 = !DILocation(line: 1238, column: 8, scope: !235)
!237 = !DILocation(line: 1238, column: 6, scope: !229)
!238 = !DILocation(line: 1239, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 1238, column: 27)
!240 = distinct !{!240, !238}
!241 = !DILocation(line: 1239, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !1, discriminator: 1)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 1239, column: 5)
!244 = distinct !{!244, !245}
!245 = !DILocation(line: 1239, column: 5, scope: !243)
!246 = !DILocation(line: 1239, column: 5, scope: !247)
!247 = !DILexicalBlockFile(scope: !248, file: !1, discriminator: 2)
!248 = distinct !DILexicalBlock(scope: !243, file: !1, line: 1239, column: 5)
!249 = !DILocation(line: 1239, column: 5, scope: !250)
!250 = !DILexicalBlockFile(scope: !243, file: !1, discriminator: 3)
!251 = !DILocation(line: 1240, column: 3, scope: !239)
!252 = !DILocation(line: 1241, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !235, file: !1, line: 1241, column: 11)
!254 = !DILocation(line: 1241, column: 13, scope: !253)
!255 = !DILocation(line: 1241, column: 11, scope: !235)
!256 = !DILocalVariable(name: "ex", scope: !257, file: !1, line: 1242, type: !48)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 1241, column: 21)
!258 = !DILocation(line: 1242, column: 12, scope: !257)
!259 = !DILocation(line: 1242, column: 22, scope: !257)
!260 = !DILocation(line: 1242, column: 18, scope: !257)
!261 = !DILocalVariable(name: "ser", scope: !257, file: !1, line: 1243, type: !48)
!262 = !DILocation(line: 1243, column: 12, scope: !257)
!263 = !DILocation(line: 1243, column: 24, scope: !257)
!264 = !DILocation(line: 1243, column: 34, scope: !257)
!265 = !DILocation(line: 1243, column: 48, scope: !257)
!266 = !DILocation(line: 1243, column: 62, scope: !257)
!267 = !DILocation(line: 1243, column: 76, scope: !257)
!268 = !DILocation(line: 1243, column: 78, scope: !257)
!269 = !DILocation(line: 1243, column: 74, scope: !257)
!270 = !DILocation(line: 1243, column: 64, scope: !257)
!271 = !DILocation(line: 1243, column: 60, scope: !257)
!272 = !DILocation(line: 1243, column: 50, scope: !257)
!273 = !DILocation(line: 1243, column: 46, scope: !257)
!274 = !DILocation(line: 1243, column: 36, scope: !257)
!275 = !DILocation(line: 1243, column: 32, scope: !257)
!276 = !DILocation(line: 1243, column: 26, scope: !257)
!277 = !DILocation(line: 1243, column: 22, scope: !257)
!278 = !DILocation(line: 1244, column: 19, scope: !257)
!279 = !DILocation(line: 1244, column: 24, scope: !257)
!280 = !DILocation(line: 1244, column: 22, scope: !257)
!281 = !DILocation(line: 1244, column: 5, scope: !257)
!282 = !DILocation(line: 1244, column: 13, scope: !257)
!283 = !DILocation(line: 1244, column: 17, scope: !257)
!284 = !DILocation(line: 1245, column: 48, scope: !257)
!285 = !DILocation(line: 1245, column: 56, scope: !257)
!286 = !DILocation(line: 1245, column: 43, scope: !257)
!287 = !DILocation(line: 1245, column: 41, scope: !257)
!288 = !DILocation(line: 1245, column: 5, scope: !257)
!289 = !DILocation(line: 1245, column: 13, scope: !257)
!290 = !DILocation(line: 1245, column: 17, scope: !257)
!291 = !DILocation(line: 1246, column: 5, scope: !257)
!292 = !DILocation(line: 1248, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !253, file: !1, line: 1248, column: 11)
!294 = !DILocation(line: 1248, column: 13, scope: !293)
!295 = !DILocation(line: 1248, column: 11, scope: !253)
!296 = !DILocation(line: 1249, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 1248, column: 21)
!298 = !DILocation(line: 1249, column: 29, scope: !297)
!299 = !DILocation(line: 1249, column: 27, scope: !297)
!300 = !DILocation(line: 1249, column: 19, scope: !301)
!301 = !DILexicalBlockFile(scope: !297, file: !1, discriminator: 1)
!302 = !DILocation(line: 1249, column: 5, scope: !297)
!303 = !DILocation(line: 1249, column: 13, scope: !297)
!304 = !DILocation(line: 1249, column: 17, scope: !297)
!305 = !DILocation(line: 1250, column: 24, scope: !297)
!306 = !DILocation(line: 1250, column: 26, scope: !297)
!307 = !DILocation(line: 1250, column: 19, scope: !297)
!308 = !DILocation(line: 1250, column: 5, scope: !297)
!309 = !DILocation(line: 1250, column: 13, scope: !297)
!310 = !DILocation(line: 1250, column: 17, scope: !297)
!311 = !DILocation(line: 1251, column: 5, scope: !297)
!312 = !DILocalVariable(name: "ex", scope: !313, file: !1, line: 1254, type: !48)
!313 = distinct !DILexicalBlock(scope: !293, file: !1, line: 1253, column: 8)
!314 = !DILocation(line: 1254, column: 12, scope: !313)
!315 = !DILocation(line: 1254, column: 22, scope: !313)
!316 = !DILocation(line: 1254, column: 21, scope: !313)
!317 = !DILocation(line: 1254, column: 17, scope: !313)
!318 = !DILocation(line: 1255, column: 19, scope: !313)
!319 = !DILocation(line: 1255, column: 23, scope: !313)
!320 = !DILocation(line: 1255, column: 39, scope: !313)
!321 = !DILocation(line: 1255, column: 38, scope: !313)
!322 = !DILocation(line: 1255, column: 33, scope: !313)
!323 = !DILocation(line: 1255, column: 44, scope: !313)
!324 = !DILocation(line: 1255, column: 47, scope: !313)
!325 = !DILocation(line: 1255, column: 46, scope: !313)
!326 = !DILocation(line: 1255, column: 49, scope: !313)
!327 = !DILocation(line: 1255, column: 42, scope: !313)
!328 = !DILocation(line: 1255, column: 56, scope: !313)
!329 = !DILocation(line: 1255, column: 59, scope: !313)
!330 = !DILocation(line: 1255, column: 58, scope: !313)
!331 = !DILocation(line: 1255, column: 62, scope: !313)
!332 = !DILocation(line: 1255, column: 61, scope: !313)
!333 = !DILocation(line: 1255, column: 64, scope: !313)
!334 = !DILocation(line: 1255, column: 54, scope: !313)
!335 = !DILocation(line: 1255, column: 26, scope: !313)
!336 = !DILocation(line: 1255, column: 21, scope: !313)
!337 = !DILocation(line: 1255, column: 5, scope: !313)
!338 = !DILocation(line: 1255, column: 13, scope: !313)
!339 = !DILocation(line: 1255, column: 17, scope: !313)
!340 = !DILocation(line: 1256, column: 20, scope: !313)
!341 = !DILocation(line: 1256, column: 24, scope: !313)
!342 = !DILocation(line: 1256, column: 22, scope: !313)
!343 = !DILocation(line: 1256, column: 28, scope: !313)
!344 = !DILocation(line: 1256, column: 5, scope: !313)
!345 = !DILocation(line: 1256, column: 13, scope: !313)
!346 = !DILocation(line: 1256, column: 17, scope: !313)
!347 = !DILocation(line: 1257, column: 5, scope: !313)
!348 = !DILocation(line: 1259, column: 1, scope: !229)
!349 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1_e", scope: !1, file: !1, line: 1262, type: !152, isLocal: false, isDefinition: true, scopeLine: 1263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!350 = !DILocalVariable(name: "x", arg: 1, scope: !349, file: !1, line: 1262, type: !47)
!351 = !DILocation(line: 1262, column: 41, scope: !349)
!352 = !DILocalVariable(name: "result", arg: 2, scope: !349, file: !1, line: 1262, type: !49)
!353 = !DILocation(line: 1262, column: 60, scope: !349)
!354 = !DILocation(line: 1264, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !1, line: 1264, column: 6)
!356 = !DILocation(line: 1264, column: 8, scope: !355)
!357 = !DILocation(line: 1264, column: 6, scope: !349)
!358 = !DILocation(line: 1265, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 1264, column: 27)
!360 = distinct !{!360, !358}
!361 = !DILocation(line: 1265, column: 5, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 1265, column: 5)
!364 = distinct !{!364, !365}
!365 = !DILocation(line: 1265, column: 5, scope: !363)
!366 = !DILocation(line: 1265, column: 5, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !1, discriminator: 2)
!368 = distinct !DILexicalBlock(scope: !363, file: !1, line: 1265, column: 5)
!369 = !DILocation(line: 1265, column: 5, scope: !370)
!370 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 3)
!371 = !DILocation(line: 1266, column: 3, scope: !359)
!372 = !DILocation(line: 1267, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !355, file: !1, line: 1267, column: 11)
!374 = !DILocation(line: 1267, column: 13, scope: !373)
!375 = !DILocation(line: 1267, column: 11, scope: !355)
!376 = !DILocalVariable(name: "ex", scope: !377, file: !1, line: 1270, type: !48)
!377 = distinct !DILexicalBlock(scope: !373, file: !1, line: 1267, column: 21)
!378 = !DILocation(line: 1270, column: 12, scope: !377)
!379 = !DILocation(line: 1270, column: 23, scope: !377)
!380 = !DILocation(line: 1270, column: 19, scope: !377)
!381 = !DILocalVariable(name: "term", scope: !377, file: !1, line: 1271, type: !48)
!382 = !DILocation(line: 1271, column: 12, scope: !377)
!383 = !DILocation(line: 1271, column: 19, scope: !377)
!384 = !DILocalVariable(name: "sum", scope: !377, file: !1, line: 1272, type: !48)
!385 = !DILocation(line: 1272, column: 12, scope: !377)
!386 = !DILocation(line: 1272, column: 19, scope: !377)
!387 = !DILocalVariable(name: "n", scope: !377, file: !1, line: 1273, type: !45)
!388 = !DILocation(line: 1273, column: 9, scope: !377)
!389 = !DILocation(line: 1274, column: 10, scope: !390)
!390 = distinct !DILexicalBlock(scope: !377, file: !1, line: 1274, column: 5)
!391 = !DILocation(line: 1274, column: 9, scope: !390)
!392 = !DILocation(line: 1274, column: 14, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 1)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 1274, column: 5)
!395 = !DILocation(line: 1274, column: 15, scope: !393)
!396 = !DILocation(line: 1274, column: 5, scope: !393)
!397 = !DILocalVariable(name: "rat", scope: !398, file: !1, line: 1275, type: !48)
!398 = distinct !DILexicalBlock(scope: !394, file: !1, line: 1274, column: 27)
!399 = !DILocation(line: 1275, column: 14, scope: !398)
!400 = !DILocation(line: 1275, column: 21, scope: !398)
!401 = !DILocation(line: 1275, column: 22, scope: !398)
!402 = !DILocation(line: 1275, column: 28, scope: !398)
!403 = !DILocation(line: 1275, column: 27, scope: !398)
!404 = !DILocation(line: 1276, column: 16, scope: !398)
!405 = !DILocation(line: 1276, column: 15, scope: !398)
!406 = !DILocation(line: 1276, column: 21, scope: !398)
!407 = !DILocation(line: 1276, column: 19, scope: !398)
!408 = !DILocation(line: 1276, column: 27, scope: !398)
!409 = !DILocation(line: 1276, column: 25, scope: !398)
!410 = !DILocation(line: 1276, column: 12, scope: !398)
!411 = !DILocation(line: 1277, column: 15, scope: !398)
!412 = !DILocation(line: 1277, column: 12, scope: !398)
!413 = !DILocation(line: 1278, column: 15, scope: !414)
!414 = distinct !DILexicalBlock(scope: !398, file: !1, line: 1278, column: 10)
!415 = !DILocation(line: 1278, column: 20, scope: !414)
!416 = !DILocation(line: 1278, column: 19, scope: !414)
!417 = !DILocation(line: 1278, column: 10, scope: !414)
!418 = !DILocation(line: 1278, column: 25, scope: !414)
!419 = !DILocation(line: 1278, column: 10, scope: !398)
!420 = !DILocation(line: 1278, column: 44, scope: !421)
!421 = !DILexicalBlockFile(scope: !414, file: !1, discriminator: 1)
!422 = !DILocation(line: 1279, column: 5, scope: !398)
!423 = !DILocation(line: 1274, column: 23, scope: !424)
!424 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 2)
!425 = !DILocation(line: 1274, column: 5, scope: !424)
!426 = distinct !{!426, !427}
!427 = !DILocation(line: 1274, column: 5, scope: !377)
!428 = !DILocation(line: 1280, column: 19, scope: !377)
!429 = !DILocation(line: 1280, column: 5, scope: !377)
!430 = !DILocation(line: 1280, column: 13, scope: !377)
!431 = !DILocation(line: 1280, column: 17, scope: !377)
!432 = !DILocation(line: 1281, column: 30, scope: !377)
!433 = !DILocation(line: 1281, column: 25, scope: !377)
!434 = !DILocation(line: 1281, column: 23, scope: !377)
!435 = !DILocation(line: 1281, column: 35, scope: !377)
!436 = !DILocation(line: 1281, column: 5, scope: !377)
!437 = !DILocation(line: 1281, column: 13, scope: !377)
!438 = !DILocation(line: 1281, column: 17, scope: !377)
!439 = !DILocation(line: 1282, column: 5, scope: !377)
!440 = !DILocation(line: 1284, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !373, file: !1, line: 1284, column: 11)
!442 = !DILocation(line: 1284, column: 13, scope: !441)
!443 = !DILocation(line: 1284, column: 11, scope: !373)
!444 = !DILocation(line: 1285, column: 36, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 1284, column: 20)
!446 = !DILocation(line: 1285, column: 39, scope: !445)
!447 = !DILocation(line: 1285, column: 12, scope: !445)
!448 = !DILocation(line: 1285, column: 5, scope: !445)
!449 = !DILocation(line: 1287, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !1, line: 1287, column: 11)
!451 = !DILocation(line: 1287, column: 13, scope: !450)
!452 = !DILocation(line: 1287, column: 11, scope: !441)
!453 = !DILocalVariable(name: "t", scope: !454, file: !1, line: 1288, type: !48)
!454 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1287, column: 20)
!455 = !DILocation(line: 1288, column: 12, scope: !454)
!456 = !DILocation(line: 1288, column: 25, scope: !454)
!457 = !DILocation(line: 1288, column: 26, scope: !454)
!458 = !DILocation(line: 1288, column: 23, scope: !454)
!459 = !DILocation(line: 1288, column: 32, scope: !454)
!460 = !DILocation(line: 1289, column: 36, scope: !454)
!461 = !DILocation(line: 1289, column: 39, scope: !454)
!462 = !DILocation(line: 1289, column: 12, scope: !454)
!463 = !DILocation(line: 1289, column: 5, scope: !454)
!464 = !DILocation(line: 1291, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1291, column: 11)
!466 = !DILocation(line: 1291, column: 13, scope: !465)
!467 = !DILocation(line: 1291, column: 11, scope: !450)
!468 = !DILocalVariable(name: "t", scope: !469, file: !1, line: 1292, type: !48)
!469 = distinct !DILexicalBlock(scope: !465, file: !1, line: 1291, column: 21)
!470 = !DILocation(line: 1292, column: 12, scope: !469)
!471 = !DILocation(line: 1292, column: 25, scope: !469)
!472 = !DILocation(line: 1292, column: 26, scope: !469)
!473 = !DILocation(line: 1292, column: 23, scope: !469)
!474 = !DILocation(line: 1292, column: 32, scope: !469)
!475 = !DILocation(line: 1293, column: 36, scope: !469)
!476 = !DILocation(line: 1293, column: 39, scope: !469)
!477 = !DILocation(line: 1293, column: 12, scope: !469)
!478 = !DILocation(line: 1293, column: 5, scope: !469)
!479 = !DILocation(line: 1295, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !465, file: !1, line: 1295, column: 11)
!481 = !DILocation(line: 1295, column: 13, scope: !480)
!482 = !DILocation(line: 1295, column: 11, scope: !465)
!483 = !DILocalVariable(name: "t", scope: !484, file: !1, line: 1296, type: !48)
!484 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1295, column: 21)
!485 = !DILocation(line: 1296, column: 12, scope: !484)
!486 = !DILocation(line: 1296, column: 20, scope: !484)
!487 = !DILocation(line: 1296, column: 19, scope: !484)
!488 = !DILocation(line: 1296, column: 22, scope: !484)
!489 = !DILocalVariable(name: "c", scope: !484, file: !1, line: 1297, type: !50)
!490 = !DILocation(line: 1297, column: 19, scope: !484)
!491 = !DILocation(line: 1298, column: 29, scope: !484)
!492 = !DILocation(line: 1298, column: 5, scope: !484)
!493 = !DILocation(line: 1299, column: 22, scope: !484)
!494 = !DILocation(line: 1299, column: 28, scope: !484)
!495 = !DILocation(line: 1299, column: 26, scope: !484)
!496 = !DILocation(line: 1299, column: 30, scope: !484)
!497 = !DILocation(line: 1299, column: 29, scope: !484)
!498 = !DILocation(line: 1299, column: 5, scope: !484)
!499 = !DILocation(line: 1299, column: 13, scope: !484)
!500 = !DILocation(line: 1299, column: 18, scope: !484)
!501 = !DILocation(line: 1300, column: 22, scope: !484)
!502 = !DILocation(line: 1300, column: 28, scope: !484)
!503 = !DILocation(line: 1300, column: 26, scope: !484)
!504 = !DILocation(line: 1300, column: 30, scope: !484)
!505 = !DILocation(line: 1300, column: 29, scope: !484)
!506 = !DILocation(line: 1300, column: 57, scope: !484)
!507 = !DILocation(line: 1300, column: 65, scope: !484)
!508 = !DILocation(line: 1300, column: 52, scope: !484)
!509 = !DILocation(line: 1300, column: 50, scope: !484)
!510 = !DILocation(line: 1300, column: 32, scope: !484)
!511 = !DILocation(line: 1300, column: 5, scope: !484)
!512 = !DILocation(line: 1300, column: 13, scope: !484)
!513 = !DILocation(line: 1300, column: 18, scope: !484)
!514 = !DILocation(line: 1301, column: 5, scope: !484)
!515 = !DILocation(line: 1303, column: 11, scope: !516)
!516 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1303, column: 11)
!517 = !DILocation(line: 1303, column: 13, scope: !516)
!518 = !DILocation(line: 1303, column: 11, scope: !480)
!519 = !DILocalVariable(name: "t", scope: !520, file: !1, line: 1304, type: !48)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 1303, column: 41)
!521 = !DILocation(line: 1304, column: 12, scope: !520)
!522 = !DILocation(line: 1304, column: 21, scope: !520)
!523 = !DILocation(line: 1304, column: 20, scope: !520)
!524 = !DILocation(line: 1304, column: 23, scope: !520)
!525 = !DILocalVariable(name: "c", scope: !520, file: !1, line: 1305, type: !50)
!526 = !DILocation(line: 1305, column: 19, scope: !520)
!527 = !DILocation(line: 1306, column: 29, scope: !520)
!528 = !DILocation(line: 1306, column: 5, scope: !520)
!529 = !DILocation(line: 1307, column: 22, scope: !520)
!530 = !DILocation(line: 1307, column: 28, scope: !520)
!531 = !DILocation(line: 1307, column: 26, scope: !520)
!532 = !DILocation(line: 1307, column: 30, scope: !520)
!533 = !DILocation(line: 1307, column: 29, scope: !520)
!534 = !DILocation(line: 1307, column: 5, scope: !520)
!535 = !DILocation(line: 1307, column: 13, scope: !520)
!536 = !DILocation(line: 1307, column: 18, scope: !520)
!537 = !DILocation(line: 1308, column: 22, scope: !520)
!538 = !DILocation(line: 1308, column: 28, scope: !520)
!539 = !DILocation(line: 1308, column: 26, scope: !520)
!540 = !DILocation(line: 1308, column: 30, scope: !520)
!541 = !DILocation(line: 1308, column: 29, scope: !520)
!542 = !DILocation(line: 1308, column: 57, scope: !520)
!543 = !DILocation(line: 1308, column: 65, scope: !520)
!544 = !DILocation(line: 1308, column: 52, scope: !520)
!545 = !DILocation(line: 1308, column: 50, scope: !520)
!546 = !DILocation(line: 1308, column: 32, scope: !520)
!547 = !DILocation(line: 1308, column: 5, scope: !520)
!548 = !DILocation(line: 1308, column: 13, scope: !520)
!549 = !DILocation(line: 1308, column: 18, scope: !520)
!550 = !DILocation(line: 1309, column: 5, scope: !520)
!551 = !DILocation(line: 1311, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !516, file: !1, line: 1311, column: 11)
!553 = !DILocation(line: 1311, column: 13, scope: !552)
!554 = !DILocation(line: 1311, column: 11, scope: !516)
!555 = !DILocation(line: 1312, column: 25, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !1, line: 1311, column: 33)
!557 = !DILocation(line: 1312, column: 23, scope: !556)
!558 = !DILocation(line: 1312, column: 27, scope: !556)
!559 = !DILocation(line: 1312, column: 26, scope: !556)
!560 = !DILocation(line: 1312, column: 5, scope: !556)
!561 = !DILocation(line: 1312, column: 13, scope: !556)
!562 = !DILocation(line: 1312, column: 17, scope: !556)
!563 = !DILocation(line: 1313, column: 48, scope: !556)
!564 = !DILocation(line: 1313, column: 56, scope: !556)
!565 = !DILocation(line: 1313, column: 43, scope: !556)
!566 = !DILocation(line: 1313, column: 41, scope: !556)
!567 = !DILocation(line: 1313, column: 5, scope: !556)
!568 = !DILocation(line: 1313, column: 13, scope: !556)
!569 = !DILocation(line: 1313, column: 17, scope: !556)
!570 = !DILocation(line: 1314, column: 5, scope: !556)
!571 = !DILocation(line: 1317, column: 5, scope: !572)
!572 = distinct !DILexicalBlock(scope: !552, file: !1, line: 1316, column: 8)
!573 = distinct !{!573, !571}
!574 = !DILocation(line: 1317, column: 5, scope: !575)
!575 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 1317, column: 5)
!577 = distinct !{!577, !578}
!578 = !DILocation(line: 1317, column: 5, scope: !576)
!579 = !DILocation(line: 1317, column: 5, scope: !580)
!580 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 2)
!581 = distinct !DILexicalBlock(scope: !576, file: !1, line: 1317, column: 5)
!582 = !DILocation(line: 1317, column: 5, scope: !583)
!583 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 3)
!584 = !DILocation(line: 1319, column: 1, scope: !349)
!585 = distinct !DISubprogram(name: "cheb_eval_e", scope: !586, file: !586, line: 3, type: !587, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!586 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!587 = !DISubroutineType(types: !588)
!588 = !{!45, !589, !47, !49}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!591 = !DILocalVariable(name: "cs", arg: 1, scope: !585, file: !586, line: 3, type: !589)
!592 = !DILocation(line: 3, column: 33, scope: !585)
!593 = !DILocalVariable(name: "x", arg: 2, scope: !585, file: !586, line: 4, type: !47)
!594 = !DILocation(line: 4, column: 26, scope: !585)
!595 = !DILocalVariable(name: "result", arg: 3, scope: !585, file: !586, line: 5, type: !49)
!596 = !DILocation(line: 5, column: 29, scope: !585)
!597 = !DILocalVariable(name: "j", scope: !585, file: !586, line: 7, type: !45)
!598 = !DILocation(line: 7, column: 7, scope: !585)
!599 = !DILocalVariable(name: "d", scope: !585, file: !586, line: 8, type: !48)
!600 = !DILocation(line: 8, column: 10, scope: !585)
!601 = !DILocalVariable(name: "dd", scope: !585, file: !586, line: 9, type: !48)
!602 = !DILocation(line: 9, column: 10, scope: !585)
!603 = !DILocalVariable(name: "y", scope: !585, file: !586, line: 11, type: !48)
!604 = !DILocation(line: 11, column: 10, scope: !585)
!605 = !DILocation(line: 11, column: 20, scope: !585)
!606 = !DILocation(line: 11, column: 19, scope: !585)
!607 = !DILocation(line: 11, column: 24, scope: !585)
!608 = !DILocation(line: 11, column: 28, scope: !585)
!609 = !DILocation(line: 11, column: 22, scope: !585)
!610 = !DILocation(line: 11, column: 32, scope: !585)
!611 = !DILocation(line: 11, column: 36, scope: !585)
!612 = !DILocation(line: 11, column: 30, scope: !585)
!613 = !DILocation(line: 11, column: 42, scope: !585)
!614 = !DILocation(line: 11, column: 46, scope: !585)
!615 = !DILocation(line: 11, column: 50, scope: !585)
!616 = !DILocation(line: 11, column: 54, scope: !585)
!617 = !DILocation(line: 11, column: 48, scope: !585)
!618 = !DILocation(line: 11, column: 39, scope: !585)
!619 = !DILocalVariable(name: "y2", scope: !585, file: !586, line: 12, type: !48)
!620 = !DILocation(line: 12, column: 10, scope: !585)
!621 = !DILocation(line: 12, column: 21, scope: !585)
!622 = !DILocation(line: 12, column: 19, scope: !585)
!623 = !DILocalVariable(name: "e", scope: !585, file: !586, line: 14, type: !48)
!624 = !DILocation(line: 14, column: 10, scope: !585)
!625 = !DILocation(line: 16, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !585, file: !586, line: 16, column: 3)
!627 = !DILocation(line: 16, column: 15, scope: !626)
!628 = !DILocation(line: 16, column: 9, scope: !626)
!629 = !DILocation(line: 16, column: 7, scope: !626)
!630 = !DILocation(line: 16, column: 22, scope: !631)
!631 = !DILexicalBlockFile(scope: !632, file: !586, discriminator: 1)
!632 = distinct !DILexicalBlock(scope: !626, file: !586, line: 16, column: 3)
!633 = !DILocation(line: 16, column: 23, scope: !631)
!634 = !DILocation(line: 16, column: 3, scope: !631)
!635 = !DILocalVariable(name: "temp", scope: !636, file: !586, line: 17, type: !48)
!636 = distinct !DILexicalBlock(scope: !632, file: !586, line: 16, column: 33)
!637 = !DILocation(line: 17, column: 12, scope: !636)
!638 = !DILocation(line: 17, column: 19, scope: !636)
!639 = !DILocation(line: 18, column: 9, scope: !636)
!640 = !DILocation(line: 18, column: 12, scope: !636)
!641 = !DILocation(line: 18, column: 11, scope: !636)
!642 = !DILocation(line: 18, column: 16, scope: !636)
!643 = !DILocation(line: 18, column: 14, scope: !636)
!644 = !DILocation(line: 18, column: 27, scope: !636)
!645 = !DILocation(line: 18, column: 21, scope: !636)
!646 = !DILocation(line: 18, column: 25, scope: !636)
!647 = !DILocation(line: 18, column: 19, scope: !636)
!648 = !DILocation(line: 18, column: 7, scope: !636)
!649 = !DILocation(line: 19, column: 15, scope: !636)
!650 = !DILocation(line: 19, column: 18, scope: !636)
!651 = !DILocation(line: 19, column: 17, scope: !636)
!652 = !DILocation(line: 19, column: 10, scope: !636)
!653 = !DILocation(line: 19, column: 31, scope: !636)
!654 = !DILocation(line: 19, column: 26, scope: !655)
!655 = !DILexicalBlockFile(scope: !636, file: !586, discriminator: 1)
!656 = !DILocation(line: 19, column: 24, scope: !636)
!657 = !DILocation(line: 19, column: 48, scope: !636)
!658 = !DILocation(line: 19, column: 42, scope: !636)
!659 = !DILocation(line: 19, column: 46, scope: !636)
!660 = !DILocation(line: 19, column: 37, scope: !661)
!661 = !DILexicalBlockFile(scope: !636, file: !586, discriminator: 2)
!662 = !DILocation(line: 19, column: 35, scope: !636)
!663 = !DILocation(line: 19, column: 7, scope: !636)
!664 = !DILocation(line: 20, column: 10, scope: !636)
!665 = !DILocation(line: 20, column: 8, scope: !636)
!666 = !DILocation(line: 21, column: 3, scope: !636)
!667 = !DILocation(line: 16, column: 29, scope: !668)
!668 = !DILexicalBlockFile(scope: !632, file: !586, discriminator: 2)
!669 = !DILocation(line: 16, column: 3, scope: !668)
!670 = distinct !{!670, !671}
!671 = !DILocation(line: 16, column: 3, scope: !585)
!672 = !DILocalVariable(name: "temp", scope: !673, file: !586, line: 24, type: !48)
!673 = distinct !DILexicalBlock(scope: !585, file: !586, line: 23, column: 3)
!674 = !DILocation(line: 24, column: 12, scope: !673)
!675 = !DILocation(line: 24, column: 19, scope: !673)
!676 = !DILocation(line: 25, column: 9, scope: !673)
!677 = !DILocation(line: 25, column: 11, scope: !673)
!678 = !DILocation(line: 25, column: 10, scope: !673)
!679 = !DILocation(line: 25, column: 15, scope: !673)
!680 = !DILocation(line: 25, column: 13, scope: !673)
!681 = !DILocation(line: 25, column: 26, scope: !673)
!682 = !DILocation(line: 25, column: 30, scope: !673)
!683 = !DILocation(line: 25, column: 24, scope: !673)
!684 = !DILocation(line: 25, column: 18, scope: !673)
!685 = !DILocation(line: 25, column: 7, scope: !673)
!686 = !DILocation(line: 26, column: 15, scope: !673)
!687 = !DILocation(line: 26, column: 17, scope: !673)
!688 = !DILocation(line: 26, column: 16, scope: !673)
!689 = !DILocation(line: 26, column: 10, scope: !673)
!690 = !DILocation(line: 26, column: 30, scope: !673)
!691 = !DILocation(line: 26, column: 25, scope: !692)
!692 = !DILexicalBlockFile(scope: !673, file: !586, discriminator: 1)
!693 = !DILocation(line: 26, column: 23, scope: !673)
!694 = !DILocation(line: 26, column: 47, scope: !673)
!695 = !DILocation(line: 26, column: 51, scope: !673)
!696 = !DILocation(line: 26, column: 42, scope: !697)
!697 = !DILexicalBlockFile(scope: !673, file: !586, discriminator: 2)
!698 = !DILocation(line: 26, column: 40, scope: !673)
!699 = !DILocation(line: 26, column: 34, scope: !673)
!700 = !DILocation(line: 26, column: 7, scope: !673)
!701 = !DILocation(line: 29, column: 17, scope: !585)
!702 = !DILocation(line: 29, column: 3, scope: !585)
!703 = !DILocation(line: 29, column: 11, scope: !585)
!704 = !DILocation(line: 29, column: 15, scope: !585)
!705 = !DILocation(line: 30, column: 35, scope: !585)
!706 = !DILocation(line: 30, column: 33, scope: !585)
!707 = !DILocation(line: 30, column: 50, scope: !585)
!708 = !DILocation(line: 30, column: 54, scope: !585)
!709 = !DILocation(line: 30, column: 44, scope: !585)
!710 = !DILocation(line: 30, column: 48, scope: !585)
!711 = !DILocation(line: 30, column: 39, scope: !585)
!712 = !DILocation(line: 30, column: 37, scope: !585)
!713 = !DILocation(line: 30, column: 3, scope: !585)
!714 = !DILocation(line: 30, column: 11, scope: !585)
!715 = !DILocation(line: 30, column: 15, scope: !585)
!716 = !DILocation(line: 32, column: 3, scope: !585)
!717 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2_e", scope: !1, file: !1, line: 1322, type: !152, isLocal: false, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!718 = !DILocalVariable(name: "x", arg: 1, scope: !717, file: !1, line: 1322, type: !47)
!719 = !DILocation(line: 1322, column: 41, scope: !717)
!720 = !DILocalVariable(name: "result", arg: 2, scope: !717, file: !1, line: 1322, type: !49)
!721 = !DILocation(line: 1322, column: 60, scope: !717)
!722 = !DILocation(line: 1324, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !1, line: 1324, column: 6)
!724 = !DILocation(line: 1324, column: 8, scope: !723)
!725 = !DILocation(line: 1324, column: 6, scope: !717)
!726 = !DILocation(line: 1325, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 1324, column: 27)
!728 = distinct !{!728, !726}
!729 = !DILocation(line: 1325, column: 5, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 1)
!731 = distinct !DILexicalBlock(scope: !727, file: !1, line: 1325, column: 5)
!732 = distinct !{!732, !733}
!733 = !DILocation(line: 1325, column: 5, scope: !731)
!734 = !DILocation(line: 1325, column: 5, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 2)
!736 = distinct !DILexicalBlock(scope: !731, file: !1, line: 1325, column: 5)
!737 = !DILocation(line: 1325, column: 5, scope: !738)
!738 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 3)
!739 = !DILocation(line: 1326, column: 3, scope: !727)
!740 = !DILocation(line: 1327, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !723, file: !1, line: 1327, column: 11)
!742 = !DILocation(line: 1327, column: 13, scope: !741)
!743 = !DILocation(line: 1327, column: 11, scope: !723)
!744 = !DILocalVariable(name: "ex", scope: !745, file: !1, line: 1330, type: !48)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 1327, column: 21)
!746 = !DILocation(line: 1330, column: 12, scope: !745)
!747 = !DILocation(line: 1330, column: 23, scope: !745)
!748 = !DILocation(line: 1330, column: 19, scope: !745)
!749 = !DILocalVariable(name: "term", scope: !745, file: !1, line: 1331, type: !48)
!750 = !DILocation(line: 1331, column: 12, scope: !745)
!751 = !DILocation(line: 1331, column: 19, scope: !745)
!752 = !DILocalVariable(name: "sum", scope: !745, file: !1, line: 1332, type: !48)
!753 = !DILocation(line: 1332, column: 12, scope: !745)
!754 = !DILocation(line: 1332, column: 19, scope: !745)
!755 = !DILocalVariable(name: "n", scope: !745, file: !1, line: 1333, type: !45)
!756 = !DILocation(line: 1333, column: 9, scope: !745)
!757 = !DILocation(line: 1334, column: 10, scope: !758)
!758 = distinct !DILexicalBlock(scope: !745, file: !1, line: 1334, column: 5)
!759 = !DILocation(line: 1334, column: 9, scope: !758)
!760 = !DILocation(line: 1334, column: 14, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!762 = distinct !DILexicalBlock(scope: !758, file: !1, line: 1334, column: 5)
!763 = !DILocation(line: 1334, column: 15, scope: !761)
!764 = !DILocation(line: 1334, column: 5, scope: !761)
!765 = !DILocalVariable(name: "rat", scope: !766, file: !1, line: 1335, type: !48)
!766 = distinct !DILexicalBlock(scope: !762, file: !1, line: 1334, column: 27)
!767 = !DILocation(line: 1335, column: 14, scope: !766)
!768 = !DILocation(line: 1335, column: 21, scope: !766)
!769 = !DILocation(line: 1335, column: 22, scope: !766)
!770 = !DILocation(line: 1335, column: 28, scope: !766)
!771 = !DILocation(line: 1335, column: 27, scope: !766)
!772 = !DILocation(line: 1336, column: 16, scope: !766)
!773 = !DILocation(line: 1336, column: 15, scope: !766)
!774 = !DILocation(line: 1336, column: 21, scope: !766)
!775 = !DILocation(line: 1336, column: 19, scope: !766)
!776 = !DILocation(line: 1336, column: 27, scope: !766)
!777 = !DILocation(line: 1336, column: 25, scope: !766)
!778 = !DILocation(line: 1336, column: 33, scope: !766)
!779 = !DILocation(line: 1336, column: 31, scope: !766)
!780 = !DILocation(line: 1336, column: 12, scope: !766)
!781 = !DILocation(line: 1337, column: 15, scope: !766)
!782 = !DILocation(line: 1337, column: 12, scope: !766)
!783 = !DILocation(line: 1338, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !766, file: !1, line: 1338, column: 10)
!785 = !DILocation(line: 1338, column: 20, scope: !784)
!786 = !DILocation(line: 1338, column: 19, scope: !784)
!787 = !DILocation(line: 1338, column: 10, scope: !784)
!788 = !DILocation(line: 1338, column: 25, scope: !784)
!789 = !DILocation(line: 1338, column: 10, scope: !766)
!790 = !DILocation(line: 1338, column: 44, scope: !791)
!791 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 1)
!792 = !DILocation(line: 1339, column: 5, scope: !766)
!793 = !DILocation(line: 1334, column: 23, scope: !794)
!794 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 2)
!795 = !DILocation(line: 1334, column: 5, scope: !794)
!796 = distinct !{!796, !797}
!797 = !DILocation(line: 1334, column: 5, scope: !745)
!798 = !DILocation(line: 1340, column: 19, scope: !745)
!799 = !DILocation(line: 1340, column: 5, scope: !745)
!800 = !DILocation(line: 1340, column: 13, scope: !745)
!801 = !DILocation(line: 1340, column: 17, scope: !745)
!802 = !DILocation(line: 1341, column: 48, scope: !745)
!803 = !DILocation(line: 1341, column: 43, scope: !745)
!804 = !DILocation(line: 1341, column: 41, scope: !745)
!805 = !DILocation(line: 1341, column: 5, scope: !745)
!806 = !DILocation(line: 1341, column: 13, scope: !745)
!807 = !DILocation(line: 1341, column: 17, scope: !745)
!808 = !DILocation(line: 1342, column: 5, scope: !745)
!809 = !DILocation(line: 1344, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !741, file: !1, line: 1344, column: 11)
!811 = !DILocation(line: 1344, column: 13, scope: !810)
!812 = !DILocation(line: 1344, column: 11, scope: !741)
!813 = !DILocation(line: 1345, column: 36, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !1, line: 1344, column: 20)
!815 = !DILocation(line: 1345, column: 39, scope: !814)
!816 = !DILocation(line: 1345, column: 12, scope: !814)
!817 = !DILocation(line: 1345, column: 5, scope: !814)
!818 = !DILocation(line: 1347, column: 11, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !1, line: 1347, column: 11)
!820 = !DILocation(line: 1347, column: 13, scope: !819)
!821 = !DILocation(line: 1347, column: 11, scope: !810)
!822 = !DILocalVariable(name: "t", scope: !823, file: !1, line: 1348, type: !48)
!823 = distinct !DILexicalBlock(scope: !819, file: !1, line: 1347, column: 20)
!824 = !DILocation(line: 1348, column: 12, scope: !823)
!825 = !DILocation(line: 1348, column: 25, scope: !823)
!826 = !DILocation(line: 1348, column: 26, scope: !823)
!827 = !DILocation(line: 1348, column: 23, scope: !823)
!828 = !DILocation(line: 1348, column: 32, scope: !823)
!829 = !DILocation(line: 1349, column: 36, scope: !823)
!830 = !DILocation(line: 1349, column: 39, scope: !823)
!831 = !DILocation(line: 1349, column: 12, scope: !823)
!832 = !DILocation(line: 1349, column: 5, scope: !823)
!833 = !DILocation(line: 1351, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !819, file: !1, line: 1351, column: 11)
!835 = !DILocation(line: 1351, column: 13, scope: !834)
!836 = !DILocation(line: 1351, column: 11, scope: !819)
!837 = !DILocalVariable(name: "t", scope: !838, file: !1, line: 1352, type: !48)
!838 = distinct !DILexicalBlock(scope: !834, file: !1, line: 1351, column: 21)
!839 = !DILocation(line: 1352, column: 12, scope: !838)
!840 = !DILocation(line: 1352, column: 25, scope: !838)
!841 = !DILocation(line: 1352, column: 26, scope: !838)
!842 = !DILocation(line: 1352, column: 23, scope: !838)
!843 = !DILocation(line: 1352, column: 32, scope: !838)
!844 = !DILocation(line: 1353, column: 36, scope: !838)
!845 = !DILocation(line: 1353, column: 39, scope: !838)
!846 = !DILocation(line: 1353, column: 12, scope: !838)
!847 = !DILocation(line: 1353, column: 5, scope: !838)
!848 = !DILocation(line: 1355, column: 11, scope: !849)
!849 = distinct !DILexicalBlock(scope: !834, file: !1, line: 1355, column: 11)
!850 = !DILocation(line: 1355, column: 13, scope: !849)
!851 = !DILocation(line: 1355, column: 11, scope: !834)
!852 = !DILocalVariable(name: "t", scope: !853, file: !1, line: 1356, type: !48)
!853 = distinct !DILexicalBlock(scope: !849, file: !1, line: 1355, column: 21)
!854 = !DILocation(line: 1356, column: 12, scope: !853)
!855 = !DILocation(line: 1356, column: 20, scope: !853)
!856 = !DILocation(line: 1356, column: 19, scope: !853)
!857 = !DILocation(line: 1356, column: 22, scope: !853)
!858 = !DILocalVariable(name: "c", scope: !853, file: !1, line: 1357, type: !50)
!859 = !DILocation(line: 1357, column: 19, scope: !853)
!860 = !DILocation(line: 1358, column: 29, scope: !853)
!861 = !DILocation(line: 1358, column: 5, scope: !853)
!862 = !DILocation(line: 1359, column: 22, scope: !853)
!863 = !DILocation(line: 1359, column: 28, scope: !853)
!864 = !DILocation(line: 1359, column: 26, scope: !853)
!865 = !DILocation(line: 1359, column: 30, scope: !853)
!866 = !DILocation(line: 1359, column: 29, scope: !853)
!867 = !DILocation(line: 1359, column: 32, scope: !853)
!868 = !DILocation(line: 1359, column: 31, scope: !853)
!869 = !DILocation(line: 1359, column: 5, scope: !853)
!870 = !DILocation(line: 1359, column: 13, scope: !853)
!871 = !DILocation(line: 1359, column: 18, scope: !853)
!872 = !DILocation(line: 1360, column: 22, scope: !853)
!873 = !DILocation(line: 1360, column: 28, scope: !853)
!874 = !DILocation(line: 1360, column: 26, scope: !853)
!875 = !DILocation(line: 1360, column: 30, scope: !853)
!876 = !DILocation(line: 1360, column: 29, scope: !853)
!877 = !DILocation(line: 1360, column: 32, scope: !853)
!878 = !DILocation(line: 1360, column: 31, scope: !853)
!879 = !DILocation(line: 1360, column: 65, scope: !853)
!880 = !DILocation(line: 1360, column: 73, scope: !853)
!881 = !DILocation(line: 1360, column: 60, scope: !853)
!882 = !DILocation(line: 1360, column: 58, scope: !853)
!883 = !DILocation(line: 1360, column: 34, scope: !853)
!884 = !DILocation(line: 1360, column: 5, scope: !853)
!885 = !DILocation(line: 1360, column: 13, scope: !853)
!886 = !DILocation(line: 1360, column: 18, scope: !853)
!887 = !DILocation(line: 1361, column: 5, scope: !853)
!888 = !DILocation(line: 1363, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !849, file: !1, line: 1363, column: 11)
!890 = !DILocation(line: 1363, column: 13, scope: !889)
!891 = !DILocation(line: 1363, column: 11, scope: !849)
!892 = !DILocalVariable(name: "t", scope: !893, file: !1, line: 1364, type: !48)
!893 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1363, column: 42)
!894 = !DILocation(line: 1364, column: 12, scope: !893)
!895 = !DILocation(line: 1364, column: 21, scope: !893)
!896 = !DILocation(line: 1364, column: 20, scope: !893)
!897 = !DILocation(line: 1364, column: 23, scope: !893)
!898 = !DILocalVariable(name: "c", scope: !893, file: !1, line: 1365, type: !50)
!899 = !DILocation(line: 1365, column: 19, scope: !893)
!900 = !DILocation(line: 1366, column: 29, scope: !893)
!901 = !DILocation(line: 1366, column: 5, scope: !893)
!902 = !DILocation(line: 1367, column: 21, scope: !893)
!903 = !DILocation(line: 1367, column: 27, scope: !893)
!904 = !DILocation(line: 1367, column: 25, scope: !893)
!905 = !DILocation(line: 1367, column: 29, scope: !893)
!906 = !DILocation(line: 1367, column: 28, scope: !893)
!907 = !DILocation(line: 1367, column: 31, scope: !893)
!908 = !DILocation(line: 1367, column: 30, scope: !893)
!909 = !DILocation(line: 1367, column: 5, scope: !893)
!910 = !DILocation(line: 1367, column: 13, scope: !893)
!911 = !DILocation(line: 1367, column: 17, scope: !893)
!912 = !DILocation(line: 1368, column: 21, scope: !893)
!913 = !DILocation(line: 1368, column: 27, scope: !893)
!914 = !DILocation(line: 1368, column: 25, scope: !893)
!915 = !DILocation(line: 1368, column: 29, scope: !893)
!916 = !DILocation(line: 1368, column: 28, scope: !893)
!917 = !DILocation(line: 1368, column: 31, scope: !893)
!918 = !DILocation(line: 1368, column: 30, scope: !893)
!919 = !DILocation(line: 1368, column: 64, scope: !893)
!920 = !DILocation(line: 1368, column: 72, scope: !893)
!921 = !DILocation(line: 1368, column: 59, scope: !893)
!922 = !DILocation(line: 1368, column: 57, scope: !893)
!923 = !DILocation(line: 1368, column: 33, scope: !893)
!924 = !DILocation(line: 1368, column: 5, scope: !893)
!925 = !DILocation(line: 1368, column: 13, scope: !893)
!926 = !DILocation(line: 1368, column: 17, scope: !893)
!927 = !DILocation(line: 1369, column: 5, scope: !893)
!928 = !DILocation(line: 1371, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1371, column: 11)
!930 = !DILocation(line: 1371, column: 13, scope: !929)
!931 = !DILocation(line: 1371, column: 11, scope: !889)
!932 = !DILocation(line: 1372, column: 29, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !1, line: 1371, column: 34)
!934 = !DILocation(line: 1372, column: 27, scope: !933)
!935 = !DILocation(line: 1372, column: 31, scope: !933)
!936 = !DILocation(line: 1372, column: 30, scope: !933)
!937 = !DILocation(line: 1372, column: 33, scope: !933)
!938 = !DILocation(line: 1372, column: 32, scope: !933)
!939 = !DILocation(line: 1372, column: 5, scope: !933)
!940 = !DILocation(line: 1372, column: 13, scope: !933)
!941 = !DILocation(line: 1372, column: 17, scope: !933)
!942 = !DILocation(line: 1373, column: 48, scope: !933)
!943 = !DILocation(line: 1373, column: 56, scope: !933)
!944 = !DILocation(line: 1373, column: 43, scope: !933)
!945 = !DILocation(line: 1373, column: 41, scope: !933)
!946 = !DILocation(line: 1373, column: 5, scope: !933)
!947 = !DILocation(line: 1373, column: 13, scope: !933)
!948 = !DILocation(line: 1373, column: 17, scope: !933)
!949 = !DILocation(line: 1374, column: 5, scope: !933)
!950 = !DILocation(line: 1377, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !929, file: !1, line: 1376, column: 8)
!952 = distinct !{!952, !950}
!953 = !DILocation(line: 1377, column: 5, scope: !954)
!954 = !DILexicalBlockFile(scope: !955, file: !1, discriminator: 1)
!955 = distinct !DILexicalBlock(scope: !951, file: !1, line: 1377, column: 5)
!956 = distinct !{!956, !957}
!957 = !DILocation(line: 1377, column: 5, scope: !955)
!958 = !DILocation(line: 1377, column: 5, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !1, discriminator: 2)
!960 = distinct !DILexicalBlock(scope: !955, file: !1, line: 1377, column: 5)
!961 = !DILocation(line: 1377, column: 5, scope: !962)
!962 = !DILexicalBlockFile(scope: !955, file: !1, discriminator: 3)
!963 = !DILocation(line: 1379, column: 1, scope: !717)
!964 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int_e", scope: !1, file: !1, line: 1382, type: !43, isLocal: false, isDefinition: true, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!965 = !DILocalVariable(name: "j", arg: 1, scope: !964, file: !1, line: 1382, type: !46)
!966 = !DILocation(line: 1382, column: 40, scope: !964)
!967 = !DILocalVariable(name: "x", arg: 2, scope: !964, file: !1, line: 1382, type: !47)
!968 = !DILocation(line: 1382, column: 56, scope: !964)
!969 = !DILocalVariable(name: "result", arg: 3, scope: !964, file: !1, line: 1382, type: !49)
!970 = !DILocation(line: 1382, column: 75, scope: !964)
!971 = !DILocation(line: 1384, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1384, column: 6)
!973 = !DILocation(line: 1384, column: 8, scope: !972)
!974 = !DILocation(line: 1384, column: 6, scope: !964)
!975 = !DILocation(line: 1385, column: 20, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !1, line: 1384, column: 14)
!977 = !DILocation(line: 1385, column: 23, scope: !976)
!978 = !DILocation(line: 1385, column: 26, scope: !976)
!979 = !DILocation(line: 1385, column: 12, scope: !976)
!980 = !DILocation(line: 1385, column: 5, scope: !976)
!981 = !DILocation(line: 1387, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !972, file: !1, line: 1387, column: 12)
!983 = !DILocation(line: 1387, column: 14, scope: !982)
!984 = !DILocation(line: 1387, column: 12, scope: !972)
!985 = !DILocation(line: 1388, column: 36, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !1, line: 1387, column: 21)
!987 = !DILocation(line: 1388, column: 39, scope: !986)
!988 = !DILocation(line: 1388, column: 12, scope: !986)
!989 = !DILocation(line: 1388, column: 5, scope: !986)
!990 = !DILocation(line: 1390, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !982, file: !1, line: 1390, column: 11)
!992 = !DILocation(line: 1390, column: 13, scope: !991)
!993 = !DILocation(line: 1390, column: 11, scope: !982)
!994 = !DILocation(line: 1391, column: 35, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !1, line: 1390, column: 19)
!996 = !DILocation(line: 1391, column: 38, scope: !995)
!997 = !DILocation(line: 1391, column: 12, scope: !995)
!998 = !DILocation(line: 1391, column: 5, scope: !995)
!999 = !DILocation(line: 1393, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !1, line: 1393, column: 11)
!1001 = !DILocation(line: 1393, column: 13, scope: !1000)
!1002 = !DILocation(line: 1393, column: 11, scope: !991)
!1003 = !DILocation(line: 1394, column: 35, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 1393, column: 19)
!1005 = !DILocation(line: 1394, column: 38, scope: !1004)
!1006 = !DILocation(line: 1394, column: 12, scope: !1004)
!1007 = !DILocation(line: 1394, column: 5, scope: !1004)
!1008 = !DILocation(line: 1396, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 1396, column: 11)
!1010 = !DILocation(line: 1396, column: 13, scope: !1009)
!1011 = !DILocation(line: 1396, column: 11, scope: !1000)
!1012 = !DILocation(line: 1397, column: 35, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 1396, column: 19)
!1014 = !DILocation(line: 1397, column: 38, scope: !1013)
!1015 = !DILocation(line: 1397, column: 12, scope: !1013)
!1016 = !DILocation(line: 1397, column: 5, scope: !1013)
!1017 = !DILocation(line: 1399, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 1399, column: 11)
!1019 = !DILocation(line: 1399, column: 13, scope: !1018)
!1020 = !DILocation(line: 1399, column: 11, scope: !1009)
!1021 = !DILocation(line: 1400, column: 19, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1399, column: 20)
!1023 = !DILocation(line: 1400, column: 22, scope: !1022)
!1024 = !DILocation(line: 1400, column: 25, scope: !1022)
!1025 = !DILocation(line: 1400, column: 12, scope: !1022)
!1026 = !DILocation(line: 1400, column: 5, scope: !1022)
!1027 = !DILocation(line: 1402, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1402, column: 11)
!1029 = !DILocation(line: 1402, column: 13, scope: !1028)
!1030 = !DILocation(line: 1402, column: 11, scope: !1018)
!1031 = !DILocation(line: 1403, column: 29, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 1402, column: 21)
!1033 = !DILocation(line: 1403, column: 30, scope: !1032)
!1034 = !DILocation(line: 1403, column: 34, scope: !1032)
!1035 = !DILocation(line: 1403, column: 12, scope: !1032)
!1036 = !DILocation(line: 1403, column: 5, scope: !1032)
!1037 = !DILocation(line: 1405, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 1405, column: 11)
!1039 = !DILocation(line: 1405, column: 13, scope: !1038)
!1040 = !DILocation(line: 1405, column: 11, scope: !1028)
!1041 = !DILocation(line: 1406, column: 26, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 1405, column: 20)
!1043 = !DILocation(line: 1406, column: 29, scope: !1042)
!1044 = !DILocation(line: 1406, column: 32, scope: !1042)
!1045 = !DILocation(line: 1406, column: 12, scope: !1042)
!1046 = !DILocation(line: 1406, column: 5, scope: !1042)
!1047 = !DILocalVariable(name: "fasymp", scope: !1048, file: !1, line: 1409, type: !50)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 1408, column: 8)
!1049 = !DILocation(line: 1409, column: 19, scope: !1048)
!1050 = !DILocalVariable(name: "stat_asymp", scope: !1048, file: !1, line: 1410, type: !45)
!1051 = !DILocation(line: 1410, column: 9, scope: !1048)
!1052 = !DILocation(line: 1410, column: 31, scope: !1048)
!1053 = !DILocation(line: 1410, column: 34, scope: !1048)
!1054 = !DILocation(line: 1410, column: 22, scope: !1048)
!1055 = !DILocation(line: 1412, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 1412, column: 8)
!1057 = !DILocation(line: 1412, column: 19, scope: !1056)
!1058 = !DILocation(line: 1412, column: 8, scope: !1048)
!1059 = !DILocation(line: 1413, column: 29, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1412, column: 35)
!1061 = !DILocation(line: 1413, column: 7, scope: !1060)
!1062 = !DILocation(line: 1413, column: 15, scope: !1060)
!1063 = !DILocation(line: 1413, column: 20, scope: !1060)
!1064 = !DILocation(line: 1414, column: 29, scope: !1060)
!1065 = !DILocation(line: 1414, column: 7, scope: !1060)
!1066 = !DILocation(line: 1414, column: 15, scope: !1060)
!1067 = !DILocation(line: 1414, column: 20, scope: !1060)
!1068 = !DILocation(line: 1415, column: 51, scope: !1060)
!1069 = !DILocation(line: 1415, column: 59, scope: !1060)
!1070 = !DILocation(line: 1415, column: 46, scope: !1060)
!1071 = !DILocation(line: 1415, column: 44, scope: !1060)
!1072 = !DILocation(line: 1415, column: 7, scope: !1060)
!1073 = !DILocation(line: 1415, column: 15, scope: !1060)
!1074 = !DILocation(line: 1415, column: 19, scope: !1060)
!1075 = !DILocation(line: 1416, column: 14, scope: !1060)
!1076 = !DILocation(line: 1416, column: 7, scope: !1060)
!1077 = !DILocation(line: 1419, column: 30, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1418, column: 10)
!1079 = !DILocation(line: 1419, column: 33, scope: !1078)
!1080 = !DILocation(line: 1419, column: 36, scope: !1078)
!1081 = !DILocation(line: 1419, column: 14, scope: !1078)
!1082 = !DILocation(line: 1419, column: 7, scope: !1078)
!1083 = !DILocation(line: 1422, column: 1, scope: !964)
!1084 = !DILocalVariable(name: "j", arg: 1, scope: !42, file: !1, line: 851, type: !46)
!1085 = !DILocation(line: 851, column: 19, scope: !42)
!1086 = !DILocalVariable(name: "x", arg: 2, scope: !42, file: !1, line: 851, type: !47)
!1087 = !DILocation(line: 851, column: 35, scope: !42)
!1088 = !DILocalVariable(name: "result", arg: 3, scope: !42, file: !1, line: 851, type: !49)
!1089 = !DILocation(line: 851, column: 54, scope: !42)
!1090 = !DILocalVariable(name: "qcoeff", scope: !42, file: !1, line: 857, type: !1091)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6464, align: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 101)
!1094 = !DILocation(line: 857, column: 10, scope: !42)
!1095 = !DILocation(line: 859, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !42, file: !1, line: 859, column: 6)
!1097 = !DILocation(line: 859, column: 8, scope: !1096)
!1098 = !DILocation(line: 859, column: 6, scope: !42)
!1099 = !DILocation(line: 860, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 859, column: 15)
!1101 = !DILocation(line: 860, column: 13, scope: !1100)
!1102 = !DILocation(line: 860, column: 17, scope: !1100)
!1103 = !DILocation(line: 861, column: 5, scope: !1100)
!1104 = !DILocation(line: 861, column: 13, scope: !1100)
!1105 = !DILocation(line: 861, column: 17, scope: !1100)
!1106 = !DILocation(line: 862, column: 5, scope: !1100)
!1107 = distinct !{!1107, !1106}
!1108 = !DILocation(line: 862, column: 5, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !1, discriminator: 1)
!1110 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 862, column: 5)
!1111 = !DILocation(line: 863, column: 3, scope: !1100)
!1112 = !DILocation(line: 864, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 864, column: 11)
!1114 = !DILocation(line: 864, column: 13, scope: !1113)
!1115 = !DILocation(line: 864, column: 11, scope: !1096)
!1116 = !DILocation(line: 865, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 864, column: 25)
!1118 = !DILocation(line: 865, column: 13, scope: !1117)
!1119 = !DILocation(line: 865, column: 17, scope: !1117)
!1120 = !DILocation(line: 866, column: 5, scope: !1117)
!1121 = !DILocation(line: 866, column: 13, scope: !1117)
!1122 = !DILocation(line: 866, column: 17, scope: !1117)
!1123 = !DILocation(line: 867, column: 5, scope: !1117)
!1124 = distinct !{!1124, !1123}
!1125 = !DILocation(line: 867, column: 5, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !1, discriminator: 1)
!1127 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 867, column: 5)
!1128 = !DILocation(line: 868, column: 3, scope: !1117)
!1129 = !DILocalVariable(name: "a", scope: !1130, file: !1, line: 870, type: !48)
!1130 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 869, column: 8)
!1131 = !DILocation(line: 870, column: 12, scope: !1130)
!1132 = !DILocalVariable(name: "p", scope: !1130, file: !1, line: 870, type: !48)
!1133 = !DILocation(line: 870, column: 15, scope: !1130)
!1134 = !DILocalVariable(name: "f", scope: !1130, file: !1, line: 870, type: !48)
!1135 = !DILocation(line: 870, column: 18, scope: !1130)
!1136 = !DILocalVariable(name: "i", scope: !1130, file: !1, line: 871, type: !45)
!1137 = !DILocation(line: 871, column: 9, scope: !1130)
!1138 = !DILocalVariable(name: "k", scope: !1130, file: !1, line: 871, type: !45)
!1139 = !DILocation(line: 871, column: 12, scope: !1130)
!1140 = !DILocalVariable(name: "n", scope: !1130, file: !1, line: 872, type: !45)
!1141 = !DILocation(line: 872, column: 9, scope: !1130)
!1142 = !DILocation(line: 872, column: 15, scope: !1130)
!1143 = !DILocation(line: 872, column: 16, scope: !1130)
!1144 = !DILocation(line: 872, column: 13, scope: !1130)
!1145 = !DILocation(line: 874, column: 5, scope: !1130)
!1146 = !DILocation(line: 874, column: 15, scope: !1130)
!1147 = !DILocation(line: 876, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 876, column: 5)
!1149 = !DILocation(line: 876, column: 9, scope: !1148)
!1150 = !DILocation(line: 876, column: 14, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 876, column: 5)
!1153 = !DILocation(line: 876, column: 17, scope: !1151)
!1154 = !DILocation(line: 876, column: 15, scope: !1151)
!1155 = !DILocation(line: 876, column: 5, scope: !1151)
!1156 = !DILocation(line: 877, column: 27, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 876, column: 25)
!1158 = !DILocation(line: 877, column: 28, scope: !1157)
!1159 = !DILocation(line: 877, column: 20, scope: !1157)
!1160 = !DILocation(line: 877, column: 19, scope: !1157)
!1161 = !DILocation(line: 877, column: 14, scope: !1157)
!1162 = !DILocation(line: 877, column: 7, scope: !1157)
!1163 = !DILocation(line: 877, column: 17, scope: !1157)
!1164 = !DILocation(line: 878, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 878, column: 7)
!1166 = !DILocation(line: 878, column: 14, scope: !1165)
!1167 = !DILocation(line: 878, column: 12, scope: !1165)
!1168 = !DILocation(line: 878, column: 11, scope: !1165)
!1169 = !DILocation(line: 878, column: 18, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !1, discriminator: 1)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 878, column: 7)
!1172 = !DILocation(line: 878, column: 19, scope: !1170)
!1173 = !DILocation(line: 878, column: 7, scope: !1170)
!1174 = !DILocation(line: 879, column: 21, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 878, column: 29)
!1176 = !DILocation(line: 879, column: 30, scope: !1175)
!1177 = !DILocation(line: 879, column: 23, scope: !1175)
!1178 = !DILocation(line: 879, column: 22, scope: !1175)
!1179 = !DILocation(line: 879, column: 36, scope: !1175)
!1180 = !DILocation(line: 879, column: 39, scope: !1175)
!1181 = !DILocation(line: 879, column: 40, scope: !1175)
!1182 = !DILocation(line: 879, column: 37, scope: !1175)
!1183 = !DILocation(line: 879, column: 35, scope: !1175)
!1184 = !DILocation(line: 879, column: 52, scope: !1175)
!1185 = !DILocation(line: 879, column: 53, scope: !1175)
!1186 = !DILocation(line: 879, column: 45, scope: !1175)
!1187 = !DILocation(line: 879, column: 44, scope: !1175)
!1188 = !DILocation(line: 879, column: 33, scope: !1175)
!1189 = !DILocation(line: 879, column: 16, scope: !1175)
!1190 = !DILocation(line: 879, column: 9, scope: !1175)
!1191 = !DILocation(line: 879, column: 19, scope: !1175)
!1192 = !DILocation(line: 880, column: 7, scope: !1175)
!1193 = !DILocation(line: 878, column: 25, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1171, file: !1, discriminator: 2)
!1195 = !DILocation(line: 878, column: 7, scope: !1194)
!1196 = distinct !{!1196, !1197}
!1197 = !DILocation(line: 878, column: 7, scope: !1157)
!1198 = !DILocation(line: 881, column: 5, scope: !1157)
!1199 = !DILocation(line: 876, column: 21, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 2)
!1201 = !DILocation(line: 876, column: 5, scope: !1200)
!1202 = distinct !{!1202, !1203}
!1203 = !DILocation(line: 876, column: 5, scope: !1130)
!1204 = !DILocation(line: 883, column: 8, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 883, column: 8)
!1206 = !DILocation(line: 883, column: 10, scope: !1205)
!1207 = !DILocation(line: 883, column: 8, scope: !1130)
!1208 = !DILocation(line: 884, column: 16, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 883, column: 18)
!1210 = !DILocation(line: 884, column: 15, scope: !1209)
!1211 = !DILocation(line: 884, column: 11, scope: !1209)
!1212 = !DILocation(line: 884, column: 9, scope: !1209)
!1213 = !DILocation(line: 885, column: 11, scope: !1209)
!1214 = !DILocation(line: 885, column: 9, scope: !1209)
!1215 = !DILocation(line: 886, column: 12, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 886, column: 7)
!1217 = !DILocation(line: 886, column: 11, scope: !1216)
!1218 = !DILocation(line: 886, column: 16, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1220, file: !1, discriminator: 1)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 886, column: 7)
!1221 = !DILocation(line: 886, column: 19, scope: !1219)
!1222 = !DILocation(line: 886, column: 17, scope: !1219)
!1223 = !DILocation(line: 886, column: 7, scope: !1219)
!1224 = !DILocation(line: 887, column: 13, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 886, column: 27)
!1226 = !DILocation(line: 887, column: 15, scope: !1225)
!1227 = !DILocation(line: 887, column: 14, scope: !1225)
!1228 = !DILocation(line: 887, column: 26, scope: !1225)
!1229 = !DILocation(line: 887, column: 19, scope: !1225)
!1230 = !DILocation(line: 887, column: 17, scope: !1225)
!1231 = !DILocation(line: 887, column: 11, scope: !1225)
!1232 = !DILocation(line: 888, column: 7, scope: !1225)
!1233 = !DILocation(line: 886, column: 23, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1220, file: !1, discriminator: 2)
!1235 = !DILocation(line: 886, column: 7, scope: !1234)
!1236 = distinct !{!1236, !1237}
!1237 = !DILocation(line: 886, column: 7, scope: !1209)
!1238 = !DILocation(line: 889, column: 5, scope: !1209)
!1239 = !DILocation(line: 891, column: 15, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 890, column: 10)
!1241 = !DILocation(line: 891, column: 11, scope: !1240)
!1242 = !DILocation(line: 891, column: 9, scope: !1240)
!1243 = !DILocation(line: 892, column: 18, scope: !1240)
!1244 = !DILocation(line: 892, column: 11, scope: !1240)
!1245 = !DILocation(line: 892, column: 9, scope: !1240)
!1246 = !DILocation(line: 893, column: 13, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 893, column: 7)
!1248 = !DILocation(line: 893, column: 14, scope: !1247)
!1249 = !DILocation(line: 893, column: 12, scope: !1247)
!1250 = !DILocation(line: 893, column: 11, scope: !1247)
!1251 = !DILocation(line: 893, column: 18, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !1, discriminator: 1)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 893, column: 7)
!1254 = !DILocation(line: 893, column: 19, scope: !1252)
!1255 = !DILocation(line: 893, column: 7, scope: !1252)
!1256 = !DILocation(line: 894, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 893, column: 29)
!1258 = !DILocation(line: 894, column: 15, scope: !1257)
!1259 = !DILocation(line: 894, column: 14, scope: !1257)
!1260 = !DILocation(line: 894, column: 26, scope: !1257)
!1261 = !DILocation(line: 894, column: 19, scope: !1257)
!1262 = !DILocation(line: 894, column: 17, scope: !1257)
!1263 = !DILocation(line: 894, column: 11, scope: !1257)
!1264 = !DILocation(line: 895, column: 7, scope: !1257)
!1265 = !DILocation(line: 893, column: 25, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1253, file: !1, discriminator: 2)
!1267 = !DILocation(line: 893, column: 7, scope: !1266)
!1268 = distinct !{!1268, !1269}
!1269 = !DILocation(line: 893, column: 7, scope: !1240)
!1270 = !DILocation(line: 898, column: 28, scope: !1130)
!1271 = !DILocation(line: 898, column: 27, scope: !1130)
!1272 = !DILocation(line: 898, column: 31, scope: !1130)
!1273 = !DILocation(line: 898, column: 9, scope: !1130)
!1274 = !DILocation(line: 898, column: 7, scope: !1130)
!1275 = !DILocation(line: 899, column: 19, scope: !1130)
!1276 = !DILocation(line: 899, column: 21, scope: !1130)
!1277 = !DILocation(line: 899, column: 20, scope: !1130)
!1278 = !DILocation(line: 899, column: 23, scope: !1130)
!1279 = !DILocation(line: 899, column: 22, scope: !1130)
!1280 = !DILocation(line: 899, column: 5, scope: !1130)
!1281 = !DILocation(line: 899, column: 13, scope: !1130)
!1282 = !DILocation(line: 899, column: 17, scope: !1130)
!1283 = !DILocation(line: 900, column: 48, scope: !1130)
!1284 = !DILocation(line: 900, column: 50, scope: !1130)
!1285 = !DILocation(line: 900, column: 49, scope: !1130)
!1286 = !DILocation(line: 900, column: 52, scope: !1130)
!1287 = !DILocation(line: 900, column: 51, scope: !1130)
!1288 = !DILocation(line: 900, column: 43, scope: !1130)
!1289 = !DILocation(line: 900, column: 41, scope: !1130)
!1290 = !DILocation(line: 900, column: 5, scope: !1130)
!1291 = !DILocation(line: 900, column: 13, scope: !1130)
!1292 = !DILocation(line: 900, column: 17, scope: !1130)
!1293 = !DILocation(line: 901, column: 5, scope: !1130)
!1294 = !DILocation(line: 903, column: 1, scope: !42)
!1295 = !DILocalVariable(name: "j", arg: 1, scope: !60, file: !1, line: 910, type: !47)
!1296 = !DILocation(line: 910, column: 21, scope: !60)
!1297 = !DILocalVariable(name: "x", arg: 2, scope: !60, file: !1, line: 910, type: !47)
!1298 = !DILocation(line: 910, column: 37, scope: !60)
!1299 = !DILocalVariable(name: "result", arg: 3, scope: !60, file: !1, line: 910, type: !49)
!1300 = !DILocation(line: 910, column: 56, scope: !60)
!1301 = !DILocalVariable(name: "qnum", scope: !60, file: !1, line: 918, type: !1091)
!1302 = !DILocation(line: 918, column: 10, scope: !60)
!1303 = !DILocalVariable(name: "qden", scope: !60, file: !1, line: 918, type: !1091)
!1304 = !DILocation(line: 918, column: 23, scope: !60)
!1305 = !DILocation(line: 920, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !60, file: !1, line: 920, column: 6)
!1307 = !DILocation(line: 920, column: 8, scope: !1306)
!1308 = !DILocation(line: 920, column: 6, scope: !60)
!1309 = !DILocation(line: 921, column: 5, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 920, column: 27)
!1311 = !DILocation(line: 921, column: 13, scope: !1310)
!1312 = !DILocation(line: 921, column: 17, scope: !1310)
!1313 = !DILocation(line: 922, column: 5, scope: !1310)
!1314 = !DILocation(line: 922, column: 13, scope: !1310)
!1315 = !DILocation(line: 922, column: 17, scope: !1310)
!1316 = !DILocation(line: 923, column: 5, scope: !1310)
!1317 = !DILocation(line: 925, column: 11, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 925, column: 11)
!1319 = !DILocation(line: 925, column: 13, scope: !1318)
!1320 = !DILocation(line: 925, column: 20, scope: !1318)
!1321 = !DILocation(line: 925, column: 23, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1318, file: !1, discriminator: 1)
!1323 = !DILocation(line: 925, column: 33, scope: !1322)
!1324 = !DILocation(line: 925, column: 34, scope: !1322)
!1325 = !DILocation(line: 925, column: 28, scope: !1322)
!1326 = !DILocation(line: 925, column: 27, scope: !1322)
!1327 = !DILocation(line: 925, column: 25, scope: !1322)
!1328 = !DILocation(line: 925, column: 11, scope: !1322)
!1329 = !DILocalVariable(name: "ex", scope: !1330, file: !1, line: 930, type: !48)
!1330 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 925, column: 41)
!1331 = !DILocation(line: 930, column: 12, scope: !1330)
!1332 = !DILocation(line: 930, column: 23, scope: !1330)
!1333 = !DILocation(line: 930, column: 19, scope: !1330)
!1334 = !DILocalVariable(name: "term", scope: !1330, file: !1, line: 931, type: !48)
!1335 = !DILocation(line: 931, column: 12, scope: !1330)
!1336 = !DILocation(line: 931, column: 19, scope: !1330)
!1337 = !DILocalVariable(name: "sum", scope: !1330, file: !1, line: 932, type: !48)
!1338 = !DILocation(line: 932, column: 12, scope: !1330)
!1339 = !DILocation(line: 932, column: 19, scope: !1330)
!1340 = !DILocalVariable(name: "n", scope: !1330, file: !1, line: 933, type: !45)
!1341 = !DILocation(line: 933, column: 9, scope: !1330)
!1342 = !DILocation(line: 934, column: 10, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 934, column: 5)
!1344 = !DILocation(line: 934, column: 9, scope: !1343)
!1345 = !DILocation(line: 934, column: 14, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1347, file: !1, discriminator: 1)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 934, column: 5)
!1348 = !DILocation(line: 934, column: 15, scope: !1346)
!1349 = !DILocation(line: 934, column: 5, scope: !1346)
!1350 = !DILocalVariable(name: "rat", scope: !1351, file: !1, line: 935, type: !48)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 934, column: 26)
!1352 = !DILocation(line: 935, column: 14, scope: !1351)
!1353 = !DILocation(line: 935, column: 21, scope: !1351)
!1354 = !DILocation(line: 935, column: 22, scope: !1351)
!1355 = !DILocation(line: 935, column: 28, scope: !1351)
!1356 = !DILocation(line: 935, column: 27, scope: !1351)
!1357 = !DILocalVariable(name: "p", scope: !1351, file: !1, line: 936, type: !48)
!1358 = !DILocation(line: 936, column: 14, scope: !1351)
!1359 = !DILocation(line: 936, column: 24, scope: !1351)
!1360 = !DILocation(line: 936, column: 29, scope: !1351)
!1361 = !DILocation(line: 936, column: 30, scope: !1351)
!1362 = !DILocation(line: 936, column: 20, scope: !1351)
!1363 = !DILocation(line: 937, column: 16, scope: !1351)
!1364 = !DILocation(line: 937, column: 15, scope: !1351)
!1365 = !DILocation(line: 937, column: 21, scope: !1351)
!1366 = !DILocation(line: 937, column: 19, scope: !1351)
!1367 = !DILocation(line: 937, column: 12, scope: !1351)
!1368 = !DILocation(line: 938, column: 15, scope: !1351)
!1369 = !DILocation(line: 938, column: 12, scope: !1351)
!1370 = !DILocation(line: 939, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 939, column: 10)
!1372 = !DILocation(line: 939, column: 20, scope: !1371)
!1373 = !DILocation(line: 939, column: 19, scope: !1371)
!1374 = !DILocation(line: 939, column: 10, scope: !1371)
!1375 = !DILocation(line: 939, column: 25, scope: !1371)
!1376 = !DILocation(line: 939, column: 10, scope: !1351)
!1377 = !DILocation(line: 939, column: 44, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1371, file: !1, discriminator: 1)
!1379 = !DILocation(line: 940, column: 5, scope: !1351)
!1380 = !DILocation(line: 934, column: 22, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1347, file: !1, discriminator: 2)
!1382 = !DILocation(line: 934, column: 5, scope: !1381)
!1383 = distinct !{!1383, !1384}
!1384 = !DILocation(line: 934, column: 5, scope: !1330)
!1385 = !DILocation(line: 941, column: 19, scope: !1330)
!1386 = !DILocation(line: 941, column: 5, scope: !1330)
!1387 = !DILocation(line: 941, column: 13, scope: !1330)
!1388 = !DILocation(line: 941, column: 17, scope: !1330)
!1389 = !DILocation(line: 942, column: 48, scope: !1330)
!1390 = !DILocation(line: 942, column: 43, scope: !1330)
!1391 = !DILocation(line: 942, column: 41, scope: !1330)
!1392 = !DILocation(line: 942, column: 5, scope: !1330)
!1393 = !DILocation(line: 942, column: 13, scope: !1330)
!1394 = !DILocation(line: 942, column: 17, scope: !1330)
!1395 = !DILocation(line: 943, column: 5, scope: !1330)
!1396 = !DILocalVariable(name: "s", scope: !1397, file: !1, line: 946, type: !48)
!1397 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 945, column: 8)
!1398 = !DILocation(line: 946, column: 12, scope: !1397)
!1399 = !DILocalVariable(name: "xn", scope: !1397, file: !1, line: 947, type: !48)
!1400 = !DILocation(line: 947, column: 12, scope: !1397)
!1401 = !DILocation(line: 947, column: 17, scope: !1397)
!1402 = !DILocalVariable(name: "ex", scope: !1397, file: !1, line: 948, type: !48)
!1403 = !DILocation(line: 948, column: 12, scope: !1397)
!1404 = !DILocation(line: 948, column: 23, scope: !1397)
!1405 = !DILocation(line: 948, column: 19, scope: !1397)
!1406 = !DILocation(line: 948, column: 18, scope: !1397)
!1407 = !DILocalVariable(name: "enx", scope: !1397, file: !1, line: 949, type: !48)
!1408 = !DILocation(line: 949, column: 12, scope: !1397)
!1409 = !DILocation(line: 949, column: 19, scope: !1397)
!1410 = !DILocation(line: 949, column: 18, scope: !1397)
!1411 = !DILocalVariable(name: "f", scope: !1397, file: !1, line: 950, type: !48)
!1412 = !DILocation(line: 950, column: 12, scope: !1397)
!1413 = !DILocalVariable(name: "f_previous", scope: !1397, file: !1, line: 951, type: !48)
!1414 = !DILocation(line: 951, column: 12, scope: !1397)
!1415 = !DILocalVariable(name: "jterm", scope: !1397, file: !1, line: 952, type: !45)
!1416 = !DILocation(line: 952, column: 9, scope: !1397)
!1417 = !DILocation(line: 953, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 953, column: 5)
!1419 = !DILocation(line: 953, column: 9, scope: !1418)
!1420 = !DILocation(line: 953, column: 18, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !1, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 953, column: 5)
!1423 = !DILocation(line: 953, column: 23, scope: !1421)
!1424 = !DILocation(line: 953, column: 5, scope: !1421)
!1425 = !DILocalVariable(name: "p", scope: !1426, file: !1, line: 954, type: !48)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 953, column: 41)
!1427 = !DILocation(line: 954, column: 14, scope: !1426)
!1428 = !DILocation(line: 954, column: 22, scope: !1426)
!1429 = !DILocation(line: 954, column: 27, scope: !1426)
!1430 = !DILocation(line: 954, column: 33, scope: !1426)
!1431 = !DILocation(line: 954, column: 34, scope: !1426)
!1432 = !DILocation(line: 954, column: 18, scope: !1426)
!1433 = !DILocalVariable(name: "term", scope: !1426, file: !1, line: 955, type: !48)
!1434 = !DILocation(line: 955, column: 14, scope: !1426)
!1435 = !DILocation(line: 955, column: 21, scope: !1426)
!1436 = !DILocation(line: 955, column: 25, scope: !1426)
!1437 = !DILocation(line: 955, column: 24, scope: !1426)
!1438 = !DILocation(line: 956, column: 20, scope: !1426)
!1439 = !DILocation(line: 956, column: 18, scope: !1426)
!1440 = !DILocation(line: 957, column: 15, scope: !1426)
!1441 = !DILocation(line: 957, column: 21, scope: !1426)
!1442 = !DILocation(line: 957, column: 28, scope: !1426)
!1443 = !DILocation(line: 957, column: 34, scope: !1426)
!1444 = !DILocation(line: 957, column: 7, scope: !1426)
!1445 = !DILocation(line: 958, column: 13, scope: !1426)
!1446 = !DILocation(line: 958, column: 10, scope: !1426)
!1447 = !DILocation(line: 959, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 959, column: 10)
!1449 = !DILocation(line: 959, column: 17, scope: !1448)
!1450 = !DILocation(line: 959, column: 16, scope: !1448)
!1451 = !DILocation(line: 959, column: 10, scope: !1448)
!1452 = !DILocation(line: 959, column: 36, scope: !1448)
!1453 = !DILocation(line: 959, column: 31, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1448, file: !1, discriminator: 3)
!1455 = !DILocation(line: 959, column: 38, scope: !1448)
!1456 = !DILocation(line: 959, column: 42, scope: !1448)
!1457 = !DILocation(line: 959, column: 29, scope: !1448)
!1458 = !DILocation(line: 959, column: 59, scope: !1448)
!1459 = !DILocation(line: 959, column: 62, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1448, file: !1, discriminator: 1)
!1461 = !DILocation(line: 959, column: 65, scope: !1460)
!1462 = !DILocation(line: 959, column: 10, scope: !1460)
!1463 = !DILocation(line: 959, column: 84, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1448, file: !1, discriminator: 2)
!1465 = !DILocation(line: 960, column: 14, scope: !1426)
!1466 = !DILocation(line: 960, column: 11, scope: !1426)
!1467 = !DILocation(line: 961, column: 5, scope: !1426)
!1468 = !DILocation(line: 953, column: 37, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1422, file: !1, discriminator: 2)
!1470 = !DILocation(line: 953, column: 5, scope: !1469)
!1471 = distinct !{!1471, !1472}
!1472 = !DILocation(line: 953, column: 5, scope: !1397)
!1473 = !DILocation(line: 963, column: 20, scope: !1397)
!1474 = !DILocation(line: 963, column: 5, scope: !1397)
!1475 = !DILocation(line: 963, column: 13, scope: !1397)
!1476 = !DILocation(line: 963, column: 18, scope: !1397)
!1477 = !DILocation(line: 964, column: 25, scope: !1397)
!1478 = !DILocation(line: 964, column: 27, scope: !1397)
!1479 = !DILocation(line: 964, column: 26, scope: !1397)
!1480 = !DILocation(line: 964, column: 20, scope: !1397)
!1481 = !DILocation(line: 964, column: 5, scope: !1397)
!1482 = !DILocation(line: 964, column: 13, scope: !1397)
!1483 = !DILocation(line: 964, column: 18, scope: !1397)
!1484 = !DILocation(line: 965, column: 49, scope: !1397)
!1485 = !DILocation(line: 965, column: 44, scope: !1397)
!1486 = !DILocation(line: 965, column: 42, scope: !1397)
!1487 = !DILocation(line: 965, column: 5, scope: !1397)
!1488 = !DILocation(line: 965, column: 13, scope: !1397)
!1489 = !DILocation(line: 965, column: 17, scope: !1397)
!1490 = !DILocation(line: 967, column: 8, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 967, column: 8)
!1492 = !DILocation(line: 967, column: 14, scope: !1491)
!1493 = !DILocation(line: 967, column: 8, scope: !1397)
!1494 = !DILocation(line: 968, column: 7, scope: !1491)
!1495 = distinct !{!1495, !1494}
!1496 = !DILocation(line: 968, column: 7, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !1, discriminator: 1)
!1498 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 968, column: 7)
!1499 = !DILocation(line: 968, column: 7, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1498, file: !1, discriminator: 2)
!1501 = !DILocation(line: 970, column: 7, scope: !1491)
!1502 = !DILocation(line: 972, column: 1, scope: !60)
!1503 = distinct !DISubprogram(name: "fd_series_int", scope: !1, file: !1, line: 1069, type: !43, isLocal: true, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1504 = !DILocalVariable(name: "j", arg: 1, scope: !1503, file: !1, line: 1069, type: !46)
!1505 = !DILocation(line: 1069, column: 25, scope: !1503)
!1506 = !DILocalVariable(name: "x", arg: 2, scope: !1503, file: !1, line: 1069, type: !47)
!1507 = !DILocation(line: 1069, column: 41, scope: !1503)
!1508 = !DILocalVariable(name: "result", arg: 3, scope: !1503, file: !1, line: 1069, type: !49)
!1509 = !DILocation(line: 1069, column: 60, scope: !1503)
!1510 = !DILocalVariable(name: "n", scope: !1503, file: !1, line: 1071, type: !45)
!1511 = !DILocation(line: 1071, column: 7, scope: !1503)
!1512 = !DILocalVariable(name: "sum", scope: !1503, file: !1, line: 1072, type: !48)
!1513 = !DILocation(line: 1072, column: 10, scope: !1503)
!1514 = !DILocalVariable(name: "del", scope: !1503, file: !1, line: 1073, type: !48)
!1515 = !DILocation(line: 1073, column: 10, scope: !1503)
!1516 = !DILocalVariable(name: "pow_factor", scope: !1503, file: !1, line: 1074, type: !48)
!1517 = !DILocation(line: 1074, column: 10, scope: !1503)
!1518 = !DILocalVariable(name: "eta_factor", scope: !1503, file: !1, line: 1075, type: !50)
!1519 = !DILocation(line: 1075, column: 17, scope: !1503)
!1520 = !DILocation(line: 1076, column: 20, scope: !1503)
!1521 = !DILocation(line: 1076, column: 22, scope: !1503)
!1522 = !DILocation(line: 1076, column: 3, scope: !1503)
!1523 = !DILocation(line: 1077, column: 10, scope: !1503)
!1524 = !DILocation(line: 1077, column: 34, scope: !1503)
!1525 = !DILocation(line: 1077, column: 21, scope: !1503)
!1526 = !DILocation(line: 1077, column: 8, scope: !1503)
!1527 = !DILocation(line: 1078, column: 10, scope: !1503)
!1528 = !DILocation(line: 1078, column: 7, scope: !1503)
!1529 = !DILocation(line: 1083, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 1083, column: 3)
!1531 = !DILocation(line: 1083, column: 7, scope: !1530)
!1532 = !DILocation(line: 1083, column: 12, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !1, discriminator: 1)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 1083, column: 3)
!1535 = !DILocation(line: 1083, column: 15, scope: !1533)
!1536 = !DILocation(line: 1083, column: 16, scope: !1533)
!1537 = !DILocation(line: 1083, column: 13, scope: !1533)
!1538 = !DILocation(line: 1083, column: 3, scope: !1533)
!1539 = !DILocation(line: 1084, column: 22, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 1083, column: 25)
!1541 = !DILocation(line: 1084, column: 23, scope: !1540)
!1542 = !DILocation(line: 1084, column: 26, scope: !1540)
!1543 = !DILocation(line: 1084, column: 25, scope: !1540)
!1544 = !DILocation(line: 1084, column: 5, scope: !1540)
!1545 = !DILocation(line: 1085, column: 19, scope: !1540)
!1546 = !DILocation(line: 1085, column: 21, scope: !1540)
!1547 = !DILocation(line: 1085, column: 20, scope: !1540)
!1548 = !DILocation(line: 1085, column: 16, scope: !1540)
!1549 = !DILocation(line: 1086, column: 12, scope: !1540)
!1550 = !DILocation(line: 1086, column: 36, scope: !1540)
!1551 = !DILocation(line: 1086, column: 23, scope: !1540)
!1552 = !DILocation(line: 1086, column: 10, scope: !1540)
!1553 = !DILocation(line: 1087, column: 12, scope: !1540)
!1554 = !DILocation(line: 1087, column: 9, scope: !1540)
!1555 = !DILocation(line: 1088, column: 13, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 1088, column: 8)
!1557 = !DILocation(line: 1088, column: 17, scope: !1556)
!1558 = !DILocation(line: 1088, column: 16, scope: !1556)
!1559 = !DILocation(line: 1088, column: 8, scope: !1556)
!1560 = !DILocation(line: 1088, column: 22, scope: !1556)
!1561 = !DILocation(line: 1088, column: 8, scope: !1540)
!1562 = !DILocation(line: 1088, column: 41, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 1)
!1564 = !DILocation(line: 1089, column: 3, scope: !1540)
!1565 = !DILocation(line: 1083, column: 21, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1534, file: !1, discriminator: 2)
!1567 = !DILocation(line: 1083, column: 3, scope: !1566)
!1568 = distinct !{!1568, !1569}
!1569 = !DILocation(line: 1083, column: 3, scope: !1503)
!1570 = !DILocation(line: 1101, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 1101, column: 6)
!1572 = !DILocation(line: 1101, column: 8, scope: !1571)
!1573 = !DILocation(line: 1101, column: 6, scope: !1503)
!1574 = !DILocalVariable(name: "m", scope: !1575, file: !1, line: 1102, type: !45)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 1101, column: 14)
!1576 = !DILocation(line: 1102, column: 9, scope: !1575)
!1577 = !DILocalVariable(name: "jfact", scope: !1575, file: !1, line: 1103, type: !50)
!1578 = !DILocation(line: 1103, column: 19, scope: !1575)
!1579 = !DILocalVariable(name: "sum2", scope: !1575, file: !1, line: 1104, type: !48)
!1580 = !DILocation(line: 1104, column: 12, scope: !1575)
!1581 = !DILocalVariable(name: "pre2", scope: !1575, file: !1, line: 1105, type: !48)
!1582 = !DILocation(line: 1105, column: 12, scope: !1575)
!1583 = !DILocation(line: 1107, column: 33, scope: !1575)
!1584 = !DILocation(line: 1107, column: 5, scope: !1575)
!1585 = !DILocation(line: 1108, column: 27, scope: !1575)
!1586 = !DILocation(line: 1108, column: 30, scope: !1575)
!1587 = !DILocation(line: 1108, column: 12, scope: !1575)
!1588 = !DILocation(line: 1108, column: 41, scope: !1575)
!1589 = !DILocation(line: 1108, column: 33, scope: !1575)
!1590 = !DILocation(line: 1108, column: 10, scope: !1575)
!1591 = !DILocation(line: 1110, column: 5, scope: !1575)
!1592 = !DILocation(line: 1111, column: 18, scope: !1575)
!1593 = !DILocation(line: 1111, column: 20, scope: !1575)
!1594 = !DILocation(line: 1111, column: 19, scope: !1575)
!1595 = !DILocation(line: 1111, column: 22, scope: !1575)
!1596 = !DILocation(line: 1111, column: 21, scope: !1575)
!1597 = !DILocation(line: 1111, column: 24, scope: !1575)
!1598 = !DILocation(line: 1111, column: 23, scope: !1575)
!1599 = !DILocation(line: 1111, column: 30, scope: !1575)
!1600 = !DILocation(line: 1111, column: 31, scope: !1575)
!1601 = !DILocation(line: 1111, column: 36, scope: !1575)
!1602 = !DILocation(line: 1111, column: 37, scope: !1575)
!1603 = !DILocation(line: 1111, column: 34, scope: !1575)
!1604 = !DILocation(line: 1111, column: 42, scope: !1575)
!1605 = !DILocation(line: 1111, column: 43, scope: !1575)
!1606 = !DILocation(line: 1111, column: 40, scope: !1575)
!1607 = !DILocation(line: 1111, column: 48, scope: !1575)
!1608 = !DILocation(line: 1111, column: 49, scope: !1575)
!1609 = !DILocation(line: 1111, column: 46, scope: !1575)
!1610 = !DILocation(line: 1111, column: 28, scope: !1575)
!1611 = !DILocation(line: 1111, column: 26, scope: !1575)
!1612 = !DILocation(line: 1111, column: 16, scope: !1575)
!1613 = !DILocation(line: 1112, column: 23, scope: !1575)
!1614 = !DILocation(line: 1112, column: 29, scope: !1575)
!1615 = !DILocation(line: 1112, column: 27, scope: !1575)
!1616 = !DILocation(line: 1112, column: 10, scope: !1575)
!1617 = !DILocation(line: 1114, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 1114, column: 5)
!1619 = !DILocation(line: 1114, column: 9, scope: !1618)
!1620 = !DILocation(line: 1114, column: 14, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !1, discriminator: 1)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 1114, column: 5)
!1623 = !DILocation(line: 1114, column: 15, scope: !1621)
!1624 = !DILocation(line: 1114, column: 5, scope: !1621)
!1625 = !DILocation(line: 1115, column: 28, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 1114, column: 25)
!1627 = !DILocation(line: 1115, column: 27, scope: !1626)
!1628 = !DILocation(line: 1115, column: 25, scope: !1626)
!1629 = !DILocation(line: 1115, column: 7, scope: !1626)
!1630 = !DILocation(line: 1116, column: 21, scope: !1626)
!1631 = !DILocation(line: 1116, column: 23, scope: !1626)
!1632 = !DILocation(line: 1116, column: 22, scope: !1626)
!1633 = !DILocation(line: 1116, column: 29, scope: !1626)
!1634 = !DILocation(line: 1116, column: 33, scope: !1626)
!1635 = !DILocation(line: 1116, column: 32, scope: !1626)
!1636 = !DILocation(line: 1116, column: 30, scope: !1626)
!1637 = !DILocation(line: 1116, column: 37, scope: !1626)
!1638 = !DILocation(line: 1116, column: 41, scope: !1626)
!1639 = !DILocation(line: 1116, column: 40, scope: !1626)
!1640 = !DILocation(line: 1116, column: 38, scope: !1626)
!1641 = !DILocation(line: 1116, column: 42, scope: !1626)
!1642 = !DILocation(line: 1116, column: 35, scope: !1626)
!1643 = !DILocation(line: 1116, column: 27, scope: !1626)
!1644 = !DILocation(line: 1116, column: 25, scope: !1626)
!1645 = !DILocation(line: 1116, column: 18, scope: !1626)
!1646 = !DILocation(line: 1117, column: 26, scope: !1626)
!1647 = !DILocation(line: 1117, column: 32, scope: !1626)
!1648 = !DILocation(line: 1117, column: 30, scope: !1626)
!1649 = !DILocation(line: 1117, column: 12, scope: !1626)
!1650 = !DILocation(line: 1118, column: 5, scope: !1626)
!1651 = !DILocation(line: 1114, column: 21, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1622, file: !1, discriminator: 2)
!1653 = !DILocation(line: 1114, column: 5, scope: !1652)
!1654 = distinct !{!1654, !1655}
!1655 = !DILocation(line: 1114, column: 5, scope: !1575)
!1656 = !DILocation(line: 1120, column: 12, scope: !1575)
!1657 = !DILocation(line: 1120, column: 19, scope: !1575)
!1658 = !DILocation(line: 1120, column: 17, scope: !1575)
!1659 = !DILocation(line: 1120, column: 9, scope: !1575)
!1660 = !DILocation(line: 1121, column: 3, scope: !1575)
!1661 = !DILocation(line: 1123, column: 17, scope: !1503)
!1662 = !DILocation(line: 1123, column: 3, scope: !1503)
!1663 = !DILocation(line: 1123, column: 11, scope: !1503)
!1664 = !DILocation(line: 1123, column: 15, scope: !1503)
!1665 = !DILocation(line: 1124, column: 46, scope: !1503)
!1666 = !DILocation(line: 1124, column: 41, scope: !1503)
!1667 = !DILocation(line: 1124, column: 39, scope: !1503)
!1668 = !DILocation(line: 1124, column: 3, scope: !1503)
!1669 = !DILocation(line: 1124, column: 11, scope: !1503)
!1670 = !DILocation(line: 1124, column: 15, scope: !1503)
!1671 = !DILocation(line: 1126, column: 3, scope: !1503)
!1672 = distinct !DISubprogram(name: "fd_asymp", scope: !1, file: !1, line: 980, type: !61, isLocal: true, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1673 = !DILocalVariable(name: "j", arg: 1, scope: !1672, file: !1, line: 980, type: !47)
!1674 = !DILocation(line: 980, column: 23, scope: !1672)
!1675 = !DILocalVariable(name: "x", arg: 2, scope: !1672, file: !1, line: 980, type: !47)
!1676 = !DILocation(line: 980, column: 39, scope: !1672)
!1677 = !DILocalVariable(name: "result", arg: 3, scope: !1672, file: !1, line: 980, type: !49)
!1678 = !DILocation(line: 980, column: 58, scope: !1672)
!1679 = !DILocalVariable(name: "j_integer", scope: !1672, file: !1, line: 982, type: !46)
!1680 = !DILocation(line: 982, column: 13, scope: !1672)
!1681 = !DILocation(line: 982, column: 32, scope: !1672)
!1682 = !DILocation(line: 982, column: 42, scope: !1672)
!1683 = !DILocation(line: 982, column: 43, scope: !1672)
!1684 = !DILocation(line: 982, column: 36, scope: !1672)
!1685 = !DILocation(line: 982, column: 34, scope: !1672)
!1686 = !DILocation(line: 982, column: 27, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 1)
!1688 = !DILocation(line: 982, column: 50, scope: !1672)
!1689 = !DILocalVariable(name: "itmax", scope: !1672, file: !1, line: 983, type: !46)
!1690 = !DILocation(line: 983, column: 13, scope: !1672)
!1691 = !DILocalVariable(name: "lg", scope: !1672, file: !1, line: 984, type: !50)
!1692 = !DILocation(line: 984, column: 17, scope: !1672)
!1693 = !DILocalVariable(name: "stat_lg", scope: !1672, file: !1, line: 985, type: !45)
!1694 = !DILocation(line: 985, column: 7, scope: !1672)
!1695 = !DILocation(line: 985, column: 34, scope: !1672)
!1696 = !DILocation(line: 985, column: 36, scope: !1672)
!1697 = !DILocation(line: 985, column: 17, scope: !1672)
!1698 = !DILocalVariable(name: "seqn_val", scope: !1672, file: !1, line: 986, type: !48)
!1699 = !DILocation(line: 986, column: 10, scope: !1672)
!1700 = !DILocalVariable(name: "seqn_err", scope: !1672, file: !1, line: 987, type: !48)
!1701 = !DILocation(line: 987, column: 10, scope: !1672)
!1702 = !DILocalVariable(name: "xm2", scope: !1672, file: !1, line: 988, type: !48)
!1703 = !DILocation(line: 988, column: 10, scope: !1672)
!1704 = !DILocation(line: 988, column: 22, scope: !1672)
!1705 = !DILocation(line: 988, column: 21, scope: !1672)
!1706 = !DILocation(line: 988, column: 25, scope: !1672)
!1707 = !DILocation(line: 988, column: 24, scope: !1672)
!1708 = !DILocalVariable(name: "xgam", scope: !1672, file: !1, line: 989, type: !48)
!1709 = !DILocation(line: 989, column: 10, scope: !1672)
!1710 = !DILocalVariable(name: "add", scope: !1672, file: !1, line: 990, type: !48)
!1711 = !DILocation(line: 990, column: 10, scope: !1672)
!1712 = !DILocalVariable(name: "cos_term", scope: !1672, file: !1, line: 991, type: !48)
!1713 = !DILocation(line: 991, column: 10, scope: !1672)
!1714 = !DILocalVariable(name: "ln_x", scope: !1672, file: !1, line: 992, type: !48)
!1715 = !DILocation(line: 992, column: 10, scope: !1672)
!1716 = !DILocalVariable(name: "ex_term_1", scope: !1672, file: !1, line: 993, type: !48)
!1717 = !DILocation(line: 993, column: 10, scope: !1672)
!1718 = !DILocalVariable(name: "ex_term_2", scope: !1672, file: !1, line: 994, type: !48)
!1719 = !DILocation(line: 994, column: 10, scope: !1672)
!1720 = !DILocalVariable(name: "fneg", scope: !1672, file: !1, line: 995, type: !50)
!1721 = !DILocation(line: 995, column: 17, scope: !1672)
!1722 = !DILocalVariable(name: "ex_arg", scope: !1672, file: !1, line: 996, type: !50)
!1723 = !DILocation(line: 996, column: 17, scope: !1672)
!1724 = !DILocalVariable(name: "ex", scope: !1672, file: !1, line: 997, type: !50)
!1725 = !DILocation(line: 997, column: 17, scope: !1672)
!1726 = !DILocalVariable(name: "stat_fneg", scope: !1672, file: !1, line: 998, type: !45)
!1727 = !DILocation(line: 998, column: 7, scope: !1672)
!1728 = !DILocalVariable(name: "stat_e", scope: !1672, file: !1, line: 999, type: !45)
!1729 = !DILocation(line: 999, column: 7, scope: !1672)
!1730 = !DILocalVariable(name: "n", scope: !1672, file: !1, line: 1000, type: !45)
!1731 = !DILocation(line: 1000, column: 7, scope: !1672)
!1732 = !DILocation(line: 1001, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 1001, column: 3)
!1734 = !DILocation(line: 1001, column: 7, scope: !1733)
!1735 = !DILocation(line: 1001, column: 12, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !1, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 1001, column: 3)
!1738 = !DILocation(line: 1001, column: 13, scope: !1736)
!1739 = !DILocation(line: 1001, column: 3, scope: !1736)
!1740 = !DILocalVariable(name: "add_previous", scope: !1741, file: !1, line: 1002, type: !48)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 1001, column: 27)
!1742 = !DILocation(line: 1002, column: 12, scope: !1741)
!1743 = !DILocation(line: 1002, column: 27, scope: !1741)
!1744 = !DILocalVariable(name: "eta", scope: !1741, file: !1, line: 1003, type: !50)
!1745 = !DILocation(line: 1003, column: 19, scope: !1741)
!1746 = !DILocation(line: 1004, column: 24, scope: !1741)
!1747 = !DILocation(line: 1004, column: 23, scope: !1741)
!1748 = !DILocation(line: 1004, column: 5, scope: !1741)
!1749 = !DILocation(line: 1005, column: 12, scope: !1741)
!1750 = !DILocation(line: 1005, column: 19, scope: !1741)
!1751 = !DILocation(line: 1005, column: 17, scope: !1741)
!1752 = !DILocation(line: 1005, column: 26, scope: !1741)
!1753 = !DILocation(line: 1005, column: 28, scope: !1741)
!1754 = !DILocation(line: 1005, column: 39, scope: !1741)
!1755 = !DILocation(line: 1005, column: 38, scope: !1741)
!1756 = !DILocation(line: 1005, column: 40, scope: !1741)
!1757 = !DILocation(line: 1005, column: 36, scope: !1741)
!1758 = !DILocation(line: 1005, column: 34, scope: !1741)
!1759 = !DILocation(line: 1005, column: 23, scope: !1741)
!1760 = !DILocation(line: 1005, column: 48, scope: !1741)
!1761 = !DILocation(line: 1005, column: 50, scope: !1741)
!1762 = !DILocation(line: 1005, column: 61, scope: !1741)
!1763 = !DILocation(line: 1005, column: 60, scope: !1741)
!1764 = !DILocation(line: 1005, column: 62, scope: !1741)
!1765 = !DILocation(line: 1005, column: 58, scope: !1741)
!1766 = !DILocation(line: 1005, column: 56, scope: !1741)
!1767 = !DILocation(line: 1005, column: 45, scope: !1741)
!1768 = !DILocation(line: 1005, column: 10, scope: !1741)
!1769 = !DILocation(line: 1006, column: 16, scope: !1741)
!1770 = !DILocation(line: 1006, column: 22, scope: !1741)
!1771 = !DILocation(line: 1006, column: 20, scope: !1741)
!1772 = !DILocation(line: 1006, column: 10, scope: !1741)
!1773 = !DILocation(line: 1007, column: 9, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 1007, column: 8)
!1775 = !DILocation(line: 1007, column: 19, scope: !1774)
!1776 = !DILocation(line: 1007, column: 27, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1774, file: !1, discriminator: 1)
!1778 = !DILocation(line: 1007, column: 22, scope: !1777)
!1779 = !DILocation(line: 1007, column: 39, scope: !1777)
!1780 = !DILocation(line: 1007, column: 34, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1777, file: !1, discriminator: 3)
!1782 = !DILocation(line: 1007, column: 32, scope: !1777)
!1783 = !DILocation(line: 1007, column: 8, scope: !1777)
!1784 = !DILocation(line: 1007, column: 54, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1774, file: !1, discriminator: 2)
!1786 = !DILocation(line: 1008, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 1008, column: 8)
!1788 = !DILocation(line: 1008, column: 17, scope: !1787)
!1789 = !DILocation(line: 1008, column: 16, scope: !1787)
!1790 = !DILocation(line: 1008, column: 8, scope: !1787)
!1791 = !DILocation(line: 1008, column: 27, scope: !1787)
!1792 = !DILocation(line: 1008, column: 8, scope: !1741)
!1793 = !DILocation(line: 1008, column: 46, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1787, file: !1, discriminator: 1)
!1795 = !DILocation(line: 1009, column: 17, scope: !1741)
!1796 = !DILocation(line: 1009, column: 14, scope: !1741)
!1797 = !DILocation(line: 1010, column: 46, scope: !1741)
!1798 = !DILocation(line: 1010, column: 41, scope: !1741)
!1799 = !DILocation(line: 1010, column: 39, scope: !1741)
!1800 = !DILocation(line: 1010, column: 14, scope: !1741)
!1801 = !DILocation(line: 1011, column: 3, scope: !1741)
!1802 = !DILocation(line: 1001, column: 23, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1737, file: !1, discriminator: 2)
!1804 = !DILocation(line: 1001, column: 3, scope: !1803)
!1805 = distinct !{!1805, !1806}
!1806 = !DILocation(line: 1001, column: 3, scope: !1672)
!1807 = !DILocation(line: 1012, column: 20, scope: !1672)
!1808 = !DILocation(line: 1012, column: 15, scope: !1672)
!1809 = !DILocation(line: 1012, column: 12, scope: !1672)
!1810 = !DILocation(line: 1014, column: 22, scope: !1672)
!1811 = !DILocation(line: 1014, column: 26, scope: !1672)
!1812 = !DILocation(line: 1014, column: 25, scope: !1672)
!1813 = !DILocation(line: 1014, column: 15, scope: !1672)
!1814 = !DILocation(line: 1014, column: 13, scope: !1672)
!1815 = !DILocation(line: 1015, column: 14, scope: !1672)
!1816 = !DILocation(line: 1015, column: 10, scope: !1672)
!1817 = !DILocation(line: 1015, column: 8, scope: !1672)
!1818 = !DILocation(line: 1016, column: 16, scope: !1672)
!1819 = !DILocation(line: 1016, column: 17, scope: !1672)
!1820 = !DILocation(line: 1016, column: 23, scope: !1672)
!1821 = !DILocation(line: 1016, column: 22, scope: !1672)
!1822 = !DILocation(line: 1016, column: 13, scope: !1672)
!1823 = !DILocation(line: 1017, column: 18, scope: !1672)
!1824 = !DILocation(line: 1017, column: 13, scope: !1672)
!1825 = !DILocation(line: 1018, column: 16, scope: !1672)
!1826 = !DILocation(line: 1018, column: 28, scope: !1672)
!1827 = !DILocation(line: 1018, column: 26, scope: !1672)
!1828 = !DILocation(line: 1018, column: 10, scope: !1672)
!1829 = !DILocation(line: 1018, column: 14, scope: !1672)
!1830 = !DILocation(line: 1019, column: 38, scope: !1672)
!1831 = !DILocation(line: 1019, column: 33, scope: !1672)
!1832 = !DILocation(line: 1019, column: 56, scope: !1672)
!1833 = !DILocation(line: 1019, column: 51, scope: !1687)
!1834 = !DILocation(line: 1019, column: 49, scope: !1672)
!1835 = !DILocation(line: 1019, column: 31, scope: !1672)
!1836 = !DILocation(line: 1019, column: 73, scope: !1672)
!1837 = !DILocation(line: 1019, column: 68, scope: !1672)
!1838 = !DILocation(line: 1019, column: 10, scope: !1672)
!1839 = !DILocation(line: 1019, column: 14, scope: !1672)
!1840 = !DILocation(line: 1020, column: 39, scope: !1672)
!1841 = !DILocation(line: 1020, column: 51, scope: !1672)
!1842 = !DILocation(line: 1020, column: 15, scope: !1672)
!1843 = !DILocation(line: 1020, column: 13, scope: !1672)
!1844 = !DILocation(line: 1021, column: 19, scope: !1672)
!1845 = !DILocation(line: 1021, column: 20, scope: !1672)
!1846 = !DILocation(line: 1021, column: 15, scope: !1672)
!1847 = !DILocation(line: 1021, column: 13, scope: !1672)
!1848 = !DILocation(line: 1022, column: 18, scope: !1672)
!1849 = !DILocation(line: 1022, column: 34, scope: !1672)
!1850 = !DILocation(line: 1022, column: 27, scope: !1672)
!1851 = !DILocation(line: 1022, column: 46, scope: !1672)
!1852 = !DILocation(line: 1022, column: 44, scope: !1672)
!1853 = !DILocation(line: 1022, column: 60, scope: !1672)
!1854 = !DILocation(line: 1022, column: 55, scope: !1672)
!1855 = !DILocation(line: 1022, column: 38, scope: !1672)
!1856 = !DILocation(line: 1022, column: 3, scope: !1672)
!1857 = !DILocation(line: 1022, column: 11, scope: !1672)
!1858 = !DILocation(line: 1022, column: 16, scope: !1672)
!1859 = !DILocation(line: 1023, column: 32, scope: !1672)
!1860 = !DILocation(line: 1023, column: 27, scope: !1672)
!1861 = !DILocation(line: 1023, column: 38, scope: !1672)
!1862 = !DILocation(line: 1023, column: 36, scope: !1672)
!1863 = !DILocation(line: 1023, column: 18, scope: !1672)
!1864 = !DILocation(line: 1023, column: 3, scope: !1672)
!1865 = !DILocation(line: 1023, column: 11, scope: !1672)
!1866 = !DILocation(line: 1023, column: 16, scope: !1672)
!1867 = !DILocation(line: 1024, column: 32, scope: !1672)
!1868 = !DILocation(line: 1024, column: 27, scope: !1672)
!1869 = !DILocation(line: 1024, column: 38, scope: !1672)
!1870 = !DILocation(line: 1024, column: 36, scope: !1672)
!1871 = !DILocation(line: 1024, column: 18, scope: !1672)
!1872 = !DILocation(line: 1024, column: 3, scope: !1672)
!1873 = !DILocation(line: 1024, column: 11, scope: !1672)
!1874 = !DILocation(line: 1024, column: 15, scope: !1672)
!1875 = !DILocation(line: 1025, column: 23, scope: !1672)
!1876 = !DILocation(line: 1025, column: 18, scope: !1672)
!1877 = !DILocation(line: 1025, column: 40, scope: !1672)
!1878 = !DILocation(line: 1025, column: 33, scope: !1672)
!1879 = !DILocation(line: 1025, column: 3, scope: !1672)
!1880 = !DILocation(line: 1025, column: 11, scope: !1672)
!1881 = !DILocation(line: 1025, column: 15, scope: !1672)
!1882 = !DILocation(line: 1026, column: 47, scope: !1672)
!1883 = !DILocation(line: 1026, column: 55, scope: !1672)
!1884 = !DILocation(line: 1026, column: 42, scope: !1672)
!1885 = !DILocation(line: 1026, column: 40, scope: !1672)
!1886 = !DILocation(line: 1026, column: 3, scope: !1672)
!1887 = !DILocation(line: 1026, column: 11, scope: !1672)
!1888 = !DILocation(line: 1026, column: 15, scope: !1672)
!1889 = !DILocation(line: 1027, column: 10, scope: !1672)
!1890 = !DILocation(line: 1027, column: 10, scope: !1687)
!1891 = !DILocation(line: 1027, column: 10, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 2)
!1893 = !DILocation(line: 1027, column: 10, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 3)
!1895 = !DILocation(line: 1027, column: 10, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 4)
!1897 = !DILocation(line: 1027, column: 10, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 5)
!1899 = !DILocation(line: 1027, column: 10, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 6)
!1901 = !DILocation(line: 1027, column: 10, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 7)
!1903 = !DILocation(line: 1027, column: 10, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 8)
!1905 = !DILocation(line: 1027, column: 10, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 9)
!1907 = !DILocation(line: 1027, column: 3, scope: !1906)
!1908 = distinct !DISubprogram(name: "fd_UMseries_int", scope: !1, file: !1, line: 1135, type: !43, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1909 = !DILocalVariable(name: "j", arg: 1, scope: !1908, file: !1, line: 1135, type: !46)
!1910 = !DILocation(line: 1135, column: 27, scope: !1908)
!1911 = !DILocalVariable(name: "x", arg: 2, scope: !1908, file: !1, line: 1135, type: !47)
!1912 = !DILocation(line: 1135, column: 43, scope: !1908)
!1913 = !DILocalVariable(name: "result", arg: 3, scope: !1908, file: !1, line: 1135, type: !49)
!1914 = !DILocation(line: 1135, column: 62, scope: !1908)
!1915 = !DILocalVariable(name: "nmax", scope: !1908, file: !1, line: 1137, type: !46)
!1916 = !DILocation(line: 1137, column: 13, scope: !1908)
!1917 = !DILocalVariable(name: "pre", scope: !1908, file: !1, line: 1138, type: !48)
!1918 = !DILocation(line: 1138, column: 10, scope: !1908)
!1919 = !DILocalVariable(name: "lnpre_val", scope: !1908, file: !1, line: 1139, type: !48)
!1920 = !DILocation(line: 1139, column: 10, scope: !1908)
!1921 = !DILocalVariable(name: "lnpre_err", scope: !1908, file: !1, line: 1140, type: !48)
!1922 = !DILocation(line: 1140, column: 10, scope: !1908)
!1923 = !DILocalVariable(name: "sum_even_val", scope: !1908, file: !1, line: 1141, type: !48)
!1924 = !DILocation(line: 1141, column: 10, scope: !1908)
!1925 = !DILocalVariable(name: "sum_even_err", scope: !1908, file: !1, line: 1142, type: !48)
!1926 = !DILocation(line: 1142, column: 10, scope: !1908)
!1927 = !DILocalVariable(name: "sum_odd_val", scope: !1908, file: !1, line: 1143, type: !48)
!1928 = !DILocation(line: 1143, column: 10, scope: !1908)
!1929 = !DILocalVariable(name: "sum_odd_err", scope: !1908, file: !1, line: 1144, type: !48)
!1930 = !DILocation(line: 1144, column: 10, scope: !1908)
!1931 = !DILocalVariable(name: "stat_sum", scope: !1908, file: !1, line: 1145, type: !45)
!1932 = !DILocation(line: 1145, column: 7, scope: !1908)
!1933 = !DILocalVariable(name: "stat_e", scope: !1908, file: !1, line: 1146, type: !45)
!1934 = !DILocation(line: 1146, column: 7, scope: !1908)
!1935 = !DILocalVariable(name: "stat_h", scope: !1908, file: !1, line: 1147, type: !45)
!1936 = !DILocation(line: 1147, column: 7, scope: !1908)
!1937 = !DILocalVariable(name: "n", scope: !1908, file: !1, line: 1148, type: !45)
!1938 = !DILocation(line: 1148, column: 7, scope: !1908)
!1939 = !DILocation(line: 1150, column: 6, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 1150, column: 6)
!1941 = !DILocation(line: 1150, column: 8, scope: !1940)
!1942 = !DILocation(line: 1150, column: 16, scope: !1940)
!1943 = !DILocation(line: 1150, column: 19, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 1)
!1945 = !DILocation(line: 1150, column: 21, scope: !1944)
!1946 = !DILocation(line: 1150, column: 6, scope: !1944)
!1947 = !DILocalVariable(name: "p", scope: !1948, file: !1, line: 1151, type: !48)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 1150, column: 27)
!1949 = !DILocation(line: 1151, column: 12, scope: !1948)
!1950 = !DILocation(line: 1151, column: 31, scope: !1948)
!1951 = !DILocation(line: 1151, column: 34, scope: !1948)
!1952 = !DILocation(line: 1151, column: 35, scope: !1948)
!1953 = !DILocation(line: 1151, column: 16, scope: !1948)
!1954 = !DILocalVariable(name: "g", scope: !1948, file: !1, line: 1152, type: !50)
!1955 = !DILocation(line: 1152, column: 19, scope: !1948)
!1956 = !DILocation(line: 1153, column: 19, scope: !1948)
!1957 = !DILocation(line: 1153, column: 20, scope: !1948)
!1958 = !DILocation(line: 1153, column: 5, scope: !1948)
!1959 = !DILocation(line: 1154, column: 15, scope: !1948)
!1960 = !DILocation(line: 1155, column: 15, scope: !1948)
!1961 = !DILocation(line: 1156, column: 13, scope: !1948)
!1962 = !DILocation(line: 1156, column: 17, scope: !1948)
!1963 = !DILocation(line: 1156, column: 14, scope: !1948)
!1964 = !DILocation(line: 1156, column: 11, scope: !1948)
!1965 = !DILocation(line: 1157, column: 3, scope: !1948)
!1966 = !DILocalVariable(name: "lnx", scope: !1967, file: !1, line: 1159, type: !48)
!1967 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 1158, column: 8)
!1968 = !DILocation(line: 1159, column: 12, scope: !1967)
!1969 = !DILocation(line: 1159, column: 22, scope: !1967)
!1970 = !DILocation(line: 1159, column: 18, scope: !1967)
!1971 = !DILocalVariable(name: "lg", scope: !1967, file: !1, line: 1160, type: !50)
!1972 = !DILocation(line: 1160, column: 19, scope: !1967)
!1973 = !DILocation(line: 1161, column: 22, scope: !1967)
!1974 = !DILocation(line: 1161, column: 24, scope: !1967)
!1975 = !DILocation(line: 1161, column: 5, scope: !1967)
!1976 = !DILocation(line: 1162, column: 18, scope: !1967)
!1977 = !DILocation(line: 1162, column: 19, scope: !1967)
!1978 = !DILocation(line: 1162, column: 25, scope: !1967)
!1979 = !DILocation(line: 1162, column: 24, scope: !1967)
!1980 = !DILocation(line: 1162, column: 34, scope: !1967)
!1981 = !DILocation(line: 1162, column: 29, scope: !1967)
!1982 = !DILocation(line: 1162, column: 15, scope: !1967)
!1983 = !DILocation(line: 1163, column: 47, scope: !1967)
!1984 = !DILocation(line: 1163, column: 48, scope: !1967)
!1985 = !DILocation(line: 1163, column: 54, scope: !1967)
!1986 = !DILocation(line: 1163, column: 53, scope: !1967)
!1987 = !DILocation(line: 1163, column: 41, scope: !1967)
!1988 = !DILocation(line: 1163, column: 39, scope: !1967)
!1989 = !DILocation(line: 1163, column: 64, scope: !1967)
!1990 = !DILocation(line: 1163, column: 59, scope: !1967)
!1991 = !DILocation(line: 1163, column: 15, scope: !1967)
!1992 = !DILocation(line: 1164, column: 9, scope: !1967)
!1993 = !DILocation(line: 1169, column: 8, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 1169, column: 3)
!1995 = !DILocation(line: 1169, column: 7, scope: !1994)
!1996 = !DILocation(line: 1169, column: 12, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 1)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !1, line: 1169, column: 3)
!1999 = !DILocation(line: 1169, column: 13, scope: !1997)
!2000 = !DILocation(line: 1169, column: 3, scope: !1997)
!2001 = !DILocalVariable(name: "del_val", scope: !2002, file: !1, line: 1170, type: !48)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !1, line: 1169, column: 26)
!2003 = !DILocation(line: 1170, column: 12, scope: !2002)
!2004 = !DILocalVariable(name: "del_err", scope: !2002, file: !1, line: 1171, type: !48)
!2005 = !DILocation(line: 1171, column: 12, scope: !2002)
!2006 = !DILocalVariable(name: "U", scope: !2002, file: !1, line: 1172, type: !50)
!2007 = !DILocation(line: 1172, column: 19, scope: !2002)
!2008 = !DILocalVariable(name: "M", scope: !2002, file: !1, line: 1173, type: !50)
!2009 = !DILocation(line: 1173, column: 19, scope: !2002)
!2010 = !DILocalVariable(name: "stat_h_U", scope: !2002, file: !1, line: 1174, type: !45)
!2011 = !DILocation(line: 1174, column: 9, scope: !2002)
!2012 = !DILocation(line: 1174, column: 45, scope: !2002)
!2013 = !DILocation(line: 1174, column: 46, scope: !2002)
!2014 = !DILocation(line: 1174, column: 50, scope: !2002)
!2015 = !DILocation(line: 1174, column: 52, scope: !2002)
!2016 = !DILocation(line: 1174, column: 51, scope: !2002)
!2017 = !DILocation(line: 1174, column: 20, scope: !2002)
!2018 = !DILocalVariable(name: "stat_h_F", scope: !2002, file: !1, line: 1175, type: !45)
!2019 = !DILocation(line: 1175, column: 9, scope: !2002)
!2020 = !DILocation(line: 1175, column: 47, scope: !2002)
!2021 = !DILocation(line: 1175, column: 48, scope: !2002)
!2022 = !DILocation(line: 1175, column: 53, scope: !2002)
!2023 = !DILocation(line: 1175, column: 52, scope: !2002)
!2024 = !DILocation(line: 1175, column: 55, scope: !2002)
!2025 = !DILocation(line: 1175, column: 54, scope: !2002)
!2026 = !DILocation(line: 1175, column: 20, scope: !2002)
!2027 = !DILocation(line: 1176, column: 14, scope: !2002)
!2028 = !DILocation(line: 1176, column: 14, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 1)
!2030 = !DILocation(line: 1176, column: 14, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 2)
!2032 = !DILocation(line: 1176, column: 14, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 3)
!2034 = !DILocation(line: 1176, column: 14, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 4)
!2036 = !DILocation(line: 1176, column: 14, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 5)
!2038 = !DILocation(line: 1176, column: 14, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 6)
!2040 = !DILocation(line: 1176, column: 14, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 7)
!2042 = !DILocation(line: 1176, column: 14, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 8)
!2044 = !DILocation(line: 1176, column: 14, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2002, file: !1, discriminator: 9)
!2046 = !DILocation(line: 1176, column: 12, scope: !2045)
!2047 = !DILocation(line: 1177, column: 17, scope: !2002)
!2048 = !DILocation(line: 1177, column: 18, scope: !2002)
!2049 = !DILocation(line: 1177, column: 26, scope: !2002)
!2050 = !DILocation(line: 1177, column: 23, scope: !2002)
!2051 = !DILocation(line: 1177, column: 34, scope: !2002)
!2052 = !DILocation(line: 1177, column: 30, scope: !2002)
!2053 = !DILocation(line: 1177, column: 13, scope: !2002)
!2054 = !DILocation(line: 1178, column: 21, scope: !2002)
!2055 = !DILocation(line: 1178, column: 22, scope: !2002)
!2056 = !DILocation(line: 1178, column: 16, scope: !2002)
!2057 = !DILocation(line: 1178, column: 30, scope: !2002)
!2058 = !DILocation(line: 1178, column: 27, scope: !2002)
!2059 = !DILocation(line: 1178, column: 38, scope: !2002)
!2060 = !DILocation(line: 1178, column: 34, scope: !2002)
!2061 = !DILocation(line: 1178, column: 13, scope: !2002)
!2062 = !DILocation(line: 1179, column: 20, scope: !2002)
!2063 = !DILocation(line: 1179, column: 17, scope: !2002)
!2064 = !DILocation(line: 1180, column: 20, scope: !2002)
!2065 = !DILocation(line: 1180, column: 17, scope: !2002)
!2066 = !DILocation(line: 1181, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 1181, column: 8)
!2068 = !DILocation(line: 1181, column: 21, scope: !2067)
!2069 = !DILocation(line: 1181, column: 20, scope: !2067)
!2070 = !DILocation(line: 1181, column: 8, scope: !2067)
!2071 = !DILocation(line: 1181, column: 34, scope: !2067)
!2072 = !DILocation(line: 1181, column: 8, scope: !2002)
!2073 = !DILocation(line: 1181, column: 53, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2067, file: !1, discriminator: 1)
!2075 = !DILocation(line: 1182, column: 3, scope: !2002)
!2076 = !DILocation(line: 1169, column: 21, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 2)
!2078 = !DILocation(line: 1169, column: 3, scope: !2077)
!2079 = distinct !{!2079, !2080}
!2080 = !DILocation(line: 1169, column: 3, scope: !1908)
!2081 = !DILocation(line: 1186, column: 8, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 1186, column: 3)
!2083 = !DILocation(line: 1186, column: 7, scope: !2082)
!2084 = !DILocation(line: 1186, column: 12, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2086, file: !1, discriminator: 1)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1186, column: 3)
!2087 = !DILocation(line: 1186, column: 13, scope: !2085)
!2088 = !DILocation(line: 1186, column: 3, scope: !2085)
!2089 = !DILocalVariable(name: "del_val", scope: !2090, file: !1, line: 1187, type: !48)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 1186, column: 26)
!2091 = !DILocation(line: 1187, column: 12, scope: !2090)
!2092 = !DILocalVariable(name: "del_err", scope: !2090, file: !1, line: 1188, type: !48)
!2093 = !DILocation(line: 1188, column: 12, scope: !2090)
!2094 = !DILocalVariable(name: "U", scope: !2090, file: !1, line: 1189, type: !50)
!2095 = !DILocation(line: 1189, column: 19, scope: !2090)
!2096 = !DILocalVariable(name: "M", scope: !2090, file: !1, line: 1190, type: !50)
!2097 = !DILocation(line: 1190, column: 19, scope: !2090)
!2098 = !DILocalVariable(name: "stat_h_U", scope: !2090, file: !1, line: 1191, type: !45)
!2099 = !DILocation(line: 1191, column: 9, scope: !2090)
!2100 = !DILocation(line: 1191, column: 45, scope: !2090)
!2101 = !DILocation(line: 1191, column: 46, scope: !2090)
!2102 = !DILocation(line: 1191, column: 50, scope: !2090)
!2103 = !DILocation(line: 1191, column: 52, scope: !2090)
!2104 = !DILocation(line: 1191, column: 51, scope: !2090)
!2105 = !DILocation(line: 1191, column: 20, scope: !2090)
!2106 = !DILocalVariable(name: "stat_h_F", scope: !2090, file: !1, line: 1192, type: !45)
!2107 = !DILocation(line: 1192, column: 9, scope: !2090)
!2108 = !DILocation(line: 1192, column: 47, scope: !2090)
!2109 = !DILocation(line: 1192, column: 48, scope: !2090)
!2110 = !DILocation(line: 1192, column: 53, scope: !2090)
!2111 = !DILocation(line: 1192, column: 52, scope: !2090)
!2112 = !DILocation(line: 1192, column: 55, scope: !2090)
!2113 = !DILocation(line: 1192, column: 54, scope: !2090)
!2114 = !DILocation(line: 1192, column: 20, scope: !2090)
!2115 = !DILocation(line: 1193, column: 14, scope: !2090)
!2116 = !DILocation(line: 1193, column: 14, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 1)
!2118 = !DILocation(line: 1193, column: 14, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 2)
!2120 = !DILocation(line: 1193, column: 14, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 3)
!2122 = !DILocation(line: 1193, column: 14, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 4)
!2124 = !DILocation(line: 1193, column: 14, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 5)
!2126 = !DILocation(line: 1193, column: 14, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 6)
!2128 = !DILocation(line: 1193, column: 14, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 7)
!2130 = !DILocation(line: 1193, column: 14, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 8)
!2132 = !DILocation(line: 1193, column: 14, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 9)
!2134 = !DILocation(line: 1193, column: 12, scope: !2133)
!2135 = !DILocation(line: 1194, column: 17, scope: !2090)
!2136 = !DILocation(line: 1194, column: 18, scope: !2090)
!2137 = !DILocation(line: 1194, column: 26, scope: !2090)
!2138 = !DILocation(line: 1194, column: 23, scope: !2090)
!2139 = !DILocation(line: 1194, column: 34, scope: !2090)
!2140 = !DILocation(line: 1194, column: 30, scope: !2090)
!2141 = !DILocation(line: 1194, column: 13, scope: !2090)
!2142 = !DILocation(line: 1195, column: 21, scope: !2090)
!2143 = !DILocation(line: 1195, column: 22, scope: !2090)
!2144 = !DILocation(line: 1195, column: 16, scope: !2090)
!2145 = !DILocation(line: 1195, column: 30, scope: !2090)
!2146 = !DILocation(line: 1195, column: 27, scope: !2090)
!2147 = !DILocation(line: 1195, column: 38, scope: !2090)
!2148 = !DILocation(line: 1195, column: 34, scope: !2090)
!2149 = !DILocation(line: 1195, column: 13, scope: !2090)
!2150 = !DILocation(line: 1196, column: 21, scope: !2090)
!2151 = !DILocation(line: 1196, column: 18, scope: !2090)
!2152 = !DILocation(line: 1197, column: 21, scope: !2090)
!2153 = !DILocation(line: 1197, column: 18, scope: !2090)
!2154 = !DILocation(line: 1198, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 1198, column: 8)
!2156 = !DILocation(line: 1198, column: 21, scope: !2155)
!2157 = !DILocation(line: 1198, column: 20, scope: !2155)
!2158 = !DILocation(line: 1198, column: 8, scope: !2155)
!2159 = !DILocation(line: 1198, column: 35, scope: !2155)
!2160 = !DILocation(line: 1198, column: 8, scope: !2090)
!2161 = !DILocation(line: 1198, column: 54, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2155, file: !1, discriminator: 1)
!2163 = !DILocation(line: 1199, column: 3, scope: !2090)
!2164 = !DILocation(line: 1186, column: 21, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2086, file: !1, discriminator: 2)
!2166 = !DILocation(line: 1186, column: 3, scope: !2165)
!2167 = distinct !{!2167, !2168}
!2168 = !DILocation(line: 1186, column: 3, scope: !1908)
!2169 = !DILocation(line: 1201, column: 16, scope: !1908)
!2170 = !DILocation(line: 1201, column: 18, scope: !1908)
!2171 = !DILocation(line: 1201, column: 12, scope: !1908)
!2172 = !DILocation(line: 1202, column: 36, scope: !1908)
!2173 = !DILocation(line: 1202, column: 47, scope: !1908)
!2174 = !DILocation(line: 1203, column: 39, scope: !1908)
!2175 = !DILocation(line: 1203, column: 44, scope: !1908)
!2176 = !DILocation(line: 1203, column: 59, scope: !1908)
!2177 = !DILocation(line: 1203, column: 57, scope: !1908)
!2178 = !DILocation(line: 1203, column: 42, scope: !1908)
!2179 = !DILocation(line: 1204, column: 39, scope: !1908)
!2180 = !DILocation(line: 1204, column: 44, scope: !1908)
!2181 = !DILocation(line: 1204, column: 59, scope: !1908)
!2182 = !DILocation(line: 1204, column: 57, scope: !1908)
!2183 = !DILocation(line: 1204, column: 42, scope: !1908)
!2184 = !DILocation(line: 1205, column: 39, scope: !1908)
!2185 = !DILocation(line: 1202, column: 14, scope: !1908)
!2186 = !DILocation(line: 1202, column: 12, scope: !1908)
!2187 = !DILocation(line: 1206, column: 47, scope: !1908)
!2188 = !DILocation(line: 1206, column: 55, scope: !1908)
!2189 = !DILocation(line: 1206, column: 42, scope: !1908)
!2190 = !DILocation(line: 1206, column: 40, scope: !1908)
!2191 = !DILocation(line: 1206, column: 3, scope: !1908)
!2192 = !DILocation(line: 1206, column: 11, scope: !1908)
!2193 = !DILocation(line: 1206, column: 15, scope: !1908)
!2194 = !DILocation(line: 1208, column: 10, scope: !1908)
!2195 = !DILocation(line: 1208, column: 10, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 1)
!2197 = !DILocation(line: 1208, column: 10, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 2)
!2199 = !DILocation(line: 1208, column: 10, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 3)
!2201 = !DILocation(line: 1208, column: 10, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 4)
!2203 = !DILocation(line: 1208, column: 10, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 5)
!2205 = !DILocation(line: 1208, column: 10, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 6)
!2207 = !DILocation(line: 1208, column: 10, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 7)
!2209 = !DILocation(line: 1208, column: 10, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 8)
!2211 = !DILocation(line: 1208, column: 10, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !1908, file: !1, discriminator: 9)
!2213 = !DILocation(line: 1208, column: 3, scope: !2212)
!2214 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf_e", scope: !1, file: !1, line: 1425, type: !152, isLocal: false, isDefinition: true, scopeLine: 1426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2215 = !DILocalVariable(name: "x", arg: 1, scope: !2214, file: !1, line: 1425, type: !47)
!2216 = !DILocation(line: 1425, column: 45, scope: !2214)
!2217 = !DILocalVariable(name: "result", arg: 2, scope: !2214, file: !1, line: 1425, type: !49)
!2218 = !DILocation(line: 1425, column: 64, scope: !2214)
!2219 = !DILocation(line: 1427, column: 6, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 1427, column: 6)
!2221 = !DILocation(line: 1427, column: 8, scope: !2220)
!2222 = !DILocation(line: 1427, column: 6, scope: !2214)
!2223 = !DILocation(line: 1428, column: 5, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 1427, column: 27)
!2225 = distinct !{!2225, !2223}
!2226 = !DILocation(line: 1428, column: 5, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2228, file: !1, discriminator: 1)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 1428, column: 5)
!2229 = distinct !{!2229, !2230}
!2230 = !DILocation(line: 1428, column: 5, scope: !2228)
!2231 = !DILocation(line: 1428, column: 5, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 2)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 1428, column: 5)
!2234 = !DILocation(line: 1428, column: 5, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2228, file: !1, discriminator: 3)
!2236 = !DILocation(line: 1429, column: 3, scope: !2224)
!2237 = !DILocation(line: 1430, column: 11, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 1430, column: 11)
!2239 = !DILocation(line: 1430, column: 13, scope: !2238)
!2240 = !DILocation(line: 1430, column: 11, scope: !2220)
!2241 = !DILocalVariable(name: "ex", scope: !2242, file: !1, line: 1433, type: !48)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !1, line: 1430, column: 21)
!2243 = !DILocation(line: 1433, column: 12, scope: !2242)
!2244 = !DILocation(line: 1433, column: 23, scope: !2242)
!2245 = !DILocation(line: 1433, column: 19, scope: !2242)
!2246 = !DILocalVariable(name: "term", scope: !2242, file: !1, line: 1434, type: !48)
!2247 = !DILocation(line: 1434, column: 12, scope: !2242)
!2248 = !DILocation(line: 1434, column: 19, scope: !2242)
!2249 = !DILocalVariable(name: "sum", scope: !2242, file: !1, line: 1435, type: !48)
!2250 = !DILocation(line: 1435, column: 12, scope: !2242)
!2251 = !DILocation(line: 1435, column: 19, scope: !2242)
!2252 = !DILocalVariable(name: "n", scope: !2242, file: !1, line: 1436, type: !45)
!2253 = !DILocation(line: 1436, column: 9, scope: !2242)
!2254 = !DILocation(line: 1437, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 1437, column: 5)
!2256 = !DILocation(line: 1437, column: 9, scope: !2255)
!2257 = !DILocation(line: 1437, column: 14, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !1, discriminator: 1)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 1437, column: 5)
!2260 = !DILocation(line: 1437, column: 15, scope: !2258)
!2261 = !DILocation(line: 1437, column: 5, scope: !2258)
!2262 = !DILocalVariable(name: "rat", scope: !2263, file: !1, line: 1438, type: !48)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 1437, column: 27)
!2264 = !DILocation(line: 1438, column: 14, scope: !2263)
!2265 = !DILocation(line: 1438, column: 21, scope: !2263)
!2266 = !DILocation(line: 1438, column: 22, scope: !2263)
!2267 = !DILocation(line: 1438, column: 28, scope: !2263)
!2268 = !DILocation(line: 1438, column: 27, scope: !2263)
!2269 = !DILocation(line: 1439, column: 16, scope: !2263)
!2270 = !DILocation(line: 1439, column: 15, scope: !2263)
!2271 = !DILocation(line: 1439, column: 26, scope: !2263)
!2272 = !DILocation(line: 1439, column: 21, scope: !2263)
!2273 = !DILocation(line: 1439, column: 19, scope: !2263)
!2274 = !DILocation(line: 1439, column: 12, scope: !2263)
!2275 = !DILocation(line: 1440, column: 15, scope: !2263)
!2276 = !DILocation(line: 1440, column: 12, scope: !2263)
!2277 = !DILocation(line: 1441, column: 15, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 1441, column: 10)
!2279 = !DILocation(line: 1441, column: 20, scope: !2278)
!2280 = !DILocation(line: 1441, column: 19, scope: !2278)
!2281 = !DILocation(line: 1441, column: 10, scope: !2278)
!2282 = !DILocation(line: 1441, column: 25, scope: !2278)
!2283 = !DILocation(line: 1441, column: 10, scope: !2263)
!2284 = !DILocation(line: 1441, column: 44, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2278, file: !1, discriminator: 1)
!2286 = !DILocation(line: 1442, column: 5, scope: !2263)
!2287 = !DILocation(line: 1437, column: 23, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2259, file: !1, discriminator: 2)
!2289 = !DILocation(line: 1437, column: 5, scope: !2288)
!2290 = distinct !{!2290, !2291}
!2291 = !DILocation(line: 1437, column: 5, scope: !2242)
!2292 = !DILocation(line: 1443, column: 19, scope: !2242)
!2293 = !DILocation(line: 1443, column: 5, scope: !2242)
!2294 = !DILocation(line: 1443, column: 13, scope: !2242)
!2295 = !DILocation(line: 1443, column: 17, scope: !2242)
!2296 = !DILocation(line: 1444, column: 30, scope: !2242)
!2297 = !DILocation(line: 1444, column: 25, scope: !2242)
!2298 = !DILocation(line: 1444, column: 23, scope: !2242)
!2299 = !DILocation(line: 1444, column: 35, scope: !2242)
!2300 = !DILocation(line: 1444, column: 5, scope: !2242)
!2301 = !DILocation(line: 1444, column: 13, scope: !2242)
!2302 = !DILocation(line: 1444, column: 17, scope: !2242)
!2303 = !DILocation(line: 1445, column: 5, scope: !2242)
!2304 = !DILocation(line: 1447, column: 11, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2238, file: !1, line: 1447, column: 11)
!2306 = !DILocation(line: 1447, column: 13, scope: !2305)
!2307 = !DILocation(line: 1447, column: 11, scope: !2238)
!2308 = !DILocation(line: 1448, column: 40, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 1447, column: 20)
!2310 = !DILocation(line: 1448, column: 43, scope: !2309)
!2311 = !DILocation(line: 1448, column: 12, scope: !2309)
!2312 = !DILocation(line: 1448, column: 5, scope: !2309)
!2313 = !DILocation(line: 1450, column: 11, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 1450, column: 11)
!2315 = !DILocation(line: 1450, column: 13, scope: !2314)
!2316 = !DILocation(line: 1450, column: 11, scope: !2305)
!2317 = !DILocalVariable(name: "t", scope: !2318, file: !1, line: 1451, type: !48)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 1450, column: 20)
!2319 = !DILocation(line: 1451, column: 12, scope: !2318)
!2320 = !DILocation(line: 1451, column: 25, scope: !2318)
!2321 = !DILocation(line: 1451, column: 26, scope: !2318)
!2322 = !DILocation(line: 1451, column: 23, scope: !2318)
!2323 = !DILocation(line: 1451, column: 32, scope: !2318)
!2324 = !DILocation(line: 1452, column: 40, scope: !2318)
!2325 = !DILocation(line: 1452, column: 43, scope: !2318)
!2326 = !DILocation(line: 1452, column: 12, scope: !2318)
!2327 = !DILocation(line: 1452, column: 5, scope: !2318)
!2328 = !DILocation(line: 1454, column: 11, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 1454, column: 11)
!2330 = !DILocation(line: 1454, column: 13, scope: !2329)
!2331 = !DILocation(line: 1454, column: 11, scope: !2314)
!2332 = !DILocalVariable(name: "t", scope: !2333, file: !1, line: 1455, type: !48)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 1454, column: 21)
!2334 = !DILocation(line: 1455, column: 12, scope: !2333)
!2335 = !DILocation(line: 1455, column: 25, scope: !2333)
!2336 = !DILocation(line: 1455, column: 26, scope: !2333)
!2337 = !DILocation(line: 1455, column: 23, scope: !2333)
!2338 = !DILocation(line: 1455, column: 32, scope: !2333)
!2339 = !DILocation(line: 1456, column: 40, scope: !2333)
!2340 = !DILocation(line: 1456, column: 43, scope: !2333)
!2341 = !DILocation(line: 1456, column: 12, scope: !2333)
!2342 = !DILocation(line: 1456, column: 5, scope: !2333)
!2343 = !DILocation(line: 1458, column: 11, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 1458, column: 11)
!2345 = !DILocation(line: 1458, column: 13, scope: !2344)
!2346 = !DILocation(line: 1458, column: 11, scope: !2329)
!2347 = !DILocalVariable(name: "rtx", scope: !2348, file: !1, line: 1459, type: !48)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 1458, column: 21)
!2349 = !DILocation(line: 1459, column: 12, scope: !2348)
!2350 = !DILocation(line: 1459, column: 23, scope: !2348)
!2351 = !DILocation(line: 1459, column: 18, scope: !2348)
!2352 = !DILocalVariable(name: "t", scope: !2348, file: !1, line: 1460, type: !48)
!2353 = !DILocation(line: 1460, column: 12, scope: !2348)
!2354 = !DILocation(line: 1460, column: 20, scope: !2348)
!2355 = !DILocation(line: 1460, column: 19, scope: !2348)
!2356 = !DILocation(line: 1460, column: 22, scope: !2348)
!2357 = !DILocalVariable(name: "c", scope: !2348, file: !1, line: 1461, type: !50)
!2358 = !DILocation(line: 1461, column: 19, scope: !2348)
!2359 = !DILocation(line: 1462, column: 33, scope: !2348)
!2360 = !DILocation(line: 1462, column: 5, scope: !2348)
!2361 = !DILocation(line: 1463, column: 22, scope: !2348)
!2362 = !DILocation(line: 1463, column: 28, scope: !2348)
!2363 = !DILocation(line: 1463, column: 26, scope: !2348)
!2364 = !DILocation(line: 1463, column: 5, scope: !2348)
!2365 = !DILocation(line: 1463, column: 13, scope: !2348)
!2366 = !DILocation(line: 1463, column: 18, scope: !2348)
!2367 = !DILocation(line: 1464, column: 22, scope: !2348)
!2368 = !DILocation(line: 1464, column: 28, scope: !2348)
!2369 = !DILocation(line: 1464, column: 26, scope: !2348)
!2370 = !DILocation(line: 1464, column: 63, scope: !2348)
!2371 = !DILocation(line: 1464, column: 71, scope: !2348)
!2372 = !DILocation(line: 1464, column: 58, scope: !2348)
!2373 = !DILocation(line: 1464, column: 56, scope: !2348)
!2374 = !DILocation(line: 1464, column: 32, scope: !2348)
!2375 = !DILocation(line: 1464, column: 5, scope: !2348)
!2376 = !DILocation(line: 1464, column: 13, scope: !2348)
!2377 = !DILocation(line: 1464, column: 18, scope: !2348)
!2378 = !DILocation(line: 1465, column: 5, scope: !2348)
!2379 = !DILocation(line: 1468, column: 27, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 1467, column: 8)
!2381 = !DILocation(line: 1468, column: 30, scope: !2380)
!2382 = !DILocation(line: 1468, column: 12, scope: !2380)
!2383 = !DILocation(line: 1468, column: 5, scope: !2380)
!2384 = !DILocation(line: 1470, column: 1, scope: !2214)
!2385 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half_e", scope: !1, file: !1, line: 1473, type: !152, isLocal: false, isDefinition: true, scopeLine: 1474, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2386 = !DILocalVariable(name: "x", arg: 1, scope: !2385, file: !1, line: 1473, type: !47)
!2387 = !DILocation(line: 1473, column: 44, scope: !2385)
!2388 = !DILocalVariable(name: "result", arg: 2, scope: !2385, file: !1, line: 1473, type: !49)
!2389 = !DILocation(line: 1473, column: 63, scope: !2385)
!2390 = !DILocation(line: 1475, column: 6, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2385, file: !1, line: 1475, column: 6)
!2392 = !DILocation(line: 1475, column: 8, scope: !2391)
!2393 = !DILocation(line: 1475, column: 6, scope: !2385)
!2394 = !DILocation(line: 1476, column: 5, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 1475, column: 27)
!2396 = distinct !{!2396, !2394}
!2397 = !DILocation(line: 1476, column: 5, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2399, file: !1, discriminator: 1)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !1, line: 1476, column: 5)
!2400 = distinct !{!2400, !2401}
!2401 = !DILocation(line: 1476, column: 5, scope: !2399)
!2402 = !DILocation(line: 1476, column: 5, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2404, file: !1, discriminator: 2)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !1, line: 1476, column: 5)
!2405 = !DILocation(line: 1476, column: 5, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2399, file: !1, discriminator: 3)
!2407 = !DILocation(line: 1477, column: 3, scope: !2395)
!2408 = !DILocation(line: 1478, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 1478, column: 11)
!2410 = !DILocation(line: 1478, column: 13, scope: !2409)
!2411 = !DILocation(line: 1478, column: 11, scope: !2391)
!2412 = !DILocalVariable(name: "ex", scope: !2413, file: !1, line: 1481, type: !48)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 1478, column: 21)
!2414 = !DILocation(line: 1481, column: 12, scope: !2413)
!2415 = !DILocation(line: 1481, column: 23, scope: !2413)
!2416 = !DILocation(line: 1481, column: 19, scope: !2413)
!2417 = !DILocalVariable(name: "term", scope: !2413, file: !1, line: 1482, type: !48)
!2418 = !DILocation(line: 1482, column: 12, scope: !2413)
!2419 = !DILocation(line: 1482, column: 19, scope: !2413)
!2420 = !DILocalVariable(name: "sum", scope: !2413, file: !1, line: 1483, type: !48)
!2421 = !DILocation(line: 1483, column: 12, scope: !2413)
!2422 = !DILocation(line: 1483, column: 19, scope: !2413)
!2423 = !DILocalVariable(name: "n", scope: !2413, file: !1, line: 1484, type: !45)
!2424 = !DILocation(line: 1484, column: 9, scope: !2413)
!2425 = !DILocation(line: 1485, column: 10, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 1485, column: 5)
!2427 = !DILocation(line: 1485, column: 9, scope: !2426)
!2428 = !DILocation(line: 1485, column: 14, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2430, file: !1, discriminator: 1)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 1485, column: 5)
!2431 = !DILocation(line: 1485, column: 15, scope: !2429)
!2432 = !DILocation(line: 1485, column: 5, scope: !2429)
!2433 = !DILocalVariable(name: "rat", scope: !2434, file: !1, line: 1486, type: !48)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !1, line: 1485, column: 27)
!2435 = !DILocation(line: 1486, column: 14, scope: !2434)
!2436 = !DILocation(line: 1486, column: 21, scope: !2434)
!2437 = !DILocation(line: 1486, column: 22, scope: !2434)
!2438 = !DILocation(line: 1486, column: 28, scope: !2434)
!2439 = !DILocation(line: 1486, column: 27, scope: !2434)
!2440 = !DILocation(line: 1487, column: 16, scope: !2434)
!2441 = !DILocation(line: 1487, column: 15, scope: !2434)
!2442 = !DILocation(line: 1487, column: 21, scope: !2434)
!2443 = !DILocation(line: 1487, column: 19, scope: !2434)
!2444 = !DILocation(line: 1487, column: 32, scope: !2434)
!2445 = !DILocation(line: 1487, column: 27, scope: !2434)
!2446 = !DILocation(line: 1487, column: 25, scope: !2434)
!2447 = !DILocation(line: 1487, column: 12, scope: !2434)
!2448 = !DILocation(line: 1488, column: 15, scope: !2434)
!2449 = !DILocation(line: 1488, column: 12, scope: !2434)
!2450 = !DILocation(line: 1489, column: 15, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 1489, column: 10)
!2452 = !DILocation(line: 1489, column: 20, scope: !2451)
!2453 = !DILocation(line: 1489, column: 19, scope: !2451)
!2454 = !DILocation(line: 1489, column: 10, scope: !2451)
!2455 = !DILocation(line: 1489, column: 25, scope: !2451)
!2456 = !DILocation(line: 1489, column: 10, scope: !2434)
!2457 = !DILocation(line: 1489, column: 44, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2451, file: !1, discriminator: 1)
!2459 = !DILocation(line: 1490, column: 5, scope: !2434)
!2460 = !DILocation(line: 1485, column: 23, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2430, file: !1, discriminator: 2)
!2462 = !DILocation(line: 1485, column: 5, scope: !2461)
!2463 = distinct !{!2463, !2464}
!2464 = !DILocation(line: 1485, column: 5, scope: !2413)
!2465 = !DILocation(line: 1491, column: 19, scope: !2413)
!2466 = !DILocation(line: 1491, column: 5, scope: !2413)
!2467 = !DILocation(line: 1491, column: 13, scope: !2413)
!2468 = !DILocation(line: 1491, column: 17, scope: !2413)
!2469 = !DILocation(line: 1492, column: 30, scope: !2413)
!2470 = !DILocation(line: 1492, column: 25, scope: !2413)
!2471 = !DILocation(line: 1492, column: 23, scope: !2413)
!2472 = !DILocation(line: 1492, column: 35, scope: !2413)
!2473 = !DILocation(line: 1492, column: 5, scope: !2413)
!2474 = !DILocation(line: 1492, column: 13, scope: !2413)
!2475 = !DILocation(line: 1492, column: 17, scope: !2413)
!2476 = !DILocation(line: 1493, column: 5, scope: !2413)
!2477 = !DILocation(line: 1495, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 1495, column: 11)
!2479 = !DILocation(line: 1495, column: 13, scope: !2478)
!2480 = !DILocation(line: 1495, column: 11, scope: !2409)
!2481 = !DILocation(line: 1496, column: 39, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 1495, column: 20)
!2483 = !DILocation(line: 1496, column: 42, scope: !2482)
!2484 = !DILocation(line: 1496, column: 12, scope: !2482)
!2485 = !DILocation(line: 1496, column: 5, scope: !2482)
!2486 = !DILocation(line: 1498, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 1498, column: 11)
!2488 = !DILocation(line: 1498, column: 13, scope: !2487)
!2489 = !DILocation(line: 1498, column: 11, scope: !2478)
!2490 = !DILocalVariable(name: "t", scope: !2491, file: !1, line: 1499, type: !48)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 1498, column: 20)
!2492 = !DILocation(line: 1499, column: 12, scope: !2491)
!2493 = !DILocation(line: 1499, column: 25, scope: !2491)
!2494 = !DILocation(line: 1499, column: 26, scope: !2491)
!2495 = !DILocation(line: 1499, column: 23, scope: !2491)
!2496 = !DILocation(line: 1499, column: 32, scope: !2491)
!2497 = !DILocation(line: 1500, column: 39, scope: !2491)
!2498 = !DILocation(line: 1500, column: 42, scope: !2491)
!2499 = !DILocation(line: 1500, column: 12, scope: !2491)
!2500 = !DILocation(line: 1500, column: 5, scope: !2491)
!2501 = !DILocation(line: 1502, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 1502, column: 11)
!2503 = !DILocation(line: 1502, column: 13, scope: !2502)
!2504 = !DILocation(line: 1502, column: 11, scope: !2487)
!2505 = !DILocalVariable(name: "t", scope: !2506, file: !1, line: 1503, type: !48)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 1502, column: 21)
!2507 = !DILocation(line: 1503, column: 12, scope: !2506)
!2508 = !DILocation(line: 1503, column: 25, scope: !2506)
!2509 = !DILocation(line: 1503, column: 26, scope: !2506)
!2510 = !DILocation(line: 1503, column: 23, scope: !2506)
!2511 = !DILocation(line: 1503, column: 32, scope: !2506)
!2512 = !DILocation(line: 1504, column: 39, scope: !2506)
!2513 = !DILocation(line: 1504, column: 42, scope: !2506)
!2514 = !DILocation(line: 1504, column: 12, scope: !2506)
!2515 = !DILocation(line: 1504, column: 5, scope: !2506)
!2516 = !DILocation(line: 1506, column: 11, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 1506, column: 11)
!2518 = !DILocation(line: 1506, column: 13, scope: !2517)
!2519 = !DILocation(line: 1506, column: 11, scope: !2502)
!2520 = !DILocalVariable(name: "x32", scope: !2521, file: !1, line: 1507, type: !48)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 1506, column: 21)
!2522 = !DILocation(line: 1507, column: 12, scope: !2521)
!2523 = !DILocation(line: 1507, column: 18, scope: !2521)
!2524 = !DILocation(line: 1507, column: 25, scope: !2521)
!2525 = !DILocation(line: 1507, column: 20, scope: !2521)
!2526 = !DILocation(line: 1507, column: 19, scope: !2521)
!2527 = !DILocalVariable(name: "t", scope: !2521, file: !1, line: 1508, type: !48)
!2528 = !DILocation(line: 1508, column: 12, scope: !2521)
!2529 = !DILocation(line: 1508, column: 20, scope: !2521)
!2530 = !DILocation(line: 1508, column: 19, scope: !2521)
!2531 = !DILocation(line: 1508, column: 22, scope: !2521)
!2532 = !DILocalVariable(name: "c", scope: !2521, file: !1, line: 1509, type: !50)
!2533 = !DILocation(line: 1509, column: 19, scope: !2521)
!2534 = !DILocation(line: 1510, column: 32, scope: !2521)
!2535 = !DILocation(line: 1510, column: 5, scope: !2521)
!2536 = !DILocation(line: 1511, column: 21, scope: !2521)
!2537 = !DILocation(line: 1511, column: 27, scope: !2521)
!2538 = !DILocation(line: 1511, column: 25, scope: !2521)
!2539 = !DILocation(line: 1511, column: 5, scope: !2521)
!2540 = !DILocation(line: 1511, column: 13, scope: !2521)
!2541 = !DILocation(line: 1511, column: 17, scope: !2521)
!2542 = !DILocation(line: 1512, column: 21, scope: !2521)
!2543 = !DILocation(line: 1512, column: 27, scope: !2521)
!2544 = !DILocation(line: 1512, column: 25, scope: !2521)
!2545 = !DILocation(line: 1512, column: 62, scope: !2521)
!2546 = !DILocation(line: 1512, column: 70, scope: !2521)
!2547 = !DILocation(line: 1512, column: 57, scope: !2521)
!2548 = !DILocation(line: 1512, column: 55, scope: !2521)
!2549 = !DILocation(line: 1512, column: 31, scope: !2521)
!2550 = !DILocation(line: 1512, column: 5, scope: !2521)
!2551 = !DILocation(line: 1512, column: 13, scope: !2521)
!2552 = !DILocation(line: 1512, column: 17, scope: !2521)
!2553 = !DILocation(line: 1513, column: 5, scope: !2521)
!2554 = !DILocation(line: 1516, column: 26, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 1515, column: 8)
!2556 = !DILocation(line: 1516, column: 29, scope: !2555)
!2557 = !DILocation(line: 1516, column: 12, scope: !2555)
!2558 = !DILocation(line: 1516, column: 5, scope: !2555)
!2559 = !DILocation(line: 1518, column: 1, scope: !2385)
!2560 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half_e", scope: !1, file: !1, line: 1521, type: !152, isLocal: false, isDefinition: true, scopeLine: 1522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2561 = !DILocalVariable(name: "x", arg: 1, scope: !2560, file: !1, line: 1521, type: !47)
!2562 = !DILocation(line: 1521, column: 45, scope: !2560)
!2563 = !DILocalVariable(name: "result", arg: 2, scope: !2560, file: !1, line: 1521, type: !49)
!2564 = !DILocation(line: 1521, column: 64, scope: !2560)
!2565 = !DILocation(line: 1523, column: 6, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2560, file: !1, line: 1523, column: 6)
!2567 = !DILocation(line: 1523, column: 8, scope: !2566)
!2568 = !DILocation(line: 1523, column: 6, scope: !2560)
!2569 = !DILocation(line: 1524, column: 5, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !1, line: 1523, column: 27)
!2571 = distinct !{!2571, !2569}
!2572 = !DILocation(line: 1524, column: 5, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 1)
!2574 = distinct !DILexicalBlock(scope: !2570, file: !1, line: 1524, column: 5)
!2575 = distinct !{!2575, !2576}
!2576 = !DILocation(line: 1524, column: 5, scope: !2574)
!2577 = !DILocation(line: 1524, column: 5, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2579, file: !1, discriminator: 2)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !1, line: 1524, column: 5)
!2580 = !DILocation(line: 1524, column: 5, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 3)
!2582 = !DILocation(line: 1525, column: 3, scope: !2570)
!2583 = !DILocation(line: 1526, column: 11, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2566, file: !1, line: 1526, column: 11)
!2585 = !DILocation(line: 1526, column: 13, scope: !2584)
!2586 = !DILocation(line: 1526, column: 11, scope: !2566)
!2587 = !DILocalVariable(name: "ex", scope: !2588, file: !1, line: 1529, type: !48)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 1526, column: 21)
!2589 = !DILocation(line: 1529, column: 12, scope: !2588)
!2590 = !DILocation(line: 1529, column: 23, scope: !2588)
!2591 = !DILocation(line: 1529, column: 19, scope: !2588)
!2592 = !DILocalVariable(name: "term", scope: !2588, file: !1, line: 1530, type: !48)
!2593 = !DILocation(line: 1530, column: 12, scope: !2588)
!2594 = !DILocation(line: 1530, column: 19, scope: !2588)
!2595 = !DILocalVariable(name: "sum", scope: !2588, file: !1, line: 1531, type: !48)
!2596 = !DILocation(line: 1531, column: 12, scope: !2588)
!2597 = !DILocation(line: 1531, column: 19, scope: !2588)
!2598 = !DILocalVariable(name: "n", scope: !2588, file: !1, line: 1532, type: !45)
!2599 = !DILocation(line: 1532, column: 9, scope: !2588)
!2600 = !DILocation(line: 1533, column: 10, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 1533, column: 5)
!2602 = !DILocation(line: 1533, column: 9, scope: !2601)
!2603 = !DILocation(line: 1533, column: 14, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2605, file: !1, discriminator: 1)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 1533, column: 5)
!2606 = !DILocation(line: 1533, column: 15, scope: !2604)
!2607 = !DILocation(line: 1533, column: 5, scope: !2604)
!2608 = !DILocalVariable(name: "rat", scope: !2609, file: !1, line: 1534, type: !48)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 1533, column: 27)
!2610 = !DILocation(line: 1534, column: 14, scope: !2609)
!2611 = !DILocation(line: 1534, column: 21, scope: !2609)
!2612 = !DILocation(line: 1534, column: 22, scope: !2609)
!2613 = !DILocation(line: 1534, column: 28, scope: !2609)
!2614 = !DILocation(line: 1534, column: 27, scope: !2609)
!2615 = !DILocation(line: 1535, column: 16, scope: !2609)
!2616 = !DILocation(line: 1535, column: 15, scope: !2609)
!2617 = !DILocation(line: 1535, column: 21, scope: !2609)
!2618 = !DILocation(line: 1535, column: 19, scope: !2609)
!2619 = !DILocation(line: 1535, column: 27, scope: !2609)
!2620 = !DILocation(line: 1535, column: 25, scope: !2609)
!2621 = !DILocation(line: 1535, column: 38, scope: !2609)
!2622 = !DILocation(line: 1535, column: 33, scope: !2609)
!2623 = !DILocation(line: 1535, column: 31, scope: !2609)
!2624 = !DILocation(line: 1535, column: 12, scope: !2609)
!2625 = !DILocation(line: 1536, column: 15, scope: !2609)
!2626 = !DILocation(line: 1536, column: 12, scope: !2609)
!2627 = !DILocation(line: 1537, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 1537, column: 10)
!2629 = !DILocation(line: 1537, column: 20, scope: !2628)
!2630 = !DILocation(line: 1537, column: 19, scope: !2628)
!2631 = !DILocation(line: 1537, column: 10, scope: !2628)
!2632 = !DILocation(line: 1537, column: 25, scope: !2628)
!2633 = !DILocation(line: 1537, column: 10, scope: !2609)
!2634 = !DILocation(line: 1537, column: 44, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2628, file: !1, discriminator: 1)
!2636 = !DILocation(line: 1538, column: 5, scope: !2609)
!2637 = !DILocation(line: 1533, column: 23, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2605, file: !1, discriminator: 2)
!2639 = !DILocation(line: 1533, column: 5, scope: !2638)
!2640 = distinct !{!2640, !2641}
!2641 = !DILocation(line: 1533, column: 5, scope: !2588)
!2642 = !DILocation(line: 1539, column: 19, scope: !2588)
!2643 = !DILocation(line: 1539, column: 5, scope: !2588)
!2644 = !DILocation(line: 1539, column: 13, scope: !2588)
!2645 = !DILocation(line: 1539, column: 17, scope: !2588)
!2646 = !DILocation(line: 1540, column: 30, scope: !2588)
!2647 = !DILocation(line: 1540, column: 25, scope: !2588)
!2648 = !DILocation(line: 1540, column: 23, scope: !2588)
!2649 = !DILocation(line: 1540, column: 35, scope: !2588)
!2650 = !DILocation(line: 1540, column: 5, scope: !2588)
!2651 = !DILocation(line: 1540, column: 13, scope: !2588)
!2652 = !DILocation(line: 1540, column: 17, scope: !2588)
!2653 = !DILocation(line: 1541, column: 5, scope: !2588)
!2654 = !DILocation(line: 1543, column: 11, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 1543, column: 11)
!2656 = !DILocation(line: 1543, column: 13, scope: !2655)
!2657 = !DILocation(line: 1543, column: 11, scope: !2584)
!2658 = !DILocation(line: 1544, column: 40, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !1, line: 1543, column: 20)
!2660 = !DILocation(line: 1544, column: 43, scope: !2659)
!2661 = !DILocation(line: 1544, column: 12, scope: !2659)
!2662 = !DILocation(line: 1544, column: 5, scope: !2659)
!2663 = !DILocation(line: 1546, column: 11, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2655, file: !1, line: 1546, column: 11)
!2665 = !DILocation(line: 1546, column: 13, scope: !2664)
!2666 = !DILocation(line: 1546, column: 11, scope: !2655)
!2667 = !DILocalVariable(name: "t", scope: !2668, file: !1, line: 1547, type: !48)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 1546, column: 20)
!2669 = !DILocation(line: 1547, column: 12, scope: !2668)
!2670 = !DILocation(line: 1547, column: 25, scope: !2668)
!2671 = !DILocation(line: 1547, column: 26, scope: !2668)
!2672 = !DILocation(line: 1547, column: 23, scope: !2668)
!2673 = !DILocation(line: 1547, column: 32, scope: !2668)
!2674 = !DILocation(line: 1548, column: 40, scope: !2668)
!2675 = !DILocation(line: 1548, column: 43, scope: !2668)
!2676 = !DILocation(line: 1548, column: 12, scope: !2668)
!2677 = !DILocation(line: 1548, column: 5, scope: !2668)
!2678 = !DILocation(line: 1550, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 1550, column: 11)
!2680 = !DILocation(line: 1550, column: 13, scope: !2679)
!2681 = !DILocation(line: 1550, column: 11, scope: !2664)
!2682 = !DILocalVariable(name: "t", scope: !2683, file: !1, line: 1551, type: !48)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !1, line: 1550, column: 21)
!2684 = !DILocation(line: 1551, column: 12, scope: !2683)
!2685 = !DILocation(line: 1551, column: 25, scope: !2683)
!2686 = !DILocation(line: 1551, column: 26, scope: !2683)
!2687 = !DILocation(line: 1551, column: 23, scope: !2683)
!2688 = !DILocation(line: 1551, column: 32, scope: !2683)
!2689 = !DILocation(line: 1552, column: 40, scope: !2683)
!2690 = !DILocation(line: 1552, column: 43, scope: !2683)
!2691 = !DILocation(line: 1552, column: 12, scope: !2683)
!2692 = !DILocation(line: 1552, column: 5, scope: !2683)
!2693 = !DILocation(line: 1554, column: 11, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2679, file: !1, line: 1554, column: 11)
!2695 = !DILocation(line: 1554, column: 13, scope: !2694)
!2696 = !DILocation(line: 1554, column: 11, scope: !2679)
!2697 = !DILocalVariable(name: "x52", scope: !2698, file: !1, line: 1555, type: !48)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 1554, column: 21)
!2699 = !DILocation(line: 1555, column: 12, scope: !2698)
!2700 = !DILocation(line: 1555, column: 18, scope: !2698)
!2701 = !DILocation(line: 1555, column: 20, scope: !2698)
!2702 = !DILocation(line: 1555, column: 19, scope: !2698)
!2703 = !DILocation(line: 1555, column: 27, scope: !2698)
!2704 = !DILocation(line: 1555, column: 22, scope: !2698)
!2705 = !DILocation(line: 1555, column: 21, scope: !2698)
!2706 = !DILocalVariable(name: "t", scope: !2698, file: !1, line: 1556, type: !48)
!2707 = !DILocation(line: 1556, column: 12, scope: !2698)
!2708 = !DILocation(line: 1556, column: 20, scope: !2698)
!2709 = !DILocation(line: 1556, column: 19, scope: !2698)
!2710 = !DILocation(line: 1556, column: 22, scope: !2698)
!2711 = !DILocalVariable(name: "c", scope: !2698, file: !1, line: 1557, type: !50)
!2712 = !DILocation(line: 1557, column: 19, scope: !2698)
!2713 = !DILocation(line: 1558, column: 33, scope: !2698)
!2714 = !DILocation(line: 1558, column: 5, scope: !2698)
!2715 = !DILocation(line: 1559, column: 21, scope: !2698)
!2716 = !DILocation(line: 1559, column: 27, scope: !2698)
!2717 = !DILocation(line: 1559, column: 25, scope: !2698)
!2718 = !DILocation(line: 1559, column: 5, scope: !2698)
!2719 = !DILocation(line: 1559, column: 13, scope: !2698)
!2720 = !DILocation(line: 1559, column: 17, scope: !2698)
!2721 = !DILocation(line: 1560, column: 21, scope: !2698)
!2722 = !DILocation(line: 1560, column: 27, scope: !2698)
!2723 = !DILocation(line: 1560, column: 25, scope: !2698)
!2724 = !DILocation(line: 1560, column: 62, scope: !2698)
!2725 = !DILocation(line: 1560, column: 70, scope: !2698)
!2726 = !DILocation(line: 1560, column: 57, scope: !2698)
!2727 = !DILocation(line: 1560, column: 55, scope: !2698)
!2728 = !DILocation(line: 1560, column: 31, scope: !2698)
!2729 = !DILocation(line: 1560, column: 5, scope: !2698)
!2730 = !DILocation(line: 1560, column: 13, scope: !2698)
!2731 = !DILocation(line: 1560, column: 17, scope: !2698)
!2732 = !DILocation(line: 1561, column: 5, scope: !2698)
!2733 = !DILocation(line: 1564, column: 26, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 1563, column: 8)
!2735 = !DILocation(line: 1564, column: 29, scope: !2734)
!2736 = !DILocation(line: 1564, column: 12, scope: !2734)
!2737 = !DILocation(line: 1564, column: 5, scope: !2734)
!2738 = !DILocation(line: 1566, column: 1, scope: !2560)
!2739 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0_e", scope: !1, file: !1, line: 1569, type: !61, isLocal: false, isDefinition: true, scopeLine: 1570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2740 = !DILocalVariable(name: "x", arg: 1, scope: !2739, file: !1, line: 1569, type: !47)
!2741 = !DILocation(line: 1569, column: 45, scope: !2739)
!2742 = !DILocalVariable(name: "b", arg: 2, scope: !2739, file: !1, line: 1569, type: !47)
!2743 = !DILocation(line: 1569, column: 61, scope: !2739)
!2744 = !DILocalVariable(name: "result", arg: 3, scope: !2739, file: !1, line: 1569, type: !49)
!2745 = !DILocation(line: 1569, column: 80, scope: !2739)
!2746 = !DILocation(line: 1571, column: 6, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !1, line: 1571, column: 6)
!2748 = !DILocation(line: 1571, column: 8, scope: !2747)
!2749 = !DILocation(line: 1571, column: 6, scope: !2739)
!2750 = !DILocation(line: 1572, column: 5, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 1571, column: 15)
!2752 = distinct !{!2752, !2750}
!2753 = !DILocation(line: 1572, column: 5, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2755, file: !1, discriminator: 1)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !1, line: 1572, column: 5)
!2756 = distinct !{!2756, !2757}
!2757 = !DILocation(line: 1572, column: 5, scope: !2755)
!2758 = !DILocation(line: 1572, column: 5, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2760, file: !1, discriminator: 2)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !1, line: 1572, column: 5)
!2761 = !DILocation(line: 1572, column: 5, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2755, file: !1, discriminator: 3)
!2763 = !DILocation(line: 1573, column: 3, scope: !2751)
!2764 = !DILocalVariable(name: "arg", scope: !2765, file: !1, line: 1575, type: !48)
!2765 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 1574, column: 8)
!2766 = !DILocation(line: 1575, column: 12, scope: !2765)
!2767 = !DILocation(line: 1575, column: 18, scope: !2765)
!2768 = !DILocation(line: 1575, column: 22, scope: !2765)
!2769 = !DILocation(line: 1575, column: 20, scope: !2765)
!2770 = !DILocalVariable(name: "f0", scope: !2765, file: !1, line: 1576, type: !50)
!2771 = !DILocation(line: 1576, column: 19, scope: !2765)
!2772 = !DILocalVariable(name: "status", scope: !2765, file: !1, line: 1577, type: !45)
!2773 = !DILocation(line: 1577, column: 9, scope: !2765)
!2774 = !DILocation(line: 1577, column: 41, scope: !2765)
!2775 = !DILocation(line: 1577, column: 18, scope: !2765)
!2776 = !DILocation(line: 1578, column: 22, scope: !2765)
!2777 = !DILocation(line: 1578, column: 28, scope: !2765)
!2778 = !DILocation(line: 1578, column: 26, scope: !2765)
!2779 = !DILocation(line: 1578, column: 5, scope: !2765)
!2780 = !DILocation(line: 1578, column: 13, scope: !2765)
!2781 = !DILocation(line: 1578, column: 17, scope: !2765)
!2782 = !DILocation(line: 1579, column: 22, scope: !2765)
!2783 = !DILocation(line: 1579, column: 52, scope: !2765)
!2784 = !DILocation(line: 1579, column: 47, scope: !2765)
!2785 = !DILocation(line: 1579, column: 62, scope: !2765)
!2786 = !DILocation(line: 1579, column: 57, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 1)
!2788 = !DILocation(line: 1579, column: 55, scope: !2765)
!2789 = !DILocation(line: 1579, column: 44, scope: !2765)
!2790 = !DILocation(line: 1579, column: 26, scope: !2765)
!2791 = !DILocation(line: 1579, column: 5, scope: !2765)
!2792 = !DILocation(line: 1579, column: 13, scope: !2765)
!2793 = !DILocation(line: 1579, column: 17, scope: !2765)
!2794 = !DILocation(line: 1580, column: 12, scope: !2765)
!2795 = !DILocation(line: 1580, column: 5, scope: !2765)
!2796 = !DILocation(line: 1582, column: 1, scope: !2739)
!2797 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_m1", scope: !1, file: !1, line: 1590, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!48, !47}
!2800 = !DILocalVariable(name: "x", arg: 1, scope: !2797, file: !1, line: 1590, type: !47)
!2801 = !DILocation(line: 1590, column: 43, scope: !2797)
!2802 = !DILocalVariable(name: "result", scope: !2797, file: !1, line: 1592, type: !50)
!2803 = !DILocation(line: 1592, column: 3, scope: !2797)
!2804 = !DILocalVariable(name: "status", scope: !2797, file: !1, line: 1592, type: !45)
!2805 = !DILocation(line: 1592, column: 3, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2797, file: !1, line: 1592, column: 3)
!2807 = !DILocation(line: 1592, column: 3, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2809, file: !1, discriminator: 1)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !1, line: 1592, column: 3)
!2810 = distinct !{!2810, !2811}
!2811 = !DILocation(line: 1592, column: 3, scope: !2809)
!2812 = !DILocation(line: 1592, column: 3, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2814, file: !1, discriminator: 2)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 1592, column: 3)
!2815 = !DILocation(line: 1592, column: 3, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2809, file: !1, discriminator: 3)
!2817 = !DILocation(line: 1592, column: 3, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2797, file: !1, discriminator: 4)
!2819 = !DILocation(line: 1593, column: 1, scope: !2797)
!2820 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0", scope: !1, file: !1, line: 1595, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1596, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2821 = !DILocalVariable(name: "x", arg: 1, scope: !2820, file: !1, line: 1595, type: !47)
!2822 = !DILocation(line: 1595, column: 42, scope: !2820)
!2823 = !DILocalVariable(name: "result", scope: !2820, file: !1, line: 1597, type: !50)
!2824 = !DILocation(line: 1597, column: 3, scope: !2820)
!2825 = !DILocalVariable(name: "status", scope: !2820, file: !1, line: 1597, type: !45)
!2826 = !DILocation(line: 1597, column: 3, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2820, file: !1, line: 1597, column: 3)
!2828 = !DILocation(line: 1597, column: 3, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 1)
!2830 = distinct !DILexicalBlock(scope: !2827, file: !1, line: 1597, column: 3)
!2831 = distinct !{!2831, !2832}
!2832 = !DILocation(line: 1597, column: 3, scope: !2830)
!2833 = !DILocation(line: 1597, column: 3, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2835, file: !1, discriminator: 2)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !1, line: 1597, column: 3)
!2836 = !DILocation(line: 1597, column: 3, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 3)
!2838 = !DILocation(line: 1597, column: 3, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2820, file: !1, discriminator: 4)
!2840 = !DILocation(line: 1598, column: 1, scope: !2820)
!2841 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1", scope: !1, file: !1, line: 1600, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2842 = !DILocalVariable(name: "x", arg: 1, scope: !2841, file: !1, line: 1600, type: !47)
!2843 = !DILocation(line: 1600, column: 42, scope: !2841)
!2844 = !DILocalVariable(name: "result", scope: !2841, file: !1, line: 1602, type: !50)
!2845 = !DILocation(line: 1602, column: 3, scope: !2841)
!2846 = !DILocalVariable(name: "status", scope: !2841, file: !1, line: 1602, type: !45)
!2847 = !DILocation(line: 1602, column: 3, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 1602, column: 3)
!2849 = !DILocation(line: 1602, column: 3, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2851, file: !1, discriminator: 1)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !1, line: 1602, column: 3)
!2852 = distinct !{!2852, !2853}
!2853 = !DILocation(line: 1602, column: 3, scope: !2851)
!2854 = !DILocation(line: 1602, column: 3, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2856, file: !1, discriminator: 2)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 1602, column: 3)
!2857 = !DILocation(line: 1602, column: 3, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2851, file: !1, discriminator: 3)
!2859 = !DILocation(line: 1602, column: 3, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2841, file: !1, discriminator: 4)
!2861 = !DILocation(line: 1603, column: 1, scope: !2841)
!2862 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2", scope: !1, file: !1, line: 1605, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2863 = !DILocalVariable(name: "x", arg: 1, scope: !2862, file: !1, line: 1605, type: !47)
!2864 = !DILocation(line: 1605, column: 42, scope: !2862)
!2865 = !DILocalVariable(name: "result", scope: !2862, file: !1, line: 1607, type: !50)
!2866 = !DILocation(line: 1607, column: 3, scope: !2862)
!2867 = !DILocalVariable(name: "status", scope: !2862, file: !1, line: 1607, type: !45)
!2868 = !DILocation(line: 1607, column: 3, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 1607, column: 3)
!2870 = !DILocation(line: 1607, column: 3, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2872, file: !1, discriminator: 1)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !1, line: 1607, column: 3)
!2873 = distinct !{!2873, !2874}
!2874 = !DILocation(line: 1607, column: 3, scope: !2872)
!2875 = !DILocation(line: 1607, column: 3, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2877, file: !1, discriminator: 2)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !1, line: 1607, column: 3)
!2878 = !DILocation(line: 1607, column: 3, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2872, file: !1, discriminator: 3)
!2880 = !DILocation(line: 1607, column: 3, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2862, file: !1, discriminator: 4)
!2882 = !DILocation(line: 1608, column: 1, scope: !2862)
!2883 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int", scope: !1, file: !1, line: 1610, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!48, !46, !47}
!2886 = !DILocalVariable(name: "j", arg: 1, scope: !2883, file: !1, line: 1610, type: !46)
!2887 = !DILocation(line: 1610, column: 41, scope: !2883)
!2888 = !DILocalVariable(name: "x", arg: 2, scope: !2883, file: !1, line: 1610, type: !47)
!2889 = !DILocation(line: 1610, column: 57, scope: !2883)
!2890 = !DILocalVariable(name: "result", scope: !2883, file: !1, line: 1612, type: !50)
!2891 = !DILocation(line: 1612, column: 3, scope: !2883)
!2892 = !DILocalVariable(name: "status", scope: !2883, file: !1, line: 1612, type: !45)
!2893 = !DILocation(line: 1612, column: 3, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2883, file: !1, line: 1612, column: 3)
!2895 = !DILocation(line: 1612, column: 3, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2897, file: !1, discriminator: 1)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !1, line: 1612, column: 3)
!2898 = distinct !{!2898, !2899}
!2899 = !DILocation(line: 1612, column: 3, scope: !2897)
!2900 = !DILocation(line: 1612, column: 3, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 2)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !1, line: 1612, column: 3)
!2903 = !DILocation(line: 1612, column: 3, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2897, file: !1, discriminator: 3)
!2905 = !DILocation(line: 1612, column: 3, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2883, file: !1, discriminator: 4)
!2907 = !DILocation(line: 1613, column: 1, scope: !2883)
!2908 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf", scope: !1, file: !1, line: 1615, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1616, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2909 = !DILocalVariable(name: "x", arg: 1, scope: !2908, file: !1, line: 1615, type: !47)
!2910 = !DILocation(line: 1615, column: 46, scope: !2908)
!2911 = !DILocalVariable(name: "result", scope: !2908, file: !1, line: 1617, type: !50)
!2912 = !DILocation(line: 1617, column: 3, scope: !2908)
!2913 = !DILocalVariable(name: "status", scope: !2908, file: !1, line: 1617, type: !45)
!2914 = !DILocation(line: 1617, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 1617, column: 3)
!2916 = !DILocation(line: 1617, column: 3, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2918, file: !1, discriminator: 1)
!2918 = distinct !DILexicalBlock(scope: !2915, file: !1, line: 1617, column: 3)
!2919 = distinct !{!2919, !2920}
!2920 = !DILocation(line: 1617, column: 3, scope: !2918)
!2921 = !DILocation(line: 1617, column: 3, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2923, file: !1, discriminator: 2)
!2923 = distinct !DILexicalBlock(scope: !2918, file: !1, line: 1617, column: 3)
!2924 = !DILocation(line: 1617, column: 3, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2918, file: !1, discriminator: 3)
!2926 = !DILocation(line: 1617, column: 3, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2908, file: !1, discriminator: 4)
!2928 = !DILocation(line: 1618, column: 1, scope: !2908)
!2929 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half", scope: !1, file: !1, line: 1620, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2930 = !DILocalVariable(name: "x", arg: 1, scope: !2929, file: !1, line: 1620, type: !47)
!2931 = !DILocation(line: 1620, column: 45, scope: !2929)
!2932 = !DILocalVariable(name: "result", scope: !2929, file: !1, line: 1622, type: !50)
!2933 = !DILocation(line: 1622, column: 3, scope: !2929)
!2934 = !DILocalVariable(name: "status", scope: !2929, file: !1, line: 1622, type: !45)
!2935 = !DILocation(line: 1622, column: 3, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2929, file: !1, line: 1622, column: 3)
!2937 = !DILocation(line: 1622, column: 3, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2939, file: !1, discriminator: 1)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 1622, column: 3)
!2940 = distinct !{!2940, !2941}
!2941 = !DILocation(line: 1622, column: 3, scope: !2939)
!2942 = !DILocation(line: 1622, column: 3, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2944, file: !1, discriminator: 2)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !1, line: 1622, column: 3)
!2945 = !DILocation(line: 1622, column: 3, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2939, file: !1, discriminator: 3)
!2947 = !DILocation(line: 1622, column: 3, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2929, file: !1, discriminator: 4)
!2949 = !DILocation(line: 1623, column: 1, scope: !2929)
!2950 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half", scope: !1, file: !1, line: 1625, type: !2798, isLocal: false, isDefinition: true, scopeLine: 1626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2951 = !DILocalVariable(name: "x", arg: 1, scope: !2950, file: !1, line: 1625, type: !47)
!2952 = !DILocation(line: 1625, column: 46, scope: !2950)
!2953 = !DILocalVariable(name: "result", scope: !2950, file: !1, line: 1627, type: !50)
!2954 = !DILocation(line: 1627, column: 3, scope: !2950)
!2955 = !DILocalVariable(name: "status", scope: !2950, file: !1, line: 1627, type: !45)
!2956 = !DILocation(line: 1627, column: 3, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 1627, column: 3)
!2958 = !DILocation(line: 1627, column: 3, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2960, file: !1, discriminator: 1)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 1627, column: 3)
!2961 = distinct !{!2961, !2962}
!2962 = !DILocation(line: 1627, column: 3, scope: !2960)
!2963 = !DILocation(line: 1627, column: 3, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2965, file: !1, discriminator: 2)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !1, line: 1627, column: 3)
!2966 = !DILocation(line: 1627, column: 3, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2960, file: !1, discriminator: 3)
!2968 = !DILocation(line: 1627, column: 3, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2950, file: !1, discriminator: 4)
!2970 = !DILocation(line: 1628, column: 1, scope: !2950)
!2971 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0", scope: !1, file: !1, line: 1630, type: !2972, isLocal: false, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!48, !47, !47}
!2974 = !DILocalVariable(name: "x", arg: 1, scope: !2971, file: !1, line: 1630, type: !47)
!2975 = !DILocation(line: 1630, column: 46, scope: !2971)
!2976 = !DILocalVariable(name: "b", arg: 2, scope: !2971, file: !1, line: 1630, type: !47)
!2977 = !DILocation(line: 1630, column: 62, scope: !2971)
!2978 = !DILocalVariable(name: "result", scope: !2971, file: !1, line: 1632, type: !50)
!2979 = !DILocation(line: 1632, column: 3, scope: !2971)
!2980 = !DILocalVariable(name: "status", scope: !2971, file: !1, line: 1632, type: !45)
!2981 = !DILocation(line: 1632, column: 3, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 1632, column: 3)
!2983 = !DILocation(line: 1632, column: 3, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2985, file: !1, discriminator: 1)
!2985 = distinct !DILexicalBlock(scope: !2982, file: !1, line: 1632, column: 3)
!2986 = distinct !{!2986, !2987}
!2987 = !DILocation(line: 1632, column: 3, scope: !2985)
!2988 = !DILocation(line: 1632, column: 3, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2990, file: !1, discriminator: 2)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !1, line: 1632, column: 3)
!2991 = !DILocation(line: 1632, column: 3, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2985, file: !1, discriminator: 3)
!2993 = !DILocation(line: 1632, column: 3, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2971, file: !1, discriminator: 4)
!2995 = !DILocation(line: 1633, column: 1, scope: !2971)
!2996 = distinct !DISubprogram(name: "fd_whiz", scope: !1, file: !1, line: 819, type: !2997, isLocal: true, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!45, !47, !46, !75, !75, !75, !75}
!2999 = !DILocalVariable(name: "term", arg: 1, scope: !2996, file: !1, line: 819, type: !47)
!3000 = !DILocation(line: 819, column: 22, scope: !2996)
!3001 = !DILocalVariable(name: "iterm", arg: 2, scope: !2996, file: !1, line: 819, type: !46)
!3002 = !DILocation(line: 819, column: 38, scope: !2996)
!3003 = !DILocalVariable(name: "qnum", arg: 3, scope: !2996, file: !1, line: 820, type: !75)
!3004 = !DILocation(line: 820, column: 18, scope: !2996)
!3005 = !DILocalVariable(name: "qden", arg: 4, scope: !2996, file: !1, line: 820, type: !75)
!3006 = !DILocation(line: 820, column: 33, scope: !2996)
!3007 = !DILocalVariable(name: "result", arg: 5, scope: !2996, file: !1, line: 821, type: !75)
!3008 = !DILocation(line: 821, column: 18, scope: !2996)
!3009 = !DILocalVariable(name: "s", arg: 6, scope: !2996, file: !1, line: 821, type: !75)
!3010 = !DILocation(line: 821, column: 35, scope: !2996)
!3011 = !DILocation(line: 823, column: 6, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2996, file: !1, line: 823, column: 6)
!3013 = !DILocation(line: 823, column: 12, scope: !3012)
!3014 = !DILocation(line: 823, column: 6, scope: !2996)
!3015 = !DILocation(line: 823, column: 19, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3012, file: !1, discriminator: 1)
!3017 = !DILocation(line: 823, column: 21, scope: !3016)
!3018 = !DILocation(line: 823, column: 18, scope: !3016)
!3019 = !DILocation(line: 825, column: 9, scope: !2996)
!3020 = !DILocation(line: 825, column: 4, scope: !2996)
!3021 = !DILocation(line: 825, column: 6, scope: !2996)
!3022 = !DILocation(line: 827, column: 22, scope: !2996)
!3023 = !DILocation(line: 827, column: 28, scope: !2996)
!3024 = !DILocation(line: 827, column: 33, scope: !2996)
!3025 = !DILocation(line: 827, column: 26, scope: !2996)
!3026 = !DILocation(line: 827, column: 40, scope: !2996)
!3027 = !DILocation(line: 827, column: 45, scope: !2996)
!3028 = !DILocation(line: 827, column: 38, scope: !2996)
!3029 = !DILocation(line: 827, column: 20, scope: !2996)
!3030 = !DILocation(line: 827, column: 8, scope: !2996)
!3031 = !DILocation(line: 827, column: 3, scope: !2996)
!3032 = !DILocation(line: 827, column: 15, scope: !2996)
!3033 = !DILocation(line: 828, column: 18, scope: !2996)
!3034 = !DILocation(line: 828, column: 17, scope: !2996)
!3035 = !DILocation(line: 828, column: 27, scope: !2996)
!3036 = !DILocation(line: 828, column: 22, scope: !2996)
!3037 = !DILocation(line: 828, column: 20, scope: !2996)
!3038 = !DILocation(line: 828, column: 8, scope: !2996)
!3039 = !DILocation(line: 828, column: 3, scope: !2996)
!3040 = !DILocation(line: 828, column: 15, scope: !2996)
!3041 = !DILocation(line: 830, column: 6, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2996, file: !1, line: 830, column: 6)
!3043 = !DILocation(line: 830, column: 12, scope: !3042)
!3044 = !DILocation(line: 830, column: 6, scope: !2996)
!3045 = !DILocalVariable(name: "factor", scope: !3046, file: !1, line: 831, type: !48)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !1, line: 830, column: 17)
!3047 = !DILocation(line: 831, column: 12, scope: !3046)
!3048 = !DILocalVariable(name: "ratio", scope: !3046, file: !1, line: 832, type: !48)
!3049 = !DILocation(line: 832, column: 12, scope: !3046)
!3050 = !DILocation(line: 832, column: 21, scope: !3046)
!3051 = !DILocation(line: 832, column: 28, scope: !3046)
!3052 = !DILocation(line: 832, column: 33, scope: !3046)
!3053 = !DILocation(line: 832, column: 26, scope: !3046)
!3054 = !DILocalVariable(name: "j", scope: !3046, file: !1, line: 833, type: !45)
!3055 = !DILocation(line: 833, column: 9, scope: !3046)
!3056 = !DILocation(line: 834, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3046, file: !1, line: 834, column: 5)
!3058 = !DILocation(line: 834, column: 16, scope: !3057)
!3059 = !DILocation(line: 834, column: 10, scope: !3057)
!3060 = !DILocation(line: 834, column: 9, scope: !3057)
!3061 = !DILocation(line: 834, column: 20, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3063, file: !1, discriminator: 1)
!3063 = distinct !DILexicalBlock(scope: !3057, file: !1, line: 834, column: 5)
!3064 = !DILocation(line: 834, column: 21, scope: !3062)
!3065 = !DILocation(line: 834, column: 5, scope: !3062)
!3066 = !DILocalVariable(name: "c", scope: !3067, file: !1, line: 835, type: !48)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !1, line: 834, column: 31)
!3068 = !DILocation(line: 835, column: 14, scope: !3067)
!3069 = !DILocation(line: 835, column: 18, scope: !3067)
!3070 = !DILocation(line: 835, column: 28, scope: !3067)
!3071 = !DILocation(line: 835, column: 29, scope: !3067)
!3072 = !DILocation(line: 835, column: 25, scope: !3067)
!3073 = !DILocation(line: 835, column: 38, scope: !3067)
!3074 = !DILocation(line: 835, column: 43, scope: !3067)
!3075 = !DILocation(line: 835, column: 35, scope: !3067)
!3076 = !DILocation(line: 836, column: 17, scope: !3067)
!3077 = !DILocation(line: 836, column: 14, scope: !3067)
!3078 = !DILocation(line: 837, column: 22, scope: !3067)
!3079 = !DILocation(line: 837, column: 23, scope: !3067)
!3080 = !DILocation(line: 837, column: 17, scope: !3067)
!3081 = !DILocation(line: 837, column: 29, scope: !3067)
!3082 = !DILocation(line: 837, column: 38, scope: !3067)
!3083 = !DILocation(line: 837, column: 33, scope: !3067)
!3084 = !DILocation(line: 837, column: 31, scope: !3067)
!3085 = !DILocation(line: 837, column: 27, scope: !3067)
!3086 = !DILocation(line: 837, column: 12, scope: !3067)
!3087 = !DILocation(line: 837, column: 7, scope: !3067)
!3088 = !DILocation(line: 837, column: 15, scope: !3067)
!3089 = !DILocation(line: 838, column: 22, scope: !3067)
!3090 = !DILocation(line: 838, column: 23, scope: !3067)
!3091 = !DILocation(line: 838, column: 17, scope: !3067)
!3092 = !DILocation(line: 838, column: 29, scope: !3067)
!3093 = !DILocation(line: 838, column: 38, scope: !3067)
!3094 = !DILocation(line: 838, column: 33, scope: !3067)
!3095 = !DILocation(line: 838, column: 31, scope: !3067)
!3096 = !DILocation(line: 838, column: 27, scope: !3067)
!3097 = !DILocation(line: 838, column: 12, scope: !3067)
!3098 = !DILocation(line: 838, column: 7, scope: !3067)
!3099 = !DILocation(line: 838, column: 15, scope: !3067)
!3100 = !DILocation(line: 839, column: 5, scope: !3067)
!3101 = !DILocation(line: 834, column: 27, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3063, file: !1, discriminator: 2)
!3103 = !DILocation(line: 834, column: 5, scope: !3102)
!3104 = distinct !{!3104, !3105}
!3105 = !DILocation(line: 834, column: 5, scope: !3046)
!3106 = !DILocation(line: 840, column: 3, scope: !3046)
!3107 = !DILocation(line: 842, column: 13, scope: !2996)
!3108 = !DILocation(line: 842, column: 23, scope: !2996)
!3109 = !DILocation(line: 842, column: 21, scope: !2996)
!3110 = !DILocation(line: 842, column: 4, scope: !2996)
!3111 = !DILocation(line: 842, column: 11, scope: !2996)
!3112 = !DILocation(line: 843, column: 3, scope: !2996)
