; ModuleID = 'gamma.ll'
source_filename = "gamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.anon = type { i32, double, i64 }
%struct.anon.0 = type { i32, double, i64 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"gamma.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"x too large to extract fraction part\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@gstar_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @gstar_a_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@gstar_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @gstar_b_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 18 }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@fact_table = internal global [171 x %struct.anon] [%struct.anon { i32 0, double 1.000000e+00, i64 1 }, %struct.anon { i32 1, double 1.000000e+00, i64 1 }, %struct.anon { i32 2, double 2.000000e+00, i64 2 }, %struct.anon { i32 3, double 6.000000e+00, i64 6 }, %struct.anon { i32 4, double 2.400000e+01, i64 24 }, %struct.anon { i32 5, double 1.200000e+02, i64 120 }, %struct.anon { i32 6, double 7.200000e+02, i64 720 }, %struct.anon { i32 7, double 5.040000e+03, i64 5040 }, %struct.anon { i32 8, double 4.032000e+04, i64 40320 }, %struct.anon { i32 9, double 3.628800e+05, i64 362880 }, %struct.anon { i32 10, double 3.628800e+06, i64 3628800 }, %struct.anon { i32 11, double 3.991680e+07, i64 39916800 }, %struct.anon { i32 12, double 4.790016e+08, i64 479001600 }, %struct.anon { i32 13, double 0x41F7328CC0000000, i64 0 }, %struct.anon { i32 14, double 0x42344C3B28000000, i64 0 }, %struct.anon { i32 15, double 0x4273077775800000, i64 0 }, %struct.anon { i32 16, double 0x42B3077775800000, i64 0 }, %struct.anon { i32 17, double 0x42F437EEECD80000, i64 0 }, %struct.anon { i32 18, double 0x4336BEECCA730000, i64 0 }, %struct.anon { i32 19, double 0x437B02B930689000, i64 0 }, %struct.anon { i32 20, double 0x43C0E1B3BE415A00, i64 0 }, %struct.anon { i32 21, double 0x4406283BE9B5C620, i64 0 }, %struct.anon { i32 22, double 0x444E77526159F06C, i64 0 }, %struct.anon { i32 23, double 0x4495E5C335F8A4CE, i64 0 }, %struct.anon { i32 24, double 0x44E06C52687A7B9A, i64 0 }, %struct.anon { i32 25, double 0x4529A940C33F6121, i64 0 }, %struct.anon { i32 26, double 0x4574D9849EA37EEB, i64 0 }, %struct.anon { i32 27, double 0x45C19787E5D9F316, i64 0 }, %struct.anon { i32 28, double 0x460EC92DD23D6967, i64 0 }, %struct.anon { i32 29, double 0x465BE6518687A785, i64 0 }, %struct.anon { i32 30, double 0x46AA27EC6E1F2D0D, i64 0 }, %struct.anon { i32 31, double 0x46F956AD0AAE33A4, i64 0 }, %struct.anon { i32 32, double 0x474956AD0AAE33A4, i64 0 }, %struct.anon { i32 33, double 0x479A21627303A541, i64 0 }, %struct.anon { i32 34, double 0x47EBC3789A33DF96, i64 0 }, %struct.anon { i32 35, double 0x483E5DCBE8A8BC8C, i64 0 }, %struct.anon { i32 36, double 0x489114C2B2DEEA0F, i64 0 }, %struct.anon { i32 37, double 0x48E3C0011ED1BEA1, i64 0 }, %struct.anon { i32 38, double 0x493774015499125F, i64 0 }, %struct.anon { i32 39, double 0x498C95619F1A8E64, i64 0 }, %struct.anon { i32 40, double 0x49E1DD5D037098FE, i64 0 }, %struct.anon { i32 41, double 0x4A36E39F2C684406, i64 0 }, %struct.anon { i32 42, double 0x4A8E0AC0EA48D948, i64 0 }, %struct.anon { i32 43, double 0x4AE42F399D68F1FC, i64 0 }, %struct.anon { i32 44, double 0x4B3BC0EF38704CBB, i64 0 }, %struct.anon { i32 45, double 0x4B9383A833AEF5F3, i64 0 }, %struct.anon { i32 46, double 0x4BEC0D41CA4B818E, i64 0 }, %struct.anon { i32 47, double 0x4C4499BC508F7324, i64 0 }, %struct.anon { i32 48, double 0x4C9EE69A78D72CB6, i64 0 }, %struct.anon { i32 49, double 0x4CF7A88E4484BE3B, i64 0 }, %struct.anon { i32 50, double 0x4D527BAF2587B49E, i64 0 }, %struct.anon { i32 51, double 0x4DAD751F23D047DC, i64 0 }, %struct.anon { i32 52, double 0x4E07EF294D193A63, i64 0 }, %struct.anon { i32 53, double 0x4E63D20E33D8E45A, i64 0 }, %struct.anon { i32 54, double 0x4EC0B93BFBBF00AC, i64 0 }, %struct.anon { i32 55, double 0x4F1CBE5F18B04928, i64 0 }, %struct.anon { i32 56, double 0x4F792693359A4003, i64 0 }, %struct.anon { i32 57, double 0x4FD6665B1BBD6102, i64 0 }, %struct.anon { i32 58, double 0x50344CC291239FEA, i64 0 }, %struct.anon { i32 59, double 0x5092B6C35DCCD76C, i64 0 }, %struct.anon { i32 60, double 0x50F18B5727F009F5, i64 0 }, %struct.anon { i32 61, double 0x5150B8CF1210C97E, i64 0 }, %struct.anon { i32 62, double 0x51B0330899804332, i64 0 }, %struct.anon { i32 63, double 0x520FE478EE34844A, i64 0 }, %struct.anon { i32 64, double 0x526FE478EE34844A, i64 0 }, %struct.anon { i32 65, double 0x52D0320568F6AB2E, i64 0 }, %struct.anon { i32 66, double 0x5330B395943E6087, i64 0 }, %struct.anon { i32 67, double 0x53917C0097314D0D, i64 0 }, %struct.anon { i32 68, double 0x53F293C0A0A461DE, i64 0 }, %struct.anon { i32 69, double 0x5454074BAD313983, i64 0 }, %struct.anon { i32 70, double 0x54B5E7FAC56DD6E8, i64 0 }, %struct.anon { i32 71, double 0x55184D5A3305DA69, i64 0 }, %struct.anon { i32 72, double 0x557B5705796695B6, i64 0 }, %struct.anon { i32 73, double 0x55DF2F423E7902C4, i64 0 }, %struct.anon { i32 74, double 0x564207524C1DF599, i64 0 }, %struct.anon { i32 75, double 0x56A5209471331BD0, i64 0 }, %struct.anon { i32 76, double 0x570916B0466CB107, i64 0 }, %struct.anon { i32 77, double 0x576E2F4C14BAC4FC, i64 0 }, %struct.anon { i32 78, double 0x57D264D25CA1D009, i64 0 }, %struct.anon { i32 79, double 0x5836B473AA57BCCC, i64 0 }, %struct.anon { i32 80, double 0x589C619094EDABFF, i64 0 }, %struct.anon { i32 81, double 0x5901F5BD7E3E66D7, i64 0 }, %struct.anon { i32 82, double 0x596702DAC9BFF3C4, i64 0 }, %struct.anon { i32 83, double 0x59CDD7B3BDA4F022, i64 0 }, %struct.anon { i32 84, double 0x5A33958DF4743D96, i64 0 }, %struct.anon { i32 85, double 0x5A9A02A088AA61CB, i64 0 }, %struct.anon { i32 86, double 0x5B0179C3DBD279B5, i64 0 }, %struct.anon { i32 87, double 0x5B67C1863ED21D72, i64 0 }, %struct.anon { i32 88, double 0x5BD0550C4B30743E, i64 0 }, %struct.anon { i32 89, double 0x5C36B645188F61A6, i64 0 }, %struct.anon { i32 90, double 0x5C9FF0512A89A152, i64 0 }, %struct.anon { i32 91, double 0x5D06B4D9B43DD8B0, i64 0 }, %struct.anon { i32 92, double 0x5D7051FC798C73BF, i64 0 }, %struct.anon { i32 93, double 0x5DD7B722E0A01831, i64 0 }, %struct.anon { i32 94, double 0x5E416A7D9CF591C4, i64 0 }, %struct.anon { i32 95, double 0x5EA9DA1274FC845F, i64 0 }, %struct.anon { i32 96, double 0x5F13638DD7BD6347, i64 0 }, %struct.anon { i32 97, double 0x5F7D62E2FAFB0A78, i64 0 }, %struct.anon { i32 98, double 0x5FE67FB5C8283404, i64 0 }, %struct.anon { i32 99, double 0x605166C698CF183B, i64 0 }, %struct.anon { i32 100, double 0x60BB30964EC395DC, i64 0 }, %struct.anon { i32 101, double 0x612574569A265440, i64 0 }, %struct.anon { i32 102, double 0x619118B502D68B23, i64 0 }, %struct.anon { i32 103, double 0x61FB83C3509147EC, i64 0 }, %struct.anon { i32 104, double 0x62665B0EB1760A70, i64 0 }, %struct.anon { i32 105, double 0x62D256B20D92D490, i64 0 }, %struct.anon { i32 106, double 0x633E5F96E67B300E, i64 0 }, %struct.anon { i32 107, double 0x63A963E824AAFA2C, i64 0 }, %struct.anon { i32 108, double 0x64156C4BDEF04315, i64 0 }, %struct.anon { i32 109, double 0x64823E389BD89920, i64 0 }, %struct.anon { i32 110, double 0x64EF5AF14BDC472F, i64 0 }, %struct.anon { i32 111, double 0x655B30DD3FC905BA, i64 0 }, %struct.anon { i32 112, double 0x65C7CAC197CFE503, i64 0 }, %struct.anon { i32 113, double 0x663500FEE805882D, i64 0 }, %struct.anon { i32 114, double 0x66A2B4E306A4ED48, i64 0 }, %struct.anon { i32 115, double 0x6710CE83F7F82D2F, i64 0 }, %struct.anon { i32 116, double 0x677E764F3171D1E4, i64 0 }, %struct.anon { i32 117, double 0x67EBD824633209DB, i64 0 }, %struct.anon { i32 118, double 0x6859AB418B722116, i64 0 }, %struct.anon { i32 119, double 0x68C7DD36EFA41AC2, i64 0 }, %struct.anon { i32 120, double 0x69365F6380A9D916, i64 0 }, %struct.anon { i32 121, double 0x69A5262C0FA08F37, i64 0 }, %struct.anon { i32 122, double 0x6A142861FEE50880, i64 0 }, %struct.anon { i32 123, double 0x6A835ECE2AF0162B, i64 0 }, %struct.anon { i32 124, double 0x6AF2C3D7B998957A, i64 0 }, %struct.anon { i32 125, double 0x6B625340AB3F01F9, i64 0 }, %struct.anon { i32 126, double 0x6BD209F3A89205F1, i64 0 }, %struct.anon { i32 127, double 0x6C41E5DFC140E1E5, i64 0 }, %struct.anon { i32 128, double 0x6CB1E5DFC140E1E5, i64 0 }, %struct.anon { i32 129, double 0x6D2209AB80C363A9, i64 0 }, %struct.anon { i32 130, double 0x6D9251D22EC67138, i64 0 }, %struct.anon { i32 131, double 0x6E02BFBD1BDF17DF, i64 0 }, %struct.anon { i32 132, double 0x6E7355BB04BE109E, i64 0 }, %struct.anon { i32 133, double 0x6EE4171452ED7D44, i64 0 }, %struct.anon { i32 134, double 0x6F55082946D09F23, i64 0 }, %struct.anon { i32 135, double 0x6FC62E9B88B007D7, i64 0 }, %struct.anon { i32 136, double 0x70379185413B0855, i64 0 }, %struct.anon { i32 137, double 0x70A939C09FD12EEB, i64 0 }, %struct.anon { i32 138, double 0x711B3243AC4D8695, i64 0 }, %struct.anon { i32 139, double 0x718D88957D1C3026, i64 0 }, %struct.anon { i32 140, double 0x720026B1C06B6A55, i64 0 }, %struct.anon { i32 141, double 0x7271CA9FCDF65321, i64 0 }, %struct.anon { i32 142, double 0x72E3BCC9487D4439, i64 0 }, %struct.anon { i32 143, double 0x73560CE8DEFBF238, i64 0 }, %struct.anon { i32 144, double 0x73C8CE85FADB707E, i64 0 }, %struct.anon { i32 145, double 0x743C19F3C62C956F, i64 0 }, %struct.anon { i32 146, double 0x74B006CD07056D39, i64 0 }, %struct.anon { i32 147, double 0x752267CF76103B70, i64 0 }, %struct.anon { i32 148, double 0x75954807E082C4B9, i64 0 }, %struct.anon { i32 149, double 0x7608C5D92B583900, i64 0 }, %struct.anon { i32 150, double 0x767D07DA7ECB62CC, i64 0 }, %struct.anon { i32 151, double 0x76F11FA1E0C9F746, i64 0 }, %struct.anon { i32 152, double 0x776455903AEFD5A3, i64 0 }, %struct.anon { i32 153, double 0x77D84E466672AD5D, i64 0 }, %struct.anon { i32 154, double 0x784D3E2CB341F894, i64 0 }, %struct.anon { i32 155, double 0x78C1B4A51088F182, i64 0 }, %struct.anon { i32 156, double 0x793594292C26E656, i64 0 }, %struct.anon { i32 157, double 0x79AA77BA8027B686, i64 0 }, %struct.anon { i32 158, double 0x7A2055E51B1882A7, i64 0 }, %struct.anon { i32 159, double 0x7A944AB297A8724B, i64 0 }, %struct.anon { i32 160, double 0x7B095D5F3D928EDE, i64 0 }, %struct.anon { i32 161, double 0x7B7FE771CB7257B3, i64 0 }, %struct.anon { i32 162, double 0x7BF4307602BE5B7F, i64 0 }, %struct.anon { i32 163, double 0x7C69B5B6477E6884, i64 0 }, %struct.anon { i32 164, double 0x7CE07868C5CCFAF4, i64 0 }, %struct.anon { i32 165, double 0x7D553B370EFA3B7F, i64 0 }, %struct.anon { i32 166, double 0x7DCB88CB676C8529, i64 0 }, %struct.anon { i32 167, double 0x7E41F63CB077CADE, i64 0 }, %struct.anon { i32 168, double 0x7EB7932FA79D3A43, i64 0 }, %struct.anon { i32 169, double 0x7F2F2054EB4D96EC, i64 0 }, %struct.anon { i32 170, double 0x7FA4AB7864418639, i64 0 }], align 16
@doub_fact_table = internal global [298 x %struct.anon.0] [%struct.anon.0 { i32 0, double 1.000000e+00, i64 1 }, %struct.anon.0 { i32 1, double 1.000000e+00, i64 1 }, %struct.anon.0 { i32 2, double 2.000000e+00, i64 2 }, %struct.anon.0 { i32 3, double 3.000000e+00, i64 3 }, %struct.anon.0 { i32 4, double 8.000000e+00, i64 8 }, %struct.anon.0 { i32 5, double 1.500000e+01, i64 15 }, %struct.anon.0 { i32 6, double 4.800000e+01, i64 48 }, %struct.anon.0 { i32 7, double 1.050000e+02, i64 105 }, %struct.anon.0 { i32 8, double 3.840000e+02, i64 384 }, %struct.anon.0 { i32 9, double 9.450000e+02, i64 945 }, %struct.anon.0 { i32 10, double 3.840000e+03, i64 3840 }, %struct.anon.0 { i32 11, double 1.039500e+04, i64 10395 }, %struct.anon.0 { i32 12, double 4.608000e+04, i64 46080 }, %struct.anon.0 { i32 13, double 1.351350e+05, i64 135135 }, %struct.anon.0 { i32 14, double 6.451200e+05, i64 645120 }, %struct.anon.0 { i32 15, double 2.027025e+06, i64 2027025 }, %struct.anon.0 { i32 16, double 1.032192e+07, i64 10321920 }, %struct.anon.0 { i32 17, double 0x41806E7908000000, i64 34459425 }, %struct.anon.0 { i32 18, double 0x41A6260000000000, i64 185794560 }, %struct.anon.0 { i32 19, double 0x41C3832FB9800000, i64 0 }, %struct.anon.0 { i32 20, double 0x41EBAF8000000000, i64 0 }, %struct.anon.0 { i32 21, double 0x42099C2EA3780000, i64 0 }, %struct.anon.0 { i32 22, double 0x423308A800000000, i64 0 }, %struct.anon.0 { i32 23, double 0x42526841857E4000, i64 0 }, %struct.anon.0 { i32 24, double 0x427C8CFC00000000, i64 0 }, %struct.anon.0 { i32 25, double 0x429CC2E660954400, i64 0 }, %struct.anon.0 { i32 26, double 0x42C7328CC0000000, i64 0 }, %struct.anon.0 { i32 27, double 0x42E84472617DF160, i64 0 }, %struct.anon.0 { i32 28, double 0x43144C3B28000000, i64 0 }, %struct.anon.0 { i32 29, double 0x4335FE07A85A22BF, i64 0 }, %struct.anon.0 { i32 30, double 0x4363077775800000, i64 0 }, %struct.anon.0 { i32 31, double 0x43854E176B1751A9, i64 0 }, %struct.anon.0 { i32 32, double 0x43B3077775800000, i64 0 }, %struct.anon.0 { i32 33, double 0x43D5F88826700C36, i64 0 }, %struct.anon.0 { i32 34, double 0x440437EEECD80000, i64 0 }, %struct.anon.0 { i32 35, double 0x442807D4EA0A8D5B, i64 0 }, %struct.anon.0 { i32 36, double 0x4456BEECCA730000, i64 0 }, %struct.anon.0 { i32 37, double 0x447BC90E2E9C3372, i64 0 }, %struct.anon.0 { i32 38, double 0x44AB02B930689000, i64 0 }, %struct.anon.0 { i32 39, double 0x44D0EE84A4672F59, i64 0 }, %struct.anon.0 { i32 40, double 0x4500E1B3BE415A00, i64 0 }, %struct.anon.0 { i32 41, double 0x4525B199F2A434AA, i64 0 }, %struct.anon.0 { i32 42, double 0x4556283BE9B5C620, i64 0 }, %struct.anon.0 { i32 43, double 0x457D26A6DE0CA6C5, i64 0 }, %struct.anon.0 { i32 44, double 0x45AE77526159F06C, i64 0 }, %struct.anon.0 { i32 45, double 0x45D47F2D5420E542, i64 0 }, %struct.anon.0 { i32 46, double 0x4605E5C335F8A4CE, i64 0 }, %struct.anon.0 { i32 47, double 0x462E1ACA939050BA, i64 0 }, %struct.anon.0 { i32 48, double 0x46606C52687A7B9A, i64 0 }, %struct.anon.0 { i32 49, double 0x46870C8318FA7DCE, i64 0 }, %struct.anon.0 { i32 50, double 0x46B9A940C33F6121, i64 0 }, %struct.anon.0 { i32 51, double 0x46E25DF877E79C40, i64 0 }, %struct.anon.0 { i32 52, double 0x4714D9849EA37EEB, i64 0 }, %struct.anon.0 { i32 53, double 0x473E6BA386979ACA, i64 0 }, %struct.anon.0 { i32 54, double 0x47719787E5D9F316, i64 0 }, %struct.anon.0 { i32 55, double 0x479A248087AA4906, i64 0 }, %struct.anon.0 { i32 56, double 0x47CEC92DD23D6967, i64 0 }, %struct.anon.0 { i32 57, double 0x47F7488278D3A909, i64 0 }, %struct.anon.0 { i32 58, double 0x482BE6518687A785, i64 0 }, %struct.anon.0 { i32 59, double 0x485576D847631FD5, i64 0 }, %struct.anon.0 { i32 60, double 0x488A27EC6E1F2D0D, i64 0 }, %struct.anon.0 { i32 61, double 0x48B47546240A7A57, i64 0 }, %struct.anon.0 { i32 62, double 0x48E956AD0AAE33A4, i64 0 }, %struct.anon.0 { i32 63, double 0x491423710B7A506D, i64 0 }, %struct.anon.0 { i32 64, double 0x494956AD0AAE33A4, i64 0 }, %struct.anon.0 { i32 65, double 0x497473FECFA839AF, i64 0 }, %struct.anon.0 { i32 66, double 0x49AA21627303A541, i64 0 }, %struct.anon.0 { i32 67, double 0x49D5696EC1641C63, i64 0 }, %struct.anon.0 { i32 68, double 0x4A0BC3789A33DF96, i64 0 }, %struct.anon.0 { i32 69, double 0x4A3715AB687FEE9B, i64 0 }, %struct.anon.0 { i32 70, double 0x4A6E5DCBE8A8BC8C, i64 0 }, %struct.anon.0 { i32 71, double 0x4A999C0A27EDECB4, i64 0 }, %struct.anon.0 { i32 72, double 0x4AD114C2B2DEEA0F, i64 0 }, %struct.anon.0 { i32 73, double 0x4AFD35FB958B61FD, i64 0 }, %struct.anon.0 { i32 74, double 0x4B33C0011ED1BEA1, i64 0 }, %struct.anon.0 { i32 75, double 0x4B611DA1699FAB6A, i64 0 }, %struct.anon.0 { i32 76, double 0x4B9774015499125F, i64 0 }, %struct.anon.0 { i32 77, double 0x4BC497A633141A3C, i64 0 }, %struct.anon.0 { i32 78, double 0x4BFC95619F1A8E64, i64 0 }, %struct.anon.0 { i32 79, double 0x4C296B31270CD062, i64 0 }, %struct.anon.0 { i32 80, double 0x4C61DD5D037098FE, i64 0 }, %struct.anon.0 { i32 81, double 0x4C9015D51AB61BDE, i64 0 }, %struct.anon.0 { i32 82, double 0x4CC6E39F2C684406, i64 0 }, %struct.anon.0 { i32 83, double 0x4CF4DC505EA42C24, i64 0 }, %struct.anon.0 { i32 84, double 0x4D2E0AC0EA48D948, i64 0 }, %struct.anon.0 { i32 85, double 0x4D5BB49ABDB20AA0, i64 0 }, %struct.anon.0 { i32 86, double 0x4D942F399D68F1FC, i64 0 }, %struct.anon.0 { i32 87, double 0x4DC2D4C12CEF0339, i64 0 }, %struct.anon.0 { i32 88, double 0x4DFBC0EF38704CBB, i64 0 }, %struct.anon.0 { i32 89, double 0x4E2A2FDCA27C607B, i64 0 }, %struct.anon.0 { i32 90, double 0x4E6383A833AEF5F3, i64 0 }, %struct.anon.0 { i32 91, double 0x4E929E06DB846C97, i64 0 }, %struct.anon.0 { i32 92, double 0x4ECC0D41CA4B818E, i64 0 }, %struct.anon.0 { i32 93, double 0x4EFB0DA1F6FC6DCC, i64 0 }, %struct.anon.0 { i32 94, double 0x4F3499BC508F7324, i64 0 }, %struct.anon.0 { i32 95, double 0x4F64141E354F597D, i64 0 }, %struct.anon.0 { i32 96, double 0x4F9EE69A78D72CB6, i64 0 }, %struct.anon.0 { i32 97, double 0x4FCE6E7DC8CC43A2, i64 0 }, %struct.anon.0 { i32 98, double 0x5007A88E4484BE3B, i64 0 }, %struct.anon.0 { i32 99, double 0x50378975494DFC4F, i64 0 }, %struct.anon.0 { i32 100, double 0x50727BAF2587B49E, i64 0 }, %struct.anon.0 { i32 101, double 0x50A292768BD78916, i64 0 }, %struct.anon.0 { i32 102, double 0x50DD751F23D047DC, i64 0 }, %struct.anon.0 { i32 103, double 0x510DE3B6C90EE0A0, i64 0 }, %struct.anon.0 { i32 104, double 0x5147EF294D193A63, i64 0 }, %struct.anon.0 { i32 105, double 0x517884CBF0EE3443, i64 0 }, %struct.anon.0 { i32 106, double 0x51B3D20E33D8E45A, i64 0 }, %struct.anon.0 { i32 107, double 0x51E47F027B671FB0, i64 0 }, %struct.anon.0 { i32 108, double 0x5220B93BFBBF00AC, i64 0 }, %struct.anon.0 { i32 109, double 0x525174281D15D0FC, i64 0 }, %struct.anon.0 { i32 110, double 0x528CBE5F18B04928, i64 0 }, %struct.anon.0 { i32 111, double 0x52BE45759271D675, i64 0 }, %struct.anon.0 { i32 112, double 0x52F92693359A4003, i64 0 }, %struct.anon.0 { i32 113, double 0x532AB951CB487F53, i64 0 }, %struct.anon.0 { i32 114, double 0x5366665B1BBD6102, i64 0 }, %struct.anon.0 { i32 115, double 0x5398027F7CA32265, i64 0 }, %struct.anon.0 { i32 116, double 0x53D44CC291239FEA, i64 0 }, %struct.anon.0 { i32 117, double 0x5405F24887ED1D70, i64 0 }, %struct.anon.0 { i32 118, double 0x5442B6C35DCCD76C, i64 0 }, %struct.anon.0 { i32 119, double 0x5474673F6E5E715E, i64 0 }, %struct.anon.0 { i32 120, double 0x54B18B5727F009F5, i64 0 }, %struct.anon.0 { i32 121, double 0x54E34999F655472B, i64 0 }, %struct.anon.0 { i32 122, double 0x5520B8CF1210C97E, i64 0 }, %struct.anon.0 { i32 123, double 0x555288B9F2B5F264, i64 0 }, %struct.anon.0 { i32 124, double 0x5590330899804332, i64 0 }, %struct.anon.0 { i32 125, double 0x55C219859705AEB5, i64 0 }, %struct.anon.0 { i32 126, double 0x55FFE478EE34844A, i64 0 }, %struct.anon.0 { i32 127, double 0x5631F5528BD7A358, i64 0 }, %struct.anon.0 { i32 128, double 0x566FE478EE34844A, i64 0 }, %struct.anon.0 { i32 129, double 0x56A2193D30EF529F, i64 0 }, %struct.anon.0 { i32 130, double 0x56E0320568F6AB2E, i64 0 }, %struct.anon.0 { i32 131, double 0x571285D4A014EE8E, i64 0 }, %struct.anon.0 { i32 132, double 0x5750B395943E6087, i64 0 }, %struct.anon.0 { i32 133, double 0x57833F0EEE55BFE0, i64 0 }, %struct.anon.0 { i32 134, double 0x57C17C0097314D0D, i64 0 }, %struct.anon.0 { i32 135, double 0x57F44C81BF5E705E, i64 0 }, %struct.anon.0 { i32 136, double 0x583293C0A0A461DE, i64 0 }, %struct.anon.0 { i32 137, double 0x5865B9E2DED31445, i64 0 }, %struct.anon.0 { i32 138, double 0x58A4074BAD313983, i64 0 }, %struct.anon.0 { i32 139, double 0x58D797DC5DF93803, i64 0 }, %struct.anon.0 { i32 140, double 0x5915E7FAC56DD6E8, i64 0 }, %struct.anon.0 { i32 141, double 0x5949FD48BF8487B3, i64 0 }, %struct.anon.0 { i32 142, double 0x59884D5A3305DA69, i64 0 }, %struct.anon.0 { i32 143, double 0x59BD08F745F60F9A, i64 0 }, %struct.anon.0 { i32 144, double 0x59FB5705796695B6, i64 0 }, %struct.anon.0 { i32 145, double 0x5A3072140EA05ED6, i64 0 }, %struct.anon.0 { i32 146, double 0x5A6F2F423E7902C4, i64 0 }, %struct.anon.0 { i32 147, double 0x5AA2E30308CC2CEA, i64 0 }, %struct.anon.0 { i32 148, double 0x5AE207524C1DF599, i64 0 }, %struct.anon.0 { i32 149, double 0x5B15FC41883DAC48, i64 0 }, %struct.anon.0 { i32 150, double 0x5B55209471331BD0, i64 0 }, %struct.anon.0 { i32 151, double 0x5B89EF954EB8C13D, i64 0 }, %struct.anon.0 { i32 152, double 0x5BC916B0466CB107, i64 0 }, %struct.anon.0 { i32 153, double 0x5BFF00607818D6FB, i64 0 }, %struct.anon.0 { i32 154, double 0x5C3E2F4C14BAC4FC, i64 0 }, %struct.anon.0 { i32 155, double 0x5C72C53A68B70A2A, i64 0 }, %struct.anon.0 { i32 156, double 0x5CB264D25CA1D009, i64 0 }, %struct.anon.0 { i32 157, double 0x5CE705E9A4708278, i64 0 }, %struct.anon.0 { i32 158, double 0x5D26B473AA57BCCC, i64 0 }, %struct.anon.0 { i32 159, double 0x5D5C99583A43C211, i64 0 }, %struct.anon.0 { i32 160, double 0x5D9C619094EDABFF, i64 0 }, %struct.anon.0 { i32 161, double 0x5DD1FC707CA49D0C, i64 0 }, %struct.anon.0 { i32 162, double 0x5E11F5BD7E3E66D7, i64 0 }, %struct.anon.0 { i32 163, double 0x5E46E7773EB99FFE, i64 0 }, %struct.anon.0 { i32 164, double 0x5E8702DAC9BFF3C4, i64 0 }, %struct.anon.0 { i32 165, double 0x5EBD865FB6DB483D, i64 0 }, %struct.anon.0 { i32 166, double 0x5EFDD7B3BDA4F022, i64 0 }, %struct.anon.0 { i32 167, double 0x5F3342A870490C20, i64 0 }, %struct.anon.0 { i32 168, double 0x5F73958DF4743D96, i64 0 }, %struct.anon.0 { i32 169, double 0x5FA96E0264407202, i64 0 }, %struct.anon.0 { i32 170, double 0x5FEA02A088AA61CB, i64 0 }, %struct.anon.0 { i32 171, double 0x6020FC7B98F70C27, i64 0 }, %struct.anon.0 { i32 172, double 0x606179C3DBD279B5, i64 0 }, %struct.anon.0 { i32 173, double 0x6096F53F0CBDE66D, i64 0 }, %struct.anon.0 { i32 174, double 0x60D7C1863ED21D72, i64 0 }, %struct.anon.0 { i32 175, double 0x610F634C336BA109, i64 0 }, %struct.anon.0 { i32 176, double 0x6150550C4B30743E, i64 0 }, %struct.anon.0 { i32 177, double 0x6185B3A7AF8D6A58, i64 0 }, %struct.anon.0 { i32 178, double 0x61C6B645188F61A6, i64 0 }, %struct.anon.0 { i32 179, double 0x61FE593C7F7FC2B6, i64 0 }, %struct.anon.0 { i32 180, double 0x623FF0512A89A152, i64 0 }, %struct.anon.0 { i32 181, double 0x62757517C62554AB, i64 0 }, %struct.anon.0 { i32 182, double 0x62B6B4D9B43DD8B0, i64 0 }, %struct.anon.0 { i32 183, double 0x62EEAD67FD495F0C, i64 0 }, %struct.anon.0 { i32 184, double 0x633051FC798C73BF, i64 0 }, %struct.anon.0 { i32 185, double 0x63662B50260A05B0, i64 0 }, %struct.anon.0 { i32 186, double 0x63A7B722E0A01831, i64 0 }, %struct.anon.0 { i32 187, double 0x63E031A38BC95228, i64 0 }, %struct.anon.0 { i32 188, double 0x64216A7D9CF591C4, i64 0 }, %struct.anon.0 { i32 189, double 0x6457E94B7C67434E, i64 0 }, %struct.anon.0 { i32 190, double 0x6499DA1274FC845F, i64 0 }, %struct.anon.0 { i32 191, double 0x64D1D70F51D10B37, i64 0 }, %struct.anon.0 { i32 192, double 0x6513638DD7BD6347, i64 0 }, %struct.anon.0 { i32 193, double 0x654AE645195D32EA, i64 0 }, %struct.anon.0 { i32 194, double 0x658D62E2FAFB0A78, i64 0 }, %struct.anon.0 { i32 195, double 0x65C47D66A251FDC8, i64 0 }, %struct.anon.0 { i32 196, double 0x66067FB5C8283404, i64 0 }, %struct.anon.0 { i32 197, double 0x663F88FFF5D23096, i64 0 }, %struct.anon.0 { i32 198, double 0x668166C698CF183B, i64 0 }, %struct.anon.0 { i32 199, double 0x66B8837EF81663C4, i64 0 }, %struct.anon.0 { i32 200, double 0x66FB30964EC395DC, i64 0 }, %struct.anon.0 { i32 201, double 0x67333F3EB0C99455, i64 0 }, %struct.anon.0 { i32 202, double 0x677574569A265440, i64 0 }, %struct.anon.0 { i32 203, double 0x67AE864D6C5FB13F, i64 0 }, %struct.anon.0 { i32 204, double 0x67F118B502D68B23, i64 0 }, %struct.anon.0 { i32 205, double 0x6828718BFFC8A0F0, i64 0 }, %struct.anon.0 { i32 206, double 0x686B83C3509147EC, i64 0 }, %struct.anon.0 { i32 207, double 0x68A3C3D033D33A22, i64 0 }, %struct.anon.0 { i32 208, double 0x68E65B0EB1760A70, i64 0 }, %struct.anon.0 { i32 209, double 0x692022DCFA4F7276, i64 0 }, %struct.anon.0 { i32 210, double 0x696256B20D92D490, i64 0 }, %struct.anon.0 { i32 211, double 0x699A9978449EF6AE, i64 0 }, %struct.anon.0 { i32 212, double 0x69DE5F96E67B300E, i64 0 }, %struct.anon.0 { i32 213, double 0x6A1621B11118433F, i64 0 }, %struct.anon.0 { i32 214, double 0x6A5963E824AAFA2C, i64 0 }, %struct.anon.0 { i32 215, double 0x6A92964BB55B607A, i64 0 }, %struct.anon.0 { i32 216, double 0x6AD56C4BDEF04315, i64 0 }, %struct.anon.0 { i32 217, double 0x6B0F82CC5974E98E, i64 0 }, %struct.anon.0 { i32 218, double 0x6B523E389BD89920, i64 0 }, %struct.anon.0 { i32 219, double 0x6B8AF4E4D08703CD, i64 0 }, %struct.anon.0 { i32 220, double 0x6BCF5AF14BDC472F, i64 0 }, %struct.anon.0 { i32 221, double 0x6C07456988048E48, i64 0 }, %struct.anon.0 { i32 222, double 0x6C4B30DD3FC905BA, i64 0 }, %struct.anon.0 { i32 223, double 0x6C844576ED7BF7F0, i64 0 }, %struct.anon.0 { i32 224, double 0x6CC7CAC197CFE503, i64 0 }, %struct.anon.0 { i32 225, double 0x6D01D10D86B9F4EA, i64 0 }, %struct.anon.0 { i32 226, double 0x6D4500FEE805882D, i64 0 }, %struct.anon.0 { i32 227, double 0x6D7F98BDFCEDC857, i64 0 }, %struct.anon.0 { i32 228, double 0x6DC2B4E306A4ED48, i64 0 }, %struct.anon.0 { i32 229, double 0x6DFC43A1F340B436, i64 0 }, %struct.anon.0 { i32 230, double 0x6E40CE83F7F82D2F, i64 0 }, %struct.anon.0 { i32 231, double 0x6E798107227F629D, i64 0 }, %struct.anon.0 { i32 232, double 0x6EBE764F3171D1E4, i64 0 }, %struct.anon.0 { i32 233, double 0x6EF7366F7E65F0C1, i64 0 }, %struct.anon.0 { i32 234, double 0x6F3BD824633209DB, i64 0 }, %struct.anon.0 { i32 235, double 0x6F754EF859079401, i64 0 }, %struct.anon.0 { i32 236, double 0x6FB9AB418B722116, i64 0 }, %struct.anon.0 { i32 237, double 0x6FF3BA1BEA6C0405, i64 0 }, %struct.anon.0 { i32 238, double 0x7037DD36EFA41AC2, i64 0 }, %struct.anon.0 { i32 239, double 0x70726AC00FDAD7C1, i64 0 }, %struct.anon.0 { i32 240, double 0x70B65F6380A9D916, i64 0 }, %struct.anon.0 { i32 241, double 0x70F1567ECEED051C, i64 0 }, %struct.anon.0 { i32 242, double 0x7135262C0FA08F37, i64 0 }, %struct.anon.0 { i32 243, double 0x7170751A5E6AFBDA, i64 0 }, %struct.anon.0 { i32 244, double 0x71B42861FEE50880, i64 0 }, %struct.anon.0 { i32 245, double 0x71EF802478B8C60F, i64 0 }, %struct.anon.0 { i32 246, double 0x72335ECE2AF0162B, i64 0 }, %struct.anon.0 { i32 247, double 0x726E64A3307A4718, i64 0 }, %struct.anon.0 { i32 248, double 0x72B2C3D7B998957A, i64 0 }, %struct.anon.0 { i32 249, double 0x72ED8FE2BA26EF27, i64 0 }, %struct.anon.0 { i32 250, double 0x73325340AB3F01F9, i64 0 }, %struct.anon.0 { i32 251, double 0x736CFC134C842C7B, i64 0 }, %struct.anon.0 { i32 252, double 0x73B209F3A89205F1, i64 0 }, %struct.anon.0 { i32 253, double 0x73ECA51F129E9FF6, i64 0 }, %struct.anon.0 { i32 254, double 0x7431E5DFC140E1E5, i64 0 }, %struct.anon.0 { i32 255, double 0x746C8879F38C0156, i64 0 }, %struct.anon.0 { i32 256, double 0x74B1E5DFC140E1E5, i64 0 }, %struct.anon.0 { i32 257, double 0x74ECA5026D7F8D57, i64 0 }, %struct.anon.0 { i32 258, double 0x753209AB80C363A9, i64 0 }, %struct.anon.0 { i32 259, double 0x756CFAF174C80BFF, i64 0 }, %struct.anon.0 { i32 260, double 0x75B251D22EC67138, i64 0 }, %struct.anon.0 { i32 261, double 0x75ED8BD82C0FF43B, i64 0 }, %struct.anon.0 { i32 262, double 0x7632BFBD1BDF17DF, i64 0 }, %struct.anon.0 { i32 263, double 0x766E5AAB154463E9, i64 0 }, %struct.anon.0 { i32 264, double 0x76B355BB04BE109E, i64 0 }, %struct.anon.0 { i32 265, double 0x76EF6BDB1903CB6C, i64 0 }, %struct.anon.0 { i32 266, double 0x7734171452ED7D44, i64 0 }, %struct.anon.0 { i32 267, double 0x777062BEC18B7A95, i64 0 }, %struct.anon.0 { i32 268, double 0x77B5082946D09F23, i64 0 }, %struct.anon.0 { i32 269, double 0x77F137C2715F8FCE, i64 0 }, %struct.anon.0 { i32 270, double 0x78362E9B88B007D7, i64 0 }, %struct.anon.0 { i32 271, double 0x78723A06D604293B, i64 0 }, %struct.anon.0 { i32 272, double 0x78B79185413B0855, i64 0 }, %struct.anon.0 { i32 273, double 0x78F36FE14A3A6FF8, i64 0 }, %struct.anon.0 { i32 274, double 0x793939C09FD12EEB, i64 0 }, %struct.anon.0 { i32 275, double 0x7974E12F02BCC648, i64 0 }, %struct.anon.0 { i32 276, double 0x79BB3243AC4D8695, i64 0 }, %struct.anon.0 { i32 277, double 0x79F697A7DDF6428C, i64 0 }, %struct.anon.0 { i32 278, double 0x7A3D88957D1C3026, i64 0 }, %struct.anon.0 { i32 279, double 0x7A789F47F2E76286, i64 0 }, %struct.anon.0 { i32 280, double 0x7AC026B1C06B6A55, i64 0 }, %struct.anon.0 { i32 281, double 0x7AFB06D5F99FFB25, i64 0 }, %struct.anon.0 { i32 282, double 0x7B41CA9FCDF65321, i64 0 }, %struct.anon.0 { i32 283, double 0x7B7DE08E8AF3DAA2, i64 0 }, %struct.anon.0 { i32 284, double 0x7BC3BCC9487D4439, i64 0 }, %struct.anon.0 { i32 285, double 0x7C00A17F5858BD33, i64 0 }, %struct.anon.0 { i32 286, double 0x7C460CE8DEFBF238, i64 0 }, %struct.anon.0 { i32 287, double 0x7C82A50DC40B7C1C, i64 0 }, %struct.anon.0 { i32 288, double 0x7CC8CE85FADB707E, i64 0 }, %struct.anon.0 { i32 289, double 0x7D050C548A50F71C, i64 0 }, %struct.anon.0 { i32 290, double 0x7D4C19F3C62C956F, i64 0 }, %struct.anon.0 { i32 291, double 0x7D87ED04193A08E5, i64 0 }, %struct.anon.0 { i32 292, double 0x7DD006CD07056D39, i64 0 }, %struct.anon.0 { i32 293, double 0x7E0B6245B0DF6C2E, i64 0 }, %struct.anon.0 { i32 294, double 0x7E5267CF76103B70, i64 0 }, %struct.anon.0 { i32 295, double 0x7E8F8E3E4ED175A9, i64 0 }, %struct.anon.0 { i32 296, double 0x7ED54807E082C4B9, i64 0 }, %struct.anon.0 { i32 297, double 0x7F124E0324B880C1, i64 0 }], align 16
@.str.6 = private unnamed_addr constant [26 x i8] c"gsl_sf_fact_e(n, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_lnfact_e(n, &result)\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"gsl_sf_doublefact_e(n, &result)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"gsl_sf_lndoublefact_e(n, &result)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"gsl_sf_lngamma_e(x, &result)\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"gsl_sf_gamma_e(x, &result)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"gsl_sf_gammastar_e(x, &result)\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"gsl_sf_gammainv_e(x, &result)\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"gsl_sf_taylorcoeff_e(n, x, &result)\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"gsl_sf_choose_e(n, m, &result)\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"gsl_sf_lnchoose_e(n, m, &result)\00", align 1
@lanczos_7_c = internal global [9 x double] [double 0x3FEFFFFFFFFFF950, double 0x40852429B6C30B05, double 0xC093AC8E8ED4171B, double 0x40881A9661D3B4D8, double 0xC06613AE51A32F5D, double 0x402903C27F8B9C81, double 0xBFC1BCB2992B2855, double 0x3EE4F0514E4E324F, double 0x3E8435508F3FAEEF], align 16
@gamma_5_10_cs = internal constant %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @gamma_5_10_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@gamma_5_10_data = internal global [24 x double] [double 0xBFF874FAB62825BE, double 0x40134DBCB8D97F3D, double 0x3FCD279B946A2D6C, double 0xBF8C70AA4212C1F7, double 0x3F54D0CFB9E5F64F, double 0xBF2244F4822FD343, double 0x3EF1CB99099E27C5, double 0xBEC28BC539BD20D1, double 0x3E9443BCA367B4B2, double 0xBE66ED6C5C08AF38, double 0x3E3AA3E09EB5E757, double 0xBE0F9BE01E08A22F, double 0x3DE312068CAC5098, double 0xBDB754941B7A08B5, double 0x3D8CDECC43D55A84, double 0xBD620917265A01A2, double 0x3D36B805E0D9E4D5, double 0xBD0CD1D888CF99CF, double 0x3CE26400F6257D87, double 0xBCB7986E370BDBDE, double 0x3C8E69EA7944197D, double 0xBC63AE6B675E8304, double 0x3C39908EBC7CA0CA, double 0xBC10A82EF1780DA1], align 16
@gstar_a_data = internal global [30 x double] [double 0x400157C954F0328A, double 0xBFAC548A4785D178, double 0x3F926F9EE88609E6, double 0xBF77CB614A3CD67D, double 0x3F5E8F5EDD9ED532, double 0xBF4393E6D5E99766, double 0x3F29115795EF9CF9, double 0xBF100E6A64F02A06, double 0x3EF497C6ADF7A5FF, double 0xBEDA73D8DF0564A5, double 0x3EC104F6FD906034, double 0xBEA5F085154BF8AB, double 0x3E8C54E4B78FD81D, double 0xBE7252D7323E32F6, double 0x3E57BD27AA16D962, double 0xBE3ECCA266A7D187, double 0x3E2401B8B648BF4B, double 0xBE0A06318BEA05FC, double 0x3DF0F1EDA17903A0, double 0xBDD616FD793E8444, double 0x3DBCD30A46547813, double 0xBDA2D2A299176931, double 0x3D889A78A828F0F0, double 0xBD701785B88FF505, double 0x3D55108F4E57F22B, double 0xBD3B978F2881B6E0, double 0x3D221483CF035DAB, double 0xBD07AF3C0C35F443, double 0x3CEEC129F6E1B1AD, double 0xBCD238CA994778F3], align 16
@gstar_b_data = internal global [30 x double] [double 0x3F778D8D00889F45, double 0x3F3D78317304F3A1, double 0xBF25ECDC9B7D3F5F, double 0x3F10201D583A9DF9, double 0xBEF7759D2814174C, double 0x3EE0E2355A98F3FA, double 0xBEC80D11220E6B2E, double 0x3EB0F4CE643512E7, double 0xBE97AA93AA0BF960, double 0x3E8058BF2C3DD93B, double 0xBE665828E804E059, double 0x3E4E3505690FB4CA, double 0xBE342DC9CA557B41, double 0x3E1A9D1F8AF7616A, double 0xBE014C091C392ED9, double 0x3DE61B3657505C36, double 0xBDCBAE18513B151B, double 0x3DB0E2A7A2DFC4CB, double 0xBD93E4DFCC146048, double 0x3D76478D46414293, double 0xBD56F96487B27D04, double 0x3D342227BDB3009E, double 0xBD055AAD66748C7A, double 0xBCE4D4082640C439, double 0x3CE9961E7AFB73EF, double 0xBCDF1105F843F92A, double 0x3CCF2AF2955B8135, double 0xBCBC77ACB8980640, double 0x3CA82E7C0ECAD13D, double 0xBC916EDE756B86EF], align 16
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_lngamma_e\00"
@1 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@2 = private unnamed_addr constant [15 x i8] c"lngamma_1_pade\00"
@3 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@4 = private unnamed_addr constant [15 x i8] c"lngamma_2_pade\00"
@5 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@6 = private unnamed_addr constant [16 x i8] c"lngamma_lanczos\00"
@7 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@8 = private unnamed_addr constant [14 x i8] c"lngamma_sgn_0\00"
@9 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@10 = private unnamed_addr constant [17 x i8] c"lngamma_sgn_sing\00"
@11 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@12 = private unnamed_addr constant [21 x i8] c"gsl_sf_lngamma_sgn_e\00"
@13 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@14 = private unnamed_addr constant [15 x i8] c"gsl_sf_gamma_e\00"
@15 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@16 = private unnamed_addr constant [14 x i8] c"gamma_xgthalf\00"
@17 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@18 = private unnamed_addr constant [19 x i8] c"gsl_sf_gammastar_e\00"
@19 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@20 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@21 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@22 = private unnamed_addr constant [14 x i8] c"gammastar_ser\00"
@23 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@24 = private unnamed_addr constant [18 x i8] c"gsl_sf_gammainv_e\00"
@25 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@26 = private unnamed_addr constant [25 x i8] c"gsl_sf_lngamma_complex_e\00"
@27 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@28 = private unnamed_addr constant [24 x i8] c"lngamma_lanczos_complex\00"
@29 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@30 = private unnamed_addr constant [21 x i8] c"gsl_sf_taylorcoeff_e\00"
@31 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@32 = private unnamed_addr constant [14 x i8] c"gsl_sf_fact_e\00"
@33 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@34 = private unnamed_addr constant [20 x i8] c"gsl_sf_doublefact_e\00"
@35 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@36 = private unnamed_addr constant [16 x i8] c"gsl_sf_lnfact_e\00"
@37 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@38 = private unnamed_addr constant [22 x i8] c"gsl_sf_lndoublefact_e\00"
@39 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@40 = private unnamed_addr constant [18 x i8] c"gsl_sf_lnchoose_e\00"
@41 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@42 = private unnamed_addr constant [16 x i8] c"gsl_sf_choose_e\00"
@43 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@44 = private unnamed_addr constant [12 x i8] c"gsl_sf_fact\00"
@45 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@46 = private unnamed_addr constant [14 x i8] c"gsl_sf_lnfact\00"
@47 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@48 = private unnamed_addr constant [18 x i8] c"gsl_sf_doublefact\00"
@49 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@50 = private unnamed_addr constant [20 x i8] c"gsl_sf_lndoublefact\00"
@51 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@52 = private unnamed_addr constant [15 x i8] c"gsl_sf_lngamma\00"
@53 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@54 = private unnamed_addr constant [13 x i8] c"gsl_sf_gamma\00"
@55 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@56 = private unnamed_addr constant [17 x i8] c"gsl_sf_gammastar\00"
@57 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@58 = private unnamed_addr constant [16 x i8] c"gsl_sf_gammainv\00"
@59 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@60 = private unnamed_addr constant [19 x i8] c"gsl_sf_taylorcoeff\00"
@61 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@62 = private unnamed_addr constant [14 x i8] c"gsl_sf_choose\00"
@63 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"
@64 = private unnamed_addr constant [16 x i8] c"gsl_sf_lnchoose\00"
@65 = private unnamed_addr constant [9 x i8] c"gamma.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !95 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !106, metadata !107), !dbg !108
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !109, metadata !107), !dbg !110
  %16 = load double, double* %4, align 8, !dbg !111
  %17 = fsub double %16, 1.000000e+00, !dbg !113
  call void @fSubHandler(double %16, double 1.000000e+00, double %17, i64 94495064726792, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064924576, i32 1118, i32 13), !dbg !114
  %18 = call double @fabs(double %17) #1, !dbg !114
  %19 = fcmp olt double %18, 1.000000e-02, !dbg !115
  %20 = call i1 @fCmpInstHandler(double %18, double 1.000000e-02, i1 %19, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064925664, i32 1118, i32 20), !dbg !116
  br i1 %20, label %21, label %36, !dbg !116

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !117, metadata !107), !dbg !119
  %22 = load double, double* %4, align 8, !dbg !120
  %23 = fsub double %22, 1.000000e+00, !dbg !121
  call void @fSubHandler(double %22, double 1.000000e+00, double %23, i64 94495064927848, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064928256, i32 1125, i32 33), !dbg !122
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !122
  %25 = call i32 @lngamma_1_pade(double %23, %struct.gsl_sf_result_struct* %24), !dbg !123
  store i32 %25, i32* %6, align 4, !dbg !119
  %26 = load double, double* %4, align 8, !dbg !124
  %27 = fsub double %26, 1.000000e+00, !dbg !125
  call void @fSubHandler(double %26, double 1.000000e+00, double %27, i64 94495064931512, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064931920, i32 1126, i32 50), !dbg !126
  %28 = call double @fabs(double %27) #1, !dbg !126
  %29 = fadd double 0x3CB0000000000000, %28, !dbg !127
  call void @fAddHandler(double 0x3CB0000000000000, double %28, double %29, i64 0, i64 94495064932368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064932912, i32 1126, i32 41), !dbg !128
  %30 = fdiv double 1.000000e+00, %29, !dbg !128
  call void @fDivHandler(double 1.000000e+00, double %29, double %30, i64 0, i64 94495064932912, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064933360, i32 1126, i32 23), !dbg !129
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !129
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !130
  %33 = load double, double* %32, align 8, !dbg !131
  %34 = fmul double %33, %30, !dbg !131
  call void @fMulHandler(double %33, double %30, double %34, i64 94495064934552, i64 94495064933360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064935488, i32 1126, i32 17), !dbg !131
  store double %34, double* %32, align 8, !dbg !131
  %35 = load i32, i32* %6, align 4, !dbg !132
  store i32 %35, i32* %3, align 4, !dbg !133
  br label %175, !dbg !133

; <label>:36:                                     ; preds = %2
  %37 = load double, double* %4, align 8, !dbg !134
  %38 = fsub double %37, 2.000000e+00, !dbg !136
  call void @fSubHandler(double %37, double 2.000000e+00, double %38, i64 94495064939864, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064940240, i32 1129, i32 18), !dbg !137
  %39 = call double @fabs(double %38) #1, !dbg !137
  %40 = fcmp olt double %39, 1.000000e-02, !dbg !138
  %41 = call i1 @fCmpInstHandler(double %39, double 1.000000e-02, i1 %40, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064941200, i32 1129, i32 25), !dbg !139
  br i1 %41, label %42, label %57, !dbg !139

; <label>:42:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %7, metadata !140, metadata !107), !dbg !142
  %43 = load double, double* %4, align 8, !dbg !143
  %44 = fsub double %43, 2.000000e+00, !dbg !144
  call void @fSubHandler(double %43, double 2.000000e+00, double %44, i64 94495064943432, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064943840, i32 1130, i32 33), !dbg !145
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %46 = call i32 @lngamma_2_pade(double %44, %struct.gsl_sf_result_struct* %45), !dbg !146
  store i32 %46, i32* %7, align 4, !dbg !142
  %47 = load double, double* %4, align 8, !dbg !147
  %48 = fsub double %47, 2.000000e+00, !dbg !148
  call void @fSubHandler(double %47, double 2.000000e+00, double %48, i64 94495064947096, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064947504, i32 1131, i32 50), !dbg !149
  %49 = call double @fabs(double %48) #1, !dbg !149
  %50 = fadd double 0x3CB0000000000000, %49, !dbg !150
  call void @fAddHandler(double 0x3CB0000000000000, double %49, double %50, i64 0, i64 94495064947952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064948432, i32 1131, i32 41), !dbg !151
  %51 = fdiv double 1.000000e+00, %50, !dbg !151
  call void @fDivHandler(double 1.000000e+00, double %50, double %51, i64 0, i64 94495064948432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064948880, i32 1131, i32 23), !dbg !152
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !153
  %54 = load double, double* %53, align 8, !dbg !154
  %55 = fmul double %54, %51, !dbg !154
  call void @fMulHandler(double %54, double %51, double %55, i64 94495064950072, i64 94495064948880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064950480, i32 1131, i32 17), !dbg !154
  store double %55, double* %53, align 8, !dbg !154
  %56 = load i32, i32* %7, align 4, !dbg !155
  store i32 %56, i32* %3, align 4, !dbg !156
  br label %175, !dbg !156

; <label>:57:                                     ; preds = %36
  %58 = load double, double* %4, align 8, !dbg !157
  %59 = fcmp oge double %58, 5.000000e-01, !dbg !159
  %60 = call i1 @fCmpInstHandler(double %58, double 5.000000e-01, i1 %59, i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064955152, i32 1134, i32 13), !dbg !160
  br i1 %60, label %61, label %65, !dbg !160

; <label>:61:                                     ; preds = %57
  %62 = load double, double* %4, align 8, !dbg !161
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !163
  %64 = call i32 @lngamma_lanczos(double %62, %struct.gsl_sf_result_struct* %63), !dbg !164
  store i32 %64, i32* %3, align 4, !dbg !165
  br label %175, !dbg !165

; <label>:65:                                     ; preds = %57
  %66 = load double, double* %4, align 8, !dbg !166
  %67 = fcmp oeq double %66, 0.000000e+00, !dbg !168
  %68 = call i1 @fCmpInstHandler(double %66, double 0.000000e+00, i1 %67, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064960304, i32 1137, i32 13), !dbg !169
  br i1 %68, label %69, label %78, !dbg !169

; <label>:69:                                     ; preds = %65
  br label %70, !dbg !170, !llvm.loop !172

; <label>:70:                                     ; preds = %69
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !173
  store double 0x7FF8000000000000, double* %72, align 8, !dbg !173
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !173
  store double 0x7FF8000000000000, double* %74, align 8, !dbg !173
  br label %75, !dbg !173, !llvm.loop !176

; <label>:75:                                     ; preds = %70
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1138, i32 1), !dbg !178
  store i32 1, i32* %3, align 4, !dbg !178
  br label %175, !dbg !178
                                                  ; No predecessors!
  br label %77, !dbg !181

; <label>:77:                                     ; preds = %76
  br label %172, !dbg !183

; <label>:78:                                     ; preds = %65
  %79 = load double, double* %4, align 8, !dbg !184
  %80 = call double @fabs(double %79) #1, !dbg !186
  %81 = fcmp olt double %80, 2.000000e-02, !dbg !187
  %82 = call i1 @fCmpInstHandler(double %80, double 2.000000e-02, i1 %81, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064975488, i32 1140, i32 19), !dbg !188
  br i1 %82, label %83, label %87, !dbg !188

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata double* %8, metadata !189, metadata !107), !dbg !191
  %84 = load double, double* %4, align 8, !dbg !192
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !193
  %86 = call i32 @lngamma_sgn_0(double %84, %struct.gsl_sf_result_struct* %85, double* %8), !dbg !194
  store i32 %86, i32* %3, align 4, !dbg !195
  br label %175, !dbg !195

; <label>:87:                                     ; preds = %78
  %88 = load double, double* %4, align 8, !dbg !196
  %89 = fcmp ogt double %88, 0xC3045F306DC9C883, !dbg !198
  %90 = call i1 @fCmpInstHandler(double %88, double 0xC3045F306DC9C883, i1 %89, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064981760, i32 1144, i32 13), !dbg !199
  br i1 %90, label %91, label %163, !dbg !199

; <label>:91:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata double* %9, metadata !200, metadata !107), !dbg !202
  %92 = load double, double* %4, align 8, !dbg !203
  %93 = fsub double 1.000000e+00, %92, !dbg !204
  call void @fSubHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 94495064984024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064984432, i32 1148, i32 21), !dbg !202
  store double %93, double* %9, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata double* %10, metadata !205, metadata !107), !dbg !206
  %94 = load double, double* %9, align 8, !dbg !207
  %95 = fmul double 0x400921FB54442D18, %94, !dbg !208
  call void @fMulHandler(double 0x400921FB54442D18, double %94, double %95, i64 0, i64 94495064987592, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064988032, i32 1149, i32 25), !dbg !209
  %96 = call double @sin(double %95) #6, !dbg !209
  call void @callOneArgHandler(i32 1, double %95, double %96, i64 94495064988032, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064988784, i32 1149, i32 17), !dbg !206
  store double %96, double* %10, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata double* %11, metadata !210, metadata !107), !dbg !211
  %97 = load double, double* %10, align 8, !dbg !212
  %98 = call double @fabs(double %97) #1, !dbg !213
  store double %98, double* %11, align 8, !dbg !211
  %99 = load double, double* %10, align 8, !dbg !214
  %100 = fcmp oeq double %99, 0.000000e+00, !dbg !216
  %101 = call i1 @fCmpInstHandler(double %99, double 0.000000e+00, i1 %100, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495064995104, i32 1151, i32 10), !dbg !217
  br i1 %101, label %102, label %111, !dbg !217

; <label>:102:                                    ; preds = %91
  br label %103, !dbg !218, !llvm.loop !220

; <label>:103:                                    ; preds = %102
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !221
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !221
  store double 0x7FF8000000000000, double* %105, align 8, !dbg !221
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !221
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !221
  store double 0x7FF8000000000000, double* %107, align 8, !dbg !221
  br label %108, !dbg !221, !llvm.loop !224

; <label>:108:                                    ; preds = %103
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1152, i32 1), !dbg !226
  store i32 1, i32* %3, align 4, !dbg !226
  br label %175, !dbg !226
                                                  ; No predecessors!
  br label %110, !dbg !229

; <label>:110:                                    ; preds = %109
  br label %162, !dbg !231

; <label>:111:                                    ; preds = %91
  %112 = load double, double* %11, align 8, !dbg !232
  %113 = fcmp olt double %112, 0x3FA8209F5B22BAA6, !dbg !234
  %114 = call i1 @fCmpInstHandler(double %112, double 0x3FA8209F5B22BAA6, i1 %113, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065003872, i32 1154, i32 16), !dbg !235
  br i1 %114, label %115, label %140, !dbg !235

; <label>:115:                                    ; preds = %111
  %116 = load double, double* %4, align 8, !dbg !236
  %117 = fcmp olt double %116, 0xC1DFFFFFFF800000, !dbg !239
  %118 = call i1 @fCmpInstHandler(double %116, double 0xC1DFFFFFFF800000, i1 %117, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065005392, i32 1156, i32 12), !dbg !240
  br i1 %118, label %119, label %126, !dbg !240

; <label>:119:                                    ; preds = %115
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !241
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !243
  store double 0.000000e+00, double* %121, align 8, !dbg !244
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !245
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !246
  store double 0.000000e+00, double* %123, align 8, !dbg !247
  br label %124, !dbg !248, !llvm.loop !249

; <label>:124:                                    ; preds = %119
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1159, i32 18), !dbg !250
  store i32 18, i32* %3, align 4, !dbg !250
  br label %175, !dbg !250
                                                  ; No predecessors!
  br label %139, !dbg !253

; <label>:126:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata i32* %12, metadata !254, metadata !107), !dbg !256
  %127 = load double, double* %4, align 8, !dbg !257
  %128 = fsub double %127, 5.000000e-01, !dbg !258
  call void @fSubHandler(double %127, double 5.000000e-01, double %128, i64 94495065013896, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065014304, i32 1162, i32 26), !dbg !259
  %129 = fptosi double %128 to i32, !dbg !259
  %130 = sub nsw i32 0, %129, !dbg !260
  store i32 %130, i32* %12, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata double* %13, metadata !261, metadata !107), !dbg !262
  %131 = load double, double* %4, align 8, !dbg !263
  %132 = load i32, i32* %12, align 4, !dbg !264
  %133 = sitofp i32 %132 to double, !dbg !264
  %134 = fadd double %131, %133, !dbg !265
  call void @fAddHandler(double %131, double %133, double %134, i64 94495065018264, i64 94495065019000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065020672, i32 1163, i32 24), !dbg !262
  store double %134, double* %13, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata double* %14, metadata !266, metadata !107), !dbg !267
  %135 = load i32, i32* %12, align 4, !dbg !268
  %136 = load double, double* %13, align 8, !dbg !269
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %138 = call i32 @lngamma_sgn_sing(i32 %135, double %136, %struct.gsl_sf_result_struct* %137, double* %14), !dbg !271
  store i32 %138, i32* %3, align 4, !dbg !272
  br label %175, !dbg !272

; <label>:139:                                    ; preds = %125
  br label %161, !dbg !273

; <label>:140:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !274, metadata !107), !dbg !276
  %141 = load double, double* %9, align 8, !dbg !277
  %142 = call i32 @lngamma_lanczos(double %141, %struct.gsl_sf_result_struct* %15), !dbg !278
  %143 = load double, double* %11, align 8, !dbg !279
  %144 = call double @log(double %143) #6, !dbg !280
  call void @callOneArgHandler(i32 12, double %143, double %144, i64 94495065032520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065033232, i32 1171, i32 31), !dbg !281
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !281
  %146 = load double, double* %145, align 8, !dbg !281
  %147 = fadd double %144, %146, !dbg !282
  call void @fAddHandler(double %144, double %146, double %147, i64 94495065033232, i64 94495065034168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065035840, i32 1171, i32 39), !dbg !283
  %148 = fsub double 0x3FF250D048E7A1BD, %147, !dbg !283
  call void @fSubHandler(double 0x3FF250D048E7A1BD, double %147, double %148, i64 0, i64 94495065035840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065036320, i32 1171, i32 28), !dbg !284
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !284
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !285
  store double %148, double* %150, align 8, !dbg !286
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !287
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !288
  %153 = load double, double* %152, align 8, !dbg !288
  %154 = call double @fabs(double %153) #1, !dbg !289
  %155 = fmul double 0x3CC0000000000000, %154, !dbg !290
  call void @fMulHandler(double 0x3CC0000000000000, double %154, double %155, i64 0, i64 94495065040528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065041072, i32 1172, i32 43), !dbg !291
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !291
  %157 = load double, double* %156, align 8, !dbg !291
  %158 = fadd double %155, %157, !dbg !292
  call void @fAddHandler(double %155, double %157, double %158, i64 94495065041072, i64 94495065041912, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94495065043584, i32 1172, i32 63), !dbg !293
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !293
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !294
  store double %158, double* %160, align 8, !dbg !295
  store i32 0, i32* %3, align 4, !dbg !296
  br label %175, !dbg !296

; <label>:161:                                    ; preds = %139
  br label %162

; <label>:162:                                    ; preds = %161, %110
  br label %170, !dbg !297

; <label>:163:                                    ; preds = %87
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 0, !dbg !300
  store double 0.000000e+00, double* %165, align 8, !dbg !301
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !302
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !303
  store double 0.000000e+00, double* %167, align 8, !dbg !304
  br label %168, !dbg !305, !llvm.loop !306

; <label>:168:                                    ; preds = %163
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1180, i32 18), !dbg !307
  store i32 18, i32* %3, align 4, !dbg !307
  br label %175, !dbg !307
                                                  ; No predecessors!
  br label %170

; <label>:170:                                    ; preds = %169, %162
  br label %171

; <label>:171:                                    ; preds = %170
  br label %172

; <label>:172:                                    ; preds = %171, %77
  br label %173

; <label>:173:                                    ; preds = %172
  br label %174

; <label>:174:                                    ; preds = %173
  br label %175

; <label>:175:                                    ; preds = %174, %168, %140, %126, %124, %108, %83, %75, %61, %42, %21
  %176 = load i32, i32* %3, align 4, !dbg !310
  ret i32 %176, !dbg !310
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lngamma_1_pade(double, %struct.gsl_sf_result_struct*) #3 !dbg !311 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !315, metadata !107), !dbg !316
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !317, metadata !107), !dbg !318
  call void @llvm.dbg.declare(metadata double* %5, metadata !319, metadata !107), !dbg !320
  store double 0xBFF007228B4CD147, double* %5, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata double* %6, metadata !321, metadata !107), !dbg !322
  store double 0x3FFBC8A35D2B114E, double* %6, align 8, !dbg !322
  call void @llvm.dbg.declare(metadata double* %7, metadata !323, metadata !107), !dbg !324
  store double 0x3FF3E48F2C0326B5, double* %7, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %8, metadata !325, metadata !107), !dbg !326
  store double 0x40142EB8F3A779B9, double* %8, align 8, !dbg !326
  call void @llvm.dbg.declare(metadata double* %9, metadata !327, metadata !107), !dbg !328
  %19 = load double, double* %3, align 8, !dbg !329
  %20 = fadd double %19, 0xBFF007228B4CD147, !dbg !330
  call void @fAddHandler(double %19, double 0xBFF007228B4CD147, double %20, i64 94495064929240, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065072272, i32 906, i32 27), !dbg !331
  %21 = load double, double* %3, align 8, !dbg !331
  %22 = fadd double %21, 0x3FFBC8A35D2B114E, !dbg !332
  call void @fAddHandler(double %21, double 0x3FFBC8A35D2B114E, double %22, i64 94495064906408, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065072976, i32 906, i32 40), !dbg !333
  %23 = fmul double %20, %22, !dbg !333
  call void @fMulHandler(double %20, double %22, double %23, i64 94495065072272, i64 94495065072976, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065073392, i32 906, i32 33), !dbg !328
  store double %23, double* %9, align 8, !dbg !328
  call void @llvm.dbg.declare(metadata double* %10, metadata !334, metadata !107), !dbg !335
  %24 = load double, double* %3, align 8, !dbg !336
  %25 = fadd double %24, 0x3FF3E48F2C0326B5, !dbg !337
  call void @fAddHandler(double %24, double 0x3FF3E48F2C0326B5, double %25, i64 94495064732616, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065076864, i32 907, i32 27), !dbg !338
  %26 = load double, double* %3, align 8, !dbg !338
  %27 = fadd double %26, 0x40142EB8F3A779B9, !dbg !339
  call void @fAddHandler(double %26, double 0x40142EB8F3A779B9, double %27, i64 94495065077256, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065077664, i32 907, i32 40), !dbg !340
  %28 = fmul double %25, %27, !dbg !340
  call void @fMulHandler(double %25, double %27, double %28, i64 94495065076864, i64 94495065077664, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065078080, i32 907, i32 33), !dbg !335
  store double %28, double* %10, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata double* %11, metadata !341, metadata !107), !dbg !342
  %29 = load double, double* %9, align 8, !dbg !343
  %30 = fmul double 0x4000A72BCDE822B8, %29, !dbg !344
  call void @fMulHandler(double 0x4000A72BCDE822B8, double %29, double %30, i64 0, i64 94495065081272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065081712, i32 908, i32 54), !dbg !345
  %31 = load double, double* %10, align 8, !dbg !345
  %32 = fdiv double %30, %31, !dbg !346
  call void @fDivHandler(double %30, double %31, double %32, i64 94495065081712, i64 94495065082104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065082512, i32 908, i32 60), !dbg !342
  store double %32, double* %11, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata double* %12, metadata !347, metadata !107), !dbg !348
  store double 0x3F7399C6B2FE3C2E, double* %12, align 8, !dbg !348
  call void @llvm.dbg.declare(metadata double* %13, metadata !349, metadata !107), !dbg !350
  store double 0xBF886BE8CE175C95, double* %13, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata double* %14, metadata !351, metadata !107), !dbg !352
  store double 0x3F93C8855B9A90B0, double* %14, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata double* %15, metadata !353, metadata !107), !dbg !354
  store double 0xBF9A901651B2B525, double* %15, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata double* %16, metadata !355, metadata !107), !dbg !356
  store double 0x3FA0163058FBCC17, double* %16, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %17, metadata !357, metadata !107), !dbg !358
  %33 = load double, double* %3, align 8, !dbg !359
  %34 = load double, double* %3, align 8, !dbg !360
  %35 = fmul double %33, %34, !dbg !361
  call void @fMulHandler(double %33, double %34, double %35, i64 94495065101928, i64 94495065102280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065102688, i32 914, i32 26), !dbg !362
  %36 = load double, double* %3, align 8, !dbg !362
  %37 = fmul double %35, %36, !dbg !363
  call void @fMulHandler(double %35, double %36, double %37, i64 94495065102688, i64 94495065103080, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065103488, i32 914, i32 30), !dbg !364
  %38 = load double, double* %3, align 8, !dbg !364
  %39 = fmul double %37, %38, !dbg !365
  call void @fMulHandler(double %37, double %38, double %39, i64 94495065103488, i64 94495065103880, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065104288, i32 914, i32 34), !dbg !366
  %40 = load double, double* %3, align 8, !dbg !366
  %41 = fmul double %39, %40, !dbg !367
  call void @fMulHandler(double %39, double %40, double %41, i64 94495065104288, i64 94495065104680, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065105088, i32 914, i32 38), !dbg !358
  store double %41, double* %17, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata double* %18, metadata !368, metadata !107), !dbg !369
  %42 = load double, double* %17, align 8, !dbg !370
  %43 = load double, double* %3, align 8, !dbg !371
  %44 = load double, double* %3, align 8, !dbg !372
  %45 = load double, double* %3, align 8, !dbg !373
  %46 = load double, double* %3, align 8, !dbg !374
  %47 = fmul double 0x3FA0163058FBCC17, %46, !dbg !375
  call void @fMulHandler(double 0x3FA0163058FBCC17, double %46, double %47, i64 0, i64 94495065109784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065110192, i32 915, i32 68), !dbg !376
  %48 = fadd double 0xBF9A901651B2B525, %47, !dbg !376
  call void @fAddHandler(double 0xBF9A901651B2B525, double %47, double %48, i64 0, i64 94495065110192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065110608, i32 915, i32 64), !dbg !377
  %49 = fmul double %45, %48, !dbg !377
  call void @fMulHandler(double %45, double %48, double %49, i64 94495065109400, i64 94495065110608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065111024, i32 915, i32 59), !dbg !378
  %50 = fadd double 0x3F93C8855B9A90B0, %49, !dbg !378
  call void @fAddHandler(double 0x3F93C8855B9A90B0, double %49, double %50, i64 0, i64 94495065111024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065111440, i32 915, i32 54), !dbg !379
  %51 = fmul double %44, %50, !dbg !379
  call void @fMulHandler(double %44, double %50, double %51, i64 94495065109016, i64 94495065111440, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065111856, i32 915, i32 49), !dbg !380
  %52 = fadd double 0xBF886BE8CE175C95, %51, !dbg !380
  call void @fAddHandler(double 0xBF886BE8CE175C95, double %51, double %52, i64 0, i64 94495065111856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065112272, i32 915, i32 44), !dbg !381
  %53 = fmul double %43, %52, !dbg !381
  call void @fMulHandler(double %43, double %52, double %53, i64 94495065108632, i64 94495065112272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065112688, i32 915, i32 39), !dbg !382
  %54 = fadd double 0x3F7399C6B2FE3C2E, %53, !dbg !382
  call void @fAddHandler(double 0x3F7399C6B2FE3C2E, double %53, double %54, i64 0, i64 94495065112688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065113104, i32 915, i32 34), !dbg !383
  %55 = fmul double %42, %54, !dbg !383
  call void @fMulHandler(double %42, double %54, double %55, i64 94495065108280, i64 94495065113104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065113520, i32 915, i32 28), !dbg !369
  store double %55, double* %18, align 8, !dbg !369
  %56 = load double, double* %3, align 8, !dbg !384
  %57 = load double, double* %11, align 8, !dbg !385
  %58 = load double, double* %18, align 8, !dbg !386
  %59 = fadd double %57, %58, !dbg !387
  call void @fAddHandler(double %57, double %58, double %59, i64 94495065115976, i64 94495065116360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065116768, i32 916, i32 29), !dbg !388
  %60 = fmul double %56, %59, !dbg !388
  call void @fMulHandler(double %56, double %59, double %60, i64 94495065115592, i64 94495065116768, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065117184, i32 916, i32 21), !dbg !389
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !389
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !390
  store double %60, double* %62, align 8, !dbg !391
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !392
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !393
  %65 = load double, double* %64, align 8, !dbg !393
  %66 = call double @fabs(double %65) #1, !dbg !394
  %67 = fmul double 0x3CC0000000000000, %66, !dbg !395
  call void @fMulHandler(double 0x3CC0000000000000, double %66, double %67, i64 0, i64 94495065121232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94495065121712, i32 917, i32 39), !dbg !396
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !396
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !397
  store double %67, double* %69, align 8, !dbg !398
  ret i32 0, !dbg !399
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lngamma_2_pade(double, %struct.gsl_sf_result_struct*) #3 !dbg !400 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !401, metadata !107), !dbg !402
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !403, metadata !107), !dbg !404
  call void @llvm.dbg.declare(metadata double* %5, metadata !405, metadata !107), !dbg !406
  store double 0x3FF003AB59D1C825, double* %5, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata double* %6, metadata !407, metadata !107), !dbg !408
  store double 0x4010D666DADA6AA8, double* %6, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata double* %7, metadata !409, metadata !107), !dbg !410
  store double 0x4004F368A0A50351, double* %7, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata double* %8, metadata !411, metadata !107), !dbg !412
  store double 0x4025B71FF2054D90, double* %8, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %9, metadata !413, metadata !107), !dbg !414
  %19 = load double, double* %3, align 8, !dbg !415
  %20 = fadd double %19, 0x3FF003AB59D1C825, !dbg !416
  call void @fAddHandler(double %19, double 0x3FF003AB59D1C825, double %20, i64 94495064944824, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065141296, i32 933, i32 27), !dbg !417
  %21 = load double, double* %3, align 8, !dbg !417
  %22 = fadd double %21, 0x4010D666DADA6AA8, !dbg !418
  call void @fAddHandler(double %21, double 0x4010D666DADA6AA8, double %22, i64 94495065141688, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065142096, i32 933, i32 40), !dbg !419
  %23 = fmul double %20, %22, !dbg !419
  call void @fMulHandler(double %20, double %22, double %23, i64 94495065141296, i64 94495065142096, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065142512, i32 933, i32 33), !dbg !414
  store double %23, double* %9, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata double* %10, metadata !420, metadata !107), !dbg !421
  %24 = load double, double* %3, align 8, !dbg !422
  %25 = fadd double %24, 0x4004F368A0A50351, !dbg !423
  call void @fAddHandler(double %24, double 0x4004F368A0A50351, double %25, i64 94495065145704, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065146080, i32 934, i32 27), !dbg !424
  %26 = load double, double* %3, align 8, !dbg !424
  %27 = fadd double %26, 0x4025B71FF2054D90, !dbg !425
  call void @fAddHandler(double %26, double 0x4025B71FF2054D90, double %27, i64 94495065146472, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065146880, i32 934, i32 40), !dbg !426
  %28 = fmul double %25, %27, !dbg !426
  call void @fMulHandler(double %25, double %27, double %28, i64 94495065146080, i64 94495065146880, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065147296, i32 934, i32 33), !dbg !421
  store double %28, double* %10, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %11, metadata !427, metadata !107), !dbg !428
  %29 = load double, double* %9, align 8, !dbg !429
  %30 = fmul double 0x4006D3B8E31068E4, %29, !dbg !430
  call void @fMulHandler(double 0x4006D3B8E31068E4, double %29, double %30, i64 0, i64 94495065150488, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065150928, i32 935, i32 52), !dbg !431
  %31 = load double, double* %10, align 8, !dbg !431
  %32 = fdiv double %30, %31, !dbg !432
  call void @fDivHandler(double %30, double %31, double %32, i64 94495065150928, i64 94495065151320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065151728, i32 935, i32 57), !dbg !428
  store double %32, double* %11, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata double* %12, metadata !433, metadata !107), !dbg !434
  store double 0x3F1DDE6D37545B3B, double* %12, align 8, !dbg !434
  call void @llvm.dbg.declare(metadata double* %13, metadata !435, metadata !107), !dbg !436
  store double 0xBF21E5A3F738F3CA, double* %13, align 8, !dbg !436
  call void @llvm.dbg.declare(metadata double* %14, metadata !437, metadata !107), !dbg !438
  store double 0x3F1BFA716513D256, double* %14, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata double* %15, metadata !439, metadata !107), !dbg !440
  store double 0xBF122C77E28883CE, double* %15, align 8, !dbg !440
  call void @llvm.dbg.declare(metadata double* %16, metadata !441, metadata !107), !dbg !442
  store double 0x3F0559A074362DA9, double* %16, align 8, !dbg !442
  call void @llvm.dbg.declare(metadata double* %17, metadata !443, metadata !107), !dbg !444
  %33 = load double, double* %3, align 8, !dbg !445
  %34 = load double, double* %3, align 8, !dbg !446
  %35 = fmul double %33, %34, !dbg !447
  call void @fMulHandler(double %33, double %34, double %35, i64 94495065169080, i64 94495065169432, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065169840, i32 941, i32 26), !dbg !448
  %36 = load double, double* %3, align 8, !dbg !448
  %37 = fmul double %35, %36, !dbg !449
  call void @fMulHandler(double %35, double %36, double %37, i64 94495065169840, i64 94495065170232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065170640, i32 941, i32 30), !dbg !450
  %38 = load double, double* %3, align 8, !dbg !450
  %39 = fmul double %37, %38, !dbg !451
  call void @fMulHandler(double %37, double %38, double %39, i64 94495065170640, i64 94495065171032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065171440, i32 941, i32 34), !dbg !452
  %40 = load double, double* %3, align 8, !dbg !452
  %41 = fmul double %39, %40, !dbg !453
  call void @fMulHandler(double %39, double %40, double %41, i64 94495065171440, i64 94495065171832, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065172240, i32 941, i32 38), !dbg !444
  store double %41, double* %17, align 8, !dbg !444
  call void @llvm.dbg.declare(metadata double* %18, metadata !454, metadata !107), !dbg !455
  %42 = load double, double* %17, align 8, !dbg !456
  %43 = load double, double* %3, align 8, !dbg !457
  %44 = load double, double* %3, align 8, !dbg !458
  %45 = load double, double* %3, align 8, !dbg !459
  %46 = load double, double* %3, align 8, !dbg !460
  %47 = fmul double 0x3F0559A074362DA9, %46, !dbg !461
  call void @fMulHandler(double 0x3F0559A074362DA9, double %46, double %47, i64 0, i64 94495065176936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065177344, i32 942, i32 68), !dbg !462
  %48 = fadd double 0xBF122C77E28883CE, %47, !dbg !462
  call void @fAddHandler(double 0xBF122C77E28883CE, double %47, double %48, i64 0, i64 94495065177344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065177760, i32 942, i32 64), !dbg !463
  %49 = fmul double %45, %48, !dbg !463
  call void @fMulHandler(double %45, double %48, double %49, i64 94495065176552, i64 94495065177760, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065178176, i32 942, i32 59), !dbg !464
  %50 = fadd double 0x3F1BFA716513D256, %49, !dbg !464
  call void @fAddHandler(double 0x3F1BFA716513D256, double %49, double %50, i64 0, i64 94495065178176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065178592, i32 942, i32 54), !dbg !465
  %51 = fmul double %44, %50, !dbg !465
  call void @fMulHandler(double %44, double %50, double %51, i64 94495065176168, i64 94495065178592, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065179008, i32 942, i32 49), !dbg !466
  %52 = fadd double 0xBF21E5A3F738F3CA, %51, !dbg !466
  call void @fAddHandler(double 0xBF21E5A3F738F3CA, double %51, double %52, i64 0, i64 94495065179008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065179424, i32 942, i32 44), !dbg !467
  %53 = fmul double %43, %52, !dbg !467
  call void @fMulHandler(double %43, double %52, double %53, i64 94495065175784, i64 94495065179424, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065179840, i32 942, i32 39), !dbg !468
  %54 = fadd double 0x3F1DDE6D37545B3B, %53, !dbg !468
  call void @fAddHandler(double 0x3F1DDE6D37545B3B, double %53, double %54, i64 0, i64 94495065179840, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065180256, i32 942, i32 34), !dbg !469
  %55 = fmul double %42, %54, !dbg !469
  call void @fMulHandler(double %42, double %54, double %55, i64 94495065175432, i64 94495065180256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065180672, i32 942, i32 28), !dbg !455
  store double %55, double* %18, align 8, !dbg !455
  %56 = load double, double* %3, align 8, !dbg !470
  %57 = load double, double* %11, align 8, !dbg !471
  %58 = load double, double* %18, align 8, !dbg !472
  %59 = fadd double %57, %58, !dbg !473
  call void @fAddHandler(double %57, double %58, double %59, i64 94495065183128, i64 94495065183512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065183920, i32 943, i32 29), !dbg !474
  %60 = fmul double %56, %59, !dbg !474
  call void @fMulHandler(double %56, double %59, double %60, i64 94495065182744, i64 94495065183920, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065184336, i32 943, i32 21), !dbg !475
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !475
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !476
  store double %60, double* %62, align 8, !dbg !477
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !478
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !479
  %65 = load double, double* %64, align 8, !dbg !479
  %66 = call double @fabs(double %65) #1, !dbg !480
  %67 = fmul double 0x3CC0000000000000, %66, !dbg !481
  call void @fMulHandler(double 0x3CC0000000000000, double %66, double %67, i64 0, i64 94495065188544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94495065189024, i32 944, i32 39), !dbg !482
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !482
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !483
  store double %67, double* %69, align 8, !dbg !484
  ret i32 0, !dbg !485
}

; Function Attrs: nounwind uwtable
define internal i32 @lngamma_lanczos(double, %struct.gsl_sf_result_struct*) #0 !dbg !486 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !487, metadata !107), !dbg !488
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !489, metadata !107), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %5, metadata !491, metadata !107), !dbg !492
  call void @llvm.dbg.declare(metadata double* %6, metadata !493, metadata !107), !dbg !494
  call void @llvm.dbg.declare(metadata double* %7, metadata !495, metadata !107), !dbg !496
  call void @llvm.dbg.declare(metadata double* %8, metadata !497, metadata !107), !dbg !498
  %9 = load double, double* %3, align 8, !dbg !499
  %10 = fsub double %9, 1.000000e+00, !dbg !499
  call void @fSubHandler(double %9, double 1.000000e+00, double %10, i64 94495064957272, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065203712, i32 709, i32 5), !dbg !499
  store double %10, double* %3, align 8, !dbg !499
  %11 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @lanczos_7_c, i64 0, i64 0), align 16, !dbg !500
  store double %11, double* %6, align 8, !dbg !501
  store i32 1, i32* %5, align 4, !dbg !502
  br label %12, !dbg !504

; <label>:12:                                     ; preds = %29, %2
  %13 = load i32, i32* %5, align 4, !dbg !505
  %14 = icmp sle i32 %13, 8, !dbg !508
  %15 = sext i32 %13 to i64, !dbg !509
  %16 = call i1 @iCmpInstHandler(i64 %15, i64 8, i1 %14, i32 41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065207680, i32 712, i32 13), !dbg !509
  br i1 %16, label %17, label %32, !dbg !509

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %5, align 4, !dbg !510
  %19 = sext i32 %18 to i64, !dbg !513
  %20 = getelementptr inbounds [9 x double], [9 x double]* @lanczos_7_c, i64 0, i64 %19, !dbg !513
  %21 = load double, double* %20, align 8, !dbg !513
  %22 = load double, double* %3, align 8, !dbg !514
  %23 = load i32, i32* %5, align 4, !dbg !515
  %24 = sitofp i32 %23 to double, !dbg !515
  %25 = fadd double %22, %24, !dbg !516
  call void @fAddHandler(double %22, double %24, double %25, i64 94495065211304, i64 94495065212072, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065213744, i32 712, i32 48), !dbg !517
  %26 = fdiv double %21, %25, !dbg !517
  call void @fDivHandler(double %21, double %25, double %26, i64 94495065211208, i64 94495065213744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065214160, i32 712, i32 45), !dbg !518
  %27 = load double, double* %6, align 8, !dbg !518
  %28 = fadd double %27, %26, !dbg !518
  call void @fAddHandler(double %27, double %26, double %28, i64 94495065214552, i64 94495065214160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065214960, i32 712, i32 28), !dbg !518
  store double %28, double* %6, align 8, !dbg !518
  br label %29, !dbg !519

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* %5, align 4, !dbg !520
  %31 = add nsw i32 %30, 1, !dbg !520
  store i32 %31, i32* %5, align 4, !dbg !520
  br label %12, !dbg !522, !llvm.loop !523

; <label>:32:                                     ; preds = %12
  %33 = load double, double* %3, align 8, !dbg !525
  %34 = fadd double %33, 5.000000e-01, !dbg !526
  call void @fAddHandler(double %33, double 5.000000e-01, double %34, i64 94495065220072, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065220448, i32 715, i32 13), !dbg !527
  %35 = load double, double* %3, align 8, !dbg !527
  %36 = fadd double %35, 7.500000e+00, !dbg !528
  call void @fAddHandler(double %35, double 7.500000e+00, double %36, i64 94495065220808, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065221312, i32 715, i32 25), !dbg !529
  %37 = fdiv double %36, 0x4005BF0A8B145769, !dbg !529
  call void @fDivHandler(double %36, double 0x4005BF0A8B145769, double %37, i64 94495065221312, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065221760, i32 715, i32 30), !dbg !530
  %38 = call double @log(double %37) #6, !dbg !530
  call void @callOneArgHandler(i32 12, double %37, double %38, i64 94495065221760, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065192560, i32 715, i32 19), !dbg !531
  %39 = fmul double %34, %38, !dbg !531
  call void @fMulHandler(double %34, double %38, double %39, i64 94495065220448, i64 94495065192560, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065222576, i32 715, i32 18), !dbg !532
  store double %39, double* %7, align 8, !dbg !532
  %40 = load double, double* %6, align 8, !dbg !533
  %41 = call double @log(double %40) #6, !dbg !534
  call void @callOneArgHandler(i32 12, double %40, double %41, i64 94495065223384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065223856, i32 716, i32 27), !dbg !535
  %42 = fadd double 0x3FED67F1C864BEB5, %41, !dbg !535
  call void @fAddHandler(double 0x3FED67F1C864BEB5, double %41, double %42, i64 0, i64 94495065223856, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065224400, i32 716, i32 25), !dbg !536
  store double %42, double* %8, align 8, !dbg !536
  %43 = load double, double* %7, align 8, !dbg !537
  %44 = load double, double* %8, align 8, !dbg !538
  %45 = fsub double %44, 7.000000e+00, !dbg !539
  call void @fSubHandler(double %44, double 7.000000e+00, double %45, i64 94495065225592, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065226096, i32 717, i32 33), !dbg !540
  %46 = fadd double %43, %45, !dbg !540
  call void @fAddHandler(double %43, double %45, double %46, i64 94495065225208, i64 94495065226096, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065226480, i32 717, i32 24), !dbg !541
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !541
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !542
  store double %46, double* %48, align 8, !dbg !543
  %49 = load double, double* %7, align 8, !dbg !544
  %50 = call double @fabs(double %49) #1, !dbg !545
  %51 = load double, double* %8, align 8, !dbg !546
  %52 = call double @fabs(double %51) #1, !dbg !547
  %53 = fadd double %50, %52, !dbg !549
  call void @fAddHandler(double %50, double %52, double %53, i64 94495065228592, i64 94495065229520, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065230000, i32 718, i32 55), !dbg !550
  %54 = fadd double %53, 7.000000e+00, !dbg !550
  call void @fAddHandler(double %53, double 7.000000e+00, double %54, i64 94495065230000, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065230448, i32 718, i32 69), !dbg !551
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !551
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94495065230448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065230832, i32 718, i32 40), !dbg !552
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !552
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !553
  store double %55, double* %57, align 8, !dbg !554
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !555
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !556
  %60 = load double, double* %59, align 8, !dbg !556
  %61 = call double @fabs(double %60) #1, !dbg !557
  %62 = fmul double 0x3CB0000000000000, %61, !dbg !558
  call void @fMulHandler(double 0x3CB0000000000000, double %61, double %62, i64 0, i64 94495065235040, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065235520, i32 719, i32 34), !dbg !559
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !559
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !560
  %65 = load double, double* %64, align 8, !dbg !561
  %66 = fadd double %65, %62, !dbg !561
  call void @fAddHandler(double %65, double %62, double %66, i64 94495065236744, i64 94495065235520, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94495065237152, i32 719, i32 15), !dbg !561
  store double %66, double* %64, align 8, !dbg !561
  ret i32 0, !dbg !562
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @lngamma_sgn_0(double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !563 {
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double*, align 8
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !566, metadata !107), !dbg !567
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !568, metadata !107), !dbg !569
  store double* %2, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !570, metadata !107), !dbg !571
  call void @llvm.dbg.declare(metadata double* %7, metadata !572, metadata !107), !dbg !573
  store double 0xBFB3C467E37DB0C8, double* %7, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata double* %8, metadata !574, metadata !107), !dbg !575
  store double 0xBF8669CF713AA1E2, double* %8, align 8, !dbg !575
  call void @llvm.dbg.declare(metadata double* %9, metadata !576, metadata !107), !dbg !577
  store double 0x3FB7AF73866DA4E8, double* %9, align 8, !dbg !577
  call void @llvm.dbg.declare(metadata double* %10, metadata !578, metadata !107), !dbg !579
  store double 0xBF92B5DF55ED2958, double* %10, align 8, !dbg !579
  call void @llvm.dbg.declare(metadata double* %11, metadata !580, metadata !107), !dbg !581
  store double 0x3F926FE278E930AE, double* %11, align 8, !dbg !581
  call void @llvm.dbg.declare(metadata double* %12, metadata !582, metadata !107), !dbg !583
  store double 0xBF7C0FAC8A677A84, double* %12, align 8, !dbg !583
  call void @llvm.dbg.declare(metadata double* %13, metadata !584, metadata !107), !dbg !585
  store double 0x3F7060754242E352, double* %13, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata double* %14, metadata !586, metadata !107), !dbg !587
  store double 0xBF5F094BD00128CE, double* %14, align 8, !dbg !587
  call void @llvm.dbg.declare(metadata double* %15, metadata !588, metadata !107), !dbg !589
  store double 0x3F4FF0A5D7D0B01E, double* %15, align 8, !dbg !589
  call void @llvm.dbg.declare(metadata double* %16, metadata !590, metadata !107), !dbg !591
  store double 0xBF3FBDF153D2EADD, double* %16, align 8, !dbg !591
  call void @llvm.dbg.declare(metadata double* %17, metadata !592, metadata !107), !dbg !593
  %20 = load double, double* %4, align 8, !dbg !594
  %21 = load double, double* %4, align 8, !dbg !595
  %22 = load double, double* %4, align 8, !dbg !596
  %23 = load double, double* %4, align 8, !dbg !597
  %24 = fmul double %23, 0xBF3FBDF153D2EADD, !dbg !598
  call void @fMulHandler(double %23, double 0xBF3FBDF153D2EADD, double %24, i64 94495065276168, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065276576, i32 742, i32 56), !dbg !599
  %25 = fadd double 0x3F4FF0A5D7D0B01E, %24, !dbg !599
  call void @fAddHandler(double 0x3F4FF0A5D7D0B01E, double %24, double %25, i64 0, i64 94495065276576, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065276992, i32 742, i32 51), !dbg !600
  %26 = fmul double %22, %25, !dbg !600
  call void @fMulHandler(double %22, double %25, double %26, i64 94495065275784, i64 94495065276992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065277408, i32 742, i32 46), !dbg !601
  %27 = fadd double 0xBF5F094BD00128CE, %26, !dbg !601
  call void @fAddHandler(double 0xBF5F094BD00128CE, double %26, double %27, i64 0, i64 94495065277408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065277824, i32 742, i32 41), !dbg !602
  %28 = fmul double %21, %27, !dbg !602
  call void @fMulHandler(double %21, double %27, double %28, i64 94495064971048, i64 94495065277824, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065278240, i32 742, i32 36), !dbg !603
  %29 = fadd double 0x3F7060754242E352, %28, !dbg !603
  call void @fAddHandler(double 0x3F7060754242E352, double %28, double %29, i64 0, i64 94495065278240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065278656, i32 742, i32 32), !dbg !604
  %30 = fmul double %20, %29, !dbg !604
  call void @fMulHandler(double %20, double %29, double %30, i64 94495064978696, i64 94495065278656, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065279072, i32 742, i32 28), !dbg !605
  %31 = fadd double 0xBF7C0FAC8A677A84, %30, !dbg !605
  call void @fAddHandler(double 0xBF7C0FAC8A677A84, double %30, double %31, i64 0, i64 94495065279072, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065279488, i32 742, i32 24), !dbg !593
  store double %31, double* %17, align 8, !dbg !593
  call void @llvm.dbg.declare(metadata double* %18, metadata !606, metadata !107), !dbg !607
  %32 = load double, double* %4, align 8, !dbg !608
  %33 = load double, double* %4, align 8, !dbg !609
  %34 = load double, double* %4, align 8, !dbg !610
  %35 = load double, double* %4, align 8, !dbg !611
  %36 = load double, double* %4, align 8, !dbg !612
  %37 = load double, double* %4, align 8, !dbg !613
  %38 = load double, double* %17, align 8, !dbg !614
  %39 = fmul double %37, %38, !dbg !615
  call void @fMulHandler(double %37, double %38, double %39, i64 94495065284568, i64 94495065284952, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065285360, i32 743, i32 65), !dbg !616
  %40 = fadd double 0x3F926FE278E930AE, %39, !dbg !616
  call void @fAddHandler(double 0x3F926FE278E930AE, double %39, double %40, i64 0, i64 94495065285360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065285776, i32 743, i32 61), !dbg !617
  %41 = fmul double %36, %40, !dbg !617
  call void @fMulHandler(double %36, double %40, double %41, i64 94495065284184, i64 94495065285776, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065286192, i32 743, i32 57), !dbg !618
  %42 = fadd double 0xBF92B5DF55ED2958, %41, !dbg !618
  call void @fAddHandler(double 0xBF92B5DF55ED2958, double %41, double %42, i64 0, i64 94495065286192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065286608, i32 743, i32 53), !dbg !619
  %43 = fmul double %35, %42, !dbg !619
  call void @fMulHandler(double %35, double %42, double %43, i64 94495065283800, i64 94495065286608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065287024, i32 743, i32 49), !dbg !620
  %44 = fadd double 0x3FB7AF73866DA4E8, %43, !dbg !620
  call void @fAddHandler(double 0x3FB7AF73866DA4E8, double %43, double %44, i64 0, i64 94495065287024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065287440, i32 743, i32 45), !dbg !621
  %45 = fmul double %34, %44, !dbg !621
  call void @fMulHandler(double %34, double %44, double %45, i64 94495065283416, i64 94495065287440, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065287856, i32 743, i32 41), !dbg !622
  %46 = fadd double 0xBF8669CF713AA1E2, %45, !dbg !622
  call void @fAddHandler(double 0xBF8669CF713AA1E2, double %45, double %46, i64 0, i64 94495065287856, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065288272, i32 743, i32 37), !dbg !623
  %47 = fmul double %33, %46, !dbg !623
  call void @fMulHandler(double %33, double %46, double %47, i64 94495065283032, i64 94495065288272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065288688, i32 743, i32 33), !dbg !624
  %48 = fadd double 0xBFB3C467E37DB0C8, %47, !dbg !624
  call void @fAddHandler(double 0xBFB3C467E37DB0C8, double %47, double %48, i64 0, i64 94495065288688, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065289104, i32 743, i32 29), !dbg !625
  %49 = fmul double %32, %48, !dbg !625
  call void @fMulHandler(double %32, double %48, double %49, i64 94495065282680, i64 94495065289104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065289520, i32 743, i32 25), !dbg !607
  store double %49, double* %18, align 8, !dbg !607
  call void @llvm.dbg.declare(metadata double* %19, metadata !626, metadata !107), !dbg !627
  %50 = load double, double* %18, align 8, !dbg !628
  %51 = load double, double* %4, align 8, !dbg !629
  %52 = fadd double 1.000000e+00, %51, !dbg !630
  call void @fAddHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94495065293064, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065293504, i32 746, i32 34), !dbg !631
  %53 = fdiv double 1.000000e+00, %52, !dbg !631
  call void @fDivHandler(double 1.000000e+00, double %52, double %53, i64 0, i64 94495065293504, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065293920, i32 746, i32 29), !dbg !632
  %54 = fadd double %50, %53, !dbg !632
  call void @fAddHandler(double %50, double %53, double %54, i64 94495065292712, i64 94495065293920, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065294304, i32 746, i32 24), !dbg !633
  %55 = load double, double* %4, align 8, !dbg !633
  %56 = fmul double 5.000000e-01, %55, !dbg !634
  call void @fMulHandler(double 5.000000e-01, double %55, double %56, i64 0, i64 94495065294696, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065295136, i32 746, i32 45), !dbg !635
  %57 = fadd double %54, %56, !dbg !635
  call void @fAddHandler(double %54, double %56, double %57, i64 94495065294304, i64 94495065295136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065295520, i32 746, i32 40), !dbg !627
  store double %57, double* %19, align 8, !dbg !627
  %58 = load double, double* %19, align 8, !dbg !636
  %59 = load double, double* %4, align 8, !dbg !637
  %60 = call double @fabs(double %59) #1, !dbg !638
  %61 = fdiv double %58, %60, !dbg !639
  call void @fDivHandler(double %58, double %60, double %61, i64 94495065297592, i64 94495065298448, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065298928, i32 748, i32 21), !dbg !640
  %62 = call double @log(double %61) #6, !dbg !640
  call void @callOneArgHandler(i32 12, double %61, double %62, i64 94495065298928, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065299408, i32 748, i32 14), !dbg !642
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !642
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !643
  store double %62, double* %64, align 8, !dbg !644
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !645
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !646
  %67 = load double, double* %66, align 8, !dbg !646
  %68 = call double @fabs(double %67) #1, !dbg !647
  %69 = fmul double 0x3CD0000000000000, %68, !dbg !648
  call void @fMulHandler(double 0x3CD0000000000000, double %68, double %69, i64 0, i64 94495065303680, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065304224, i32 749, i32 36), !dbg !649
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !649
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !650
  store double %69, double* %71, align 8, !dbg !651
  %72 = load double, double* %4, align 8, !dbg !652
  %73 = fcmp oge double %72, 0.000000e+00, !dbg !652
  %74 = call i1 @fCmpInstHandler(double %72, double 0.000000e+00, i1 %73, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94495065306272, i32 750, i32 10), !dbg !652
  %75 = select i1 %74, i32 1, i32 -1, !dbg !652
  %76 = sitofp i32 %75 to double, !dbg !652
  %77 = load double*, double** %6, align 8, !dbg !653
  store double %76, double* %77, align 8, !dbg !654
  ret i32 0, !dbg !655
}

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @lngamma_sgn_sing(i32, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !656 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double*, align 8
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
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca %struct.gsl_sf_result_struct, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca %struct.gsl_sf_result_struct, align 8
  %46 = alloca %struct.gsl_sf_result_struct, align 8
  %47 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !659, metadata !107), !dbg !660
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !661, metadata !107), !dbg !662
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !663, metadata !107), !dbg !664
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !665, metadata !107), !dbg !666
  %48 = load double, double* %7, align 8, !dbg !667
  %49 = fcmp oeq double %48, 0.000000e+00, !dbg !669
  %50 = call i1 @fCmpInstHandler(double %48, double 0.000000e+00, i1 %49, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065320288, i32 765, i32 10), !dbg !670
  br i1 %50, label %51, label %59, !dbg !670

; <label>:51:                                     ; preds = %4
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !671
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !673
  store double 0.000000e+00, double* %53, align 8, !dbg !674
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !675
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !676
  store double 0.000000e+00, double* %55, align 8, !dbg !677
  %56 = load double*, double** %9, align 8, !dbg !678
  store double 0.000000e+00, double* %56, align 8, !dbg !679
  br label %57, !dbg !680, !llvm.loop !681

; <label>:57:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 769, i32 1), !dbg !682
  store i32 1, i32* %5, align 4, !dbg !682
  br label %295, !dbg !682
                                                  ; No predecessors!
  br label %295, !dbg !685

; <label>:59:                                     ; preds = %4
  %60 = load i32, i32* %6, align 4, !dbg !686
  %61 = icmp eq i32 %60, 1, !dbg !688
  %62 = sext i32 %60 to i64, !dbg !689
  %63 = call i1 @iCmpInstHandler(i64 %62, i64 1, i1 %61, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065328656, i32 771, i32 13), !dbg !689
  br i1 %63, label %64, label %129, !dbg !689

; <label>:64:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata double* %10, metadata !690, metadata !107), !dbg !692
  store double 0x3FB3C467E37DB0C8, double* %10, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata double* %11, metadata !693, metadata !107), !dbg !694
  store double 0x3FB691A1D1A50504, double* %11, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata double* %12, metadata !695, metadata !107), !dbg !696
  store double 0xBF71DD1B4C89FE46, double* %12, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %13, metadata !697, metadata !107), !dbg !698
  store double 0x3F8C7D310595538D, double* %13, align 8, !dbg !698
  call void @llvm.dbg.declare(metadata double* %14, metadata !699, metadata !107), !dbg !700
  store double 0xBF70C527D87A1B9F, double* %14, align 8, !dbg !700
  call void @llvm.dbg.declare(metadata double* %15, metadata !701, metadata !107), !dbg !702
  store double 0x3F66950963DABDCA, double* %15, align 8, !dbg !702
  call void @llvm.dbg.declare(metadata double* %16, metadata !703, metadata !107), !dbg !704
  store double 0xBF5457C2415611B5, double* %16, align 8, !dbg !704
  call void @llvm.dbg.declare(metadata double* %17, metadata !705, metadata !107), !dbg !706
  store double 0x3F4563131D562E32, double* %17, align 8, !dbg !706
  call void @llvm.dbg.declare(metadata double* %18, metadata !707, metadata !107), !dbg !708
  store double 0xBF351B2574F503D9, double* %18, align 8, !dbg !708
  call void @llvm.dbg.declare(metadata double* %19, metadata !709, metadata !107), !dbg !710
  store double 0x3F254597BDBBCE0A, double* %19, align 8, !dbg !710
  call void @llvm.dbg.declare(metadata double* %20, metadata !711, metadata !107), !dbg !712
  %65 = load double, double* %7, align 8, !dbg !713
  %66 = load double, double* %7, align 8, !dbg !714
  %67 = load double, double* %7, align 8, !dbg !715
  %68 = load double, double* %7, align 8, !dbg !716
  %69 = fmul double %68, 0x3F254597BDBBCE0A, !dbg !717
  call void @fMulHandler(double %68, double 0x3F254597BDBBCE0A, double %69, i64 94495065360264, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065360672, i32 786, i32 61), !dbg !718
  %70 = fadd double 0xBF351B2574F503D9, %69, !dbg !718
  call void @fAddHandler(double 0xBF351B2574F503D9, double %69, double %70, i64 0, i64 94495065360672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065361088, i32 786, i32 56), !dbg !719
  %71 = fmul double %67, %70, !dbg !719
  call void @fMulHandler(double %67, double %70, double %71, i64 94495065359880, i64 94495065361088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065361504, i32 786, i32 51), !dbg !720
  %72 = fadd double 0x3F4563131D562E32, %71, !dbg !720
  call void @fAddHandler(double 0x3F4563131D562E32, double %71, double %72, i64 0, i64 94495065361504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065361920, i32 786, i32 46), !dbg !721
  %73 = fmul double %66, %72, !dbg !721
  call void @fMulHandler(double %66, double %72, double %73, i64 94495065359496, i64 94495065361920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065362336, i32 786, i32 41), !dbg !722
  %74 = fadd double 0xBF5457C2415611B5, %73, !dbg !722
  call void @fAddHandler(double 0xBF5457C2415611B5, double %73, double %74, i64 0, i64 94495065362336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065362752, i32 786, i32 36), !dbg !723
  %75 = fmul double %65, %74, !dbg !723
  call void @fMulHandler(double %65, double %74, double %75, i64 94495065359144, i64 94495065362752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065363168, i32 786, i32 31), !dbg !724
  %76 = fadd double 0x3F66950963DABDCA, %75, !dbg !724
  call void @fAddHandler(double 0x3F66950963DABDCA, double %75, double %76, i64 0, i64 94495065363168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065363584, i32 786, i32 26), !dbg !712
  store double %76, double* %20, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata double* %21, metadata !725, metadata !107), !dbg !726
  %77 = load double, double* %7, align 8, !dbg !727
  %78 = load double, double* %7, align 8, !dbg !728
  %79 = load double, double* %7, align 8, !dbg !729
  %80 = load double, double* %7, align 8, !dbg !730
  %81 = load double, double* %7, align 8, !dbg !731
  %82 = load double, double* %7, align 8, !dbg !732
  %83 = load double, double* %20, align 8, !dbg !733
  %84 = fmul double %82, %83, !dbg !734
  call void @fMulHandler(double %82, double %83, double %84, i64 94495065368664, i64 94495065369048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065369456, i32 787, i32 76), !dbg !735
  %85 = fadd double 0xBF70C527D87A1B9F, %84, !dbg !735
  call void @fAddHandler(double 0xBF70C527D87A1B9F, double %84, double %85, i64 0, i64 94495065369456, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065369872, i32 787, i32 71), !dbg !736
  %86 = fmul double %81, %85, !dbg !736
  call void @fMulHandler(double %81, double %85, double %86, i64 94495065368280, i64 94495065369872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065370288, i32 787, i32 66), !dbg !737
  %87 = fadd double 0x3F8C7D310595538D, %86, !dbg !737
  call void @fAddHandler(double 0x3F8C7D310595538D, double %86, double %87, i64 0, i64 94495065370288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065370704, i32 787, i32 61), !dbg !738
  %88 = fmul double %80, %87, !dbg !738
  call void @fMulHandler(double %80, double %87, double %88, i64 94495065367896, i64 94495065370704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065371120, i32 787, i32 56), !dbg !739
  %89 = fadd double 0xBF71DD1B4C89FE46, %88, !dbg !739
  call void @fAddHandler(double 0xBF71DD1B4C89FE46, double %88, double %89, i64 0, i64 94495065371120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065371536, i32 787, i32 51), !dbg !740
  %90 = fmul double %79, %89, !dbg !740
  call void @fMulHandler(double %79, double %89, double %90, i64 94495065367512, i64 94495065371536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065371952, i32 787, i32 46), !dbg !741
  %91 = fadd double 0x3FB691A1D1A50504, %90, !dbg !741
  call void @fAddHandler(double 0x3FB691A1D1A50504, double %90, double %91, i64 0, i64 94495065371952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065372368, i32 787, i32 41), !dbg !742
  %92 = fmul double %78, %91, !dbg !742
  call void @fMulHandler(double %78, double %91, double %92, i64 94495065367128, i64 94495065372368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065372784, i32 787, i32 36), !dbg !743
  %93 = fadd double 0x3FB3C467E37DB0C8, %92, !dbg !743
  call void @fAddHandler(double 0x3FB3C467E37DB0C8, double %92, double %93, i64 0, i64 94495065372784, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065373200, i32 787, i32 31), !dbg !744
  %94 = fmul double %77, %93, !dbg !744
  call void @fMulHandler(double %77, double %93, double %94, i64 94495065366776, i64 94495065373200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065373616, i32 787, i32 26), !dbg !726
  store double %94, double* %21, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata double* %22, metadata !745, metadata !107), !dbg !746
  %95 = load double, double* %21, align 8, !dbg !747
  %96 = fsub double %95, 1.000000e+00, !dbg !748
  call void @fSubHandler(double %95, double 1.000000e+00, double %96, i64 94495065376808, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065377216, i32 790, i32 28), !dbg !749
  %97 = load double, double* %7, align 8, !dbg !749
  %98 = fmul double 5.000000e-01, %97, !dbg !750
  call void @fMulHandler(double 5.000000e-01, double %97, double %98, i64 0, i64 94495065377576, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065378016, i32 790, i32 39), !dbg !751
  %99 = load double, double* %7, align 8, !dbg !751
  %100 = fmul double 3.000000e+00, %99, !dbg !752
  call void @fMulHandler(double 3.000000e+00, double %99, double %100, i64 0, i64 94495065378376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065378816, i32 790, i32 52), !dbg !753
  %101 = fadd double 1.000000e+00, %100, !dbg !753
  call void @fAddHandler(double 1.000000e+00, double %100, double %101, i64 0, i64 94495065378816, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065379232, i32 790, i32 48), !dbg !754
  %102 = fmul double %98, %101, !dbg !754
  call void @fMulHandler(double %98, double %101, double %102, i64 94495065378016, i64 94495065379232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065379616, i32 790, i32 43), !dbg !755
  %103 = load double, double* %7, align 8, !dbg !755
  %104 = load double, double* %7, align 8, !dbg !756
  %105 = fmul double %103, %104, !dbg !757
  call void @fMulHandler(double %103, double %104, double %105, i64 94495065380008, i64 94495065380392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065380800, i32 790, i32 68), !dbg !758
  %106 = fsub double 1.000000e+00, %105, !dbg !758
  call void @fSubHandler(double 1.000000e+00, double %105, double %106, i64 0, i64 94495065380800, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065381248, i32 790, i32 63), !dbg !759
  %107 = fdiv double %102, %106, !dbg !759
  call void @fDivHandler(double %102, double %106, double %107, i64 94495065379616, i64 94495065381248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065381632, i32 790, i32 57), !dbg !760
  %108 = fsub double %96, %107, !dbg !760
  call void @fSubHandler(double %96, double %107, double %108, i64 94495065377216, i64 94495065381632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065382048, i32 790, i32 34), !dbg !746
  store double %108, double* %22, align 8, !dbg !746
  %109 = load double, double* %22, align 8, !dbg !761
  %110 = call double @fabs(double %109) #1, !dbg !762
  %111 = load double, double* %7, align 8, !dbg !763
  %112 = call double @fabs(double %111) #1, !dbg !764
  %113 = fdiv double %110, %112, !dbg !766
  call void @fDivHandler(double %110, double %112, double %113, i64 94495065384592, i64 94495065385520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065386000, i32 792, i32 31), !dbg !767
  %114 = call double @log(double %113) #6, !dbg !767
  call void @callOneArgHandler(i32 12, double %113, double %114, i64 94495065386000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065386480, i32 792, i32 16), !dbg !769
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !769
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !770
  store double %114, double* %116, align 8, !dbg !771
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !772
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !773
  %119 = load double, double* %118, align 8, !dbg !773
  %120 = call double @fabs(double %119) #1, !dbg !774
  %121 = fmul double 0x3CC0000000000000, %120, !dbg !775
  call void @fMulHandler(double 0x3CC0000000000000, double %120, double %121, i64 0, i64 94495065390752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065391232, i32 793, i32 38), !dbg !776
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !776
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !777
  store double %121, double* %123, align 8, !dbg !778
  %124 = load double, double* %7, align 8, !dbg !779
  %125 = fcmp ogt double %124, 0.000000e+00, !dbg !780
  %126 = call i1 @fCmpInstHandler(double %124, double 0.000000e+00, i1 %125, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065393280, i32 794, i32 18), !dbg !779
  %127 = select i1 %126, double -1.000000e+00, double 1.000000e+00, !dbg !779
  %128 = load double*, double** %9, align 8, !dbg !781
  store double %127, double* %128, align 8, !dbg !782
  store i32 0, i32* %5, align 4, !dbg !783
  br label %295, !dbg !783

; <label>:129:                                    ; preds = %59
  call void @llvm.dbg.declare(metadata double* %23, metadata !784, metadata !107), !dbg !786
  call void @llvm.dbg.declare(metadata double* %24, metadata !787, metadata !107), !dbg !788
  store double 0xBFFA51A6625307D3, double* %24, align 8, !dbg !788
  call void @llvm.dbg.declare(metadata double* %25, metadata !789, metadata !107), !dbg !790
  store double 0x3FE9F9CB402BC46C, double* %25, align 8, !dbg !790
  call void @llvm.dbg.declare(metadata double* %26, metadata !791, metadata !107), !dbg !792
  store double 0xBFC86A8E4720DB67, double* %26, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata double* %27, metadata !793, metadata !107), !dbg !794
  store double 0x3F9AC6805CF350A6, double* %27, align 8, !dbg !794
  call void @llvm.dbg.declare(metadata double* %28, metadata !795, metadata !107), !dbg !796
  store double 0xBF633816AA4607AB, double* %28, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata double* %29, metadata !797, metadata !107), !dbg !798
  %130 = load double, double* %7, align 8, !dbg !799
  %131 = load double, double* %7, align 8, !dbg !800
  %132 = fmul double %130, %131, !dbg !801
  call void @fMulHandler(double %130, double %131, double %132, i64 94495065414536, i64 94495065414888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065415296, i32 808, i32 27), !dbg !798
  store double %132, double* %29, align 8, !dbg !798
  call void @llvm.dbg.declare(metadata double* %30, metadata !802, metadata !107), !dbg !803
  %133 = load double, double* %29, align 8, !dbg !804
  %134 = load double, double* %29, align 8, !dbg !805
  %135 = load double, double* %29, align 8, !dbg !806
  %136 = load double, double* %29, align 8, !dbg !807
  %137 = load double, double* %29, align 8, !dbg !808
  %138 = fmul double %137, 0xBF633816AA4607AB, !dbg !809
  call void @fMulHandler(double %137, double 0xBF633816AA4607AB, double %138, i64 94495065422056, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065422464, i32 809, i32 68), !dbg !810
  %139 = fadd double 0x3F9AC6805CF350A6, %138, !dbg !810
  call void @fAddHandler(double 0x3F9AC6805CF350A6, double %138, double %139, i64 0, i64 94495065422464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065422880, i32 809, i32 65), !dbg !811
  %140 = fmul double %136, %139, !dbg !811
  call void @fMulHandler(double %136, double %139, double %140, i64 94495065421672, i64 94495065422880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065423296, i32 809, i32 60), !dbg !812
  %141 = fadd double 0xBFC86A8E4720DB67, %140, !dbg !812
  call void @fAddHandler(double 0xBFC86A8E4720DB67, double %140, double %141, i64 0, i64 94495065423296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065423712, i32 809, i32 57), !dbg !813
  %142 = fmul double %135, %141, !dbg !813
  call void @fMulHandler(double %135, double %141, double %142, i64 94495065421288, i64 94495065423712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065424128, i32 809, i32 52), !dbg !814
  %143 = fadd double 0x3FE9F9CB402BC46C, %142, !dbg !814
  call void @fAddHandler(double 0x3FE9F9CB402BC46C, double %142, double %143, i64 0, i64 94495065424128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065424544, i32 809, i32 49), !dbg !815
  %144 = fmul double %134, %143, !dbg !815
  call void @fMulHandler(double %134, double %143, double %144, i64 94495065420904, i64 94495065424544, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065424960, i32 809, i32 44), !dbg !816
  %145 = fadd double 0xBFFA51A6625307D3, %144, !dbg !816
  call void @fAddHandler(double 0xBFFA51A6625307D3, double %144, double %145, i64 0, i64 94495065424960, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065425376, i32 809, i32 41), !dbg !817
  %146 = fmul double %133, %145, !dbg !817
  call void @fMulHandler(double %133, double %145, double %146, i64 94495065420552, i64 94495065425376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065425792, i32 809, i32 36), !dbg !818
  %147 = fadd double 1.000000e+00, %146, !dbg !818
  call void @fAddHandler(double 1.000000e+00, double %146, double %147, i64 0, i64 94495065425792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065426240, i32 809, i32 32), !dbg !803
  store double %147, double* %30, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata double* %31, metadata !819, metadata !107), !dbg !820
  %148 = load double, double* %7, align 8, !dbg !821
  %149 = call double @fabs(double %148) #1, !dbg !822
  store double %149, double* %31, align 8, !dbg !820
  call void @llvm.dbg.declare(metadata double* %32, metadata !823, metadata !107), !dbg !824
  call void @llvm.dbg.declare(metadata double* %33, metadata !825, metadata !107), !dbg !826
  call void @llvm.dbg.declare(metadata double* %34, metadata !827, metadata !107), !dbg !828
  call void @llvm.dbg.declare(metadata double* %35, metadata !829, metadata !107), !dbg !830
  call void @llvm.dbg.declare(metadata double* %36, metadata !831, metadata !107), !dbg !832
  call void @llvm.dbg.declare(metadata double* %37, metadata !833, metadata !107), !dbg !834
  call void @llvm.dbg.declare(metadata double* %38, metadata !835, metadata !107), !dbg !836
  call void @llvm.dbg.declare(metadata double* %39, metadata !837, metadata !107), !dbg !838
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !839, metadata !107), !dbg !840
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !841, metadata !107), !dbg !842
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !843, metadata !107), !dbg !844
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %43, metadata !845, metadata !107), !dbg !846
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !847, metadata !107), !dbg !848
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %45, metadata !849, metadata !107), !dbg !850
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %46, metadata !851, metadata !107), !dbg !852
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %47, metadata !853, metadata !107), !dbg !854
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !855
  store double 0.000000e+00, double* %150, align 8, !dbg !856
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !857
  store double 0.000000e+00, double* %151, align 8, !dbg !858
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !859
  store double 0.000000e+00, double* %152, align 8, !dbg !860
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !861
  store double 0.000000e+00, double* %153, align 8, !dbg !862
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !863
  store double 0.000000e+00, double* %154, align 8, !dbg !864
  %155 = load i32, i32* %6, align 4, !dbg !865
  %156 = call i32 @gsl_sf_lnfact_e(i32 %155, %struct.gsl_sf_result_struct* %40), !dbg !866
  %157 = load i32, i32* %6, align 4, !dbg !867
  %158 = add nsw i32 %157, 1, !dbg !868
  %159 = call i32 @gsl_sf_psi_int_e(i32 %158, %struct.gsl_sf_result_struct* %41), !dbg !869
  %160 = load i32, i32* %6, align 4, !dbg !870
  %161 = add nsw i32 %160, 1, !dbg !871
  %162 = call i32 @gsl_sf_psi_1_int_e(i32 %161, %struct.gsl_sf_result_struct* %42), !dbg !872
  %163 = load double, double* %31, align 8, !dbg !873
  %164 = fcmp ogt double %163, 1.000000e-05, !dbg !875
  %165 = call i1 @fCmpInstHandler(double %163, double 1.000000e-05, i1 %164, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065465072, i32 833, i32 13), !dbg !876
  br i1 %165, label %166, label %171, !dbg !876

; <label>:166:                                    ; preds = %129
  %167 = load i32, i32* %6, align 4, !dbg !877
  %168 = sitofp i32 %167 to double, !dbg !877
  %169 = fadd double %168, 1.000000e+00, !dbg !879
  call void @fAddHandler(double %168, double 1.000000e+00, double %169, i64 94495065466472, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065468176, i32 833, i32 43), !dbg !880
  %170 = call i32 @gsl_sf_psi_n_e(i32 2, double %169, %struct.gsl_sf_result_struct* %43), !dbg !880
  br label %171, !dbg !880

; <label>:171:                                    ; preds = %166, %129
  %172 = load double, double* %31, align 8, !dbg !881
  %173 = fcmp ogt double %172, 2.000000e-04, !dbg !883
  %174 = call i1 @fCmpInstHandler(double %172, double 2.000000e-04, i1 %173, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065471504, i32 834, i32 13), !dbg !884
  br i1 %174, label %175, label %180, !dbg !884

; <label>:175:                                    ; preds = %171
  %176 = load i32, i32* %6, align 4, !dbg !885
  %177 = sitofp i32 %176 to double, !dbg !885
  %178 = fadd double %177, 1.000000e+00, !dbg !887
  call void @fAddHandler(double %177, double 1.000000e+00, double %178, i64 94495065472904, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065474608, i32 834, i32 43), !dbg !888
  %179 = call i32 @gsl_sf_psi_n_e(i32 3, double %178, %struct.gsl_sf_result_struct* %44), !dbg !888
  br label %180, !dbg !888

; <label>:180:                                    ; preds = %175, %171
  %181 = load double, double* %31, align 8, !dbg !889
  %182 = fcmp ogt double %181, 1.000000e-03, !dbg !891
  %183 = call i1 @fCmpInstHandler(double %181, double 1.000000e-03, i1 %182, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065477664, i32 835, i32 13), !dbg !892
  br i1 %183, label %184, label %189, !dbg !892

; <label>:184:                                    ; preds = %180
  %185 = load i32, i32* %6, align 4, !dbg !893
  %186 = sitofp i32 %185 to double, !dbg !893
  %187 = fadd double %186, 1.000000e+00, !dbg !895
  call void @fAddHandler(double %186, double 1.000000e+00, double %187, i64 94495065479064, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065480768, i32 835, i32 43), !dbg !896
  %188 = call i32 @gsl_sf_psi_n_e(i32 4, double %187, %struct.gsl_sf_result_struct* %45), !dbg !896
  br label %189, !dbg !896

; <label>:189:                                    ; preds = %184, %180
  %190 = load double, double* %31, align 8, !dbg !897
  %191 = fcmp ogt double %190, 5.000000e-03, !dbg !899
  %192 = call i1 @fCmpInstHandler(double %190, double 5.000000e-03, i1 %191, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065483776, i32 836, i32 13), !dbg !900
  br i1 %192, label %193, label %198, !dbg !900

; <label>:193:                                    ; preds = %189
  %194 = load i32, i32* %6, align 4, !dbg !901
  %195 = sitofp i32 %194 to double, !dbg !901
  %196 = fadd double %195, 1.000000e+00, !dbg !903
  call void @fAddHandler(double %195, double 1.000000e+00, double %196, i64 94495065485176, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065486880, i32 836, i32 43), !dbg !904
  %197 = call i32 @gsl_sf_psi_n_e(i32 5, double %196, %struct.gsl_sf_result_struct* %46), !dbg !904
  br label %198, !dbg !904

; <label>:198:                                    ; preds = %193, %189
  %199 = load double, double* %31, align 8, !dbg !905
  %200 = fcmp ogt double %199, 1.000000e-02, !dbg !907
  %201 = call i1 @fCmpInstHandler(double %199, double 1.000000e-02, i1 %200, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065489824, i32 837, i32 13), !dbg !908
  br i1 %201, label %202, label %207, !dbg !908

; <label>:202:                                    ; preds = %198
  %203 = load i32, i32* %6, align 4, !dbg !909
  %204 = sitofp i32 %203 to double, !dbg !909
  %205 = fadd double %204, 1.000000e+00, !dbg !911
  call void @fAddHandler(double %204, double 1.000000e+00, double %205, i64 94495065491224, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065492928, i32 837, i32 43), !dbg !912
  %206 = call i32 @gsl_sf_psi_n_e(i32 6, double %205, %struct.gsl_sf_result_struct* %47), !dbg !912
  br label %207, !dbg !912

; <label>:207:                                    ; preds = %202, %198
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !913
  %209 = load double, double* %208, align 8, !dbg !913
  store double %209, double* %32, align 8, !dbg !914
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !915
  %211 = load double, double* %210, align 8, !dbg !915
  %212 = fdiv double %211, 2.000000e+00, !dbg !916
  call void @fDivHandler(double %211, double 2.000000e+00, double %212, i64 94495065498392, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065500096, i32 839, i32 19), !dbg !917
  store double %212, double* %33, align 8, !dbg !917
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !918
  %214 = load double, double* %213, align 8, !dbg !918
  %215 = fdiv double %214, 6.000000e+00, !dbg !919
  call void @fDivHandler(double %214, double 6.000000e+00, double %215, i64 94495065501320, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065503024, i32 840, i32 19), !dbg !920
  store double %215, double* %34, align 8, !dbg !920
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !921
  %217 = load double, double* %216, align 8, !dbg !921
  %218 = fdiv double %217, 2.400000e+01, !dbg !922
  call void @fDivHandler(double %217, double 2.400000e+01, double %218, i64 94495065504248, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065505952, i32 841, i32 19), !dbg !923
  store double %218, double* %35, align 8, !dbg !923
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !924
  %220 = load double, double* %219, align 8, !dbg !924
  %221 = fdiv double %220, 1.200000e+02, !dbg !925
  call void @fDivHandler(double %220, double 1.200000e+02, double %221, i64 94495065507176, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065508880, i32 842, i32 19), !dbg !926
  store double %221, double* %36, align 8, !dbg !926
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !927
  %223 = load double, double* %222, align 8, !dbg !927
  %224 = fdiv double %223, 7.200000e+02, !dbg !928
  call void @fDivHandler(double %223, double 7.200000e+02, double %224, i64 94495065510104, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065511808, i32 843, i32 19), !dbg !929
  store double %224, double* %37, align 8, !dbg !929
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !930
  %226 = load double, double* %225, align 8, !dbg !930
  %227 = fdiv double %226, 5.040000e+03, !dbg !931
  call void @fDivHandler(double %226, double 5.040000e+03, double %227, i64 94495065513032, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065514736, i32 844, i32 19), !dbg !932
  store double %227, double* %38, align 8, !dbg !932
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !933
  %229 = load double, double* %228, align 8, !dbg !933
  %230 = load double, double* %7, align 8, !dbg !934
  %231 = load double, double* %32, align 8, !dbg !935
  %232 = load double, double* %7, align 8, !dbg !936
  %233 = load double, double* %33, align 8, !dbg !937
  %234 = load double, double* %7, align 8, !dbg !938
  %235 = load double, double* %34, align 8, !dbg !939
  %236 = load double, double* %7, align 8, !dbg !940
  %237 = load double, double* %35, align 8, !dbg !941
  %238 = load double, double* %7, align 8, !dbg !942
  %239 = load double, double* %36, align 8, !dbg !943
  %240 = load double, double* %7, align 8, !dbg !944
  %241 = load double, double* %37, align 8, !dbg !945
  %242 = load double, double* %7, align 8, !dbg !946
  %243 = load double, double* %38, align 8, !dbg !947
  %244 = fmul double %242, %243, !dbg !948
  call void @fMulHandler(double %242, double %243, double %244, i64 94495065522216, i64 94495065522600, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065523008, i32 845, i32 73), !dbg !949
  %245 = fsub double %241, %244, !dbg !949
  call void @fSubHandler(double %241, double %244, double %245, i64 94495065521832, i64 94495065523008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065523424, i32 845, i32 69), !dbg !950
  %246 = fmul double %240, %245, !dbg !950
  call void @fMulHandler(double %240, double %245, double %246, i64 94495065521448, i64 94495065523424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065523840, i32 845, i32 65), !dbg !951
  %247 = fsub double %239, %246, !dbg !951
  call void @fSubHandler(double %239, double %246, double %247, i64 94495065521064, i64 94495065523840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065524256, i32 845, i32 61), !dbg !952
  %248 = fmul double %238, %247, !dbg !952
  call void @fMulHandler(double %238, double %247, double %248, i64 94495065520680, i64 94495065524256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065524672, i32 845, i32 57), !dbg !953
  %249 = fsub double %237, %248, !dbg !953
  call void @fSubHandler(double %237, double %248, double %249, i64 94495065520296, i64 94495065524672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065525088, i32 845, i32 53), !dbg !954
  %250 = fmul double %236, %249, !dbg !954
  call void @fMulHandler(double %236, double %249, double %250, i64 94495065519912, i64 94495065525088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065525504, i32 845, i32 49), !dbg !955
  %251 = fsub double %235, %250, !dbg !955
  call void @fSubHandler(double %235, double %250, double %251, i64 94495065519528, i64 94495065525504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065525920, i32 845, i32 45), !dbg !956
  %252 = fmul double %234, %251, !dbg !956
  call void @fMulHandler(double %234, double %251, double %252, i64 94495065519144, i64 94495065525920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065526336, i32 845, i32 41), !dbg !957
  %253 = fsub double %233, %252, !dbg !957
  call void @fSubHandler(double %233, double %252, double %253, i64 94495065518760, i64 94495065526336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065526752, i32 845, i32 37), !dbg !958
  %254 = fmul double %232, %253, !dbg !958
  call void @fMulHandler(double %232, double %253, double %254, i64 94495065518376, i64 94495065526752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065527168, i32 845, i32 33), !dbg !959
  %255 = fsub double %231, %254, !dbg !959
  call void @fSubHandler(double %231, double %254, double %255, i64 94495065517992, i64 94495065527168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065527584, i32 845, i32 29), !dbg !960
  %256 = fmul double %230, %255, !dbg !960
  call void @fMulHandler(double %230, double %255, double %256, i64 94495065517608, i64 94495065527584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065528000, i32 845, i32 25), !dbg !961
  %257 = fsub double %229, %256, !dbg !961
  call void @fSubHandler(double %229, double %256, double %257, i64 94495065515960, i64 94495065528000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065528416, i32 845, i32 21), !dbg !962
  store double %257, double* %39, align 8, !dbg !962
  %258 = load double, double* %39, align 8, !dbg !963
  %259 = fsub double -0.000000e+00, %258, !dbg !964
  call void @fSubHandler(double -0.000000e+00, double %258, double %259, i64 0, i64 94495065529224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065529696, i32 851, i32 9), !dbg !965
  %260 = load double, double* %30, align 8, !dbg !965
  %261 = call double @log(double %260) #6, !dbg !966
  call void @callOneArgHandler(i32 12, double %260, double %261, i64 94495065530088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065530560, i32 851, i32 20), !dbg !967
  %262 = fsub double %259, %261, !dbg !967
  call void @fSubHandler(double %259, double %261, double %262, i64 94495065529696, i64 94495065530560, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065531040, i32 851, i32 18), !dbg !968
  store double %262, double* %23, align 8, !dbg !968
  %263 = load double, double* %23, align 8, !dbg !969
  %264 = load double, double* %7, align 8, !dbg !970
  %265 = call double @fabs(double %264) #1, !dbg !971
  %266 = call double @log(double %265) #6, !dbg !972
  call void @callOneArgHandler(i32 12, double %265, double %266, i64 94495065532704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065415776, i32 853, i32 20), !dbg !974
  %267 = fsub double %263, %266, !dbg !974
  call void @fSubHandler(double %263, double %266, double %267, i64 94495065531848, i64 94495065415776, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065416256, i32 853, i32 18), !dbg !975
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !975
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 0, !dbg !976
  store double %267, double* %269, align 8, !dbg !977
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !978
  %271 = load double, double* %270, align 8, !dbg !978
  %272 = load double, double* %23, align 8, !dbg !979
  %273 = call double @fabs(double %272) #1, !dbg !980
  %274 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !981
  %275 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %274, i32 0, i32 0, !dbg !982
  %276 = load double, double* %275, align 8, !dbg !982
  %277 = call double @fabs(double %276) #1, !dbg !983
  %278 = fadd double %273, %277, !dbg !984
  call void @fAddHandler(double %273, double %277, double %278, i64 94495065540000, i64 94495065543024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065543504, i32 854, i32 58), !dbg !985
  %279 = fmul double 0x3CC0000000000000, %278, !dbg !985
  call void @fMulHandler(double 0x3CC0000000000000, double %278, double %279, i64 0, i64 94495065543504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065543920, i32 854, i32 47), !dbg !986
  %280 = fadd double %271, %279, !dbg !986
  call void @fAddHandler(double %271, double %279, double %280, i64 94495065537880, i64 94495065543920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065544336, i32 854, i32 23), !dbg !987
  %281 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !987
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %281, i32 0, i32 1, !dbg !988
  store double %280, double* %282, align 8, !dbg !989
  %283 = load i32, i32* %6, align 4, !dbg !990
  %284 = and i32 %283, 1, !dbg !990
  %285 = icmp ne i32 %284, 0, !dbg !990
  %286 = sext i32 %284 to i64, !dbg !990
  %287 = call i1 @iCmpInstHandler(i64 %286, i64 0, i1 %285, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065548064, i32 856, i32 14), !dbg !990
  %288 = select i1 %287, double -1.000000e+00, double 1.000000e+00, !dbg !990
  %289 = load double, double* %7, align 8, !dbg !991
  %290 = fcmp ogt double %289, 0.000000e+00, !dbg !992
  %291 = call i1 @fCmpInstHandler(double %289, double 0.000000e+00, i1 %290, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065548720, i32 856, i32 51), !dbg !991
  %292 = select i1 %291, double 1.000000e+00, double -1.000000e+00, !dbg !991
  %293 = fmul double %288, %292, !dbg !993
  call void @fMulHandler(double %288, double %292, double %293, i64 94495065548248, i64 94495065549192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94495065550864, i32 856, i32 43), !dbg !994
  %294 = load double*, double** %9, align 8, !dbg !994
  store double %293, double* %294, align 8, !dbg !995
  store i32 0, i32* %5, align 4, !dbg !996
  br label %295, !dbg !996

; <label>:295:                                    ; preds = %207, %64, %58, %57
  %296 = load i32, i32* %5, align 4, !dbg !997
  ret i32 %296, !dbg !997
}

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !998 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !999, metadata !107), !dbg !1000
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1001, metadata !107), !dbg !1002
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1003, metadata !107), !dbg !1004
  %16 = load double, double* %5, align 8, !dbg !1005
  %17 = fsub double %16, 1.000000e+00, !dbg !1007
  call void @fSubHandler(double %16, double 1.000000e+00, double %17, i64 94495065033112, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065558608, i32 1187, i32 13), !dbg !1008
  %18 = call double @fabs(double %17) #1, !dbg !1008
  %19 = fcmp olt double %18, 1.000000e-02, !dbg !1009
  %20 = call i1 @fCmpInstHandler(double %18, double 1.000000e-02, i1 %19, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065559424, i32 1187, i32 20), !dbg !1010
  br i1 %20, label %21, label %37, !dbg !1010

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1011, metadata !107), !dbg !1013
  %22 = load double, double* %5, align 8, !dbg !1014
  %23 = fsub double %22, 1.000000e+00, !dbg !1015
  call void @fSubHandler(double %22, double 1.000000e+00, double %23, i64 94495065561560, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065561968, i32 1188, i32 33), !dbg !1016
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1016
  %25 = call i32 @lngamma_1_pade(double %23, %struct.gsl_sf_result_struct* %24), !dbg !1017
  store i32 %25, i32* %8, align 4, !dbg !1013
  %26 = load double, double* %5, align 8, !dbg !1018
  %27 = fsub double %26, 1.000000e+00, !dbg !1019
  call void @fSubHandler(double %26, double 1.000000e+00, double %27, i64 94495065564952, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065565360, i32 1189, i32 53), !dbg !1020
  %28 = call double @fabs(double %27) #1, !dbg !1020
  %29 = fadd double 0x3CB0000000000000, %28, !dbg !1021
  call void @fAddHandler(double 0x3CB0000000000000, double %28, double %29, i64 0, i64 94495065565808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065566288, i32 1189, i32 44), !dbg !1022
  %30 = fdiv double 1.000000e+00, %29, !dbg !1022
  call void @fDivHandler(double 1.000000e+00, double %29, double %30, i64 0, i64 94495065566288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065566736, i32 1189, i32 26), !dbg !1023
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1023
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1024
  %33 = load double, double* %32, align 8, !dbg !1025
  %34 = fmul double %33, %30, !dbg !1025
  call void @fMulHandler(double %33, double %30, double %34, i64 94495065567928, i64 94495065566736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065568336, i32 1189, i32 20), !dbg !1025
  store double %34, double* %32, align 8, !dbg !1025
  %35 = load double*, double** %7, align 8, !dbg !1026
  store double 1.000000e+00, double* %35, align 8, !dbg !1027
  %36 = load i32, i32* %8, align 4, !dbg !1028
  store i32 %36, i32* %4, align 4, !dbg !1029
  br label %189, !dbg !1029

; <label>:37:                                     ; preds = %3
  %38 = load double, double* %5, align 8, !dbg !1030
  %39 = fsub double %38, 2.000000e+00, !dbg !1032
  call void @fSubHandler(double %38, double 2.000000e+00, double %39, i64 94495065573512, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065573888, i32 1193, i32 18), !dbg !1033
  %40 = call double @fabs(double %39) #1, !dbg !1033
  %41 = fcmp olt double %40, 1.000000e-02, !dbg !1034
  %42 = call i1 @fCmpInstHandler(double %40, double 1.000000e-02, i1 %41, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065574848, i32 1193, i32 25), !dbg !1035
  br i1 %42, label %43, label %59, !dbg !1035

; <label>:43:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1036, metadata !107), !dbg !1038
  %44 = load double, double* %5, align 8, !dbg !1039
  %45 = fsub double %44, 2.000000e+00, !dbg !1040
  call void @fSubHandler(double %44, double 2.000000e+00, double %45, i64 94495065576984, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065577392, i32 1194, i32 32), !dbg !1041
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1041
  %47 = call i32 @lngamma_2_pade(double %45, %struct.gsl_sf_result_struct* %46), !dbg !1042
  store i32 %47, i32* %9, align 4, !dbg !1038
  %48 = load double, double* %5, align 8, !dbg !1043
  %49 = fsub double %48, 2.000000e+00, !dbg !1044
  call void @fSubHandler(double %48, double 2.000000e+00, double %49, i64 94495065580376, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065580784, i32 1195, i32 53), !dbg !1045
  %50 = call double @fabs(double %49) #1, !dbg !1045
  %51 = fadd double 0x3CB0000000000000, %50, !dbg !1046
  call void @fAddHandler(double 0x3CB0000000000000, double %50, double %51, i64 0, i64 94495065581232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065581712, i32 1195, i32 44), !dbg !1047
  %52 = fdiv double 1.000000e+00, %51, !dbg !1047
  call void @fDivHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94495065581712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065582160, i32 1195, i32 26), !dbg !1048
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1048
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !1049
  %55 = load double, double* %54, align 8, !dbg !1050
  %56 = fmul double %55, %52, !dbg !1050
  call void @fMulHandler(double %55, double %52, double %56, i64 94495065583352, i64 94495065582160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065583760, i32 1195, i32 20), !dbg !1050
  store double %56, double* %54, align 8, !dbg !1050
  %57 = load double*, double** %7, align 8, !dbg !1051
  store double 1.000000e+00, double* %57, align 8, !dbg !1052
  %58 = load i32, i32* %9, align 4, !dbg !1053
  store i32 %58, i32* %4, align 4, !dbg !1054
  br label %189, !dbg !1054

; <label>:59:                                     ; preds = %37
  %60 = load double, double* %5, align 8, !dbg !1055
  %61 = fcmp oge double %60, 5.000000e-01, !dbg !1057
  %62 = call i1 @fCmpInstHandler(double %60, double 5.000000e-01, i1 %61, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065589168, i32 1199, i32 13), !dbg !1058
  br i1 %62, label %63, label %68, !dbg !1058

; <label>:63:                                     ; preds = %59
  %64 = load double*, double** %7, align 8, !dbg !1059
  store double 1.000000e+00, double* %64, align 8, !dbg !1061
  %65 = load double, double* %5, align 8, !dbg !1062
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1063
  %67 = call i32 @lngamma_lanczos(double %65, %struct.gsl_sf_result_struct* %66), !dbg !1064
  store i32 %67, i32* %4, align 4, !dbg !1065
  br label %189, !dbg !1065

; <label>:68:                                     ; preds = %59
  %69 = load double, double* %5, align 8, !dbg !1066
  %70 = fcmp oeq double %69, 0.000000e+00, !dbg !1068
  %71 = call i1 @fCmpInstHandler(double %69, double 0.000000e+00, i1 %70, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065594688, i32 1203, i32 13), !dbg !1069
  br i1 %71, label %72, label %82, !dbg !1069

; <label>:72:                                     ; preds = %68
  %73 = load double*, double** %7, align 8, !dbg !1070
  store double 0.000000e+00, double* %73, align 8, !dbg !1072
  br label %74, !dbg !1073, !llvm.loop !1074

; <label>:74:                                     ; preds = %72
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1075
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !1075
  store double 0x7FF8000000000000, double* %76, align 8, !dbg !1075
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1075
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !1075
  store double 0x7FF8000000000000, double* %78, align 8, !dbg !1075
  br label %79, !dbg !1075, !llvm.loop !1078

; <label>:79:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1205, i32 1), !dbg !1080
  store i32 1, i32* %4, align 4, !dbg !1080
  br label %189, !dbg !1080
                                                  ; No predecessors!
  br label %81, !dbg !1083

; <label>:81:                                     ; preds = %80
  br label %186, !dbg !1085

; <label>:82:                                     ; preds = %68
  %83 = load double, double* %5, align 8, !dbg !1086
  %84 = call double @fabs(double %83) #1, !dbg !1088
  %85 = fcmp olt double %84, 2.000000e-02, !dbg !1089
  %86 = call i1 @fCmpInstHandler(double %84, double 2.000000e-02, i1 %85, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065604768, i32 1207, i32 19), !dbg !1090
  br i1 %86, label %87, label %92, !dbg !1090

; <label>:87:                                     ; preds = %82
  %88 = load double, double* %5, align 8, !dbg !1091
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1093
  %90 = load double*, double** %7, align 8, !dbg !1094
  %91 = call i32 @lngamma_sgn_0(double %88, %struct.gsl_sf_result_struct* %89, double* %90), !dbg !1095
  store i32 %91, i32* %4, align 4, !dbg !1096
  br label %189, !dbg !1096

; <label>:92:                                     ; preds = %82
  %93 = load double, double* %5, align 8, !dbg !1097
  %94 = fcmp ogt double %93, 0xC3045F306DC9C883, !dbg !1099
  %95 = call i1 @fCmpInstHandler(double %93, double 0xC3045F306DC9C883, i1 %94, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065609904, i32 1210, i32 13), !dbg !1100
  br i1 %95, label %96, label %176, !dbg !1100

; <label>:96:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata double* %10, metadata !1101, metadata !107), !dbg !1103
  %97 = load double, double* %5, align 8, !dbg !1104
  %98 = fsub double 1.000000e+00, %97, !dbg !1105
  call void @fSubHandler(double 1.000000e+00, double %97, double %98, i64 0, i64 94495065612072, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065612480, i32 1214, i32 20), !dbg !1103
  store double %98, double* %10, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata double* %11, metadata !1106, metadata !107), !dbg !1107
  %99 = load double, double* %5, align 8, !dbg !1108
  %100 = fmul double 0x400921FB54442D18, %99, !dbg !1109
  call void @fMulHandler(double 0x400921FB54442D18, double %99, double %100, i64 0, i64 94495065615640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065616016, i32 1215, i32 24), !dbg !1110
  %101 = call double @sin(double %100) #6, !dbg !1110
  call void @callOneArgHandler(i32 1, double %100, double %101, i64 94495065616016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065616496, i32 1215, i32 16), !dbg !1107
  store double %101, double* %11, align 8, !dbg !1107
  call void @llvm.dbg.declare(metadata double* %12, metadata !1111, metadata !107), !dbg !1112
  %102 = load double, double* %11, align 8, !dbg !1113
  %103 = call double @fabs(double %102) #1, !dbg !1114
  store double %103, double* %12, align 8, !dbg !1112
  %104 = load double, double* %11, align 8, !dbg !1115
  %105 = fcmp oeq double %104, 0.000000e+00, !dbg !1117
  %106 = call i1 @fCmpInstHandler(double %104, double 0.000000e+00, i1 %105, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065622736, i32 1217, i32 10), !dbg !1118
  br i1 %106, label %107, label %117, !dbg !1118

; <label>:107:                                    ; preds = %96
  %108 = load double*, double** %7, align 8, !dbg !1119
  store double 0.000000e+00, double* %108, align 8, !dbg !1121
  br label %109, !dbg !1122, !llvm.loop !1123

; <label>:109:                                    ; preds = %107
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1124
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !1124
  store double 0x7FF8000000000000, double* %111, align 8, !dbg !1124
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1124
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !1124
  store double 0x7FF8000000000000, double* %113, align 8, !dbg !1124
  br label %114, !dbg !1124, !llvm.loop !1127

; <label>:114:                                    ; preds = %109
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1219, i32 1), !dbg !1129
  store i32 1, i32* %4, align 4, !dbg !1129
  br label %189, !dbg !1129
                                                  ; No predecessors!
  br label %116, !dbg !1132

; <label>:116:                                    ; preds = %115
  br label %175, !dbg !1134

; <label>:117:                                    ; preds = %96
  %118 = load double, double* %12, align 8, !dbg !1135
  %119 = fcmp olt double %118, 0x3FA8209F5B22BAA6, !dbg !1137
  %120 = call i1 @fCmpInstHandler(double %118, double 0x3FA8209F5B22BAA6, i1 %119, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065632240, i32 1221, i32 16), !dbg !1138
  br i1 %120, label %121, label %148, !dbg !1138

; <label>:121:                                    ; preds = %117
  %122 = load double, double* %5, align 8, !dbg !1139
  %123 = fcmp olt double %122, 0xC1DFFFFFFF800000, !dbg !1142
  %124 = call i1 @fCmpInstHandler(double %122, double 0xC1DFFFFFFF800000, i1 %123, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065633696, i32 1223, i32 12), !dbg !1143
  br i1 %124, label %125, label %133, !dbg !1143

; <label>:125:                                    ; preds = %121
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1144
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !1146
  store double 0.000000e+00, double* %127, align 8, !dbg !1147
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1148
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !1149
  store double 0.000000e+00, double* %129, align 8, !dbg !1150
  %130 = load double*, double** %7, align 8, !dbg !1151
  store double 0.000000e+00, double* %130, align 8, !dbg !1152
  br label %131, !dbg !1153, !llvm.loop !1154

; <label>:131:                                    ; preds = %125
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1227, i32 18), !dbg !1155
  store i32 18, i32* %4, align 4, !dbg !1155
  br label %189, !dbg !1155
                                                  ; No predecessors!
  br label %147, !dbg !1158

; <label>:133:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1159, metadata !107), !dbg !1161
  %134 = load double, double* %5, align 8, !dbg !1162
  %135 = fsub double %134, 5.000000e-01, !dbg !1163
  call void @fSubHandler(double %134, double 5.000000e-01, double %135, i64 94495065642872, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065643280, i32 1230, i32 26), !dbg !1164
  %136 = fptosi double %135 to i32, !dbg !1164
  %137 = sub nsw i32 0, %136, !dbg !1165
  store i32 %137, i32* %13, align 4, !dbg !1161
  call void @llvm.dbg.declare(metadata double* %14, metadata !1166, metadata !107), !dbg !1167
  %138 = load double, double* %5, align 8, !dbg !1168
  %139 = load i32, i32* %13, align 4, !dbg !1169
  %140 = sitofp i32 %139 to double, !dbg !1169
  %141 = fadd double %138, %140, !dbg !1170
  call void @fAddHandler(double %138, double %140, double %141, i64 94495065649304, i64 94495065650040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065651712, i32 1231, i32 24), !dbg !1167
  store double %141, double* %14, align 8, !dbg !1167
  %142 = load i32, i32* %13, align 4, !dbg !1171
  %143 = load double, double* %14, align 8, !dbg !1172
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1173
  %145 = load double*, double** %7, align 8, !dbg !1174
  %146 = call i32 @lngamma_sgn_sing(i32 %142, double %143, %struct.gsl_sf_result_struct* %144, double* %145), !dbg !1175
  store i32 %146, i32* %4, align 4, !dbg !1176
  br label %189, !dbg !1176

; <label>:147:                                    ; preds = %132
  br label %174, !dbg !1177

; <label>:148:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1178, metadata !107), !dbg !1180
  %149 = load double, double* %10, align 8, !dbg !1181
  %150 = call i32 @lngamma_lanczos(double %149, %struct.gsl_sf_result_struct* %15), !dbg !1182
  %151 = load double, double* %11, align 8, !dbg !1183
  %152 = fcmp ogt double %151, 0.000000e+00, !dbg !1184
  %153 = call i1 @fCmpInstHandler(double %151, double 0.000000e+00, i1 %152, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065660768, i32 1238, i32 17), !dbg !1183
  %154 = select i1 %153, double 1.000000e+00, double -1.000000e+00, !dbg !1183
  %155 = load double*, double** %7, align 8, !dbg !1185
  store double %154, double* %155, align 8, !dbg !1186
  %156 = load double, double* %12, align 8, !dbg !1187
  %157 = call double @log(double %156) #6, !dbg !1188
  call void @callOneArgHandler(i32 12, double %156, double %157, i64 94495065663656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065664128, i32 1239, i32 34), !dbg !1189
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1189
  %159 = load double, double* %158, align 8, !dbg !1189
  %160 = fadd double %157, %159, !dbg !1190
  call void @fAddHandler(double %157, double %159, double %160, i64 94495065664128, i64 94495065665032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065666704, i32 1239, i32 42), !dbg !1191
  %161 = fsub double 0x3FF250D048E7A1BD, %160, !dbg !1191
  call void @fSubHandler(double 0x3FF250D048E7A1BD, double %160, double %161, i64 0, i64 94495065666704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065667120, i32 1239, i32 31), !dbg !1192
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1192
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !1193
  store double %161, double* %163, align 8, !dbg !1194
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1195
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 0, !dbg !1196
  %166 = load double, double* %165, align 8, !dbg !1196
  %167 = call double @fabs(double %166) #1, !dbg !1197
  %168 = fmul double 0x3CC0000000000000, %167, !dbg !1198
  call void @fMulHandler(double 0x3CC0000000000000, double %167, double %168, i64 0, i64 94495065671328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065671808, i32 1240, i32 46), !dbg !1199
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1199
  %170 = load double, double* %169, align 8, !dbg !1199
  %171 = fadd double %168, %170, !dbg !1200
  call void @fAddHandler(double %168, double %170, double %171, i64 94495065671808, i64 94495065672648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94495065674320, i32 1240, i32 69), !dbg !1201
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1201
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !1202
  store double %171, double* %173, align 8, !dbg !1203
  store i32 0, i32* %4, align 4, !dbg !1204
  br label %189, !dbg !1204

; <label>:174:                                    ; preds = %147
  br label %175

; <label>:175:                                    ; preds = %174, %116
  br label %184, !dbg !1205

; <label>:176:                                    ; preds = %92
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1206
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 0, !dbg !1208
  store double 0.000000e+00, double* %178, align 8, !dbg !1209
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1210
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 1, !dbg !1211
  store double 0.000000e+00, double* %180, align 8, !dbg !1212
  %181 = load double*, double** %7, align 8, !dbg !1213
  store double 0.000000e+00, double* %181, align 8, !dbg !1214
  br label %182, !dbg !1215, !llvm.loop !1216

; <label>:182:                                    ; preds = %176
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1249, i32 18), !dbg !1217
  store i32 18, i32* %4, align 4, !dbg !1217
  br label %189, !dbg !1217
                                                  ; No predecessors!
  br label %184

; <label>:184:                                    ; preds = %183, %175
  br label %185

; <label>:185:                                    ; preds = %184
  br label %186

; <label>:186:                                    ; preds = %185, %81
  br label %187

; <label>:187:                                    ; preds = %186
  br label %188

; <label>:188:                                    ; preds = %187
  br label %189

; <label>:189:                                    ; preds = %188, %182, %148, %133, %131, %114, %87, %79, %63, %43, %21
  %190 = load i32, i32* %4, align 4, !dbg !1220
  ret i32 %190, !dbg !1220
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gamma_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1221 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1222, metadata !107), !dbg !1223
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1224, metadata !107), !dbg !1225
  %15 = load double, double* %4, align 8, !dbg !1226
  %16 = fcmp olt double %15, 5.000000e-01, !dbg !1228
  %17 = call i1 @fCmpInstHandler(double %15, double 5.000000e-01, i1 %16, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065690960, i32 1257, i32 8), !dbg !1229
  br i1 %17, label %18, label %136, !dbg !1229

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1230, metadata !107), !dbg !1232
  %19 = load double, double* %4, align 8, !dbg !1233
  %20 = fadd double %19, 5.000000e-01, !dbg !1234
  call void @fAddHandler(double %19, double 5.000000e-01, double %20, i64 94495065692952, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065693360, i32 1258, i32 30), !dbg !1235
  %21 = call double @floor(double %20) #1, !dbg !1235
  %22 = fptosi double %21 to i32, !dbg !1236
  store i32 %22, i32* %6, align 4, !dbg !1232
  call void @llvm.dbg.declare(metadata double* %7, metadata !1237, metadata !107), !dbg !1238
  %23 = load double, double* %4, align 8, !dbg !1239
  %24 = load i32, i32* %6, align 4, !dbg !1240
  %25 = sitofp i32 %24 to double, !dbg !1240
  %26 = fsub double %23, %25, !dbg !1241
  call void @fSubHandler(double %23, double %25, double %26, i64 94495065697800, i64 94495065698536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065700208, i32 1259, i32 20), !dbg !1238
  store double %26, double* %7, align 8, !dbg !1238
  call void @llvm.dbg.declare(metadata double* %8, metadata !1242, metadata !107), !dbg !1243
  %27 = load i32, i32* %6, align 4, !dbg !1244
  %28 = and i32 %27, 1, !dbg !1244
  %29 = icmp ne i32 %28, 0, !dbg !1244
  %30 = xor i1 %29, true, !dbg !1244
  %31 = select i1 %30, double 1.000000e+00, double -1.000000e+00, !dbg !1244
  store double %31, double* %8, align 8, !dbg !1243
  call void @llvm.dbg.declare(metadata double* %9, metadata !1245, metadata !107), !dbg !1246
  %32 = load double, double* %8, align 8, !dbg !1247
  %33 = load double, double* %7, align 8, !dbg !1248
  %34 = fmul double 0x400921FB54442D18, %33, !dbg !1249
  call void @fMulHandler(double 0x400921FB54442D18, double %33, double %34, i64 0, i64 94495065709048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065709456, i32 1261, i32 44), !dbg !1250
  %35 = call double @sin(double %34) #6, !dbg !1250
  call void @callOneArgHandler(i32 1, double %34, double %35, i64 94495065709456, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065709936, i32 1261, i32 35), !dbg !1251
  %36 = fmul double %32, %35, !dbg !1251
  call void @fMulHandler(double %32, double %35, double %36, i64 94495065708696, i64 94495065709936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065710416, i32 1261, i32 33), !dbg !1252
  %37 = fdiv double %36, 0x400921FB54442D18, !dbg !1252
  call void @fDivHandler(double %36, double 0x400921FB54442D18, double %37, i64 94495065710416, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065710832, i32 1261, i32 51), !dbg !1246
  store double %37, double* %9, align 8, !dbg !1246
  %38 = load double, double* %9, align 8, !dbg !1253
  %39 = fcmp oeq double %38, 0.000000e+00, !dbg !1255
  %40 = call i1 @fCmpInstHandler(double %38, double 0.000000e+00, i1 %39, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065713312, i32 1263, i32 17), !dbg !1256
  br i1 %40, label %41, label %50, !dbg !1256

; <label>:41:                                     ; preds = %18
  br label %42, !dbg !1257, !llvm.loop !1259

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1260
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !1260
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !1260
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1260
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1260
  store double 0x7FF8000000000000, double* %46, align 8, !dbg !1260
  br label %47, !dbg !1260, !llvm.loop !1263

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1264, i32 1), !dbg !1265
  store i32 1, i32* %3, align 4, !dbg !1265
  br label %140, !dbg !1265
                                                  ; No predecessors!
  br label %49, !dbg !1268

; <label>:49:                                     ; preds = %48
  br label %135, !dbg !1270

; <label>:50:                                     ; preds = %18
  %51 = load double, double* %4, align 8, !dbg !1271
  %52 = fcmp ogt double %51, -1.690000e+02, !dbg !1273
  %53 = call i1 @fCmpInstHandler(double %51, double -1.690000e+02, i1 %52, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065722256, i32 1266, i32 15), !dbg !1274
  br i1 %53, label %54, label %106, !dbg !1274

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1275, metadata !107), !dbg !1277
  %55 = load double, double* %4, align 8, !dbg !1278
  %56 = fsub double 1.000000e+00, %55, !dbg !1279
  call void @fSubHandler(double 1.000000e+00, double %55, double %56, i64 0, i64 94495065724392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065724800, i32 1268, i32 24), !dbg !1280
  %57 = call i32 @gamma_xgthalf(double %56, %struct.gsl_sf_result_struct* %10), !dbg !1280
  %58 = load double, double* %9, align 8, !dbg !1281
  %59 = call double @fabs(double %58) #1, !dbg !1283
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1284
  %61 = load double, double* %60, align 8, !dbg !1284
  %62 = fmul double %59, %61, !dbg !1285
  call void @fMulHandler(double %59, double %61, double %62, i64 94495065726432, i64 94495065727336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065729008, i32 1269, i32 25), !dbg !1286
  %63 = fmul double %62, 0x10000000000000, !dbg !1286
  call void @fMulHandler(double %62, double 0x10000000000000, double %63, i64 94495065729008, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065729488, i32 1269, i32 33), !dbg !1287
  %64 = fcmp olt double %63, 1.000000e+00, !dbg !1287
  %65 = call i1 @fCmpInstHandler(double %63, double 1.000000e+00, i1 %64, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065729936, i32 1269, i32 47), !dbg !1288
  br i1 %65, label %66, label %96, !dbg !1288

; <label>:66:                                     ; preds = %54
  %67 = load double, double* %9, align 8, !dbg !1289
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1291
  %69 = load double, double* %68, align 8, !dbg !1291
  %70 = fmul double %67, %69, !dbg !1292
  call void @fMulHandler(double %67, double %69, double %70, i64 94495065731016, i64 94495065731784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065733456, i32 1270, i32 38), !dbg !1293
  %71 = fdiv double 1.000000e+00, %70, !dbg !1293
  call void @fDivHandler(double 1.000000e+00, double %70, double %71, i64 0, i64 94495065733456, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065733904, i32 1270, i32 27), !dbg !1294
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1294
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1295
  store double %71, double* %73, align 8, !dbg !1296
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1297
  %75 = load double, double* %74, align 8, !dbg !1297
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1298
  %77 = load double, double* %76, align 8, !dbg !1298
  %78 = fdiv double %75, %77, !dbg !1299
  call void @fDivHandler(double %75, double %77, double %78, i64 94495065735960, i64 94495065738056, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065739728, i32 1271, i32 34), !dbg !1300
  %79 = call double @fabs(double %78) #1, !dbg !1300
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1301
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1302
  %82 = load double, double* %81, align 8, !dbg !1302
  %83 = call double @fabs(double %82) #1, !dbg !1303
  %84 = fmul double %79, %83, !dbg !1305
  call void @fMulHandler(double %79, double %83, double %84, i64 94495065740208, i64 94495065743232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065743712, i32 1271, i32 42), !dbg !1306
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1306
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1307
  store double %84, double* %86, align 8, !dbg !1308
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1309
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1310
  %89 = load double, double* %88, align 8, !dbg !1310
  %90 = call double @fabs(double %89) #1, !dbg !1311
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !1312
  call void @fMulHandler(double 0x3CC0000000000000, double %90, double %91, i64 0, i64 94495065747920, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065748400, i32 1272, i32 46), !dbg !1313
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1313
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !1314
  %94 = load double, double* %93, align 8, !dbg !1315
  %95 = fadd double %94, %91, !dbg !1315
  call void @fAddHandler(double %94, double %91, double %95, i64 94495065749624, i64 94495065748400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065750032, i32 1272, i32 21), !dbg !1315
  store double %95, double* %93, align 8, !dbg !1315
  store i32 0, i32* %3, align 4, !dbg !1316
  br label %140, !dbg !1316

; <label>:96:                                     ; preds = %54
  br label %97, !dbg !1317, !llvm.loop !1319

; <label>:97:                                     ; preds = %96
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1320
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !1320
  store double 0.000000e+00, double* %99, align 8, !dbg !1320
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1320
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !1320
  store double 0x10000000000000, double* %101, align 8, !dbg !1320
  br label %102, !dbg !1320, !llvm.loop !1323

; <label>:102:                                    ; preds = %97
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1276, i32 15), !dbg !1325
  store i32 15, i32* %3, align 4, !dbg !1325
  br label %140, !dbg !1325
                                                  ; No predecessors!
  br label %104, !dbg !1328

; <label>:104:                                    ; preds = %103
  br label %105

; <label>:105:                                    ; preds = %104
  br label %134, !dbg !1330

; <label>:106:                                    ; preds = %50
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1331, metadata !107), !dbg !1333
  call void @llvm.dbg.declare(metadata double* %12, metadata !1334, metadata !107), !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1336, metadata !107), !dbg !1337
  %107 = load double, double* %4, align 8, !dbg !1338
  %108 = call i32 @gsl_sf_lngamma_sgn_e(double %107, %struct.gsl_sf_result_struct* %11, double* %12), !dbg !1339
  store i32 %108, i32* %13, align 4, !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1340, metadata !107), !dbg !1341
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1342
  %110 = load double, double* %109, align 8, !dbg !1342
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !1343
  %112 = load double, double* %111, align 8, !dbg !1343
  %113 = load double, double* %12, align 8, !dbg !1344
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1345
  %115 = call i32 @gsl_sf_exp_mult_err_e(double %110, double %112, double %113, double 0.000000e+00, %struct.gsl_sf_result_struct* %114), !dbg !1346
  store i32 %115, i32* %14, align 4, !dbg !1341
  %116 = load i32, i32* %14, align 4, !dbg !1347
  %117 = icmp ne i32 %116, 0, !dbg !1347
  %118 = sext i32 %116 to i64, !dbg !1347
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 0, i1 %117, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065776448, i32 1289, i32 14), !dbg !1347
  br i1 %119, label %120, label %122, !dbg !1347

; <label>:120:                                    ; preds = %106
  %121 = load i32, i32* %14, align 4, !dbg !1348
  br label %132, !dbg !1348

; <label>:122:                                    ; preds = %106
  %123 = load i32, i32* %13, align 4, !dbg !1350
  %124 = icmp ne i32 %123, 0, !dbg !1350
  %125 = sext i32 %123 to i64, !dbg !1350
  %126 = call i1 @iCmpInstHandler(i64 %125, i64 0, i1 %124, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94495065780992, i32 1289, i32 14), !dbg !1350
  br i1 %126, label %127, label %129, !dbg !1350

; <label>:127:                                    ; preds = %122
  %128 = load i32, i32* %13, align 4, !dbg !1352
  br label %130, !dbg !1352

; <label>:129:                                    ; preds = %122
  br label %130, !dbg !1354

; <label>:130:                                    ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ], !dbg !1356
  br label %132, !dbg !1356

; <label>:132:                                    ; preds = %130, %120
  %133 = phi i32 [ %121, %120 ], [ %131, %130 ], !dbg !1358
  store i32 %133, i32* %3, align 4, !dbg !1360
  br label %140, !dbg !1360

; <label>:134:                                    ; preds = %105
  br label %135

; <label>:135:                                    ; preds = %134, %49
  br label %140, !dbg !1361

; <label>:136:                                    ; preds = %2
  %137 = load double, double* %4, align 8, !dbg !1362
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1364
  %139 = call i32 @gamma_xgthalf(double %137, %struct.gsl_sf_result_struct* %138), !dbg !1365
  store i32 %139, i32* %3, align 4, !dbg !1366
  br label %140, !dbg !1366

; <label>:140:                                    ; preds = %136, %135, %132, %102, %66, %47
  %141 = load i32, i32* %3, align 4, !dbg !1367
  ret i32 %141, !dbg !1367
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @gamma_xgthalf(double, %struct.gsl_sf_result_struct*) #0 !dbg !1368 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
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
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1369, metadata !107), !dbg !1370
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1371, metadata !107), !dbg !1372
  %34 = load double, double* %4, align 8, !dbg !1373
  %35 = fcmp oeq double %34, 5.000000e-01, !dbg !1375
  %36 = call i1 @fCmpInstHandler(double %34, double 5.000000e-01, i1 %35, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065802720, i32 1023, i32 8), !dbg !1376
  br i1 %36, label %37, label %46, !dbg !1376

; <label>:37:                                     ; preds = %2
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1377
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !1379
  store double 0x3FFC5BF891B4EF6B, double* %39, align 8, !dbg !1380
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1381
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !1382
  %42 = load double, double* %41, align 8, !dbg !1382
  %43 = fmul double 0x3CB0000000000000, %42, !dbg !1383
  call void @fMulHandler(double 0x3CB0000000000000, double %42, double %43, i64 0, i64 94495065805784, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065807456, i32 1025, i32 35), !dbg !1384
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1384
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1385
  store double %43, double* %45, align 8, !dbg !1386
  store i32 0, i32* %3, align 4, !dbg !1387
  br label %256, !dbg !1387

; <label>:46:                                     ; preds = %2
  %47 = load double, double* %4, align 8, !dbg !1388
  %48 = fcmp ole double %47, 1.710000e+02, !dbg !1390
  %49 = call i1 @fCmpInstHandler(double %47, double 1.710000e+02, i1 %48, i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065811744, i32 1027, i32 16), !dbg !1391
  br i1 %49, label %50, label %74, !dbg !1391

; <label>:50:                                     ; preds = %46
  %51 = load double, double* %4, align 8, !dbg !1392
  %52 = load double, double* %4, align 8, !dbg !1394
  %53 = call double @floor(double %52) #1, !dbg !1395
  %54 = fcmp oeq double %51, %53, !dbg !1396
  %55 = call i1 @fCmpInstHandler(double %51, double %53, i1 %54, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065814096, i32 1027, i32 49), !dbg !1397
  br i1 %55, label %56, label %74, !dbg !1397

; <label>:56:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1398, metadata !107), !dbg !1400
  %57 = load double, double* %4, align 8, !dbg !1401
  %58 = call double @floor(double %57) #1, !dbg !1402
  %59 = fptosi double %58 to i32, !dbg !1403
  store i32 %59, i32* %6, align 4, !dbg !1400
  %60 = load i32, i32* %6, align 4, !dbg !1404
  %61 = sub nsw i32 %60, 1, !dbg !1405
  %62 = sext i32 %61 to i64, !dbg !1406
  %63 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %62, !dbg !1406
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1, !dbg !1407
  %65 = load double, double* %64, align 8, !dbg !1407
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1408
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !1409
  store double %65, double* %67, align 8, !dbg !1410
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1411
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !1412
  %70 = load double, double* %69, align 8, !dbg !1412
  %71 = fmul double 0x3CB0000000000000, %70, !dbg !1413
  call void @fMulHandler(double 0x3CB0000000000000, double %70, double %71, i64 0, i64 94495065826152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065827824, i32 1030, i32 35), !dbg !1414
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1414
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !1415
  store double %71, double* %73, align 8, !dbg !1416
  store i32 0, i32* %3, align 4, !dbg !1417
  br label %256, !dbg !1417

; <label>:74:                                     ; preds = %50, %46
  %75 = load double, double* %4, align 8, !dbg !1418
  %76 = fsub double %75, 1.000000e+00, !dbg !1420
  call void @fSubHandler(double %75, double 1.000000e+00, double %76, i64 94495065831528, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065831904, i32 1033, i32 18), !dbg !1421
  %77 = call double @fabs(double %76) #1, !dbg !1421
  %78 = fcmp olt double %77, 1.000000e-02, !dbg !1422
  %79 = call i1 @fCmpInstHandler(double %77, double 1.000000e-02, i1 %78, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065832864, i32 1033, i32 25), !dbg !1423
  br i1 %79, label %80, label %110, !dbg !1423

; <label>:80:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double* %7, metadata !1424, metadata !107), !dbg !1426
  %81 = load double, double* %4, align 8, !dbg !1427
  %82 = fsub double %81, 1.000000e+00, !dbg !1428
  call void @fSubHandler(double %81, double 1.000000e+00, double %82, i64 94495065835000, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065835408, i32 1036, i32 26), !dbg !1426
  store double %82, double* %7, align 8, !dbg !1426
  call void @llvm.dbg.declare(metadata double* %8, metadata !1429, metadata !107), !dbg !1430
  store double 0x3FDB0EE6072093CE, double* %8, align 8, !dbg !1430
  call void @llvm.dbg.declare(metadata double* %9, metadata !1431, metadata !107), !dbg !1432
  store double 0xBF8669CF713AA1E2, double* %9, align 8, !dbg !1432
  call void @llvm.dbg.declare(metadata double* %10, metadata !1433, metadata !107), !dbg !1434
  store double 0x3FB7AF73866DA4E8, double* %10, align 8, !dbg !1434
  call void @llvm.dbg.declare(metadata double* %11, metadata !1435, metadata !107), !dbg !1436
  store double 0xBF92B5DF55ED2958, double* %11, align 8, !dbg !1436
  call void @llvm.dbg.declare(metadata double* %12, metadata !1437, metadata !107), !dbg !1438
  store double 0x3F926FE278E930AE, double* %12, align 8, !dbg !1438
  call void @llvm.dbg.declare(metadata double* %13, metadata !1439, metadata !107), !dbg !1440
  store double 0xBF7C0FAC8A677A84, double* %13, align 8, !dbg !1440
  call void @llvm.dbg.declare(metadata double* %14, metadata !1441, metadata !107), !dbg !1442
  store double 0x3F7060754242E352, double* %14, align 8, !dbg !1442
  %83 = load double, double* %4, align 8, !dbg !1443
  %84 = fdiv double 1.000000e+00, %83, !dbg !1444
  call void @fDivHandler(double 1.000000e+00, double %83, double %84, i64 0, i64 94495065856920, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065857328, i32 1044, i32 22), !dbg !1445
  %85 = load double, double* %7, align 8, !dbg !1445
  %86 = load double, double* %7, align 8, !dbg !1446
  %87 = load double, double* %7, align 8, !dbg !1447
  %88 = load double, double* %7, align 8, !dbg !1448
  %89 = load double, double* %7, align 8, !dbg !1449
  %90 = load double, double* %7, align 8, !dbg !1450
  %91 = load double, double* %7, align 8, !dbg !1451
  %92 = fmul double %91, 0x3F7060754242E352, !dbg !1452
  call void @fMulHandler(double %91, double 0x3F7060754242E352, double %92, i64 94495065859992, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065860400, i32 1044, i32 78), !dbg !1453
  %93 = fadd double 0xBF7C0FAC8A677A84, %92, !dbg !1453
  call void @fAddHandler(double 0xBF7C0FAC8A677A84, double %92, double %93, i64 0, i64 94495065860400, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065860816, i32 1044, i32 74), !dbg !1454
  %94 = fmul double %90, %93, !dbg !1454
  call void @fMulHandler(double %90, double %93, double %94, i64 94495065859608, i64 94495065860816, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065861232, i32 1044, i32 70), !dbg !1455
  %95 = fadd double 0x3F926FE278E930AE, %94, !dbg !1455
  call void @fAddHandler(double 0x3F926FE278E930AE, double %94, double %95, i64 0, i64 94495065861232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065861648, i32 1044, i32 66), !dbg !1456
  %96 = fmul double %89, %95, !dbg !1456
  call void @fMulHandler(double %89, double %95, double %96, i64 94495065859224, i64 94495065861648, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065862064, i32 1044, i32 62), !dbg !1457
  %97 = fadd double 0xBF92B5DF55ED2958, %96, !dbg !1457
  call void @fAddHandler(double 0xBF92B5DF55ED2958, double %96, double %97, i64 0, i64 94495065862064, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065862480, i32 1044, i32 58), !dbg !1458
  %98 = fmul double %88, %97, !dbg !1458
  call void @fMulHandler(double %88, double %97, double %98, i64 94495065858840, i64 94495065862480, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065862896, i32 1044, i32 54), !dbg !1459
  %99 = fadd double 0x3FB7AF73866DA4E8, %98, !dbg !1459
  call void @fAddHandler(double 0x3FB7AF73866DA4E8, double %98, double %99, i64 0, i64 94495065862896, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065863312, i32 1044, i32 50), !dbg !1460
  %100 = fmul double %87, %99, !dbg !1460
  call void @fMulHandler(double %87, double %99, double %100, i64 94495065858456, i64 94495065863312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065863728, i32 1044, i32 46), !dbg !1461
  %101 = fadd double 0xBF8669CF713AA1E2, %100, !dbg !1461
  call void @fAddHandler(double 0xBF8669CF713AA1E2, double %100, double %101, i64 0, i64 94495065863728, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065864144, i32 1044, i32 42), !dbg !1462
  %102 = fmul double %86, %101, !dbg !1462
  call void @fMulHandler(double %86, double %101, double %102, i64 94495065858072, i64 94495065864144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065864560, i32 1044, i32 38), !dbg !1463
  %103 = fadd double 0x3FDB0EE6072093CE, %102, !dbg !1463
  call void @fAddHandler(double 0x3FDB0EE6072093CE, double %102, double %103, i64 0, i64 94495065864560, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065864976, i32 1044, i32 34), !dbg !1464
  %104 = fmul double %85, %103, !dbg !1464
  call void @fMulHandler(double %85, double %103, double %104, i64 94495065857688, i64 94495065864976, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065865392, i32 1044, i32 30), !dbg !1465
  %105 = fadd double %84, %104, !dbg !1465
  call void @fAddHandler(double %84, double %104, double %105, i64 94495065857328, i64 94495065865392, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065865808, i32 1044, i32 25), !dbg !1466
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1466
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !1467
  store double %105, double* %107, align 8, !dbg !1468
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1469
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !1470
  store double 0x3CB0000000000000, double* %109, align 8, !dbg !1471
  store i32 0, i32* %3, align 4, !dbg !1472
  br label %256, !dbg !1472

; <label>:110:                                    ; preds = %74
  %111 = load double, double* %4, align 8, !dbg !1473
  %112 = fsub double %111, 2.000000e+00, !dbg !1475
  call void @fSubHandler(double %111, double 2.000000e+00, double %112, i64 94495065870760, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065871136, i32 1048, i32 18), !dbg !1476
  %113 = call double @fabs(double %112) #1, !dbg !1476
  %114 = fcmp olt double %113, 1.000000e-02, !dbg !1477
  %115 = call i1 @fCmpInstHandler(double %113, double 1.000000e-02, i1 %114, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065872096, i32 1048, i32 25), !dbg !1478
  br i1 %115, label %116, label %147, !dbg !1478

; <label>:116:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata double* %15, metadata !1479, metadata !107), !dbg !1481
  %117 = load double, double* %4, align 8, !dbg !1482
  %118 = fsub double %117, 2.000000e+00, !dbg !1483
  call void @fSubHandler(double %117, double 2.000000e+00, double %118, i64 94495065874232, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065874640, i32 1051, i32 26), !dbg !1481
  store double %118, double* %15, align 8, !dbg !1481
  call void @llvm.dbg.declare(metadata double* %16, metadata !1484, metadata !107), !dbg !1485
  store double 0x3FDB0EE6072093CE, double* %16, align 8, !dbg !1485
  call void @llvm.dbg.declare(metadata double* %17, metadata !1486, metadata !107), !dbg !1487
  store double 0x3FDA5B978B96BEBF, double* %17, align 8, !dbg !1487
  call void @llvm.dbg.declare(metadata double* %18, metadata !1488, metadata !107), !dbg !1489
  store double 0x3FB4E239984650AC, double* %18, align 8, !dbg !1489
  call void @llvm.dbg.declare(metadata double* %19, metadata !1490, metadata !107), !dbg !1491
  store double 0x3FB301FBB0F25A92, double* %19, align 8, !dbg !1491
  call void @llvm.dbg.declare(metadata double* %20, metadata !1492, metadata !107), !dbg !1493
  store double 0xBF317F3740FE2A71, double* %20, align 8, !dbg !1493
  call void @llvm.dbg.declare(metadata double* %21, metadata !1494, metadata !107), !dbg !1495
  store double 0x3F86D7EEAC9EA41B, double* %21, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata double* %22, metadata !1496, metadata !107), !dbg !1497
  store double 0xBF675E6E90492E64, double* %22, align 8, !dbg !1497
  call void @llvm.dbg.declare(metadata double* %23, metadata !1498, metadata !107), !dbg !1499
  store double 0x3F613C449C85323D, double* %23, align 8, !dbg !1499
  %119 = load double, double* %15, align 8, !dbg !1500
  %120 = load double, double* %15, align 8, !dbg !1501
  %121 = load double, double* %15, align 8, !dbg !1502
  %122 = load double, double* %15, align 8, !dbg !1503
  %123 = load double, double* %15, align 8, !dbg !1504
  %124 = load double, double* %15, align 8, !dbg !1505
  %125 = load double, double* %15, align 8, !dbg !1506
  %126 = load double, double* %15, align 8, !dbg !1507
  %127 = fmul double %126, 0x3F613C449C85323D, !dbg !1508
  call void @fMulHandler(double %126, double 0x3F613C449C85323D, double %127, i64 94495065901960, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065902368, i32 1060, i32 84), !dbg !1509
  %128 = fadd double 0xBF675E6E90492E64, %127, !dbg !1509
  call void @fAddHandler(double 0xBF675E6E90492E64, double %127, double %128, i64 0, i64 94495065902368, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065902784, i32 1060, i32 80), !dbg !1510
  %129 = fmul double %125, %128, !dbg !1510
  call void @fMulHandler(double %125, double %128, double %129, i64 94495065901576, i64 94495065902784, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065903200, i32 1060, i32 76), !dbg !1511
  %130 = fadd double 0x3F86D7EEAC9EA41B, %129, !dbg !1511
  call void @fAddHandler(double 0x3F86D7EEAC9EA41B, double %129, double %130, i64 0, i64 94495065903200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065903616, i32 1060, i32 72), !dbg !1512
  %131 = fmul double %124, %130, !dbg !1512
  call void @fMulHandler(double %124, double %130, double %131, i64 94495065901192, i64 94495065903616, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065904032, i32 1060, i32 68), !dbg !1513
  %132 = fadd double 0xBF317F3740FE2A71, %131, !dbg !1513
  call void @fAddHandler(double 0xBF317F3740FE2A71, double %131, double %132, i64 0, i64 94495065904032, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065904448, i32 1060, i32 64), !dbg !1514
  %133 = fmul double %123, %132, !dbg !1514
  call void @fMulHandler(double %123, double %132, double %133, i64 94495065900808, i64 94495065904448, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065904864, i32 1060, i32 60), !dbg !1515
  %134 = fadd double 0x3FB301FBB0F25A92, %133, !dbg !1515
  call void @fAddHandler(double 0x3FB301FBB0F25A92, double %133, double %134, i64 0, i64 94495065904864, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065907344, i32 1060, i32 56), !dbg !1516
  %135 = fmul double %122, %134, !dbg !1516
  call void @fMulHandler(double %122, double %134, double %135, i64 94495065900424, i64 94495065907344, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065907760, i32 1060, i32 52), !dbg !1517
  %136 = fadd double 0x3FB4E239984650AC, %135, !dbg !1517
  call void @fAddHandler(double 0x3FB4E239984650AC, double %135, double %136, i64 0, i64 94495065907760, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065908176, i32 1060, i32 48), !dbg !1518
  %137 = fmul double %121, %136, !dbg !1518
  call void @fMulHandler(double %121, double %136, double %137, i64 94495065900040, i64 94495065908176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065908592, i32 1060, i32 44), !dbg !1519
  %138 = fadd double 0x3FDA5B978B96BEBF, %137, !dbg !1519
  call void @fAddHandler(double 0x3FDA5B978B96BEBF, double %137, double %138, i64 0, i64 94495065908592, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065909008, i32 1060, i32 40), !dbg !1520
  %139 = fmul double %120, %138, !dbg !1520
  call void @fMulHandler(double %120, double %138, double %139, i64 94495065899656, i64 94495065909008, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065909424, i32 1060, i32 36), !dbg !1521
  %140 = fadd double 0x3FDB0EE6072093CE, %139, !dbg !1521
  call void @fAddHandler(double 0x3FDB0EE6072093CE, double %139, double %140, i64 0, i64 94495065909424, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065909840, i32 1060, i32 32), !dbg !1522
  %141 = fmul double %119, %140, !dbg !1522
  call void @fMulHandler(double %119, double %140, double %141, i64 94495065899304, i64 94495065909840, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065910256, i32 1060, i32 28), !dbg !1523
  %142 = fadd double 1.000000e+00, %141, !dbg !1523
  call void @fAddHandler(double 1.000000e+00, double %141, double %142, i64 0, i64 94495065910256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065910704, i32 1060, i32 23), !dbg !1524
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1524
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !1525
  store double %142, double* %144, align 8, !dbg !1526
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1527
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !1528
  store double 0x3CB0000000000000, double* %146, align 8, !dbg !1529
  store i32 0, i32* %3, align 4, !dbg !1530
  br label %256, !dbg !1530

; <label>:147:                                    ; preds = %110
  %148 = load double, double* %4, align 8, !dbg !1531
  %149 = fcmp olt double %148, 5.000000e+00, !dbg !1533
  %150 = call i1 @fCmpInstHandler(double %148, double 5.000000e+00, i1 %149, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065916064, i32 1064, i32 13), !dbg !1534
  br i1 %150, label %151, label %168, !dbg !1534

; <label>:151:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !1535, metadata !107), !dbg !1537
  %152 = load double, double* %4, align 8, !dbg !1538
  %153 = call i32 @lngamma_lanczos(double %152, %struct.gsl_sf_result_struct* %24), !dbg !1539
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1540
  %155 = load double, double* %154, align 8, !dbg !1540
  %156 = call double @exp(double %155) #6, !dbg !1541
  call void @callOneArgHandler(i32 11, double %155, double %156, i64 94495065919528, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065921536, i32 1071, i32 19), !dbg !1542
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1542
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !1543
  store double %156, double* %158, align 8, !dbg !1544
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1545
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !1546
  %161 = load double, double* %160, align 8, !dbg !1546
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1547
  %163 = load double, double* %162, align 8, !dbg !1547
  %164 = fadd double %163, 0x3CC0000000000000, !dbg !1548
  call void @fAddHandler(double %163, double 0x3CC0000000000000, double %164, i64 94495065926200, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065927872, i32 1072, i32 41), !dbg !1549
  %165 = fmul double %161, %164, !dbg !1549
  call void @fMulHandler(double %161, double %164, double %165, i64 94495065924104, i64 94495065927872, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065928288, i32 1072, i32 31), !dbg !1550
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1550
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !1551
  store double %165, double* %167, align 8, !dbg !1552
  store i32 0, i32* %3, align 4, !dbg !1553
  br label %256, !dbg !1553

; <label>:168:                                    ; preds = %147
  %169 = load double, double* %4, align 8, !dbg !1554
  %170 = fcmp olt double %169, 1.000000e+01, !dbg !1556
  %171 = call i1 @fCmpInstHandler(double %169, double 1.000000e+01, i1 %170, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065932432, i32 1075, i32 13), !dbg !1557
  br i1 %171, label %172, label %201, !dbg !1557

; <label>:172:                                    ; preds = %168
  call void @llvm.dbg.declare(metadata double* %25, metadata !1558, metadata !107), !dbg !1560
  store double 5.040000e+03, double* %25, align 8, !dbg !1560
  call void @llvm.dbg.declare(metadata double* %26, metadata !1561, metadata !107), !dbg !1562
  %173 = load double, double* %4, align 8, !dbg !1563
  %174 = fmul double 2.000000e+00, %173, !dbg !1564
  call void @fMulHandler(double 2.000000e+00, double %173, double %174, i64 0, i64 94495065937384, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065937792, i32 1081, i32 26), !dbg !1565
  %175 = fsub double %174, 1.500000e+01, !dbg !1565
  call void @fSubHandler(double %174, double 1.500000e+01, double %175, i64 94495065937792, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065938208, i32 1081, i32 29), !dbg !1566
  %176 = fdiv double %175, 5.000000e+00, !dbg !1566
  call void @fDivHandler(double %175, double 5.000000e+00, double %176, i64 94495065938208, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065938624, i32 1081, i32 36), !dbg !1562
  store double %176, double* %26, align 8, !dbg !1562
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !1567, metadata !107), !dbg !1568
  %177 = load double, double* %26, align 8, !dbg !1569
  %178 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @gamma_5_10_cs, double %177, %struct.gsl_sf_result_struct* %27), !dbg !1570
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !1571
  %180 = load double, double* %179, align 8, !dbg !1571
  %181 = call double @exp(double %180) #6, !dbg !1572
  call void @callOneArgHandler(i32 11, double %180, double %181, i64 94495065945480, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065947216, i32 1084, i32 20), !dbg !1573
  %182 = fmul double %181, 5.040000e+03, !dbg !1573
  call void @fMulHandler(double %181, double 5.040000e+03, double %182, i64 94495065947216, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065947728, i32 1084, i32 31), !dbg !1574
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1574
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !1575
  store double %182, double* %184, align 8, !dbg !1576
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1577
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !1578
  %187 = load double, double* %186, align 8, !dbg !1578
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !1579
  %189 = load double, double* %188, align 8, !dbg !1579
  %190 = fmul double %187, %189, !dbg !1580
  call void @fMulHandler(double %187, double %189, double %190, i64 94495065950168, i64 94495065952264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065953936, i32 1085, i32 32), !dbg !1581
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1581
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !1582
  store double %190, double* %192, align 8, !dbg !1583
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1584
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !1585
  %195 = load double, double* %194, align 8, !dbg !1585
  %196 = fmul double 0x3CC0000000000000, %195, !dbg !1586
  call void @fMulHandler(double 0x3CC0000000000000, double %195, double %196, i64 0, i64 94495065956408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065958080, i32 1086, i32 42), !dbg !1587
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1587
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !1588
  %199 = load double, double* %198, align 8, !dbg !1589
  %200 = fadd double %199, %196, !dbg !1589
  call void @fAddHandler(double %199, double %196, double %200, i64 94495065959304, i64 94495065958080, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065959712, i32 1086, i32 17), !dbg !1589
  store double %200, double* %198, align 8, !dbg !1589
  store i32 0, i32* %3, align 4, !dbg !1590
  br label %256, !dbg !1590

; <label>:201:                                    ; preds = %168
  %202 = load double, double* %4, align 8, !dbg !1591
  %203 = fcmp olt double %202, 1.710000e+02, !dbg !1593
  %204 = call i1 @fCmpInstHandler(double %202, double 1.710000e+02, i1 %203, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065963936, i32 1089, i32 13), !dbg !1594
  br i1 %204, label %205, label %241, !dbg !1594

; <label>:205:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata double* %28, metadata !1595, metadata !107), !dbg !1597
  %206 = load double, double* %4, align 8, !dbg !1598
  %207 = load double, double* %4, align 8, !dbg !1599
  %208 = fmul double 5.000000e-01, %207, !dbg !1600
  call void @fMulHandler(double 5.000000e-01, double %207, double %208, i64 0, i64 94495065966520, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065966960, i32 1095, i32 26), !dbg !1601
  %209 = call double @pow(double %206, double %208) #6, !dbg !1601
  call void @callTwoArgsHandler(i32 15, double %206, double %208, double %209, i64 94495065966168, i64 94495065966960, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065969304, i32 1095, i32 16), !dbg !1597
  store double %209, double* %28, align 8, !dbg !1597
  call void @llvm.dbg.declare(metadata double* %29, metadata !1602, metadata !107), !dbg !1603
  %210 = load double, double* %4, align 8, !dbg !1604
  %211 = fsub double -0.000000e+00, %210, !dbg !1605
  call void @fSubHandler(double -0.000000e+00, double %210, double %211, i64 0, i64 94495065972600, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065972976, i32 1096, i32 20), !dbg !1606
  %212 = call double @exp(double %211) #6, !dbg !1606
  call void @callOneArgHandler(i32 11, double %211, double %212, i64 94495065972976, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065973456, i32 1096, i32 16), !dbg !1603
  store double %212, double* %29, align 8, !dbg !1603
  call void @llvm.dbg.declare(metadata double* %30, metadata !1607, metadata !107), !dbg !1608
  %213 = load double, double* %28, align 8, !dbg !1609
  %214 = load double, double* %29, align 8, !dbg !1610
  %215 = fmul double %213, %214, !dbg !1611
  call void @fMulHandler(double %213, double %214, double %215, i64 94495065976712, i64 94495065977064, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065977472, i32 1097, i32 19), !dbg !1612
  %216 = load double, double* %28, align 8, !dbg !1612
  %217 = fmul double %215, %216, !dbg !1613
  call void @fMulHandler(double %215, double %216, double %217, i64 94495065977472, i64 94495065977864, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065978272, i32 1097, i32 24), !dbg !1608
  store double %217, double* %30, align 8, !dbg !1608
  call void @llvm.dbg.declare(metadata double* %31, metadata !1614, metadata !107), !dbg !1615
  %218 = load double, double* %30, align 8, !dbg !1616
  %219 = fmul double 0x40040D931FF62706, %218, !dbg !1617
  call void @fMulHandler(double 0x40040D931FF62706, double %218, double %219, i64 0, i64 94495065981464, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065981904, i32 1098, i32 37), !dbg !1618
  %220 = load double, double* %4, align 8, !dbg !1618
  %221 = call double @sqrt(double %220) #6, !dbg !1619
  call void @callOneArgHandler(i32 14, double %220, double %221, i64 94495065982296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065983040, i32 1098, i32 41), !dbg !1620
  %222 = fdiv double %219, %221, !dbg !1620
  call void @fDivHandler(double %219, double %221, double %222, i64 94495065981904, i64 94495065983040, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065983552, i32 1098, i32 40), !dbg !1615
  store double %222, double* %31, align 8, !dbg !1615
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !1621, metadata !107), !dbg !1622
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1623, metadata !107), !dbg !1624
  %223 = load double, double* %4, align 8, !dbg !1625
  %224 = call i32 @gammastar_ser(double %223, %struct.gsl_sf_result_struct* %32), !dbg !1626
  store i32 %224, i32* %33, align 4, !dbg !1624
  %225 = load double, double* %31, align 8, !dbg !1627
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1628
  %227 = load double, double* %226, align 8, !dbg !1628
  %228 = fmul double %225, %227, !dbg !1629
  call void @fMulHandler(double %225, double %227, double %228, i64 94495065990744, i64 94495065991544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065993216, i32 1101, i32 23), !dbg !1630
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1630
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !1631
  store double %228, double* %230, align 8, !dbg !1632
  %231 = load double, double* %4, align 8, !dbg !1633
  %232 = fadd double %231, 2.500000e+00, !dbg !1634
  call void @fAddHandler(double %231, double 2.500000e+00, double %232, i64 94495065994856, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065995360, i32 1102, i32 22), !dbg !1635
  %233 = fmul double %232, 0x3CB0000000000000, !dbg !1635
  call void @fMulHandler(double %232, double 0x3CB0000000000000, double %233, i64 94495065995360, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065995744, i32 1102, i32 29), !dbg !1636
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1636
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 0, !dbg !1637
  %236 = load double, double* %235, align 8, !dbg !1637
  %237 = fmul double %233, %236, !dbg !1638
  call void @fMulHandler(double %233, double %236, double %237, i64 94495065995744, i64 94495065996968, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94495065998640, i32 1102, i32 47), !dbg !1639
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1639
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 1, !dbg !1640
  store double %237, double* %239, align 8, !dbg !1641
  %240 = load i32, i32* %33, align 4, !dbg !1642
  store i32 %240, i32* %3, align 4, !dbg !1643
  br label %256, !dbg !1643

; <label>:241:                                    ; preds = %201
  br label %242, !dbg !1644, !llvm.loop !1646

; <label>:242:                                    ; preds = %241
  %243 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1647
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %243, i32 0, i32 0, !dbg !1647
  store double 0x7FF0000000000000, double* %244, align 8, !dbg !1647
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1647
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 1, !dbg !1647
  store double 0x7FF0000000000000, double* %246, align 8, !dbg !1647
  br label %247, !dbg !1647, !llvm.loop !1650

; <label>:247:                                    ; preds = %242
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1106, i32 16), !dbg !1652
  store i32 16, i32* %3, align 4, !dbg !1652
  br label %256, !dbg !1652
                                                  ; No predecessors!
  br label %249, !dbg !1655

; <label>:249:                                    ; preds = %248
  br label %250

; <label>:250:                                    ; preds = %249
  br label %251

; <label>:251:                                    ; preds = %250
  br label %252

; <label>:252:                                    ; preds = %251
  br label %253

; <label>:253:                                    ; preds = %252
  br label %254

; <label>:254:                                    ; preds = %253
  br label %255

; <label>:255:                                    ; preds = %254
  br label %256

; <label>:256:                                    ; preds = %255, %247, %205, %172, %151, %116, %80, %56, %37
  %257 = load i32, i32* %3, align 4, !dbg !1657
  ret i32 %257, !dbg !1657
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gammastar_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1658 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1659, metadata !107), !dbg !1660
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1661, metadata !107), !dbg !1662
  %17 = load double, double* %4, align 8, !dbg !1663
  %18 = fcmp ole double %17, 0.000000e+00, !dbg !1665
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066016400, i32 1303, i32 8), !dbg !1666
  br i1 %19, label %20, label %29, !dbg !1666

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !1667, !llvm.loop !1669

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1670
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1670
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !1670
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1670
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1670
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !1670
  br label %26, !dbg !1670, !llvm.loop !1673

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1304, i32 1), !dbg !1675
  store i32 1, i32* %3, align 4, !dbg !1675
  br label %178, !dbg !1675
                                                  ; No predecessors!
  br label %28, !dbg !1678

; <label>:28:                                     ; preds = %27
  br label %178, !dbg !1680

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %4, align 8, !dbg !1681
  %31 = fcmp olt double %30, 5.000000e-01, !dbg !1683
  %32 = call i1 @fCmpInstHandler(double %30, double 5.000000e-01, i1 %31, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066025136, i32 1306, i32 13), !dbg !1684
  br i1 %32, label %33, label %80, !dbg !1684

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1685, metadata !107), !dbg !1687
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1688, metadata !107), !dbg !1690
  %34 = load double, double* %4, align 8, !dbg !1691
  %35 = call i32 @gsl_sf_lngamma_e(double %34, %struct.gsl_sf_result_struct* %6), !dbg !1692
  store i32 %35, i32* %7, align 4, !dbg !1690
  call void @llvm.dbg.declare(metadata double* %8, metadata !1693, metadata !107), !dbg !1694
  %36 = load double, double* %4, align 8, !dbg !1695
  %37 = call double @log(double %36) #6, !dbg !1696
  call void @callOneArgHandler(i32 12, double %36, double %37, i64 94495066032040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066032480, i32 1309, i32 23), !dbg !1694
  store double %37, double* %8, align 8, !dbg !1694
  call void @llvm.dbg.declare(metadata double* %9, metadata !1697, metadata !107), !dbg !1698
  store double 0x3FED67F1C864BEB4, double* %9, align 8, !dbg !1698
  call void @llvm.dbg.declare(metadata double* %10, metadata !1699, metadata !107), !dbg !1700
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1701
  %39 = load double, double* %38, align 8, !dbg !1701
  %40 = load double, double* %4, align 8, !dbg !1702
  %41 = fsub double %40, 5.000000e-01, !dbg !1703
  call void @fSubHandler(double %40, double 5.000000e-01, double %41, i64 94495066040632, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066041072, i32 1311, i32 39), !dbg !1704
  %42 = load double, double* %8, align 8, !dbg !1704
  %43 = fmul double %41, %42, !dbg !1705
  call void @fMulHandler(double %41, double %42, double %43, i64 94495066041072, i64 94495066041432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066041840, i32 1311, i32 44), !dbg !1706
  %44 = fsub double %39, %43, !dbg !1706
  call void @fSubHandler(double %39, double %43, double %44, i64 94495066038984, i64 94495066041840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066042256, i32 1311, i32 35), !dbg !1707
  %45 = load double, double* %4, align 8, !dbg !1707
  %46 = fadd double %44, %45, !dbg !1708
  call void @fAddHandler(double %44, double %45, double %46, i64 94495066042256, i64 94495066042648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066043056, i32 1311, i32 48), !dbg !1709
  %47 = fsub double %46, 0x3FED67F1C864BEB4, !dbg !1709
  call void @fSubHandler(double %46, double 0x3FED67F1C864BEB4, double %47, i64 94495066043056, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066043472, i32 1311, i32 52), !dbg !1700
  store double %47, double* %10, align 8, !dbg !1700
  call void @llvm.dbg.declare(metadata double* %11, metadata !1710, metadata !107), !dbg !1711
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !1712
  %49 = load double, double* %48, align 8, !dbg !1712
  %50 = load double, double* %4, align 8, !dbg !1713
  %51 = fadd double %50, 5.000000e-01, !dbg !1714
  call void @fAddHandler(double %50, double 5.000000e-01, double %51, i64 94495066048728, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066049168, i32 1312, i32 63), !dbg !1715
  %52 = load double, double* %8, align 8, !dbg !1715
  %53 = call double @fabs(double %52) #1, !dbg !1716
  %54 = fmul double %51, %53, !dbg !1717
  call void @fMulHandler(double %51, double %53, double %54, i64 94495066049168, i64 94495066050000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066050480, i32 1312, i32 68), !dbg !1718
  %55 = fadd double %54, 0x3FED67F1C864BEB4, !dbg !1718
  call void @fAddHandler(double %54, double 0x3FED67F1C864BEB4, double %55, i64 94495066050480, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066050896, i32 1312, i32 78), !dbg !1719
  %56 = fmul double 0x3CC0000000000000, %55, !dbg !1719
  call void @fMulHandler(double 0x3CC0000000000000, double %55, double %56, i64 0, i64 94495066050896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066051312, i32 1312, i32 59), !dbg !1720
  %57 = fadd double %49, %56, !dbg !1720
  call void @fAddHandler(double %49, double %56, double %57, i64 94495066047080, i64 94495066051312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066051728, i32 1312, i32 35), !dbg !1711
  store double %57, double* %11, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1721, metadata !107), !dbg !1722
  %58 = load double, double* %10, align 8, !dbg !1723
  %59 = load double, double* %11, align 8, !dbg !1724
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1725
  %61 = call i32 @gsl_sf_exp_err_e(double %58, double %59, %struct.gsl_sf_result_struct* %60), !dbg !1726
  store i32 %61, i32* %12, align 4, !dbg !1722
  %62 = load i32, i32* %7, align 4, !dbg !1727
  %63 = icmp ne i32 %62, 0, !dbg !1727
  %64 = sext i32 %62 to i64, !dbg !1727
  %65 = call i1 @iCmpInstHandler(i64 %64, i64 0, i1 %63, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066059040, i32 1314, i32 12), !dbg !1727
  br i1 %65, label %66, label %68, !dbg !1727

; <label>:66:                                     ; preds = %33
  %67 = load i32, i32* %7, align 4, !dbg !1728
  br label %78, !dbg !1728

; <label>:68:                                     ; preds = %33
  %69 = load i32, i32* %12, align 4, !dbg !1730
  %70 = icmp ne i32 %69, 0, !dbg !1730
  %71 = sext i32 %69 to i64, !dbg !1730
  %72 = call i1 @iCmpInstHandler(i64 %71, i64 0, i1 %70, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066063584, i32 1314, i32 12), !dbg !1730
  br i1 %72, label %73, label %75, !dbg !1730

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %12, align 4, !dbg !1732
  br label %76, !dbg !1732

; <label>:75:                                     ; preds = %68
  br label %76, !dbg !1734

; <label>:76:                                     ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ], !dbg !1736
  br label %78, !dbg !1736

; <label>:78:                                     ; preds = %76, %66
  %79 = phi i32 [ %67, %66 ], [ %77, %76 ], !dbg !1738
  store i32 %79, i32* %3, align 4, !dbg !1740
  br label %178, !dbg !1740

; <label>:80:                                     ; preds = %29
  %81 = load double, double* %4, align 8, !dbg !1741
  %82 = fcmp olt double %81, 2.000000e+00, !dbg !1743
  %83 = call i1 @fCmpInstHandler(double %81, double 2.000000e+00, i1 %82, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066072992, i32 1316, i32 13), !dbg !1744
  br i1 %83, label %84, label %92, !dbg !1744

; <label>:84:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata double* %13, metadata !1745, metadata !107), !dbg !1747
  %85 = load double, double* %4, align 8, !dbg !1748
  %86 = fsub double %85, 5.000000e-01, !dbg !1749
  call void @fSubHandler(double %85, double 5.000000e-01, double %86, i64 94495066075176, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066075584, i32 1317, i32 32), !dbg !1750
  %87 = fmul double 0x3FF5555555555555, %86, !dbg !1750
  call void @fMulHandler(double 0x3FF5555555555555, double %86, double %87, i64 0, i64 94495066075584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066076032, i32 1317, i32 29), !dbg !1751
  %88 = fsub double %87, 1.000000e+00, !dbg !1751
  call void @fSubHandler(double %87, double 1.000000e+00, double %88, i64 94495066076032, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066076480, i32 1317, i32 38), !dbg !1747
  store double %88, double* %13, align 8, !dbg !1747
  %89 = load double, double* %13, align 8, !dbg !1752
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1753
  %91 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @gstar_a_cs, double %89, %struct.gsl_sf_result_struct* %90), !dbg !1754
  store i32 %91, i32* %3, align 4, !dbg !1755
  br label %178, !dbg !1755

; <label>:92:                                     ; preds = %80
  %93 = load double, double* %4, align 8, !dbg !1756
  %94 = fcmp olt double %93, 1.000000e+01, !dbg !1758
  %95 = call i1 @fCmpInstHandler(double %93, double 1.000000e+01, i1 %94, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066082288, i32 1320, i32 13), !dbg !1759
  br i1 %95, label %96, label %133, !dbg !1759

; <label>:96:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata double* %14, metadata !1760, metadata !107), !dbg !1762
  %97 = load double, double* %4, align 8, !dbg !1763
  %98 = fsub double %97, 2.000000e+00, !dbg !1764
  call void @fSubHandler(double %97, double 2.000000e+00, double %98, i64 94495066084424, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066084832, i32 1321, i32 29), !dbg !1765
  %99 = fmul double 2.500000e-01, %98, !dbg !1765
  call void @fMulHandler(double 2.500000e-01, double %98, double %99, i64 0, i64 94495066084832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066085312, i32 1321, i32 26), !dbg !1766
  %100 = fsub double %99, 1.000000e+00, !dbg !1766
  call void @fSubHandler(double %99, double 1.000000e+00, double %100, i64 94495066085312, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066085728, i32 1321, i32 35), !dbg !1762
  store double %100, double* %14, align 8, !dbg !1762
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1767, metadata !107), !dbg !1768
  %101 = load double, double* %14, align 8, !dbg !1769
  %102 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @gstar_b_cs, double %101, %struct.gsl_sf_result_struct* %15), !dbg !1770
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1771
  %104 = load double, double* %103, align 8, !dbg !1771
  %105 = load double, double* %4, align 8, !dbg !1772
  %106 = load double, double* %4, align 8, !dbg !1773
  %107 = fmul double %105, %106, !dbg !1774
  call void @fMulHandler(double %105, double %106, double %107, i64 94495066091896, i64 94495066092280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066092688, i32 1324, i32 28), !dbg !1775
  %108 = fdiv double %104, %107, !dbg !1775
  call void @fDivHandler(double %104, double %107, double %108, i64 94495066090248, i64 94495066092688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066093104, i32 1324, i32 25), !dbg !1776
  %109 = fadd double %108, 1.000000e+00, !dbg !1776
  call void @fAddHandler(double %108, double 1.000000e+00, double %109, i64 94495066093104, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066093552, i32 1324, i32 32), !dbg !1777
  %110 = load double, double* %4, align 8, !dbg !1777
  %111 = fmul double 1.200000e+01, %110, !dbg !1778
  call void @fMulHandler(double 1.200000e+01, double %110, double %111, i64 0, i64 94495066093912, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066094416, i32 1324, i32 49), !dbg !1779
  %112 = fdiv double 1.000000e+00, %111, !dbg !1779
  call void @fDivHandler(double 1.000000e+00, double %111, double %112, i64 0, i64 94495066094416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066094832, i32 1324, i32 43), !dbg !1780
  %113 = fadd double %109, %112, !dbg !1780
  call void @fAddHandler(double %109, double %112, double %113, i64 94495066093552, i64 94495066094832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066095216, i32 1324, i32 38), !dbg !1781
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1781
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !1782
  store double %113, double* %115, align 8, !dbg !1783
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1784
  %117 = load double, double* %116, align 8, !dbg !1784
  %118 = load double, double* %4, align 8, !dbg !1785
  %119 = load double, double* %4, align 8, !dbg !1786
  %120 = fmul double %118, %119, !dbg !1787
  call void @fMulHandler(double %118, double %119, double %120, i64 94495066098952, i64 94495066099336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066099744, i32 1325, i32 28), !dbg !1788
  %121 = fdiv double %117, %120, !dbg !1788
  call void @fDivHandler(double %117, double %120, double %121, i64 94495066097304, i64 94495066099744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066100160, i32 1325, i32 25), !dbg !1789
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1789
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !1790
  store double %121, double* %123, align 8, !dbg !1791
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1792
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !1793
  %126 = load double, double* %125, align 8, !dbg !1793
  %127 = call double @fabs(double %126) #1, !dbg !1794
  %128 = fmul double 0x3CC0000000000000, %127, !dbg !1795
  call void @fMulHandler(double 0x3CC0000000000000, double %127, double %128, i64 0, i64 94495066104368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066104848, i32 1326, i32 42), !dbg !1796
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1796
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !1797
  %131 = load double, double* %130, align 8, !dbg !1798
  %132 = fadd double %131, %128, !dbg !1798
  call void @fAddHandler(double %131, double %128, double %132, i64 94495066106072, i64 94495066104848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066106480, i32 1326, i32 17), !dbg !1798
  store double %132, double* %130, align 8, !dbg !1798
  store i32 0, i32* %3, align 4, !dbg !1799
  br label %178, !dbg !1799

; <label>:133:                                    ; preds = %92
  %134 = load double, double* %4, align 8, !dbg !1800
  %135 = fcmp olt double %134, 8.192000e+03, !dbg !1802
  %136 = call i1 @fCmpInstHandler(double %134, double 8.192000e+03, i1 %135, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066110768, i32 1329, i32 13), !dbg !1803
  br i1 %136, label %137, label %141, !dbg !1803

; <label>:137:                                    ; preds = %133
  %138 = load double, double* %4, align 8, !dbg !1804
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1806
  %140 = call i32 @gammastar_ser(double %138, %struct.gsl_sf_result_struct* %139), !dbg !1807
  store i32 %140, i32* %3, align 4, !dbg !1808
  br label %178, !dbg !1808

; <label>:141:                                    ; preds = %133
  %142 = load double, double* %4, align 8, !dbg !1809
  %143 = fcmp olt double %142, 0x4330000000000000, !dbg !1811
  %144 = call i1 @fCmpInstHandler(double %142, double 0x4330000000000000, i1 %143, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066117616, i32 1332, i32 13), !dbg !1812
  br i1 %144, label %145, label %171, !dbg !1812

; <label>:145:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata double* %16, metadata !1813, metadata !107), !dbg !1815
  %146 = load double, double* %4, align 8, !dbg !1816
  %147 = fdiv double 1.000000e+00, %146, !dbg !1817
  call void @fDivHandler(double 1.000000e+00, double %146, double %147, i64 0, i64 94495066119784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066120192, i32 1335, i32 26), !dbg !1815
  store double %147, double* %16, align 8, !dbg !1815
  %148 = load double, double* %16, align 8, !dbg !1818
  %149 = fdiv double %148, 1.200000e+01, !dbg !1819
  call void @fDivHandler(double %148, double 1.200000e+01, double %149, i64 94495066122232, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066122672, i32 1336, i32 27), !dbg !1820
  %150 = load double, double* %16, align 8, !dbg !1820
  %151 = fdiv double %150, 2.400000e+01, !dbg !1821
  call void @fDivHandler(double %150, double 2.400000e+01, double %151, i64 94495066123032, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066123472, i32 1336, i32 42), !dbg !1822
  %152 = load double, double* %16, align 8, !dbg !1822
  %153 = load double, double* %16, align 8, !dbg !1823
  %154 = fmul double 0x3FB0EB240795CEB2, %153, !dbg !1824
  call void @fMulHandler(double 0x3FB0EB240795CEB2, double %153, double %154, i64 0, i64 94495066124216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066124688, i32 1336, i32 85), !dbg !1825
  %155 = fadd double 0x3FE8B60B60B60B61, %154, !dbg !1825
  call void @fAddHandler(double 0x3FE8B60B60B60B61, double %154, double %155, i64 0, i64 94495066124688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066125168, i32 1336, i32 71), !dbg !1826
  %156 = fmul double %152, %155, !dbg !1826
  call void @fMulHandler(double %152, double %155, double %156, i64 94495066123832, i64 94495066125168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066125584, i32 1336, i32 57), !dbg !1827
  %157 = fsub double 1.000000e+00, %156, !dbg !1827
  call void @fSubHandler(double 1.000000e+00, double %156, double %157, i64 0, i64 94495066125584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066126032, i32 1336, i32 53), !dbg !1828
  %158 = fmul double %151, %157, !dbg !1828
  call void @fMulHandler(double %151, double %157, double %158, i64 94495066123472, i64 94495066126032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066126416, i32 1336, i32 47), !dbg !1829
  %159 = fadd double 1.000000e+00, %158, !dbg !1829
  call void @fAddHandler(double 1.000000e+00, double %158, double %159, i64 0, i64 94495066126416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066126864, i32 1336, i32 38), !dbg !1830
  %160 = fmul double %149, %159, !dbg !1830
  call void @fMulHandler(double %149, double %159, double %160, i64 94495066122672, i64 94495066126864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066127248, i32 1336, i32 32), !dbg !1831
  %161 = fadd double 1.000000e+00, %160, !dbg !1831
  call void @fAddHandler(double 1.000000e+00, double %160, double %161, i64 0, i64 94495066127248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066127696, i32 1336, i32 23), !dbg !1832
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1832
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !1833
  store double %161, double* %163, align 8, !dbg !1834
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1835
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 0, !dbg !1836
  %166 = load double, double* %165, align 8, !dbg !1836
  %167 = call double @fabs(double %166) #1, !dbg !1837
  %168 = fmul double 0x3CC0000000000000, %167, !dbg !1838
  call void @fMulHandler(double 0x3CC0000000000000, double %167, double %168, i64 0, i64 94495066131872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066132352, i32 1337, i32 41), !dbg !1839
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1839
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 1, !dbg !1840
  store double %168, double* %170, align 8, !dbg !1841
  store i32 0, i32* %3, align 4, !dbg !1842
  br label %178, !dbg !1842

; <label>:171:                                    ; preds = %141
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1843
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !1845
  store double 1.000000e+00, double* %173, align 8, !dbg !1846
  %174 = load double, double* %4, align 8, !dbg !1847
  %175 = fdiv double 1.000000e+00, %174, !dbg !1848
  call void @fDivHandler(double 1.000000e+00, double %174, double %175, i64 0, i64 94495066137240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94495066137680, i32 1342, i32 22), !dbg !1849
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1849
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 1, !dbg !1850
  store double %175, double* %177, align 8, !dbg !1851
  store i32 0, i32* %3, align 4, !dbg !1852
  br label %178, !dbg !1852

; <label>:178:                                    ; preds = %171, %145, %137, %96, %84, %78, %28, %26
  %179 = load i32, i32* %3, align 4, !dbg !1853
  ret i32 %179, !dbg !1853
}

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !1854 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !1859, metadata !107), !dbg !1860
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1861, metadata !107), !dbg !1862
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1863, metadata !107), !dbg !1864
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1865, metadata !107), !dbg !1866
  call void @llvm.dbg.declare(metadata double* %8, metadata !1867, metadata !107), !dbg !1868
  store double 0.000000e+00, double* %8, align 8, !dbg !1868
  call void @llvm.dbg.declare(metadata double* %9, metadata !1869, metadata !107), !dbg !1870
  store double 0.000000e+00, double* %9, align 8, !dbg !1870
  call void @llvm.dbg.declare(metadata double* %10, metadata !1871, metadata !107), !dbg !1872
  %15 = load double, double* %5, align 8, !dbg !1873
  %16 = fmul double 2.000000e+00, %15, !dbg !1874
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94495065944440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066155280, i32 11, i32 19), !dbg !1875
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1875
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !1876
  %19 = load double, double* %18, align 8, !dbg !1876
  %20 = fsub double %16, %19, !dbg !1877
  call void @fSubHandler(double %16, double %19, double %20, i64 94495066155280, i64 94495066156376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066158048, i32 11, i32 22), !dbg !1878
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1878
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !1879
  %23 = load double, double* %22, align 8, !dbg !1879
  %24 = fsub double %20, %23, !dbg !1880
  call void @fSubHandler(double %20, double %23, double %24, i64 94495066158048, i64 94495066159272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066160944, i32 11, i32 30), !dbg !1881
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1881
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !1882
  %27 = load double, double* %26, align 8, !dbg !1882
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1883
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !1884
  %30 = load double, double* %29, align 8, !dbg !1884
  %31 = fsub double %27, %30, !dbg !1885
  call void @fSubHandler(double %27, double %30, double %31, i64 94495066162168, i64 94495066164648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066166320, i32 11, i32 48), !dbg !1886
  %32 = fdiv double %24, %31, !dbg !1886
  call void @fDivHandler(double %24, double %31, double %32, i64 94495066160944, i64 94495066166320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066166736, i32 11, i32 39), !dbg !1872
  store double %32, double* %10, align 8, !dbg !1872
  call void @llvm.dbg.declare(metadata double* %11, metadata !1887, metadata !107), !dbg !1888
  %33 = load double, double* %10, align 8, !dbg !1889
  %34 = fmul double 2.000000e+00, %33, !dbg !1890
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94495066169784, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066170192, i32 12, i32 19), !dbg !1888
  store double %34, double* %11, align 8, !dbg !1888
  call void @llvm.dbg.declare(metadata double* %12, metadata !1891, metadata !107), !dbg !1892
  store double 0.000000e+00, double* %12, align 8, !dbg !1892
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1893
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !1895
  %37 = load i32, i32* %36, align 8, !dbg !1895
  store i32 %37, i32* %7, align 4, !dbg !1896
  br label %38, !dbg !1897

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !1898
  %40 = icmp sge i32 %39, 1, !dbg !1901
  %41 = sext i32 %39 to i64, !dbg !1902
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066178768, i32 16, i32 23), !dbg !1902
  br i1 %42, label %43, label %80, !dbg !1902

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !1903, metadata !107), !dbg !1905
  %44 = load double, double* %8, align 8, !dbg !1906
  store double %44, double* %13, align 8, !dbg !1905
  %45 = load double, double* %11, align 8, !dbg !1907
  %46 = load double, double* %8, align 8, !dbg !1908
  %47 = fmul double %45, %46, !dbg !1909
  call void @fMulHandler(double %45, double %46, double %47, i64 94495066182968, i64 94495066183352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066183760, i32 18, i32 11), !dbg !1910
  %48 = load double, double* %9, align 8, !dbg !1910
  %49 = fsub double %47, %48, !dbg !1911
  call void @fSubHandler(double %47, double %48, double %49, i64 94495066183760, i64 94495066184152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066184560, i32 18, i32 14), !dbg !1912
  %50 = load i32, i32* %7, align 4, !dbg !1912
  %51 = sext i32 %50 to i64, !dbg !1913
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1913
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !1914
  %54 = load double*, double** %53, align 8, !dbg !1914
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !1913
  %56 = load double, double* %55, align 8, !dbg !1913
  %57 = fadd double %49, %56, !dbg !1915
  call void @fAddHandler(double %49, double %56, double %57, i64 94495066184560, i64 94495066189608, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066189728, i32 18, i32 19), !dbg !1916
  store double %57, double* %8, align 8, !dbg !1916
  %58 = load double, double* %11, align 8, !dbg !1917
  %59 = load double, double* %13, align 8, !dbg !1918
  %60 = fmul double %58, %59, !dbg !1919
  call void @fMulHandler(double %58, double %59, double %60, i64 94495066190536, i64 94495066190920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066191328, i32 19, i32 17), !dbg !1920
  %61 = call double @fabs(double %60) #1, !dbg !1920
  %62 = load double, double* %9, align 8, !dbg !1921
  %63 = call double @fabs(double %62) #1, !dbg !1922
  %64 = fadd double %61, %63, !dbg !1924
  call void @fAddHandler(double %61, double %63, double %64, i64 94495066191808, i64 94495066192736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066193216, i32 19, i32 24), !dbg !1925
  %65 = load i32, i32* %7, align 4, !dbg !1925
  %66 = sext i32 %65 to i64, !dbg !1926
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1926
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !1927
  %69 = load double*, double** %68, align 8, !dbg !1927
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !1926
  %71 = load double, double* %70, align 8, !dbg !1926
  %72 = call double @fabs(double %71) #1, !dbg !1928
  %73 = fadd double %64, %72, !dbg !1930
  call void @fAddHandler(double %64, double %72, double %73, i64 94495066193216, i64 94495066198448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066198928, i32 19, i32 35), !dbg !1931
  %74 = load double, double* %12, align 8, !dbg !1931
  %75 = fadd double %74, %73, !dbg !1931
  call void @fAddHandler(double %74, double %73, double %75, i64 94495066199320, i64 94495066198928, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066199728, i32 19, i32 7), !dbg !1931
  store double %75, double* %12, align 8, !dbg !1931
  %76 = load double, double* %13, align 8, !dbg !1932
  store double %76, double* %9, align 8, !dbg !1933
  br label %77, !dbg !1934

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !1935
  %79 = add nsw i32 %78, -1, !dbg !1935
  store i32 %79, i32* %7, align 4, !dbg !1935
  br label %38, !dbg !1937, !llvm.loop !1938

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !1940, metadata !107), !dbg !1942
  %81 = load double, double* %8, align 8, !dbg !1943
  store double %81, double* %14, align 8, !dbg !1942
  %82 = load double, double* %10, align 8, !dbg !1944
  %83 = load double, double* %8, align 8, !dbg !1945
  %84 = fmul double %82, %83, !dbg !1946
  call void @fMulHandler(double %82, double %83, double %84, i64 94495066208728, i64 94495066209112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066209520, i32 25, i32 10), !dbg !1947
  %85 = load double, double* %9, align 8, !dbg !1947
  %86 = fsub double %84, %85, !dbg !1948
  call void @fSubHandler(double %84, double %85, double %86, i64 94495066209520, i64 94495066209912, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066210320, i32 25, i32 13), !dbg !1949
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1949
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !1950
  %89 = load double*, double** %88, align 8, !dbg !1950
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !1949
  %91 = load double, double* %90, align 8, !dbg !1949
  %92 = fmul double 5.000000e-01, %91, !dbg !1951
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94495066214888, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066215040, i32 25, i32 24), !dbg !1952
  %93 = fadd double %86, %92, !dbg !1952
  call void @fAddHandler(double %86, double %92, double %93, i64 94495066210320, i64 94495066215040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066215424, i32 25, i32 18), !dbg !1953
  store double %93, double* %8, align 8, !dbg !1953
  %94 = load double, double* %10, align 8, !dbg !1954
  %95 = load double, double* %14, align 8, !dbg !1955
  %96 = fmul double %94, %95, !dbg !1956
  call void @fMulHandler(double %94, double %95, double %96, i64 94495066216232, i64 94495066216616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066217024, i32 26, i32 16), !dbg !1957
  %97 = call double @fabs(double %96) #1, !dbg !1957
  %98 = load double, double* %9, align 8, !dbg !1958
  %99 = call double @fabs(double %98) #1, !dbg !1959
  %100 = fadd double %97, %99, !dbg !1961
  call void @fAddHandler(double %97, double %99, double %100, i64 94495066217504, i64 94495066218432, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066218912, i32 26, i32 23), !dbg !1962
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1962
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !1963
  %103 = load double*, double** %102, align 8, !dbg !1963
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !1962
  %105 = load double, double* %104, align 8, !dbg !1962
  %106 = call double @fabs(double %105) #1, !dbg !1964
  %107 = fmul double 5.000000e-01, %106, !dbg !1966
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94495066223664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066224176, i32 26, i32 40), !dbg !1967
  %108 = fadd double %100, %107, !dbg !1967
  call void @fAddHandler(double %100, double %107, double %108, i64 94495066218912, i64 94495066224176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066224560, i32 26, i32 34), !dbg !1968
  %109 = load double, double* %12, align 8, !dbg !1968
  %110 = fadd double %109, %108, !dbg !1968
  call void @fAddHandler(double %109, double %108, double %110, i64 94495066224952, i64 94495066224560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066225360, i32 26, i32 7), !dbg !1968
  store double %110, double* %12, align 8, !dbg !1968
  %111 = load double, double* %8, align 8, !dbg !1969
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1970
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !1971
  store double %111, double* %113, align 8, !dbg !1972
  %114 = load double, double* %12, align 8, !dbg !1973
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !1974
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94495066228776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066229184, i32 30, i32 33), !dbg !1975
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1975
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !1976
  %118 = load i32, i32* %117, align 8, !dbg !1976
  %119 = sext i32 %118 to i64, !dbg !1977
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1977
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !1978
  %122 = load double*, double** %121, align 8, !dbg !1978
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !1977
  %124 = load double, double* %123, align 8, !dbg !1977
  %125 = call double @fabs(double %124) #1, !dbg !1979
  %126 = fadd double %115, %125, !dbg !1980
  call void @fAddHandler(double %115, double %125, double %126, i64 94495066229184, i64 94495066236512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94495066236992, i32 30, i32 37), !dbg !1981
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1981
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !1982
  store double %126, double* %128, align 8, !dbg !1983
  ret i32 0, !dbg !1984
}

; Function Attrs: nounwind uwtable
define internal i32 @gammastar_ser(double, %struct.gsl_sf_result_struct*) #0 !dbg !1985 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1986, metadata !107), !dbg !1987
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !1988, metadata !107), !dbg !1989
  call void @llvm.dbg.declare(metadata double* %5, metadata !1990, metadata !107), !dbg !1991
  %15 = load double, double* %3, align 8, !dbg !1992
  %16 = load double, double* %3, align 8, !dbg !1993
  %17 = fmul double %15, %16, !dbg !1994
  call void @fMulHandler(double %15, double %16, double %17, i64 94495065988472, i64 94495066244920, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066245328, i32 960, i32 26), !dbg !1995
  %18 = fdiv double 1.000000e+00, %17, !dbg !1995
  call void @fDivHandler(double 1.000000e+00, double %17, double %18, i64 0, i64 94495066245328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066245776, i32 960, i32 23), !dbg !1991
  store double %18, double* %5, align 8, !dbg !1991
  call void @llvm.dbg.declare(metadata double* %6, metadata !1996, metadata !107), !dbg !1997
  store double 0x3FB5555555555555, double* %6, align 8, !dbg !1997
  call void @llvm.dbg.declare(metadata double* %7, metadata !1998, metadata !107), !dbg !1999
  store double 0xBF66C16C16C16C17, double* %7, align 8, !dbg !1999
  call void @llvm.dbg.declare(metadata double* %8, metadata !2000, metadata !107), !dbg !2001
  store double 0x3F4A01A01A01A01A, double* %8, align 8, !dbg !2001
  call void @llvm.dbg.declare(metadata double* %9, metadata !2002, metadata !107), !dbg !2003
  store double 0xBF43813813813814, double* %9, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata double* %10, metadata !2004, metadata !107), !dbg !2005
  store double 0x3F4B951E2B18FF23, double* %10, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata double* %11, metadata !2006, metadata !107), !dbg !2007
  store double 0xBF5F6AB0D9993C7D, double* %11, align 8, !dbg !2007
  call void @llvm.dbg.declare(metadata double* %12, metadata !2008, metadata !107), !dbg !2009
  store double 0x3F7A41A41A41A41A, double* %12, align 8, !dbg !2009
  call void @llvm.dbg.declare(metadata double* %13, metadata !2010, metadata !107), !dbg !2011
  store double 0xBF9E4286CB0F5398, double* %13, align 8, !dbg !2011
  call void @llvm.dbg.declare(metadata double* %14, metadata !2012, metadata !107), !dbg !2013
  %19 = load double, double* %5, align 8, !dbg !2014
  %20 = load double, double* %5, align 8, !dbg !2015
  %21 = load double, double* %5, align 8, !dbg !2016
  %22 = load double, double* %5, align 8, !dbg !2017
  %23 = load double, double* %5, align 8, !dbg !2018
  %24 = load double, double* %5, align 8, !dbg !2019
  %25 = load double, double* %5, align 8, !dbg !2020
  %26 = fmul double %25, 0xBF9E4286CB0F5398, !dbg !2021
  call void @fMulHandler(double %25, double 0xBF9E4286CB0F5398, double %26, i64 94495066286008, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066286416, i32 969, i32 76), !dbg !2022
  %27 = fadd double 0x3F7A41A41A41A41A, %26, !dbg !2022
  call void @fAddHandler(double 0x3F7A41A41A41A41A, double %26, double %27, i64 0, i64 94495066286416, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066286832, i32 969, i32 73), !dbg !2023
  %28 = fmul double %24, %27, !dbg !2023
  call void @fMulHandler(double %24, double %27, double %28, i64 94495066285624, i64 94495066286832, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066287248, i32 969, i32 68), !dbg !2024
  %29 = fadd double 0xBF5F6AB0D9993C7D, %28, !dbg !2024
  call void @fAddHandler(double 0xBF5F6AB0D9993C7D, double %28, double %29, i64 0, i64 94495066287248, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066287664, i32 969, i32 65), !dbg !2025
  %30 = fmul double %23, %29, !dbg !2025
  call void @fMulHandler(double %23, double %29, double %30, i64 94495066285240, i64 94495066287664, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066288080, i32 969, i32 60), !dbg !2026
  %31 = fadd double 0x3F4B951E2B18FF23, %30, !dbg !2026
  call void @fAddHandler(double 0x3F4B951E2B18FF23, double %30, double %31, i64 0, i64 94495066288080, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066288496, i32 969, i32 57), !dbg !2027
  %32 = fmul double %22, %31, !dbg !2027
  call void @fMulHandler(double %22, double %31, double %32, i64 94495066284856, i64 94495066288496, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066288912, i32 969, i32 52), !dbg !2028
  %33 = fadd double 0xBF43813813813814, %32, !dbg !2028
  call void @fAddHandler(double 0xBF43813813813814, double %32, double %33, i64 0, i64 94495066288912, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066289328, i32 969, i32 49), !dbg !2029
  %34 = fmul double %21, %33, !dbg !2029
  call void @fMulHandler(double %21, double %33, double %34, i64 94495066284472, i64 94495066289328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066289744, i32 969, i32 44), !dbg !2030
  %35 = fadd double 0x3F4A01A01A01A01A, %34, !dbg !2030
  call void @fAddHandler(double 0x3F4A01A01A01A01A, double %34, double %35, i64 0, i64 94495066289744, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066290160, i32 969, i32 41), !dbg !2031
  %36 = fmul double %20, %35, !dbg !2031
  call void @fMulHandler(double %20, double %35, double %36, i64 94495066284120, i64 94495066290160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066290576, i32 969, i32 36), !dbg !2032
  %37 = fadd double 0xBF66C16C16C16C17, %36, !dbg !2032
  call void @fAddHandler(double 0xBF66C16C16C16C17, double %36, double %37, i64 0, i64 94495066290576, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066290992, i32 969, i32 33), !dbg !2033
  %38 = fmul double %19, %37, !dbg !2033
  call void @fMulHandler(double %19, double %37, double %38, i64 94495066283768, i64 94495066290992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066291408, i32 969, i32 28), !dbg !2034
  %39 = fadd double 0x3FB5555555555555, %38, !dbg !2034
  call void @fAddHandler(double 0x3FB5555555555555, double %38, double %39, i64 0, i64 94495066291408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066291824, i32 969, i32 25), !dbg !2013
  store double %39, double* %14, align 8, !dbg !2013
  %40 = load double, double* %14, align 8, !dbg !2035
  %41 = load double, double* %3, align 8, !dbg !2036
  %42 = fdiv double %40, %41, !dbg !2037
  call void @fDivHandler(double %40, double %41, double %42, i64 94495066293896, i64 94495066294280, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066294688, i32 970, i32 24), !dbg !2038
  %43 = call double @exp(double %42) #6, !dbg !2038
  call void @callOneArgHandler(i32 11, double %42, double %43, i64 94495066294688, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066295168, i32 970, i32 17), !dbg !2039
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !2039
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !2040
  store double %43, double* %45, align 8, !dbg !2041
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !2042
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !2043
  %48 = load double, double* %47, align 8, !dbg !2043
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !2044
  call void @fMulHandler(double 0x3CC0000000000000, double %48, double %49, i64 0, i64 94495066297704, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066299376, i32 971, i32 39), !dbg !2045
  %50 = load double, double* %14, align 8, !dbg !2045
  %51 = load double, double* %3, align 8, !dbg !2046
  %52 = fdiv double %50, %51, !dbg !2047
  call void @fDivHandler(double %50, double %51, double %52, i64 94495066299768, i64 94495066300152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066300560, i32 971, i32 75), !dbg !2048
  %53 = call double @GSL_MAX_DBL(double 1.000000e+00, double %52), !dbg !2048
  %54 = fmul double %49, %53, !dbg !2049
  call void @fMulHandler(double %49, double %53, double %54, i64 94495066299376, i64 94495066301336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94495066301808, i32 971, i32 53), !dbg !2050
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !2050
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !2051
  store double %54, double* %56, align 8, !dbg !2052
  ret i32 0, !dbg !2053
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gammainv_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !2054 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2055, metadata !107), !dbg !2056
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2057, metadata !107), !dbg !2058
  %11 = load double, double* %4, align 8, !dbg !2059
  %12 = fcmp ole double %11, 0.000000e+00, !dbg !2061
  %13 = call i1 @fCmpInstHandler(double %11, double 0.000000e+00, i1 %12, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066308656, i32 1353, i32 9), !dbg !2062
  br i1 %13, label %14, label %25, !dbg !2062

; <label>:14:                                     ; preds = %2
  %15 = load double, double* %4, align 8, !dbg !2063
  %16 = load double, double* %4, align 8, !dbg !2065
  %17 = call double @floor(double %16) #1, !dbg !2066
  %18 = fcmp oeq double %15, %17, !dbg !2067
  %19 = call i1 @fCmpInstHandler(double %15, double %17, i1 %18, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066311040, i32 1353, i32 21), !dbg !2068
  br i1 %19, label %20, label %25, !dbg !2068

; <label>:20:                                     ; preds = %14
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2069
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2071
  store double 0.000000e+00, double* %22, align 8, !dbg !2072
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2073
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2074
  store double 0.000000e+00, double* %24, align 8, !dbg !2075
  store i32 0, i32* %3, align 4, !dbg !2076
  br label %117, !dbg !2076

; <label>:25:                                     ; preds = %14, %2
  %26 = load double, double* %4, align 8, !dbg !2077
  %27 = fcmp olt double %26, 5.000000e-01, !dbg !2079
  %28 = call i1 @fCmpInstHandler(double %26, double 5.000000e-01, i1 %27, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066316880, i32 1357, i32 15), !dbg !2080
  br i1 %28, label %29, label %61, !dbg !2080

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2081, metadata !107), !dbg !2083
  call void @llvm.dbg.declare(metadata double* %7, metadata !2084, metadata !107), !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2086, metadata !107), !dbg !2087
  %30 = load double, double* %4, align 8, !dbg !2088
  %31 = call i32 @gsl_sf_lngamma_sgn_e(double %30, %struct.gsl_sf_result_struct* %6, double* %7), !dbg !2089
  store i32 %31, i32* %8, align 4, !dbg !2087
  %32 = load i32, i32* %8, align 4, !dbg !2090
  %33 = icmp eq i32 %32, 1, !dbg !2092
  %34 = sext i32 %32 to i64, !dbg !2093
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 1, i1 %33, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066324192, i32 1361, i32 17), !dbg !2093
  br i1 %35, label %36, label %41, !dbg !2093

; <label>:36:                                     ; preds = %29
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2094
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2096
  store double 0.000000e+00, double* %38, align 8, !dbg !2097
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2098
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !2099
  store double 0.000000e+00, double* %40, align 8, !dbg !2100
  store i32 0, i32* %3, align 4, !dbg !2101
  br label %117, !dbg !2101

; <label>:41:                                     ; preds = %29
  %42 = load i32, i32* %8, align 4, !dbg !2102
  %43 = icmp ne i32 %42, 0, !dbg !2104
  %44 = sext i32 %42 to i64, !dbg !2105
  %45 = call i1 @iCmpInstHandler(i64 %44, i64 0, i1 %43, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066330144, i32 1366, i32 22), !dbg !2105
  br i1 %45, label %46, label %52, !dbg !2105

; <label>:46:                                     ; preds = %41
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2106
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !2108
  store double 0.000000e+00, double* %48, align 8, !dbg !2109
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2110
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !2111
  store double 0.000000e+00, double* %50, align 8, !dbg !2112
  %51 = load i32, i32* %8, align 4, !dbg !2113
  store i32 %51, i32* %3, align 4, !dbg !2114
  br label %117, !dbg !2114

; <label>:52:                                     ; preds = %41
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2115
  %54 = load double, double* %53, align 8, !dbg !2115
  %55 = fsub double -0.000000e+00, %54, !dbg !2117
  call void @fSubHandler(double -0.000000e+00, double %54, double %55, i64 0, i64 94495066336520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066338192, i32 1372, i32 36), !dbg !2118
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !2118
  %57 = load double, double* %56, align 8, !dbg !2118
  %58 = load double, double* %7, align 8, !dbg !2119
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2120
  %60 = call i32 @gsl_sf_exp_mult_err_e(double %55, double %57, double %58, double 0.000000e+00, %struct.gsl_sf_result_struct* %59), !dbg !2121
  store i32 %60, i32* %3, align 4, !dbg !2122
  br label %117, !dbg !2122

; <label>:61:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2123, metadata !107), !dbg !2125
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2126, metadata !107), !dbg !2127
  %62 = load double, double* %4, align 8, !dbg !2128
  %63 = call i32 @gamma_xgthalf(double %62, %struct.gsl_sf_result_struct* %9), !dbg !2129
  store i32 %63, i32* %10, align 4, !dbg !2127
  %64 = load i32, i32* %10, align 4, !dbg !2130
  %65 = icmp eq i32 %64, 16, !dbg !2132
  %66 = sext i32 %64 to i64, !dbg !2133
  %67 = call i1 @iCmpInstHandler(i64 %66, i64 16, i1 %65, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066349232, i32 1378, i32 15), !dbg !2133
  br i1 %67, label %68, label %77, !dbg !2133

; <label>:68:                                     ; preds = %61
  br label %69, !dbg !2134, !llvm.loop !2136

; <label>:69:                                     ; preds = %68
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2137
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !2137
  store double 0.000000e+00, double* %71, align 8, !dbg !2137
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2137
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !2137
  store double 0x10000000000000, double* %73, align 8, !dbg !2137
  br label %74, !dbg !2137, !llvm.loop !2140

; <label>:74:                                     ; preds = %69
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1379, i32 15), !dbg !2142
  store i32 15, i32* %3, align 4, !dbg !2142
  br label %117, !dbg !2142
                                                  ; No predecessors!
  br label %76, !dbg !2145

; <label>:76:                                     ; preds = %75
  br label %115, !dbg !2147

; <label>:77:                                     ; preds = %61
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2148
  %79 = load double, double* %78, align 8, !dbg !2148
  %80 = fdiv double 1.000000e+00, %79, !dbg !2150
  call void @fDivHandler(double 1.000000e+00, double %79, double %80, i64 0, i64 94495066357976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066359680, i32 1382, i32 25), !dbg !2151
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2151
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !2152
  store double %80, double* %82, align 8, !dbg !2153
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2154
  %84 = load double, double* %83, align 8, !dbg !2154
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2155
  %86 = load double, double* %85, align 8, !dbg !2155
  %87 = fdiv double %84, %86, !dbg !2156
  call void @fDivHandler(double %84, double %86, double %87, i64 94495066361736, i64 94495066363832, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066365504, i32 1383, i32 32), !dbg !2157
  %88 = call double @fabs(double %87) #1, !dbg !2157
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2158
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !2159
  %91 = load double, double* %90, align 8, !dbg !2159
  %92 = call double @fabs(double %91) #1, !dbg !2160
  %93 = fmul double %88, %92, !dbg !2162
  call void @fMulHandler(double %88, double %92, double %93, i64 94495066365984, i64 94495066369008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066369488, i32 1383, i32 40), !dbg !2163
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2163
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !2164
  store double %93, double* %95, align 8, !dbg !2165
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2166
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !2167
  %98 = load double, double* %97, align 8, !dbg !2167
  %99 = call double @fabs(double %98) #1, !dbg !2168
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !2169
  call void @fMulHandler(double 0x3CC0000000000000, double %99, double %100, i64 0, i64 94495066373696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066374176, i32 1384, i32 44), !dbg !2170
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2170
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !2171
  %103 = load double, double* %102, align 8, !dbg !2172
  %104 = fadd double %103, %100, !dbg !2172
  call void @fAddHandler(double %103, double %100, double %104, i64 94495066375400, i64 94495066374176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066375808, i32 1384, i32 19), !dbg !2172
  store double %104, double* %102, align 8, !dbg !2172
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2173
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !2173
  %107 = load double, double* %106, align 8, !dbg !2173
  %108 = call double @fabs(double %107) #1, !dbg !2173
  %109 = fcmp olt double %108, 0x10000000000000, !dbg !2173
  %110 = call i1 @fCmpInstHandler(double %108, double 0x10000000000000, i1 %109, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94495066380096, i32 1385, i32 7), !dbg !2175
  br i1 %110, label %111, label %114, !dbg !2175

; <label>:111:                                    ; preds = %77
  br label %112, !dbg !2176, !llvm.loop !2178

; <label>:112:                                    ; preds = %111
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1385, i32 15), !dbg !2179
  store i32 15, i32* %3, align 4, !dbg !2179
  br label %117, !dbg !2179
                                                  ; No predecessors!
  br label %114, !dbg !2182

; <label>:114:                                    ; preds = %113, %77
  store i32 0, i32* %3, align 4, !dbg !2184
  br label %117, !dbg !2184

; <label>:115:                                    ; preds = %76
  br label %116

; <label>:116:                                    ; preds = %115
  br label %117

; <label>:117:                                    ; preds = %116, %114, %112, %74, %52, %46, %36, %20
  %118 = load i32, i32* %3, align 4, !dbg !2185
  ret i32 %118, !dbg !2185
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !2186 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2189, metadata !107), !dbg !2190
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2191, metadata !107), !dbg !2192
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !2193, metadata !107), !dbg !2194
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2195, metadata !107), !dbg !2196
  %19 = load double, double* %6, align 8, !dbg !2197
  %20 = fcmp ole double %19, 5.000000e-01, !dbg !2199
  %21 = call i1 @fCmpInstHandler(double %19, double 5.000000e-01, i1 %20, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066396528, i32 1395, i32 9), !dbg !2200
  br i1 %21, label %22, label %117, !dbg !2200

; <label>:22:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !2201, metadata !107), !dbg !2203
  %23 = load double, double* %6, align 8, !dbg !2204
  %24 = fsub double 1.000000e+00, %23, !dbg !2205
  call void @fSubHandler(double 1.000000e+00, double %23, double %24, i64 0, i64 94495066398664, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066399072, i32 1399, i32 19), !dbg !2203
  store double %24, double* %10, align 8, !dbg !2203
  call void @llvm.dbg.declare(metadata double* %11, metadata !2206, metadata !107), !dbg !2207
  %25 = load double, double* %7, align 8, !dbg !2208
  %26 = fsub double -0.000000e+00, %25, !dbg !2209
  call void @fSubHandler(double -0.000000e+00, double %25, double %26, i64 0, i64 94495066402232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066402608, i32 1400, i32 16), !dbg !2207
  store double %26, double* %11, align 8, !dbg !2207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !2210, metadata !107), !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !2212, metadata !107), !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !2214, metadata !107), !dbg !2215
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2216, metadata !107), !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2218, metadata !107), !dbg !2219
  %27 = load double, double* %10, align 8, !dbg !2220
  %28 = load double, double* %11, align 8, !dbg !2221
  %29 = call i32 @lngamma_lanczos_complex(double %27, double %28, %struct.gsl_sf_result_struct* %12, %struct.gsl_sf_result_struct* %13), !dbg !2222
  store i32 %29, i32* %16, align 4, !dbg !2219
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2223, metadata !107), !dbg !2224
  %30 = load double, double* %6, align 8, !dbg !2225
  %31 = fmul double 0x400921FB54442D18, %30, !dbg !2226
  call void @fMulHandler(double 0x400921FB54442D18, double %30, double %31, i64 0, i64 94495066414664, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066415040, i32 1405, i32 46), !dbg !2227
  %32 = load double, double* %7, align 8, !dbg !2227
  %33 = fmul double 0x400921FB54442D18, %32, !dbg !2228
  call void @fMulHandler(double 0x400921FB54442D18, double %32, double %33, i64 0, i64 94495066415432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066415840, i32 1405, i32 55), !dbg !2229
  %34 = call i32 @gsl_sf_complex_logsin_e(double %31, double %33, %struct.gsl_sf_result_struct* %14, %struct.gsl_sf_result_struct* %15), !dbg !2229
  store i32 %34, i32* %17, align 4, !dbg !2224
  %35 = load i32, i32* %17, align 4, !dbg !2230
  %36 = icmp eq i32 %35, 0, !dbg !2232
  %37 = sext i32 %35 to i64, !dbg !2233
  %38 = call i1 @iCmpInstHandler(i64 %37, i64 0, i1 %36, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066419248, i32 1407, i32 15), !dbg !2233
  br i1 %38, label %39, label %103, !dbg !2233

; <label>:39:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2234, metadata !107), !dbg !2236
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !2237
  %41 = load double, double* %40, align 8, !dbg !2237
  %42 = fsub double 0x3FF250D048E7A1BD, %41, !dbg !2238
  call void @fSubHandler(double 0x3FF250D048E7A1BD, double %41, double %42, i64 0, i64 94495066421880, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066423552, i32 1409, i32 25), !dbg !2239
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2239
  %44 = load double, double* %43, align 8, !dbg !2239
  %45 = fsub double %42, %44, !dbg !2240
  call void @fSubHandler(double %42, double %44, double %45, i64 94495066423552, i64 94495066424392, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066426064, i32 1409, i32 39), !dbg !2241
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2241
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !2242
  store double %45, double* %47, align 8, !dbg !2243
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !2244
  %49 = load double, double* %48, align 8, !dbg !2244
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !2245
  %51 = load double, double* %50, align 8, !dbg !2245
  %52 = fadd double %49, %51, !dbg !2246
  call void @fAddHandler(double %49, double %51, double %52, i64 94495066428152, i64 94495066430248, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066431920, i32 1410, i32 30), !dbg !2247
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2247
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !2248
  %55 = load double, double* %54, align 8, !dbg !2248
  %56 = call double @fabs(double %55) #1, !dbg !2249
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !2250
  call void @fMulHandler(double 0x3CC0000000000000, double %56, double %57, i64 0, i64 94495066434880, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066435360, i32 1410, i32 62), !dbg !2251
  %58 = fadd double %52, %57, !dbg !2251
  call void @fAddHandler(double %52, double %57, double %58, i64 94495066431920, i64 94495066435360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066435776, i32 1410, i32 38), !dbg !2252
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2252
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !2253
  store double %58, double* %60, align 8, !dbg !2254
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2255
  %62 = load double, double* %61, align 8, !dbg !2255
  %63 = fsub double -0.000000e+00, %62, !dbg !2256
  call void @fSubHandler(double -0.000000e+00, double %62, double %63, i64 0, i64 94495066437864, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066439536, i32 1411, i32 18), !dbg !2257
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2257
  %65 = load double, double* %64, align 8, !dbg !2257
  %66 = fsub double %63, %65, !dbg !2258
  call void @fSubHandler(double %63, double %65, double %66, i64 94495066439536, i64 94495066440376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066442048, i32 1411, i32 31), !dbg !2259
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2259
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2260
  store double %66, double* %68, align 8, !dbg !2261
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2262
  %70 = load double, double* %69, align 8, !dbg !2262
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2263
  %72 = load double, double* %71, align 8, !dbg !2263
  %73 = fadd double %70, %72, !dbg !2264
  call void @fAddHandler(double %70, double %72, double %73, i64 94495066444136, i64 94495066446232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066447904, i32 1412, i32 30), !dbg !2265
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2265
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2266
  %76 = load double, double* %75, align 8, !dbg !2266
  %77 = call double @fabs(double %76) #1, !dbg !2267
  %78 = fmul double 0x3CC0000000000000, %77, !dbg !2268
  call void @fMulHandler(double 0x3CC0000000000000, double %77, double %78, i64 0, i64 94495066450864, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066451344, i32 1412, i32 62), !dbg !2269
  %79 = fadd double %73, %78, !dbg !2269
  call void @fAddHandler(double %73, double %78, double %79, i64 94495066447904, i64 94495066451344, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066451760, i32 1412, i32 38), !dbg !2270
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2270
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !2271
  store double %79, double* %81, align 8, !dbg !2272
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2273
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !2274
  %84 = call i32 @gsl_sf_angle_restrict_symm_e(double* %83), !dbg !2275
  store i32 %84, i32* %18, align 4, !dbg !2276
  %85 = load i32, i32* %18, align 4, !dbg !2277
  %86 = icmp ne i32 %85, 0, !dbg !2277
  %87 = sext i32 %85 to i64, !dbg !2277
  %88 = call i1 @iCmpInstHandler(i64 %87, i64 0, i1 %86, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066455952, i32 1414, i32 14), !dbg !2277
  br i1 %88, label %89, label %91, !dbg !2277

; <label>:89:                                     ; preds = %39
  %90 = load i32, i32* %18, align 4, !dbg !2278
  br label %101, !dbg !2278

; <label>:91:                                     ; preds = %39
  %92 = load i32, i32* %16, align 4, !dbg !2280
  %93 = icmp ne i32 %92, 0, !dbg !2280
  %94 = sext i32 %92 to i64, !dbg !2280
  %95 = call i1 @iCmpInstHandler(i64 %94, i64 0, i1 %93, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94495066460496, i32 1414, i32 14), !dbg !2280
  br i1 %95, label %96, label %98, !dbg !2280

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %16, align 4, !dbg !2282
  br label %99, !dbg !2282

; <label>:98:                                     ; preds = %91
  br label %99, !dbg !2284

; <label>:99:                                     ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ], !dbg !2286
  br label %101, !dbg !2286

; <label>:101:                                    ; preds = %99, %89
  %102 = phi i32 [ %90, %89 ], [ %100, %99 ], !dbg !2288
  store i32 %102, i32* %5, align 4, !dbg !2290
  br label %123, !dbg !2290

; <label>:103:                                    ; preds = %22
  br label %104, !dbg !2291, !llvm.loop !2293

; <label>:104:                                    ; preds = %103
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2294
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !2294
  store double 0x7FF8000000000000, double* %106, align 8, !dbg !2294
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2294
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !2294
  store double 0x7FF8000000000000, double* %108, align 8, !dbg !2294
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2294
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !2294
  store double 0x7FF8000000000000, double* %110, align 8, !dbg !2294
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2294
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !2294
  store double 0x7FF8000000000000, double* %112, align 8, !dbg !2294
  br label %113, !dbg !2294, !llvm.loop !2297

; <label>:113:                                    ; preds = %104
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1417, i32 1), !dbg !2299
  store i32 1, i32* %5, align 4, !dbg !2299
  br label %123, !dbg !2299
                                                  ; No predecessors!
  br label %115, !dbg !2302

; <label>:115:                                    ; preds = %114
  br label %116

; <label>:116:                                    ; preds = %115
  br label %123, !dbg !2304

; <label>:117:                                    ; preds = %4
  %118 = load double, double* %6, align 8, !dbg !2305
  %119 = load double, double* %7, align 8, !dbg !2307
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2308
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2309
  %122 = call i32 @lngamma_lanczos_complex(double %118, double %119, %struct.gsl_sf_result_struct* %120, %struct.gsl_sf_result_struct* %121), !dbg !2310
  store i32 %122, i32* %5, align 4, !dbg !2311
  br label %123, !dbg !2311

; <label>:123:                                    ; preds = %117, %116, %113, %101
  %124 = load i32, i32* %5, align 4, !dbg !2312
  ret i32 %124, !dbg !2312
}

; Function Attrs: nounwind uwtable
define internal i32 @lngamma_lanczos_complex(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !2313 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2314, metadata !107), !dbg !2315
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2316, metadata !107), !dbg !2317
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2318, metadata !107), !dbg !2319
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !2320, metadata !107), !dbg !2321
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2322, metadata !107), !dbg !2323
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2324, metadata !107), !dbg !2325
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !2326, metadata !107), !dbg !2327
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !2328, metadata !107), !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !2330, metadata !107), !dbg !2331
  call void @llvm.dbg.declare(metadata double* %14, metadata !2332, metadata !107), !dbg !2333
  call void @llvm.dbg.declare(metadata double* %15, metadata !2334, metadata !107), !dbg !2335
  call void @llvm.dbg.declare(metadata double* %16, metadata !2336, metadata !107), !dbg !2337
  call void @llvm.dbg.declare(metadata double* %17, metadata !2338, metadata !107), !dbg !2339
  %21 = load double, double* %5, align 8, !dbg !2340
  %22 = fsub double %21, 1.000000e+00, !dbg !2340
  call void @fSubHandler(double %21, double 1.000000e+00, double %22, i64 94495066411176, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066501344, i32 669, i32 6), !dbg !2340
  store double %22, double* %5, align 8, !dbg !2340
  %23 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @lanczos_7_c, i64 0, i64 0), align 16, !dbg !2341
  store double %23, double* %14, align 8, !dbg !2342
  store double 0.000000e+00, double* %15, align 8, !dbg !2343
  store i32 1, i32* %9, align 4, !dbg !2344
  br label %24, !dbg !2346

; <label>:24:                                     ; preds = %57, %4
  %25 = load i32, i32* %9, align 4, !dbg !2347
  %26 = icmp sle i32 %25, 8, !dbg !2350
  %27 = sext i32 %25 to i64, !dbg !2351
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 8, i1 %26, i32 41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066505600, i32 673, i32 13), !dbg !2351
  br i1 %28, label %29, label %60, !dbg !2351

; <label>:29:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %18, metadata !2352, metadata !107), !dbg !2354
  %30 = load double, double* %5, align 8, !dbg !2355
  %31 = load i32, i32* %9, align 4, !dbg !2356
  %32 = sitofp i32 %31 to double, !dbg !2356
  %33 = fadd double %30, %32, !dbg !2357
  call void @fAddHandler(double %30, double %32, double %33, i64 94495066507768, i64 94495066508504, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066510176, i32 674, i32 19), !dbg !2354
  store double %33, double* %18, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata double* %19, metadata !2358, metadata !107), !dbg !2359
  %34 = load double, double* %6, align 8, !dbg !2360
  store double %34, double* %19, align 8, !dbg !2359
  call void @llvm.dbg.declare(metadata double* %20, metadata !2361, metadata !107), !dbg !2362
  %35 = load i32, i32* %9, align 4, !dbg !2363
  %36 = sext i32 %35 to i64, !dbg !2364
  %37 = getelementptr inbounds [9 x double], [9 x double]* @lanczos_7_c, i64 0, i64 %36, !dbg !2364
  %38 = load double, double* %37, align 8, !dbg !2364
  %39 = load double, double* %18, align 8, !dbg !2365
  %40 = load double, double* %18, align 8, !dbg !2366
  %41 = fmul double %39, %40, !dbg !2367
  call void @fMulHandler(double %39, double %40, double %41, i64 94495066519064, i64 94495066519448, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066519856, i32 676, i32 35), !dbg !2368
  %42 = load double, double* %19, align 8, !dbg !2368
  %43 = load double, double* %19, align 8, !dbg !2369
  %44 = fmul double %42, %43, !dbg !2370
  call void @fMulHandler(double %42, double %43, double %44, i64 94495066520248, i64 94495066520632, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066521040, i32 676, i32 41), !dbg !2371
  %45 = fadd double %41, %44, !dbg !2371
  call void @fAddHandler(double %41, double %44, double %45, i64 94495066519856, i64 94495066521040, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066521456, i32 676, i32 38), !dbg !2372
  %46 = fdiv double %38, %45, !dbg !2372
  call void @fDivHandler(double %38, double %45, double %46, i64 94495066518968, i64 94495066521456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066521872, i32 676, i32 31), !dbg !2362
  store double %46, double* %20, align 8, !dbg !2362
  %47 = load double, double* %20, align 8, !dbg !2373
  %48 = load double, double* %18, align 8, !dbg !2374
  %49 = fmul double %47, %48, !dbg !2375
  call void @fMulHandler(double %47, double %48, double %49, i64 94495066523944, i64 94495066524328, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066524736, i32 677, i32 16), !dbg !2376
  %50 = load double, double* %14, align 8, !dbg !2376
  %51 = fadd double %50, %49, !dbg !2376
  call void @fAddHandler(double %50, double %49, double %51, i64 94495066525128, i64 94495066524736, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066525536, i32 677, i32 10), !dbg !2376
  store double %51, double* %14, align 8, !dbg !2376
  %52 = load double, double* %20, align 8, !dbg !2377
  %53 = load double, double* %19, align 8, !dbg !2378
  %54 = fmul double %52, %53, !dbg !2379
  call void @fMulHandler(double %52, double %53, double %54, i64 94495066527320, i64 94495066527704, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066528112, i32 678, i32 16), !dbg !2380
  %55 = load double, double* %15, align 8, !dbg !2380
  %56 = fsub double %55, %54, !dbg !2380
  call void @fSubHandler(double %55, double %54, double %56, i64 94495066528504, i64 94495066528112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066528912, i32 678, i32 10), !dbg !2380
  store double %56, double* %15, align 8, !dbg !2380
  br label %57, !dbg !2381

; <label>:57:                                     ; preds = %29
  %58 = load i32, i32* %9, align 4, !dbg !2382
  %59 = add nsw i32 %58, 1, !dbg !2382
  store i32 %59, i32* %9, align 4, !dbg !2382
  br label %24, !dbg !2384, !llvm.loop !2385

; <label>:60:                                     ; preds = %24
  %61 = load double, double* %5, align 8, !dbg !2387
  %62 = fadd double %61, 7.500000e+00, !dbg !2388
  call void @fAddHandler(double %61, double 7.500000e+00, double %62, i64 94495066534024, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066534400, i32 681, i32 27), !dbg !2389
  %63 = load double, double* %6, align 8, !dbg !2389
  %64 = call i32 @gsl_sf_complex_log_e(double %62, double %63, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !2390
  %65 = load double, double* %14, align 8, !dbg !2391
  %66 = load double, double* %15, align 8, !dbg !2392
  %67 = call i32 @gsl_sf_complex_log_e(double %65, double %66, %struct.gsl_sf_result_struct* %12, %struct.gsl_sf_result_struct* %13), !dbg !2393
  %68 = load double, double* %5, align 8, !dbg !2394
  %69 = fadd double %68, 5.000000e-01, !dbg !2395
  call void @fAddHandler(double %68, double 5.000000e-01, double %69, i64 94495066537496, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066537904, i32 685, i32 16), !dbg !2396
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2396
  %71 = load double, double* %70, align 8, !dbg !2396
  %72 = fmul double %69, %71, !dbg !2397
  call void @fMulHandler(double %69, double %71, double %72, i64 94495066537904, i64 94495066538712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066540384, i32 685, i32 21), !dbg !2398
  %73 = load double, double* %6, align 8, !dbg !2398
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2399
  %75 = load double, double* %74, align 8, !dbg !2399
  %76 = fmul double %73, %75, !dbg !2400
  call void @fMulHandler(double %73, double %75, double %76, i64 94495066540776, i64 94495066541608, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066543280, i32 685, i32 37), !dbg !2401
  %77 = fsub double %72, %76, !dbg !2401
  call void @fSubHandler(double %72, double %76, double %77, i64 94495066540384, i64 94495066543280, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066543696, i32 685, i32 33), !dbg !2402
  %78 = load double, double* %5, align 8, !dbg !2402
  %79 = fadd double %78, 7.500000e+00, !dbg !2403
  call void @fAddHandler(double %78, double 7.500000e+00, double %79, i64 94495066544088, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066544528, i32 685, i32 54), !dbg !2404
  %80 = fsub double %77, %79, !dbg !2404
  call void @fSubHandler(double %77, double %79, double %80, i64 94495066543696, i64 94495066544528, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066544912, i32 685, i32 49), !dbg !2405
  %81 = fadd double %80, 0x3FED67F1C864BEB5, !dbg !2405
  call void @fAddHandler(double %80, double 0x3FED67F1C864BEB5, double %81, i64 94495066544912, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066545328, i32 685, i32 60), !dbg !2406
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2406
  %83 = load double, double* %82, align 8, !dbg !2406
  %84 = fadd double %81, %83, !dbg !2407
  call void @fAddHandler(double %81, double %83, double %84, i64 94495066545328, i64 94495066546168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066547840, i32 685, i32 76), !dbg !2408
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2408
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2409
  store double %84, double* %86, align 8, !dbg !2410
  %87 = load double, double* %6, align 8, !dbg !2411
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2412
  %89 = load double, double* %88, align 8, !dbg !2412
  %90 = fmul double %87, %89, !dbg !2413
  call void @fMulHandler(double %87, double %89, double %90, i64 94495066549480, i64 94495066550312, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066551984, i32 686, i32 15), !dbg !2414
  %91 = load double, double* %5, align 8, !dbg !2414
  %92 = fadd double %91, 5.000000e-01, !dbg !2415
  call void @fAddHandler(double %91, double 5.000000e-01, double %92, i64 94495066552376, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066552816, i32 686, i32 32), !dbg !2416
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2416
  %94 = load double, double* %93, align 8, !dbg !2416
  %95 = fmul double %92, %94, !dbg !2417
  call void @fMulHandler(double %92, double %94, double %95, i64 94495066552816, i64 94495066553624, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066555296, i32 686, i32 37), !dbg !2418
  %96 = fadd double %90, %95, !dbg !2418
  call void @fAddHandler(double %90, double %95, double %96, i64 94495066551984, i64 94495066555296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066555712, i32 686, i32 27), !dbg !2419
  %97 = load double, double* %6, align 8, !dbg !2419
  %98 = fsub double %96, %97, !dbg !2420
  call void @fSubHandler(double %96, double %97, double %98, i64 94495066555712, i64 94495066556104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066556512, i32 686, i32 49), !dbg !2421
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2421
  %100 = load double, double* %99, align 8, !dbg !2421
  %101 = fadd double %98, %100, !dbg !2422
  call void @fAddHandler(double %98, double %100, double %101, i64 94495066556512, i64 94495066557352, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066559024, i32 686, i32 54), !dbg !2423
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2423
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !2424
  store double %101, double* %103, align 8, !dbg !2425
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2426
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !2427
  %106 = load double, double* %105, align 8, !dbg !2427
  %107 = call double @fabs(double %106) #1, !dbg !2428
  %108 = fmul double 0x3CD0000000000000, %107, !dbg !2429
  call void @fMulHandler(double 0x3CD0000000000000, double %107, double %108, i64 0, i64 94495066563232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066563712, i32 687, i32 35), !dbg !2430
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2430
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !2431
  store double %108, double* %110, align 8, !dbg !2432
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2433
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !2434
  %113 = load double, double* %112, align 8, !dbg !2434
  %114 = call double @fabs(double %113) #1, !dbg !2435
  %115 = fmul double 0x3CD0000000000000, %114, !dbg !2436
  call void @fMulHandler(double 0x3CD0000000000000, double %114, double %115, i64 0, i64 94495066567920, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066568400, i32 688, i32 35), !dbg !2437
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2437
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !2438
  store double %115, double* %117, align 8, !dbg !2439
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2440
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !2441
  %120 = load double, double* %119, align 8, !dbg !2441
  store double %120, double* %16, align 8, !dbg !2442
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2443
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !2444
  %123 = load double, double* %122, align 8, !dbg !2444
  store double %123, double* %17, align 8, !dbg !2445
  %124 = load double, double* %16, align 8, !dbg !2446
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2447
  %126 = call i32 @gsl_sf_angle_restrict_symm_err_e(double %124, %struct.gsl_sf_result_struct* %125), !dbg !2448
  %127 = load double, double* %17, align 8, !dbg !2449
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2450
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !2451
  %130 = load double, double* %129, align 8, !dbg !2452
  %131 = fadd double %130, %127, !dbg !2452
  call void @fAddHandler(double %130, double %127, double %131, i64 94495066578728, i64 94495066577544, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94495066581200, i32 692, i32 11), !dbg !2452
  store double %131, double* %129, align 8, !dbg !2452
  ret i32 0, !dbg !2453
}

declare i32 @gsl_sf_complex_logsin_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_angle_restrict_symm_e(double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_taylorcoeff_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !2454 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2457, metadata !107), !dbg !2458
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2459, metadata !107), !dbg !2460
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2461, metadata !107), !dbg !2462
  %12 = load double, double* %6, align 8, !dbg !2463
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !2465
  %14 = call i1 @fCmpInstHandler(double %12, double 0.000000e+00, i1 %13, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066587760, i32 1431, i32 8), !dbg !2466
  br i1 %14, label %20, label %15, !dbg !2466

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %5, align 4, !dbg !2467
  %17 = icmp slt i32 %16, 0, !dbg !2469
  %18 = sext i32 %16 to i64, !dbg !2470
  %19 = call i1 @iCmpInstHandler(i64 %18, i64 0, i1 %17, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066589120, i32 1431, i32 19), !dbg !2470
  br i1 %19, label %20, label %29, !dbg !2470

; <label>:20:                                     ; preds = %15, %3
  br label %21, !dbg !2471, !llvm.loop !2473

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2474
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !2474
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !2474
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2474
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2474
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !2474
  br label %26, !dbg !2474, !llvm.loop !2477

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1432, i32 1), !dbg !2479
  store i32 1, i32* %4, align 4, !dbg !2479
  br label %146, !dbg !2479
                                                  ; No predecessors!
  br label %28, !dbg !2482

; <label>:28:                                     ; preds = %27
  br label %146, !dbg !2484

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %5, align 4, !dbg !2485
  %31 = icmp eq i32 %30, 0, !dbg !2487
  %32 = sext i32 %30 to i64, !dbg !2488
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066597536, i32 1434, i32 13), !dbg !2488
  br i1 %33, label %34, label %39, !dbg !2488

; <label>:34:                                     ; preds = %29
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2489
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !2491
  store double 1.000000e+00, double* %36, align 8, !dbg !2492
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2493
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !2494
  store double 0.000000e+00, double* %38, align 8, !dbg !2495
  store i32 0, i32* %4, align 4, !dbg !2496
  br label %146, !dbg !2496

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %5, align 4, !dbg !2497
  %41 = icmp eq i32 %40, 1, !dbg !2499
  %42 = sext i32 %40 to i64, !dbg !2500
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 1, i1 %41, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066603488, i32 1439, i32 13), !dbg !2500
  br i1 %43, label %44, label %50, !dbg !2500

; <label>:44:                                     ; preds = %39
  %45 = load double, double* %6, align 8, !dbg !2501
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2503
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !2504
  store double %45, double* %47, align 8, !dbg !2505
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2506
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2507
  store double 0.000000e+00, double* %49, align 8, !dbg !2508
  store i32 0, i32* %4, align 4, !dbg !2509
  br label %146, !dbg !2509

; <label>:50:                                     ; preds = %39
  %51 = load double, double* %6, align 8, !dbg !2510
  %52 = fcmp oeq double %51, 0.000000e+00, !dbg !2512
  %53 = call i1 @fCmpInstHandler(double %51, double 0.000000e+00, i1 %52, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066609824, i32 1444, i32 13), !dbg !2513
  br i1 %53, label %54, label %59, !dbg !2513

; <label>:54:                                     ; preds = %50
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2514
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !2516
  store double 0.000000e+00, double* %56, align 8, !dbg !2517
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2518
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !2519
  store double 0.000000e+00, double* %58, align 8, !dbg !2520
  store i32 0, i32* %4, align 4, !dbg !2521
  br label %146, !dbg !2521

; <label>:59:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %8, metadata !2522, metadata !107), !dbg !2524
  store double 0x3FFD67F1C864BEB4, double* %8, align 8, !dbg !2524
  call void @llvm.dbg.declare(metadata double* %9, metadata !2525, metadata !107), !dbg !2526
  %60 = load i32, i32* %5, align 4, !dbg !2527
  %61 = sitofp i32 %60 to double, !dbg !2527
  %62 = load double, double* %6, align 8, !dbg !2528
  %63 = call double @log(double %62) #6, !dbg !2529
  call void @callOneArgHandler(i32 12, double %62, double %63, i64 94495066621320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066621792, i32 1451, i32 31), !dbg !2530
  %64 = fadd double %63, 1.000000e+00, !dbg !2530
  call void @fAddHandler(double %63, double 1.000000e+00, double %64, i64 94495066621792, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066622304, i32 1451, i32 37), !dbg !2531
  %65 = fmul double %61, %64, !dbg !2531
  call void @fMulHandler(double %61, double %64, double %65, i64 94495066619672, i64 94495066622304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066622688, i32 1451, i32 29), !dbg !2532
  %66 = fadd double %65, 1.000000e+00, !dbg !2532
  call void @fAddHandler(double %65, double 1.000000e+00, double %66, i64 94495066622688, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066623136, i32 1451, i32 43), !dbg !2533
  %67 = load i32, i32* %5, align 4, !dbg !2533
  %68 = sitofp i32 %67 to double, !dbg !2533
  %69 = fadd double %68, 5.000000e-01, !dbg !2534
  call void @fAddHandler(double %68, double 5.000000e-01, double %69, i64 94495066623880, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066625584, i32 1451, i32 53), !dbg !2535
  %70 = load i32, i32* %5, align 4, !dbg !2535
  %71 = sitofp i32 %70 to double, !dbg !2535
  %72 = fadd double %71, 1.000000e+00, !dbg !2536
  call void @fAddHandler(double %71, double 1.000000e+00, double %72, i64 94495066626328, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066628032, i32 1451, i32 64), !dbg !2537
  %73 = call double @log(double %72) #6, !dbg !2537
  call void @callOneArgHandler(i32 12, double %72, double %73, i64 94495066628032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066628480, i32 1451, i32 59), !dbg !2539
  %74 = fmul double %69, %73, !dbg !2539
  call void @fMulHandler(double %69, double %73, double %74, i64 94495066625584, i64 94495066628480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066628960, i32 1451, i32 58), !dbg !2540
  %75 = fsub double %66, %74, !dbg !2540
  call void @fSubHandler(double %66, double %74, double %75, i64 94495066623136, i64 94495066628960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066629376, i32 1451, i32 49), !dbg !2541
  %76 = fadd double %75, 0x3FED67F1C864BEB4, !dbg !2541
  call void @fAddHandler(double %75, double 0x3FED67F1C864BEB4, double %76, i64 94495066629376, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066629792, i32 1451, i32 70), !dbg !2526
  store double %76, double* %9, align 8, !dbg !2526
  %77 = load double, double* %9, align 8, !dbg !2542
  %78 = fcmp olt double %77, 0xC0861B2BDD7ABCD2, !dbg !2544
  %79 = call i1 @fCmpInstHandler(double %77, double 0xC0861B2BDD7ABCD2, i1 %78, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066632336, i32 1453, i32 16), !dbg !2545
  br i1 %79, label %80, label %89, !dbg !2545

; <label>:80:                                     ; preds = %59
  br label %81, !dbg !2546, !llvm.loop !2548

; <label>:81:                                     ; preds = %80
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2549
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !2549
  store double 0.000000e+00, double* %83, align 8, !dbg !2549
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2549
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !2549
  store double 0x10000000000000, double* %85, align 8, !dbg !2549
  br label %86, !dbg !2549, !llvm.loop !2552

; <label>:86:                                     ; preds = %81
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1454, i32 15), !dbg !2554
  store i32 15, i32* %4, align 4, !dbg !2554
  br label %146, !dbg !2554
                                                  ; No predecessors!
  br label %88, !dbg !2557

; <label>:88:                                     ; preds = %87
  br label %142, !dbg !2559

; <label>:89:                                     ; preds = %59
  %90 = load double, double* %9, align 8, !dbg !2560
  %91 = fcmp ogt double %90, 0x40862642FEFA39EF, !dbg !2562
  %92 = call i1 @fCmpInstHandler(double %90, double 0x40862642FEFA39EF, i1 %91, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066641104, i32 1456, i32 21), !dbg !2563
  br i1 %92, label %93, label %102, !dbg !2563

; <label>:93:                                     ; preds = %89
  br label %94, !dbg !2564, !llvm.loop !2566

; <label>:94:                                     ; preds = %93
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2567
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !2567
  store double 0x7FF0000000000000, double* %96, align 8, !dbg !2567
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2567
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !2567
  store double 0x7FF0000000000000, double* %98, align 8, !dbg !2567
  br label %99, !dbg !2567, !llvm.loop !2570

; <label>:99:                                     ; preds = %94
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1457, i32 16), !dbg !2572
  store i32 16, i32* %4, align 4, !dbg !2572
  br label %146, !dbg !2572
                                                  ; No predecessors!
  br label %101, !dbg !2575

; <label>:101:                                    ; preds = %100
  br label %141, !dbg !2577

; <label>:102:                                    ; preds = %89
  call void @llvm.dbg.declare(metadata double* %10, metadata !2578, metadata !107), !dbg !2580
  store double 1.000000e+00, double* %10, align 8, !dbg !2580
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2581, metadata !107), !dbg !2582
  store i32 1, i32* %11, align 4, !dbg !2583
  br label %103, !dbg !2585

; <label>:103:                                    ; preds = %117, %102
  %104 = load i32, i32* %11, align 4, !dbg !2586
  %105 = load i32, i32* %5, align 4, !dbg !2589
  %106 = icmp sle i32 %104, %105, !dbg !2590
  %107 = sext i32 %104 to i64, !dbg !2591
  %108 = sext i32 %105 to i64, !dbg !2591
  %109 = call i1 @iCmpInstHandler(i64 %107, i64 %108, i1 %106, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066654928, i32 1462, i32 17), !dbg !2591
  br i1 %109, label %110, label %120, !dbg !2591

; <label>:110:                                    ; preds = %103
  %111 = load double, double* %6, align 8, !dbg !2592
  %112 = load i32, i32* %11, align 4, !dbg !2594
  %113 = sitofp i32 %112 to double, !dbg !2594
  %114 = fdiv double %111, %113, !dbg !2595
  call void @fDivHandler(double %111, double %113, double %114, i64 94495066656040, i64 94495066656744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066658416, i32 1463, i32 22), !dbg !2596
  %115 = load double, double* %10, align 8, !dbg !2596
  %116 = fmul double %115, %114, !dbg !2596
  call void @fMulHandler(double %115, double %114, double %116, i64 94495066658808, i64 94495066658416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066659216, i32 1463, i32 17), !dbg !2596
  store double %116, double* %10, align 8, !dbg !2596
  br label %117, !dbg !2597

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %11, align 4, !dbg !2598
  %119 = add nsw i32 %118, 1, !dbg !2598
  store i32 %119, i32* %11, align 4, !dbg !2598
  br label %103, !dbg !2600, !llvm.loop !2601

; <label>:120:                                    ; preds = %103
  %121 = load double, double* %10, align 8, !dbg !2603
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2604
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !2605
  store double %121, double* %123, align 8, !dbg !2606
  %124 = load i32, i32* %5, align 4, !dbg !2607
  %125 = sitofp i32 %124 to double, !dbg !2607
  %126 = fmul double %125, 0x3CB0000000000000, !dbg !2608
  call void @fMulHandler(double %125, double 0x3CB0000000000000, double %126, i64 94495066666280, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066667952, i32 1466, i32 23), !dbg !2609
  %127 = load double, double* %10, align 8, !dbg !2609
  %128 = fmul double %126, %127, !dbg !2610
  call void @fMulHandler(double %126, double %127, double %128, i64 94495066667952, i64 94495066668344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066668752, i32 1466, i32 41), !dbg !2611
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2611
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !2612
  store double %128, double* %130, align 8, !dbg !2613
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2614
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !2614
  %133 = load double, double* %132, align 8, !dbg !2614
  %134 = call double @fabs(double %133) #1, !dbg !2614
  %135 = fcmp olt double %134, 0x10000000000000, !dbg !2614
  %136 = call i1 @fCmpInstHandler(double %134, double 0x10000000000000, i1 %135, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0), i64 94495066672896, i32 1467, i32 7), !dbg !2616
  br i1 %136, label %137, label %140, !dbg !2616

; <label>:137:                                    ; preds = %120
  br label %138, !dbg !2617, !llvm.loop !2619

; <label>:138:                                    ; preds = %137
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1467, i32 15), !dbg !2620
  store i32 15, i32* %4, align 4, !dbg !2620
  br label %146, !dbg !2620
                                                  ; No predecessors!
  br label %140, !dbg !2623

; <label>:140:                                    ; preds = %139, %120
  store i32 0, i32* %4, align 4, !dbg !2625
  br label %146, !dbg !2625

; <label>:141:                                    ; preds = %101
  br label %142

; <label>:142:                                    ; preds = %141, %88
  br label %143

; <label>:143:                                    ; preds = %142
  br label %144

; <label>:144:                                    ; preds = %143
  br label %145

; <label>:145:                                    ; preds = %144
  br label %146

; <label>:146:                                    ; preds = %145, %140, %138, %99, %86, %54, %44, %34, %28, %26
  %147 = load i32, i32* %4, align 4, !dbg !2626
  ret i32 %147, !dbg !2626
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !2627 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2632, metadata !107), !dbg !2633
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2634, metadata !107), !dbg !2635
  %6 = load i32, i32* %4, align 4, !dbg !2636
  %7 = icmp ult i32 %6, 18, !dbg !2638
  %8 = sext i32 %6 to i64, !dbg !2639
  %9 = call i1 @iCmpInstHandler(i64 %8, i64 18, i1 %7, i32 36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), i64 94495066685952, i32 1478, i32 8), !dbg !2639
  br i1 %9, label %10, label %20, !dbg !2639

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !2640
  %12 = zext i32 %11 to i64, !dbg !2642
  %13 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %12, !dbg !2642
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !2643
  %15 = load double, double* %14, align 8, !dbg !2643
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2644
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !2645
  store double %15, double* %17, align 8, !dbg !2646
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2647
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !2648
  store double 0.000000e+00, double* %19, align 8, !dbg !2649
  store i32 0, i32* %3, align 4, !dbg !2650
  br label %50, !dbg !2650

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %4, align 4, !dbg !2651
  %22 = icmp ule i32 %21, 170, !dbg !2653
  %23 = sext i32 %21 to i64, !dbg !2654
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 170, i1 %22, i32 37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), i64 94495066696688, i32 1483, i32 13), !dbg !2654
  br i1 %24, label %25, label %40, !dbg !2654

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !dbg !2655
  %27 = zext i32 %26 to i64, !dbg !2657
  %28 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %27, !dbg !2657
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1, !dbg !2658
  %30 = load double, double* %29, align 8, !dbg !2658
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2659
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2660
  store double %30, double* %32, align 8, !dbg !2661
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2662
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !2663
  %35 = load double, double* %34, align 8, !dbg !2663
  %36 = call double @fabs(double %35) #1, !dbg !2664
  %37 = fmul double 0x3CC0000000000000, %36, !dbg !2665
  call void @fMulHandler(double 0x3CC0000000000000, double %36, double %37, i64 0, i64 94495066705984, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0), i64 94495066706464, i32 1485, i32 41), !dbg !2666
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2666
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !2667
  store double %37, double* %39, align 8, !dbg !2668
  store i32 0, i32* %3, align 4, !dbg !2669
  br label %50, !dbg !2669

; <label>:40:                                     ; preds = %20
  br label %41, !dbg !2670, !llvm.loop !2672

; <label>:41:                                     ; preds = %40
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2673
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !2673
  store double 0x7FF0000000000000, double* %43, align 8, !dbg !2673
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2673
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !2673
  store double 0x7FF0000000000000, double* %45, align 8, !dbg !2673
  br label %46, !dbg !2673, !llvm.loop !2676

; <label>:46:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1489, i32 16), !dbg !2678
  store i32 16, i32* %3, align 4, !dbg !2678
  br label %50, !dbg !2678
                                                  ; No predecessors!
  br label %48, !dbg !2681

; <label>:48:                                     ; preds = %47
  br label %49

; <label>:49:                                     ; preds = %48
  br label %50

; <label>:50:                                     ; preds = %49, %46, %25, %10
  %51 = load i32, i32* %3, align 4, !dbg !2683
  ret i32 %51, !dbg !2683
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_doublefact_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !2684 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2685, metadata !107), !dbg !2686
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2687, metadata !107), !dbg !2688
  %6 = load i32, i32* %4, align 4, !dbg !2689
  %7 = icmp ult i32 %6, 26, !dbg !2691
  %8 = sext i32 %6 to i64, !dbg !2692
  %9 = call i1 @iCmpInstHandler(i64 %8, i64 26, i1 %7, i32 36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), i64 94495066723264, i32 1498, i32 8), !dbg !2692
  br i1 %9, label %10, label %20, !dbg !2692

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !2693
  %12 = zext i32 %11 to i64, !dbg !2695
  %13 = getelementptr inbounds [298 x %struct.anon.0], [298 x %struct.anon.0]* @doub_fact_table, i64 0, i64 %12, !dbg !2695
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 1, !dbg !2696
  %15 = load double, double* %14, align 8, !dbg !2696
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2697
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !2698
  store double %15, double* %17, align 8, !dbg !2699
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2700
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !2701
  store double 0.000000e+00, double* %19, align 8, !dbg !2702
  store i32 0, i32* %3, align 4, !dbg !2703
  br label %50, !dbg !2703

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %4, align 4, !dbg !2704
  %22 = icmp ule i32 %21, 297, !dbg !2706
  %23 = sext i32 %21 to i64, !dbg !2707
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 297, i1 %22, i32 37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), i64 94495066734000, i32 1503, i32 13), !dbg !2707
  br i1 %24, label %25, label %40, !dbg !2707

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !dbg !2708
  %27 = zext i32 %26 to i64, !dbg !2710
  %28 = getelementptr inbounds [298 x %struct.anon.0], [298 x %struct.anon.0]* @doub_fact_table, i64 0, i64 %27, !dbg !2710
  %29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i32 0, i32 1, !dbg !2711
  %30 = load double, double* %29, align 8, !dbg !2711
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2712
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2713
  store double %30, double* %32, align 8, !dbg !2714
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2715
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !2716
  %35 = load double, double* %34, align 8, !dbg !2716
  %36 = call double @fabs(double %35) #1, !dbg !2717
  %37 = fmul double 0x3CC0000000000000, %36, !dbg !2718
  call void @fMulHandler(double 0x3CC0000000000000, double %36, double %37, i64 0, i64 94495066743296, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @35, i32 0, i32 0), i64 94495066743776, i32 1505, i32 41), !dbg !2719
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2719
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !2720
  store double %37, double* %39, align 8, !dbg !2721
  store i32 0, i32* %3, align 4, !dbg !2722
  br label %50, !dbg !2722

; <label>:40:                                     ; preds = %20
  br label %41, !dbg !2723, !llvm.loop !2725

; <label>:41:                                     ; preds = %40
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2726
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !2726
  store double 0x7FF0000000000000, double* %43, align 8, !dbg !2726
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2726
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !2726
  store double 0x7FF0000000000000, double* %45, align 8, !dbg !2726
  br label %46, !dbg !2726, !llvm.loop !2729

; <label>:46:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1509, i32 16), !dbg !2731
  store i32 16, i32* %3, align 4, !dbg !2731
  br label %50, !dbg !2731
                                                  ; No predecessors!
  br label %48, !dbg !2734

; <label>:48:                                     ; preds = %47
  br label %49

; <label>:49:                                     ; preds = %48
  br label %50

; <label>:50:                                     ; preds = %49, %46, %25, %10
  %51 = load i32, i32* %3, align 4, !dbg !2736
  ret i32 %51, !dbg !2736
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !2737 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2738, metadata !107), !dbg !2739
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2740, metadata !107), !dbg !2741
  %6 = load i32, i32* %4, align 4, !dbg !2742
  %7 = icmp ule i32 %6, 170, !dbg !2744
  %8 = sext i32 %6 to i64, !dbg !2745
  %9 = call i1 @iCmpInstHandler(i64 %8, i64 170, i1 %7, i32 37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), i64 94495066760208, i32 1518, i32 8), !dbg !2745
  br i1 %9, label %10, label %26, !dbg !2745

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !2746
  %12 = zext i32 %11 to i64, !dbg !2748
  %13 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %12, !dbg !2748
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1, !dbg !2749
  %15 = load double, double* %14, align 8, !dbg !2749
  %16 = call double @log(double %15) #6, !dbg !2750
  call void @callOneArgHandler(i32 12, double %15, double %16, i64 94495066764328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), i64 94495066766064, i32 1519, i32 19), !dbg !2751
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2751
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !2752
  store double %16, double* %18, align 8, !dbg !2753
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2754
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2755
  %21 = load double, double* %20, align 8, !dbg !2755
  %22 = call double @fabs(double %21) #1, !dbg !2756
  %23 = fmul double 0x3CC0000000000000, %22, !dbg !2757
  call void @fMulHandler(double 0x3CC0000000000000, double %22, double %23, i64 0, i64 94495066761344, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), i64 94495066770592, i32 1520, i32 41), !dbg !2758
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2758
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2759
  store double %23, double* %25, align 8, !dbg !2760
  store i32 0, i32* %3, align 4, !dbg !2761
  br label %32, !dbg !2761

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %4, align 4, !dbg !2762
  %28 = uitofp i32 %27 to double, !dbg !2762
  %29 = fadd double %28, 1.000000e+00, !dbg !2764
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94495066774760, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @37, i32 0, i32 0), i64 94495066776464, i32 1524, i32 23), !dbg !2765
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2765
  %31 = call i32 @gsl_sf_lngamma_e(double %29, %struct.gsl_sf_result_struct* %30), !dbg !2766
  store i32 0, i32* %3, align 4, !dbg !2767
  br label %32, !dbg !2767

; <label>:32:                                     ; preds = %26, %10
  %33 = load i32, i32* %3, align 4, !dbg !2768
  ret i32 %33, !dbg !2768
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lndoublefact_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !2769 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2770, metadata !107), !dbg !2771
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !2772, metadata !107), !dbg !2773
  %8 = load i32, i32* %4, align 4, !dbg !2774
  %9 = icmp ule i32 %8, 297, !dbg !2776
  %10 = sext i32 %8 to i64, !dbg !2777
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 297, i1 %9, i32 37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066786272, i32 1534, i32 8), !dbg !2777
  br i1 %11, label %12, label %28, !dbg !2777

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4, !dbg !2778
  %14 = zext i32 %13 to i64, !dbg !2780
  %15 = getelementptr inbounds [298 x %struct.anon.0], [298 x %struct.anon.0]* @doub_fact_table, i64 0, i64 %14, !dbg !2780
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 1, !dbg !2781
  %17 = load double, double* %16, align 8, !dbg !2781
  %18 = call double @log(double %17) #6, !dbg !2782
  call void @callOneArgHandler(i32 12, double %17, double %18, i64 94495066790168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066791904, i32 1535, i32 19), !dbg !2783
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2783
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2784
  store double %18, double* %20, align 8, !dbg !2785
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2786
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2787
  %23 = load double, double* %22, align 8, !dbg !2787
  %24 = call double @fabs(double %23) #1, !dbg !2788
  %25 = fmul double 0x3CC0000000000000, %24, !dbg !2789
  call void @fMulHandler(double 0x3CC0000000000000, double %24, double %25, i64 0, i64 94495066786128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066796512, i32 1536, i32 41), !dbg !2790
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2790
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !2791
  store double %25, double* %27, align 8, !dbg !2792
  store i32 0, i32* %3, align 4, !dbg !2793
  br label %86, !dbg !2793

; <label>:28:                                     ; preds = %2
  %29 = load i32, i32* %4, align 4, !dbg !2794
  %30 = and i32 %29, 1, !dbg !2794
  %31 = icmp ne i32 %30, 0, !dbg !2794
  %32 = sext i32 %30 to i64, !dbg !2796
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066802384, i32 1539, i32 11), !dbg !2796
  br i1 %33, label %34, label %61, !dbg !2796

; <label>:34:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2797, metadata !107), !dbg !2799
  %35 = load i32, i32* %4, align 4, !dbg !2800
  %36 = uitofp i32 %35 to double, !dbg !2800
  %37 = fadd double %36, 2.000000e+00, !dbg !2801
  call void @fAddHandler(double %36, double 2.000000e+00, double %37, i64 94495066804616, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066806320, i32 1541, i32 28), !dbg !2802
  %38 = fmul double 5.000000e-01, %37, !dbg !2802
  call void @fMulHandler(double 5.000000e-01, double %37, double %38, i64 0, i64 94495066806320, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066806736, i32 1541, i32 25), !dbg !2803
  %39 = call i32 @gsl_sf_lngamma_e(double %38, %struct.gsl_sf_result_struct* %6), !dbg !2803
  %40 = load i32, i32* %4, align 4, !dbg !2804
  %41 = uitofp i32 %40 to double, !dbg !2804
  %42 = fadd double %41, 1.000000e+00, !dbg !2805
  call void @fAddHandler(double %41, double 1.000000e+00, double %42, i64 94495066808008, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066809712, i32 1542, i32 25), !dbg !2806
  %43 = fmul double 5.000000e-01, %42, !dbg !2806
  call void @fMulHandler(double 5.000000e-01, double %42, double %43, i64 0, i64 94495066809712, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066810128, i32 1542, i32 22), !dbg !2807
  %44 = fmul double %43, 0x3FE62E42FEFA39EF, !dbg !2807
  call void @fMulHandler(double %43, double 0x3FE62E42FEFA39EF, double %44, i64 94495066810128, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066810576, i32 1542, i32 31), !dbg !2808
  %45 = fsub double %44, 0x3FE250D048E7A1BD, !dbg !2808
  call void @fSubHandler(double %44, double 0x3FE250D048E7A1BD, double %45, i64 94495066810576, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066811056, i32 1542, i32 39), !dbg !2809
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2809
  %47 = load double, double* %46, align 8, !dbg !2809
  %48 = fadd double %45, %47, !dbg !2810
  call void @fAddHandler(double %45, double %47, double %48, i64 94495066811056, i64 94495066811896, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066813568, i32 1542, i32 52), !dbg !2811
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2811
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !2812
  store double %48, double* %50, align 8, !dbg !2813
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2814
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !2815
  %53 = load double, double* %52, align 8, !dbg !2815
  %54 = call double @fabs(double %53) #1, !dbg !2816
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !2817
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94495066817776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066818256, i32 1543, i32 41), !dbg !2818
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !2818
  %57 = load double, double* %56, align 8, !dbg !2818
  %58 = fadd double %55, %57, !dbg !2819
  call void @fAddHandler(double %55, double %57, double %58, i64 94495066818256, i64 94495066819096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066820768, i32 1543, i32 61), !dbg !2820
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2820
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !2821
  store double %58, double* %60, align 8, !dbg !2822
  store i32 0, i32* %3, align 4, !dbg !2823
  br label %86, !dbg !2823

; <label>:61:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !2824, metadata !107), !dbg !2826
  %62 = load i32, i32* %4, align 4, !dbg !2827
  %63 = uitofp i32 %62 to double, !dbg !2827
  %64 = fmul double 5.000000e-01, %63, !dbg !2828
  call void @fMulHandler(double 5.000000e-01, double %63, double %64, i64 0, i64 94495066825880, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066827584, i32 1548, i32 25), !dbg !2829
  %65 = fadd double %64, 1.000000e+00, !dbg !2829
  call void @fAddHandler(double %64, double 1.000000e+00, double %65, i64 94495066827584, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066828000, i32 1548, i32 27), !dbg !2830
  %66 = call i32 @gsl_sf_lngamma_e(double %65, %struct.gsl_sf_result_struct* %7), !dbg !2830
  %67 = load i32, i32* %4, align 4, !dbg !2831
  %68 = uitofp i32 %67 to double, !dbg !2831
  %69 = fmul double 5.000000e-01, %68, !dbg !2832
  call void @fMulHandler(double 5.000000e-01, double %68, double %69, i64 0, i64 94495066829272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066830976, i32 1549, i32 22), !dbg !2833
  %70 = fmul double %69, 0x3FE62E42FEFA39EF, !dbg !2833
  call void @fMulHandler(double %69, double 0x3FE62E42FEFA39EF, double %70, i64 94495066830976, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066831360, i32 1549, i32 24), !dbg !2834
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !2834
  %72 = load double, double* %71, align 8, !dbg !2834
  %73 = fadd double %70, %72, !dbg !2835
  call void @fAddHandler(double %70, double %72, double %73, i64 94495066831360, i64 94495066832200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066833872, i32 1549, i32 31), !dbg !2836
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2836
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2837
  store double %73, double* %75, align 8, !dbg !2838
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2839
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !2840
  %78 = load double, double* %77, align 8, !dbg !2840
  %79 = call double @fabs(double %78) #1, !dbg !2841
  %80 = fmul double 0x3CC0000000000000, %79, !dbg !2842
  call void @fMulHandler(double 0x3CC0000000000000, double %79, double %80, i64 0, i64 94495066838080, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066838560, i32 1550, i32 41), !dbg !2843
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !2843
  %82 = load double, double* %81, align 8, !dbg !2843
  %83 = fadd double %80, %82, !dbg !2844
  call void @fAddHandler(double %80, double %82, double %83, i64 94495066838560, i64 94495066839400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @39, i32 0, i32 0), i64 94495066841072, i32 1550, i32 61), !dbg !2845
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !2845
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !2846
  store double %83, double* %85, align 8, !dbg !2847
  store i32 0, i32* %3, align 4, !dbg !2848
  br label %86, !dbg !2848

; <label>:86:                                     ; preds = %61, %34, %12
  %87 = load i32, i32* %3, align 4, !dbg !2849
  ret i32 %87, !dbg !2849
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnchoose_e(i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2850 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2853, metadata !107), !dbg !2854
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2855, metadata !107), !dbg !2856
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2857, metadata !107), !dbg !2858
  %11 = load i32, i32* %6, align 4, !dbg !2859
  %12 = load i32, i32* %5, align 4, !dbg !2861
  %13 = icmp ugt i32 %11, %12, !dbg !2862
  %14 = sext i32 %11 to i64, !dbg !2863
  %15 = sext i32 %12 to i64, !dbg !2863
  %16 = call i1 @iCmpInstHandler(i64 %14, i64 %15, i1 %13, i32 34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066853056, i32 1560, i32 8), !dbg !2863
  br i1 %16, label %17, label %26, !dbg !2863

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !2864, !llvm.loop !2866

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2867
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2867
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !2867
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2867
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !2867
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !2867
  br label %23, !dbg !2867, !llvm.loop !2870

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1561, i32 1), !dbg !2872
  store i32 1, i32* %4, align 4, !dbg !2872
  br label %93, !dbg !2872
                                                  ; No predecessors!
  br label %25, !dbg !2875

; <label>:25:                                     ; preds = %24
  br label %93, !dbg !2877

; <label>:26:                                     ; preds = %3
  %27 = load i32, i32* %6, align 4, !dbg !2878
  %28 = load i32, i32* %5, align 4, !dbg !2880
  %29 = icmp eq i32 %27, %28, !dbg !2881
  %30 = sext i32 %27 to i64, !dbg !2882
  %31 = sext i32 %28 to i64, !dbg !2882
  %32 = call i1 @iCmpInstHandler(i64 %30, i64 %31, i1 %29, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066862144, i32 1563, i32 13), !dbg !2882
  br i1 %32, label %38, label %33, !dbg !2882

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %6, align 4, !dbg !2883
  %35 = icmp eq i32 %34, 0, !dbg !2885
  %36 = sext i32 %34 to i64, !dbg !2886
  %37 = call i1 @iCmpInstHandler(i64 %36, i64 0, i1 %35, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066863456, i32 1563, i32 23), !dbg !2886
  br i1 %37, label %38, label %43, !dbg !2886

; <label>:38:                                     ; preds = %33, %26
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2887
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !2889
  store double 0.000000e+00, double* %40, align 8, !dbg !2890
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2891
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !2892
  store double 0.000000e+00, double* %42, align 8, !dbg !2893
  store i32 0, i32* %4, align 4, !dbg !2894
  br label %93, !dbg !2894

; <label>:43:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2895, metadata !107), !dbg !2897
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2898, metadata !107), !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2900, metadata !107), !dbg !2901
  %44 = load i32, i32* %6, align 4, !dbg !2902
  %45 = mul i32 %44, 2, !dbg !2904
  %46 = load i32, i32* %5, align 4, !dbg !2905
  %47 = icmp ugt i32 %45, %46, !dbg !2906
  %48 = sext i32 %45 to i64, !dbg !2907
  %49 = sext i32 %46 to i64, !dbg !2907
  %50 = call i1 @iCmpInstHandler(i64 %48, i64 %49, i1 %47, i32 34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066873328, i32 1572, i32 12), !dbg !2907
  br i1 %50, label %51, label %55, !dbg !2907

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %5, align 4, !dbg !2908
  %53 = load i32, i32* %6, align 4, !dbg !2910
  %54 = sub i32 %52, %53, !dbg !2911
  store i32 %54, i32* %6, align 4, !dbg !2912
  br label %55, !dbg !2913

; <label>:55:                                     ; preds = %51, %43
  %56 = load i32, i32* %5, align 4, !dbg !2914
  %57 = call i32 @gsl_sf_lnfact_e(i32 %56, %struct.gsl_sf_result_struct* %8), !dbg !2915
  %58 = load i32, i32* %6, align 4, !dbg !2916
  %59 = call i32 @gsl_sf_lnfact_e(i32 %58, %struct.gsl_sf_result_struct* %9), !dbg !2917
  %60 = load i32, i32* %5, align 4, !dbg !2918
  %61 = load i32, i32* %6, align 4, !dbg !2919
  %62 = sub i32 %60, %61, !dbg !2920
  %63 = call i32 @gsl_sf_lnfact_e(i32 %62, %struct.gsl_sf_result_struct* %10), !dbg !2921
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2922
  %65 = load double, double* %64, align 8, !dbg !2922
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2923
  %67 = load double, double* %66, align 8, !dbg !2923
  %68 = fsub double %65, %67, !dbg !2924
  call void @fSubHandler(double %65, double %67, double %68, i64 94495066880280, i64 94495066882376, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066884048, i32 1576, i32 27), !dbg !2925
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2925
  %70 = load double, double* %69, align 8, !dbg !2925
  %71 = fsub double %68, %70, !dbg !2926
  call void @fSubHandler(double %68, double %70, double %71, i64 94495066884048, i64 94495066884888, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066886560, i32 1576, i32 36), !dbg !2927
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2927
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !2928
  store double %71, double* %73, align 8, !dbg !2929
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !2930
  %75 = load double, double* %74, align 8, !dbg !2930
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2931
  %77 = load double, double* %76, align 8, !dbg !2931
  %78 = fadd double %75, %77, !dbg !2932
  call void @fAddHandler(double %75, double %77, double %78, i64 94495066888648, i64 94495066890744, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066892416, i32 1577, i32 27), !dbg !2933
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !2933
  %80 = load double, double* %79, align 8, !dbg !2933
  %81 = fadd double %78, %80, !dbg !2934
  call void @fAddHandler(double %78, double %80, double %81, i64 94495066892416, i64 94495066893256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066894928, i32 1577, i32 36), !dbg !2935
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2935
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !2936
  store double %81, double* %83, align 8, !dbg !2937
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2938
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !2939
  %86 = load double, double* %85, align 8, !dbg !2939
  %87 = call double @fabs(double %86) #1, !dbg !2940
  %88 = fmul double 0x3CC0000000000000, %87, !dbg !2941
  call void @fMulHandler(double 0x3CC0000000000000, double %87, double %88, i64 0, i64 94495066899136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066899616, i32 1578, i32 42), !dbg !2942
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2942
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !2943
  %91 = load double, double* %90, align 8, !dbg !2944
  %92 = fadd double %91, %88, !dbg !2944
  call void @fAddHandler(double %91, double %88, double %92, i64 94495066900840, i64 94495066899616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0), i64 94495066901248, i32 1578, i32 17), !dbg !2944
  store double %92, double* %90, align 8, !dbg !2944
  store i32 0, i32* %4, align 4, !dbg !2945
  br label %93, !dbg !2945

; <label>:93:                                     ; preds = %55, %38, %25, %23
  %94 = load i32, i32* %4, align 4, !dbg !2946
  ret i32 %94, !dbg !2946
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_choose_e(i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2947 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2948, metadata !107), !dbg !2949
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2950, metadata !107), !dbg !2951
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2952, metadata !107), !dbg !2953
  %14 = load i32, i32* %6, align 4, !dbg !2954
  %15 = load i32, i32* %5, align 4, !dbg !2956
  %16 = icmp ugt i32 %14, %15, !dbg !2957
  %17 = sext i32 %14 to i64, !dbg !2958
  %18 = sext i32 %15 to i64, !dbg !2958
  %19 = call i1 @iCmpInstHandler(i64 %17, i64 %18, i1 %16, i32 34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066913712, i32 1586, i32 8), !dbg !2958
  br i1 %19, label %20, label %29, !dbg !2958

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !2959, !llvm.loop !2961

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2962
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !2962
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !2962
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2962
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2962
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !2962
  br label %26, !dbg !2962, !llvm.loop !2965

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1587, i32 1), !dbg !2967
  store i32 1, i32* %4, align 4, !dbg !2967
  br label %180, !dbg !2967
                                                  ; No predecessors!
  br label %28, !dbg !2970

; <label>:28:                                     ; preds = %27
  br label %180, !dbg !2972

; <label>:29:                                     ; preds = %3
  %30 = load i32, i32* %6, align 4, !dbg !2973
  %31 = load i32, i32* %5, align 4, !dbg !2975
  %32 = icmp eq i32 %30, %31, !dbg !2976
  %33 = sext i32 %30 to i64, !dbg !2977
  %34 = sext i32 %31 to i64, !dbg !2977
  %35 = call i1 @iCmpInstHandler(i64 %33, i64 %34, i1 %32, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066922656, i32 1589, i32 13), !dbg !2977
  br i1 %35, label %41, label %36, !dbg !2977

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %6, align 4, !dbg !2978
  %38 = icmp eq i32 %37, 0, !dbg !2980
  %39 = sext i32 %37 to i64, !dbg !2981
  %40 = call i1 @iCmpInstHandler(i64 %39, i64 0, i1 %38, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066924112, i32 1589, i32 23), !dbg !2981
  br i1 %40, label %41, label %46, !dbg !2981

; <label>:41:                                     ; preds = %36, %29
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2982
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !2984
  store double 1.000000e+00, double* %43, align 8, !dbg !2985
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2986
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !2987
  store double 0.000000e+00, double* %45, align 8, !dbg !2988
  store i32 0, i32* %4, align 4, !dbg !2989
  br label %180, !dbg !2989

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %5, align 4, !dbg !2990
  %48 = icmp ule i32 %47, 170, !dbg !2992
  %49 = sext i32 %47 to i64, !dbg !2993
  %50 = call i1 @iCmpInstHandler(i64 %49, i64 170, i1 %48, i32 37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066929920, i32 1594, i32 14), !dbg !2993
  br i1 %50, label %51, label %80, !dbg !2993

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %5, align 4, !dbg !2994
  %53 = zext i32 %52 to i64, !dbg !2996
  %54 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %53, !dbg !2996
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1, !dbg !2997
  %56 = load double, double* %55, align 8, !dbg !2997
  %57 = load i32, i32* %6, align 4, !dbg !2998
  %58 = zext i32 %57 to i64, !dbg !2999
  %59 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %58, !dbg !2999
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1, !dbg !3000
  %61 = load double, double* %60, align 8, !dbg !3000
  %62 = fdiv double %56, %61, !dbg !3001
  call void @fDivHandler(double %56, double %61, double %62, i64 94495066933896, i64 94495066938472, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066940144, i32 1595, i32 36), !dbg !3002
  %63 = load i32, i32* %5, align 4, !dbg !3002
  %64 = load i32, i32* %6, align 4, !dbg !3003
  %65 = sub i32 %63, %64, !dbg !3004
  %66 = zext i32 %65 to i64, !dbg !3005
  %67 = getelementptr inbounds [171 x %struct.anon], [171 x %struct.anon]* @fact_table, i64 0, i64 %66, !dbg !3005
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1, !dbg !3006
  %69 = load double, double* %68, align 8, !dbg !3006
  %70 = fdiv double %62, %69, !dbg !3007
  call void @fDivHandler(double %62, double %69, double %70, i64 94495066940144, i64 94495066944264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066945936, i32 1595, i32 55), !dbg !3008
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3008
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !3009
  store double %70, double* %72, align 8, !dbg !3010
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3011
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !3012
  %75 = load double, double* %74, align 8, !dbg !3012
  %76 = call double @fabs(double %75) #1, !dbg !3013
  %77 = fmul double 0x3CD8000000000000, %76, !dbg !3014
  call void @fMulHandler(double 0x3CD8000000000000, double %76, double %77, i64 0, i64 94495066950144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066950688, i32 1596, i32 41), !dbg !3015
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3015
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !3016
  store double %77, double* %79, align 8, !dbg !3017
  store i32 0, i32* %4, align 4, !dbg !3018
  br label %180, !dbg !3018

; <label>:80:                                     ; preds = %46
  %81 = load i32, i32* %6, align 4, !dbg !3019
  %82 = mul i32 %81, 2, !dbg !3022
  %83 = load i32, i32* %5, align 4, !dbg !3023
  %84 = icmp ult i32 %82, %83, !dbg !3024
  %85 = sext i32 %82 to i64, !dbg !3025
  %86 = sext i32 %83 to i64, !dbg !3025
  %87 = call i1 @iCmpInstHandler(i64 %85, i64 %86, i1 %84, i32 36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066955536, i32 1599, i32 12), !dbg !3025
  br i1 %87, label %88, label %92, !dbg !3025

; <label>:88:                                     ; preds = %80
  %89 = load i32, i32* %5, align 4, !dbg !3026
  %90 = load i32, i32* %6, align 4, !dbg !3028
  %91 = sub i32 %89, %90, !dbg !3029
  store i32 %91, i32* %6, align 4, !dbg !3030
  br label %92, !dbg !3031

; <label>:92:                                     ; preds = %88, %80
  %93 = load i32, i32* %5, align 4, !dbg !3032
  %94 = load i32, i32* %6, align 4, !dbg !3034
  %95 = sub i32 %93, %94, !dbg !3035
  %96 = icmp ult i32 %95, 64, !dbg !3036
  %97 = sext i32 %95 to i64, !dbg !3037
  %98 = call i1 @iCmpInstHandler(i64 %97, i64 64, i1 %96, i32 36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066959712, i32 1601, i32 15), !dbg !3037
  br i1 %98, label %99, label %152, !dbg !3037

; <label>:99:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata double* %8, metadata !3038, metadata !107), !dbg !3040
  store double 1.000000e+00, double* %8, align 8, !dbg !3040
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3041, metadata !107), !dbg !3042
  %100 = load i32, i32* %5, align 4, !dbg !3043
  store i32 %100, i32* %9, align 4, !dbg !3045
  br label %101, !dbg !3046

; <label>:101:                                    ; preds = %135, %99
  %102 = load i32, i32* %9, align 4, !dbg !3047
  %103 = load i32, i32* %6, align 4, !dbg !3050
  %104 = add i32 %103, 1, !dbg !3051
  %105 = icmp uge i32 %102, %104, !dbg !3052
  %106 = sext i32 %102 to i64, !dbg !3053
  %107 = sext i32 %104 to i64, !dbg !3053
  %108 = call i1 @iCmpInstHandler(i64 %106, i64 %107, i1 %105, i32 35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066967088, i32 1606, i32 19), !dbg !3053
  br i1 %108, label %109, label %138, !dbg !3053

; <label>:109:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %10, metadata !3054, metadata !107), !dbg !3056
  %110 = load i32, i32* %9, align 4, !dbg !3057
  %111 = uitofp i32 %110 to double, !dbg !3058
  %112 = load i32, i32* %9, align 4, !dbg !3059
  %113 = load i32, i32* %6, align 4, !dbg !3060
  %114 = sub i32 %112, %113, !dbg !3061
  %115 = uitofp i32 %114 to double, !dbg !3062
  %116 = fdiv double %111, %115, !dbg !3063
  call void @fDivHandler(double %111, double %115, double %116, i64 94495066969608, i64 94495066971176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066971584, i32 1607, i32 33), !dbg !3056
  store double %116, double* %10, align 8, !dbg !3056
  %117 = load double, double* %10, align 8, !dbg !3064
  %118 = load double, double* %8, align 8, !dbg !3066
  %119 = fdiv double 0x7FEFFFFFFFFFFFFF, %118, !dbg !3067
  call void @fDivHandler(double 0x7FEFFFFFFFFFFFFF, double %118, double %119, i64 0, i64 94495066974040, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066974512, i32 1608, i32 30), !dbg !3068
  %120 = fcmp ogt double %117, %119, !dbg !3068
  %121 = call i1 @fCmpInstHandler(double %117, double %119, i1 %120, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066974928, i32 1608, i32 17), !dbg !3069
  br i1 %121, label %122, label %131, !dbg !3069

; <label>:122:                                    ; preds = %109
  br label %123, !dbg !3070, !llvm.loop !3072

; <label>:123:                                    ; preds = %122
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3073
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !3073
  store double 0x7FF0000000000000, double* %125, align 8, !dbg !3073
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3073
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !3073
  store double 0x7FF0000000000000, double* %127, align 8, !dbg !3073
  br label %128, !dbg !3073, !llvm.loop !3076

; <label>:128:                                    ; preds = %123
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1609, i32 16), !dbg !3078
  store i32 16, i32* %4, align 4, !dbg !3078
  br label %180, !dbg !3078
                                                  ; No predecessors!
  br label %130, !dbg !3081

; <label>:130:                                    ; preds = %129
  br label %131, !dbg !3083

; <label>:131:                                    ; preds = %130, %109
  %132 = load double, double* %10, align 8, !dbg !3084
  %133 = load double, double* %8, align 8, !dbg !3085
  %134 = fmul double %133, %132, !dbg !3085
  call void @fMulHandler(double %133, double %132, double %134, i64 94495066983464, i64 94495066983144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495066983872, i32 1611, i32 16), !dbg !3085
  store double %134, double* %8, align 8, !dbg !3085
  br label %135, !dbg !3086

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %9, align 4, !dbg !3087
  %137 = add i32 %136, -1, !dbg !3087
  store i32 %137, i32* %9, align 4, !dbg !3087
  br label %101, !dbg !3089, !llvm.loop !3090

; <label>:138:                                    ; preds = %101
  %139 = load double, double* %8, align 8, !dbg !3092
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3093
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !3094
  store double %139, double* %141, align 8, !dbg !3095
  %142 = load double, double* %8, align 8, !dbg !3096
  %143 = fmul double 0x3CC0000000000000, %142, !dbg !3097
  call void @fMulHandler(double 0x3CC0000000000000, double %142, double %143, i64 0, i64 94495064964776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495064965184, i32 1614, i32 45), !dbg !3098
  %144 = load i32, i32* %5, align 4, !dbg !3098
  %145 = load i32, i32* %6, align 4, !dbg !3099
  %146 = sub i32 %144, %145, !dbg !3100
  %147 = uitofp i32 %146 to double, !dbg !3098
  %148 = call double @fabs(double %147) #1, !dbg !3101
  %149 = fmul double %143, %148, !dbg !3102
  call void @fMulHandler(double %143, double %148, double %149, i64 94495064965184, i64 94495064966944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495067000960, i32 1614, i32 52), !dbg !3103
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3103
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !3104
  store double %149, double* %151, align 8, !dbg !3105
  store i32 0, i32* %4, align 4, !dbg !3106
  br label %180, !dbg !3106

; <label>:152:                                    ; preds = %92
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !3107, metadata !107), !dbg !3109
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3110, metadata !107), !dbg !3111
  %153 = load i32, i32* %5, align 4, !dbg !3112
  %154 = load i32, i32* %6, align 4, !dbg !3113
  %155 = call i32 @gsl_sf_lnchoose_e(i32 %153, i32 %154, %struct.gsl_sf_result_struct* %11), !dbg !3114
  store i32 %155, i32* %12, align 4, !dbg !3111
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3115, metadata !107), !dbg !3116
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !3117
  %157 = load double, double* %156, align 8, !dbg !3117
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !3118
  %159 = load double, double* %158, align 8, !dbg !3118
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3119
  %161 = call i32 @gsl_sf_exp_err_e(double %157, double %159, %struct.gsl_sf_result_struct* %160), !dbg !3120
  store i32 %161, i32* %13, align 4, !dbg !3116
  %162 = load i32, i32* %12, align 4, !dbg !3121
  %163 = icmp ne i32 %162, 0, !dbg !3121
  %164 = sext i32 %162 to i64, !dbg !3121
  %165 = call i1 @iCmpInstHandler(i64 %164, i64 0, i1 %163, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495067018064, i32 1622, i32 16), !dbg !3121
  br i1 %165, label %166, label %168, !dbg !3121

; <label>:166:                                    ; preds = %152
  %167 = load i32, i32* %12, align 4, !dbg !3122
  br label %178, !dbg !3122

; <label>:168:                                    ; preds = %152
  %169 = load i32, i32* %13, align 4, !dbg !3124
  %170 = icmp ne i32 %169, 0, !dbg !3124
  %171 = sext i32 %169 to i64, !dbg !3124
  %172 = call i1 @iCmpInstHandler(i64 %171, i64 0, i1 %170, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0), i64 94495067022608, i32 1622, i32 16), !dbg !3124
  br i1 %172, label %173, label %175, !dbg !3124

; <label>:173:                                    ; preds = %168
  %174 = load i32, i32* %13, align 4, !dbg !3126
  br label %176, !dbg !3126

; <label>:175:                                    ; preds = %168
  br label %176, !dbg !3128

; <label>:176:                                    ; preds = %175, %173
  %177 = phi i32 [ %174, %173 ], [ 0, %175 ], !dbg !3130
  br label %178, !dbg !3130

; <label>:178:                                    ; preds = %176, %166
  %179 = phi i32 [ %167, %166 ], [ %177, %176 ], !dbg !3132
  store i32 %179, i32* %4, align 4, !dbg !3134
  br label %180, !dbg !3134

; <label>:180:                                    ; preds = %178, %138, %128, %51, %41, %28, %26
  %181 = load i32, i32* %4, align 4, !dbg !3135
  ret i32 %181, !dbg !3135
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_fact(i32) #0 !dbg !3136 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3139, metadata !107), !dbg !3140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3141, metadata !107), !dbg !3142
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3143, metadata !107), !dbg !3142
  %6 = load i32, i32* %3, align 4, !dbg !3142
  %7 = call i32 @gsl_sf_fact_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !3142
  store i32 %7, i32* %5, align 4, !dbg !3142
  %8 = load i32, i32* %5, align 4, !dbg !3144
  %9 = icmp ne i32 %8, 0, !dbg !3144
  %10 = sext i32 %8 to i64, !dbg !3142
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0), i64 94495067038592, i32 1634, i32 3), !dbg !3142
  br i1 %11, label %12, label %18, !dbg !3142

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3146, !llvm.loop !3149

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3151
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1634, i32 %14), !dbg !3151
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3151
  %16 = load double, double* %15, align 8, !dbg !3151
  store double %16, double* %2, align 8, !dbg !3151
  br label %21, !dbg !3151
                                                  ; No predecessors!
  br label %18, !dbg !3154

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3156
  %20 = load double, double* %19, align 8, !dbg !3156
  store double %20, double* %2, align 8, !dbg !3156
  br label %21, !dbg !3156

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3158
  ret double %22, !dbg !3158
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnfact(i32) #0 !dbg !3159 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3160, metadata !107), !dbg !3161
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3162, metadata !107), !dbg !3163
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3164, metadata !107), !dbg !3163
  %6 = load i32, i32* %3, align 4, !dbg !3163
  %7 = call i32 @gsl_sf_lnfact_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !3163
  store i32 %7, i32* %5, align 4, !dbg !3163
  %8 = load i32, i32* %5, align 4, !dbg !3165
  %9 = icmp ne i32 %8, 0, !dbg !3165
  %10 = sext i32 %8 to i64, !dbg !3163
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0), i64 94495067055888, i32 1639, i32 3), !dbg !3163
  br i1 %11, label %12, label %18, !dbg !3163

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3167, !llvm.loop !3170

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3172
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1639, i32 %14), !dbg !3172
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3172
  %16 = load double, double* %15, align 8, !dbg !3172
  store double %16, double* %2, align 8, !dbg !3172
  br label %21, !dbg !3172
                                                  ; No predecessors!
  br label %18, !dbg !3175

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3177
  %20 = load double, double* %19, align 8, !dbg !3177
  store double %20, double* %2, align 8, !dbg !3177
  br label %21, !dbg !3177

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3179
  ret double %22, !dbg !3179
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_doublefact(i32) #0 !dbg !3180 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3181, metadata !107), !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3183, metadata !107), !dbg !3184
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3185, metadata !107), !dbg !3184
  %6 = load i32, i32* %3, align 4, !dbg !3184
  %7 = call i32 @gsl_sf_doublefact_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !3184
  store i32 %7, i32* %5, align 4, !dbg !3184
  %8 = load i32, i32* %5, align 4, !dbg !3186
  %9 = icmp ne i32 %8, 0, !dbg !3186
  %10 = sext i32 %8 to i64, !dbg !3184
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), i64 94495067073184, i32 1644, i32 3), !dbg !3184
  br i1 %11, label %12, label %18, !dbg !3184

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3188, !llvm.loop !3191

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3193
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1644, i32 %14), !dbg !3193
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3193
  %16 = load double, double* %15, align 8, !dbg !3193
  store double %16, double* %2, align 8, !dbg !3193
  br label %21, !dbg !3193
                                                  ; No predecessors!
  br label %18, !dbg !3196

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3198
  %20 = load double, double* %19, align 8, !dbg !3198
  store double %20, double* %2, align 8, !dbg !3198
  br label %21, !dbg !3198

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3200
  ret double %22, !dbg !3200
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lndoublefact(i32) #0 !dbg !3201 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3202, metadata !107), !dbg !3203
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3204, metadata !107), !dbg !3205
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3206, metadata !107), !dbg !3205
  %6 = load i32, i32* %3, align 4, !dbg !3205
  %7 = call i32 @gsl_sf_lndoublefact_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !3205
  store i32 %7, i32* %5, align 4, !dbg !3205
  %8 = load i32, i32* %5, align 4, !dbg !3207
  %9 = icmp ne i32 %8, 0, !dbg !3207
  %10 = sext i32 %8 to i64, !dbg !3205
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @51, i32 0, i32 0), i64 94495067090480, i32 1649, i32 3), !dbg !3205
  br i1 %11, label %12, label %18, !dbg !3205

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3209, !llvm.loop !3212

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3214
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1649, i32 %14), !dbg !3214
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3214
  %16 = load double, double* %15, align 8, !dbg !3214
  store double %16, double* %2, align 8, !dbg !3214
  br label %21, !dbg !3214
                                                  ; No predecessors!
  br label %18, !dbg !3217

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3219
  %20 = load double, double* %19, align 8, !dbg !3219
  store double %20, double* %2, align 8, !dbg !3219
  br label %21, !dbg !3219

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3221
  ret double %22, !dbg !3221
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lngamma(double) #0 !dbg !3222 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3225, metadata !107), !dbg !3226
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3227, metadata !107), !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3229, metadata !107), !dbg !3228
  %6 = load double, double* %3, align 8, !dbg !3228
  %7 = call i32 @gsl_sf_lngamma_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !3228
  store i32 %7, i32* %5, align 4, !dbg !3228
  %8 = load i32, i32* %5, align 4, !dbg !3230
  %9 = icmp ne i32 %8, 0, !dbg !3230
  %10 = sext i32 %8 to i64, !dbg !3228
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0), i64 94495067107776, i32 1654, i32 3), !dbg !3228
  br i1 %11, label %12, label %18, !dbg !3228

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3232, !llvm.loop !3235

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3237
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1654, i32 %14), !dbg !3237
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3237
  %16 = load double, double* %15, align 8, !dbg !3237
  store double %16, double* %2, align 8, !dbg !3237
  br label %21, !dbg !3237
                                                  ; No predecessors!
  br label %18, !dbg !3240

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3242
  %20 = load double, double* %19, align 8, !dbg !3242
  store double %20, double* %2, align 8, !dbg !3242
  br label %21, !dbg !3242

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3244
  ret double %22, !dbg !3244
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gamma(double) #0 !dbg !3245 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3246, metadata !107), !dbg !3247
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3248, metadata !107), !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3250, metadata !107), !dbg !3249
  %6 = load double, double* %3, align 8, !dbg !3249
  %7 = call i32 @gsl_sf_gamma_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !3249
  store i32 %7, i32* %5, align 4, !dbg !3249
  %8 = load i32, i32* %5, align 4, !dbg !3251
  %9 = icmp ne i32 %8, 0, !dbg !3251
  %10 = sext i32 %8 to i64, !dbg !3249
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @55, i32 0, i32 0), i64 94495067125072, i32 1659, i32 3), !dbg !3249
  br i1 %11, label %12, label %18, !dbg !3249

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3253, !llvm.loop !3256

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3258
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1659, i32 %14), !dbg !3258
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3258
  %16 = load double, double* %15, align 8, !dbg !3258
  store double %16, double* %2, align 8, !dbg !3258
  br label %21, !dbg !3258
                                                  ; No predecessors!
  br label %18, !dbg !3261

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3263
  %20 = load double, double* %19, align 8, !dbg !3263
  store double %20, double* %2, align 8, !dbg !3263
  br label %21, !dbg !3263

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3265
  ret double %22, !dbg !3265
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gammastar(double) #0 !dbg !3266 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3267, metadata !107), !dbg !3268
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3269, metadata !107), !dbg !3270
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3271, metadata !107), !dbg !3270
  %6 = load double, double* %3, align 8, !dbg !3270
  %7 = call i32 @gsl_sf_gammastar_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !3270
  store i32 %7, i32* %5, align 4, !dbg !3270
  %8 = load i32, i32* %5, align 4, !dbg !3272
  %9 = icmp ne i32 %8, 0, !dbg !3272
  %10 = sext i32 %8 to i64, !dbg !3270
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0), i64 94495067142368, i32 1664, i32 3), !dbg !3270
  br i1 %11, label %12, label %18, !dbg !3270

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3274, !llvm.loop !3277

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3279
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1664, i32 %14), !dbg !3279
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3279
  %16 = load double, double* %15, align 8, !dbg !3279
  store double %16, double* %2, align 8, !dbg !3279
  br label %21, !dbg !3279
                                                  ; No predecessors!
  br label %18, !dbg !3282

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3284
  %20 = load double, double* %19, align 8, !dbg !3284
  store double %20, double* %2, align 8, !dbg !3284
  br label %21, !dbg !3284

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3286
  ret double %22, !dbg !3286
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gammainv(double) #0 !dbg !3287 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3288, metadata !107), !dbg !3289
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !3290, metadata !107), !dbg !3291
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3292, metadata !107), !dbg !3291
  %6 = load double, double* %3, align 8, !dbg !3291
  %7 = call i32 @gsl_sf_gammainv_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !3291
  store i32 %7, i32* %5, align 4, !dbg !3291
  %8 = load i32, i32* %5, align 4, !dbg !3293
  %9 = icmp ne i32 %8, 0, !dbg !3293
  %10 = sext i32 %8 to i64, !dbg !3291
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0), i64 94495067159664, i32 1669, i32 3), !dbg !3291
  br i1 %11, label %12, label %18, !dbg !3291

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !3295, !llvm.loop !3298

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !3300
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1669, i32 %14), !dbg !3300
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3300
  %16 = load double, double* %15, align 8, !dbg !3300
  store double %16, double* %2, align 8, !dbg !3300
  br label %21, !dbg !3300
                                                  ; No predecessors!
  br label %18, !dbg !3303

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !3305
  %20 = load double, double* %19, align 8, !dbg !3305
  store double %20, double* %2, align 8, !dbg !3305
  br label %21, !dbg !3305

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !3307
  ret double %22, !dbg !3307
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_taylorcoeff(i32, double) #0 !dbg !3308 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3311, metadata !107), !dbg !3312
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !3313, metadata !107), !dbg !3314
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !3315, metadata !107), !dbg !3316
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3317, metadata !107), !dbg !3316
  %8 = load i32, i32* %4, align 4, !dbg !3316
  %9 = load double, double* %5, align 8, !dbg !3316
  %10 = call i32 @gsl_sf_taylorcoeff_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !3316
  store i32 %10, i32* %7, align 4, !dbg !3316
  %11 = load i32, i32* %7, align 4, !dbg !3318
  %12 = icmp ne i32 %11, 0, !dbg !3318
  %13 = sext i32 %11 to i64, !dbg !3316
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @61, i32 0, i32 0), i64 94495067180464, i32 1674, i32 3), !dbg !3316
  br i1 %14, label %15, label %21, !dbg !3316

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !3320, !llvm.loop !3323

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !3325
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1674, i32 %17), !dbg !3325
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3325
  %19 = load double, double* %18, align 8, !dbg !3325
  store double %19, double* %3, align 8, !dbg !3325
  br label %24, !dbg !3325
                                                  ; No predecessors!
  br label %21, !dbg !3328

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3330
  %23 = load double, double* %22, align 8, !dbg !3330
  store double %23, double* %3, align 8, !dbg !3330
  br label %24, !dbg !3330

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !3332
  ret double %25, !dbg !3332
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_choose(i32, i32) #0 !dbg !3333 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3336, metadata !107), !dbg !3337
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3338, metadata !107), !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !3340, metadata !107), !dbg !3341
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3342, metadata !107), !dbg !3341
  %8 = load i32, i32* %4, align 4, !dbg !3341
  %9 = load i32, i32* %5, align 4, !dbg !3341
  %10 = call i32 @gsl_sf_choose_e(i32 %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !3341
  store i32 %10, i32* %7, align 4, !dbg !3341
  %11 = load i32, i32* %7, align 4, !dbg !3343
  %12 = icmp ne i32 %11, 0, !dbg !3343
  %13 = sext i32 %11 to i64, !dbg !3341
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @63, i32 0, i32 0), i64 94495067199280, i32 1679, i32 3), !dbg !3341
  br i1 %14, label %15, label %21, !dbg !3341

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !3345, !llvm.loop !3348

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !3350
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1679, i32 %17), !dbg !3350
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3350
  %19 = load double, double* %18, align 8, !dbg !3350
  store double %19, double* %3, align 8, !dbg !3350
  br label %24, !dbg !3350
                                                  ; No predecessors!
  br label %21, !dbg !3353

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3355
  %23 = load double, double* %22, align 8, !dbg !3355
  store double %23, double* %3, align 8, !dbg !3355
  br label %24, !dbg !3355

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !3357
  ret double %25, !dbg !3357
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnchoose(i32, i32) #0 !dbg !3358 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3359, metadata !107), !dbg !3360
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3361, metadata !107), !dbg !3362
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !3363, metadata !107), !dbg !3364
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3365, metadata !107), !dbg !3364
  %8 = load i32, i32* %4, align 4, !dbg !3364
  %9 = load i32, i32* %5, align 4, !dbg !3364
  %10 = call i32 @gsl_sf_lnchoose_e(i32 %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !3364
  store i32 %10, i32* %7, align 4, !dbg !3364
  %11 = load i32, i32* %7, align 4, !dbg !3366
  %12 = icmp ne i32 %11, 0, !dbg !3366
  %13 = sext i32 %11 to i64, !dbg !3364
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0), i64 94495067218096, i32 1684, i32 3), !dbg !3364
  br i1 %14, label %15, label %21, !dbg !3364

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !3368, !llvm.loop !3371

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !3373
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1684, i32 %17), !dbg !3373
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3373
  %19 = load double, double* %18, align 8, !dbg !3373
  store double %19, double* %3, align 8, !dbg !3373
  br label %24, !dbg !3373
                                                  ; No predecessors!
  br label %21, !dbg !3376

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !3378
  %23 = load double, double* %22, align 8, !dbg !3378
  store double %23, double* %3, align 8, !dbg !3378
  br label %24, !dbg !3378

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !3380
  ret double %25, !dbg !3380
}

declare i32 @gsl_sf_psi_int_e(i32, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_psi_1_int_e(i32, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_psi_n_e(i32, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @exp(double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #5

declare double @GSL_MAX_DBL(double, double) #4

declare i32 @gsl_sf_complex_log_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_angle_restrict_symm_err_e(double, %struct.gsl_sf_result_struct*) #4

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
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93}
!llvm.ident = !{!94}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !44)
!1 = !DIFile(filename: "gamma.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!44 = !{!45, !49, !61, !65, !66, !70, !71, !72, !82}
!45 = distinct !DIGlobalVariable(name: "lanczos_7_c", scope: !0, file: !1, line: 644, type: !46, isLocal: true, isDefinition: true, variable: [9 x double]* @lanczos_7_c)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, align: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 9)
!49 = distinct !DIGlobalVariable(name: "gamma_5_10_cs", scope: !0, file: !1, line: 1006, type: !50, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @gamma_5_10_cs)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !52, line: 29, baseType: !53)
!52 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !52, line: 22, size: 320, align: 64, elements: !54)
!54 = !{!55, !57, !58, !59, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !53, file: !52, line: 23, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !53, file: !52, line: 24, baseType: !42, size: 32, align: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !53, file: !52, line: 25, baseType: !43, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !53, file: !52, line: 26, baseType: !43, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !53, file: !52, line: 27, baseType: !42, size: 32, align: 32, offset: 256)
!61 = distinct !DIGlobalVariable(name: "gamma_5_10_data", scope: !0, file: !1, line: 980, type: !62, isLocal: true, isDefinition: true, variable: [24 x double]* @gamma_5_10_data)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1536, align: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 24)
!65 = distinct !DIGlobalVariable(name: "gstar_a_cs", scope: !0, file: !1, line: 592, type: !51, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @gstar_a_cs)
!66 = distinct !DIGlobalVariable(name: "gstar_a_data", scope: !0, file: !1, line: 560, type: !67, isLocal: true, isDefinition: true, variable: [30 x double]* @gstar_a_data)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1920, align: 64, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 30)
!70 = distinct !DIGlobalVariable(name: "gstar_b_cs", scope: !0, file: !1, line: 635, type: !51, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @gstar_b_cs)
!71 = distinct !DIGlobalVariable(name: "gstar_b_data", scope: !0, file: !1, line: 603, type: !67, isLocal: true, isDefinition: true, variable: [30 x double]* @gstar_b_data)
!72 = distinct !DIGlobalVariable(name: "fact_table", scope: !0, file: !1, line: 42, type: !73, isLocal: true, isDefinition: true, variable: [171 x %struct.anon]* @fact_table)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32832, align: 64, elements: !80)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 42, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !74, file: !1, line: 42, baseType: !42, size: 32, align: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !74, file: !1, line: 42, baseType: !43, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !74, file: !1, line: 42, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!80 = !{!81}
!81 = !DISubrange(count: 171)
!82 = distinct !DIGlobalVariable(name: "doub_fact_table", scope: !0, file: !1, line: 251, type: !83, isLocal: true, isDefinition: true, variable: [298 x %struct.anon.0]* @doub_fact_table)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 57216, align: 64, elements: !89)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 251, size: 192, align: 64, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !84, file: !1, line: 251, baseType: !42, size: 32, align: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !84, file: !1, line: 251, baseType: !43, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !84, file: !1, line: 251, baseType: !79, size: 64, align: 64, offset: 128)
!89 = !{!90}
!90 = !DISubrange(count: 298)
!91 = !{i32 2, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"PIC Level", i32 2}
!94 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!95 = distinct !DISubprogram(name: "gsl_sf_lngamma_e", scope: !1, file: !1, line: 1114, type: !96, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!96 = !DISubroutineType(types: !97)
!97 = !{!42, !43, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !100, line: 41, baseType: !101)
!100 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !100, line: 37, size: 128, align: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !100, line: 38, baseType: !43, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !101, file: !100, line: 39, baseType: !43, size: 64, align: 64, offset: 64)
!105 = !{}
!106 = !DILocalVariable(name: "x", arg: 1, scope: !95, file: !1, line: 1114, type: !43)
!107 = !DIExpression()
!108 = !DILocation(line: 1114, column: 29, scope: !95)
!109 = !DILocalVariable(name: "result", arg: 2, scope: !95, file: !1, line: 1114, type: !98)
!110 = !DILocation(line: 1114, column: 48, scope: !95)
!111 = !DILocation(line: 1118, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !95, file: !1, line: 1118, column: 6)
!113 = !DILocation(line: 1118, column: 13, scope: !112)
!114 = !DILocation(line: 1118, column: 6, scope: !112)
!115 = !DILocation(line: 1118, column: 20, scope: !112)
!116 = !DILocation(line: 1118, column: 6, scope: !95)
!117 = !DILocalVariable(name: "stat", scope: !118, file: !1, line: 1125, type: !42)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 1118, column: 28)
!119 = !DILocation(line: 1125, column: 9, scope: !118)
!120 = !DILocation(line: 1125, column: 31, scope: !118)
!121 = !DILocation(line: 1125, column: 33, scope: !118)
!122 = !DILocation(line: 1125, column: 40, scope: !118)
!123 = !DILocation(line: 1125, column: 16, scope: !118)
!124 = !DILocation(line: 1126, column: 48, scope: !118)
!125 = !DILocation(line: 1126, column: 50, scope: !118)
!126 = !DILocation(line: 1126, column: 43, scope: !118)
!127 = !DILocation(line: 1126, column: 41, scope: !118)
!128 = !DILocation(line: 1126, column: 23, scope: !118)
!129 = !DILocation(line: 1126, column: 5, scope: !118)
!130 = !DILocation(line: 1126, column: 13, scope: !118)
!131 = !DILocation(line: 1126, column: 17, scope: !118)
!132 = !DILocation(line: 1127, column: 12, scope: !118)
!133 = !DILocation(line: 1127, column: 5, scope: !118)
!134 = !DILocation(line: 1129, column: 16, scope: !135)
!135 = distinct !DILexicalBlock(scope: !112, file: !1, line: 1129, column: 11)
!136 = !DILocation(line: 1129, column: 18, scope: !135)
!137 = !DILocation(line: 1129, column: 11, scope: !135)
!138 = !DILocation(line: 1129, column: 25, scope: !135)
!139 = !DILocation(line: 1129, column: 11, scope: !112)
!140 = !DILocalVariable(name: "stat", scope: !141, file: !1, line: 1130, type: !42)
!141 = distinct !DILexicalBlock(scope: !135, file: !1, line: 1129, column: 33)
!142 = !DILocation(line: 1130, column: 9, scope: !141)
!143 = !DILocation(line: 1130, column: 31, scope: !141)
!144 = !DILocation(line: 1130, column: 33, scope: !141)
!145 = !DILocation(line: 1130, column: 40, scope: !141)
!146 = !DILocation(line: 1130, column: 16, scope: !141)
!147 = !DILocation(line: 1131, column: 48, scope: !141)
!148 = !DILocation(line: 1131, column: 50, scope: !141)
!149 = !DILocation(line: 1131, column: 43, scope: !141)
!150 = !DILocation(line: 1131, column: 41, scope: !141)
!151 = !DILocation(line: 1131, column: 23, scope: !141)
!152 = !DILocation(line: 1131, column: 5, scope: !141)
!153 = !DILocation(line: 1131, column: 13, scope: !141)
!154 = !DILocation(line: 1131, column: 17, scope: !141)
!155 = !DILocation(line: 1132, column: 12, scope: !141)
!156 = !DILocation(line: 1132, column: 5, scope: !141)
!157 = !DILocation(line: 1134, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !135, file: !1, line: 1134, column: 11)
!159 = !DILocation(line: 1134, column: 13, scope: !158)
!160 = !DILocation(line: 1134, column: 11, scope: !135)
!161 = !DILocation(line: 1135, column: 28, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1134, column: 21)
!163 = !DILocation(line: 1135, column: 31, scope: !162)
!164 = !DILocation(line: 1135, column: 12, scope: !162)
!165 = !DILocation(line: 1135, column: 5, scope: !162)
!166 = !DILocation(line: 1137, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !158, file: !1, line: 1137, column: 11)
!168 = !DILocation(line: 1137, column: 13, scope: !167)
!169 = !DILocation(line: 1137, column: 11, scope: !158)
!170 = !DILocation(line: 1138, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 1137, column: 21)
!172 = distinct !{!172, !170}
!173 = !DILocation(line: 1138, column: 5, scope: !174)
!174 = !DILexicalBlockFile(scope: !175, file: !1, discriminator: 1)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 1138, column: 5)
!176 = distinct !{!176, !177}
!177 = !DILocation(line: 1138, column: 5, scope: !175)
!178 = !DILocation(line: 1138, column: 5, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !1, discriminator: 2)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 1138, column: 5)
!181 = !DILocation(line: 1138, column: 5, scope: !182)
!182 = !DILexicalBlockFile(scope: !175, file: !1, discriminator: 3)
!183 = !DILocation(line: 1139, column: 3, scope: !171)
!184 = !DILocation(line: 1140, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !167, file: !1, line: 1140, column: 11)
!186 = !DILocation(line: 1140, column: 11, scope: !185)
!187 = !DILocation(line: 1140, column: 19, scope: !185)
!188 = !DILocation(line: 1140, column: 11, scope: !167)
!189 = !DILocalVariable(name: "sgn", scope: !190, file: !1, line: 1141, type: !43)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 1140, column: 27)
!191 = !DILocation(line: 1141, column: 12, scope: !190)
!192 = !DILocation(line: 1142, column: 26, scope: !190)
!193 = !DILocation(line: 1142, column: 29, scope: !190)
!194 = !DILocation(line: 1142, column: 12, scope: !190)
!195 = !DILocation(line: 1142, column: 5, scope: !190)
!196 = !DILocation(line: 1144, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !1, line: 1144, column: 11)
!198 = !DILocation(line: 1144, column: 13, scope: !197)
!199 = !DILocation(line: 1144, column: 11, scope: !185)
!200 = !DILocalVariable(name: "z", scope: !201, file: !1, line: 1148, type: !43)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1144, column: 44)
!202 = !DILocation(line: 1148, column: 12, scope: !201)
!203 = !DILocation(line: 1148, column: 23, scope: !201)
!204 = !DILocation(line: 1148, column: 21, scope: !201)
!205 = !DILocalVariable(name: "s", scope: !201, file: !1, line: 1149, type: !43)
!206 = !DILocation(line: 1149, column: 12, scope: !201)
!207 = !DILocation(line: 1149, column: 26, scope: !201)
!208 = !DILocation(line: 1149, column: 25, scope: !201)
!209 = !DILocation(line: 1149, column: 17, scope: !201)
!210 = !DILocalVariable(name: "as", scope: !201, file: !1, line: 1150, type: !43)
!211 = !DILocation(line: 1150, column: 12, scope: !201)
!212 = !DILocation(line: 1150, column: 22, scope: !201)
!213 = !DILocation(line: 1150, column: 17, scope: !201)
!214 = !DILocation(line: 1151, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !201, file: !1, line: 1151, column: 8)
!216 = !DILocation(line: 1151, column: 10, scope: !215)
!217 = !DILocation(line: 1151, column: 8, scope: !201)
!218 = !DILocation(line: 1152, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 1151, column: 18)
!220 = distinct !{!220, !218}
!221 = !DILocation(line: 1152, column: 7, scope: !222)
!222 = !DILexicalBlockFile(scope: !223, file: !1, discriminator: 1)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 1152, column: 7)
!224 = distinct !{!224, !225}
!225 = !DILocation(line: 1152, column: 7, scope: !223)
!226 = !DILocation(line: 1152, column: 7, scope: !227)
!227 = !DILexicalBlockFile(scope: !228, file: !1, discriminator: 2)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 1152, column: 7)
!229 = !DILocation(line: 1152, column: 7, scope: !230)
!230 = !DILexicalBlockFile(scope: !223, file: !1, discriminator: 3)
!231 = !DILocation(line: 1153, column: 5, scope: !219)
!232 = !DILocation(line: 1154, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !215, file: !1, line: 1154, column: 13)
!234 = !DILocation(line: 1154, column: 16, scope: !233)
!235 = !DILocation(line: 1154, column: 13, scope: !215)
!236 = !DILocation(line: 1156, column: 10, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 1156, column: 10)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 1154, column: 30)
!239 = !DILocation(line: 1156, column: 12, scope: !237)
!240 = !DILocation(line: 1156, column: 10, scope: !238)
!241 = !DILocation(line: 1157, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 1156, column: 29)
!243 = !DILocation(line: 1157, column: 17, scope: !242)
!244 = !DILocation(line: 1157, column: 21, scope: !242)
!245 = !DILocation(line: 1158, column: 9, scope: !242)
!246 = !DILocation(line: 1158, column: 17, scope: !242)
!247 = !DILocation(line: 1158, column: 21, scope: !242)
!248 = !DILocation(line: 1159, column: 9, scope: !242)
!249 = distinct !{!249, !248}
!250 = !DILocation(line: 1159, column: 9, scope: !251)
!251 = !DILexicalBlockFile(scope: !252, file: !1, discriminator: 1)
!252 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1159, column: 9)
!253 = !DILocation(line: 1160, column: 7, scope: !242)
!254 = !DILocalVariable(name: "N", scope: !255, file: !1, line: 1162, type: !42)
!255 = distinct !DILexicalBlock(scope: !237, file: !1, line: 1161, column: 12)
!256 = !DILocation(line: 1162, column: 13, scope: !255)
!257 = !DILocation(line: 1162, column: 24, scope: !255)
!258 = !DILocation(line: 1162, column: 26, scope: !255)
!259 = !DILocation(line: 1162, column: 18, scope: !255)
!260 = !DILocation(line: 1162, column: 17, scope: !255)
!261 = !DILocalVariable(name: "eps", scope: !255, file: !1, line: 1163, type: !43)
!262 = !DILocation(line: 1163, column: 16, scope: !255)
!263 = !DILocation(line: 1163, column: 22, scope: !255)
!264 = !DILocation(line: 1163, column: 26, scope: !255)
!265 = !DILocation(line: 1163, column: 24, scope: !255)
!266 = !DILocalVariable(name: "sgn", scope: !255, file: !1, line: 1164, type: !43)
!267 = !DILocation(line: 1164, column: 16, scope: !255)
!268 = !DILocation(line: 1165, column: 33, scope: !255)
!269 = !DILocation(line: 1165, column: 36, scope: !255)
!270 = !DILocation(line: 1165, column: 41, scope: !255)
!271 = !DILocation(line: 1165, column: 16, scope: !255)
!272 = !DILocation(line: 1165, column: 9, scope: !255)
!273 = !DILocation(line: 1167, column: 5, scope: !238)
!274 = !DILocalVariable(name: "lg_z", scope: !275, file: !1, line: 1169, type: !99)
!275 = distinct !DILexicalBlock(scope: !233, file: !1, line: 1168, column: 10)
!276 = !DILocation(line: 1169, column: 21, scope: !275)
!277 = !DILocation(line: 1170, column: 23, scope: !275)
!278 = !DILocation(line: 1170, column: 7, scope: !275)
!279 = !DILocation(line: 1171, column: 35, scope: !275)
!280 = !DILocation(line: 1171, column: 31, scope: !275)
!281 = !DILocation(line: 1171, column: 46, scope: !275)
!282 = !DILocation(line: 1171, column: 39, scope: !275)
!283 = !DILocation(line: 1171, column: 28, scope: !275)
!284 = !DILocation(line: 1171, column: 7, scope: !275)
!285 = !DILocation(line: 1171, column: 15, scope: !275)
!286 = !DILocation(line: 1171, column: 19, scope: !275)
!287 = !DILocation(line: 1172, column: 50, scope: !275)
!288 = !DILocation(line: 1172, column: 58, scope: !275)
!289 = !DILocation(line: 1172, column: 45, scope: !275)
!290 = !DILocation(line: 1172, column: 43, scope: !275)
!291 = !DILocation(line: 1172, column: 70, scope: !275)
!292 = !DILocation(line: 1172, column: 63, scope: !275)
!293 = !DILocation(line: 1172, column: 7, scope: !275)
!294 = !DILocation(line: 1172, column: 15, scope: !275)
!295 = !DILocation(line: 1172, column: 19, scope: !275)
!296 = !DILocation(line: 1173, column: 7, scope: !275)
!297 = !DILocation(line: 1175, column: 3, scope: !201)
!298 = !DILocation(line: 1178, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1176, column: 8)
!300 = !DILocation(line: 1178, column: 13, scope: !299)
!301 = !DILocation(line: 1178, column: 17, scope: !299)
!302 = !DILocation(line: 1179, column: 5, scope: !299)
!303 = !DILocation(line: 1179, column: 13, scope: !299)
!304 = !DILocation(line: 1179, column: 17, scope: !299)
!305 = !DILocation(line: 1180, column: 5, scope: !299)
!306 = distinct !{!306, !305}
!307 = !DILocation(line: 1180, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !309, file: !1, discriminator: 1)
!309 = distinct !DILexicalBlock(scope: !299, file: !1, line: 1180, column: 5)
!310 = !DILocation(line: 1182, column: 1, scope: !95)
!311 = distinct !DISubprogram(name: "lngamma_1_pade", scope: !1, file: !1, line: 897, type: !312, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!312 = !DISubroutineType(types: !313)
!313 = !{!42, !314, !98}
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!315 = !DILocalVariable(name: "eps", arg: 1, scope: !311, file: !1, line: 897, type: !314)
!316 = !DILocation(line: 897, column: 29, scope: !311)
!317 = !DILocalVariable(name: "result", arg: 2, scope: !311, file: !1, line: 897, type: !98)
!318 = !DILocation(line: 897, column: 50, scope: !311)
!319 = !DILocalVariable(name: "n1", scope: !311, file: !1, line: 902, type: !314)
!320 = !DILocation(line: 902, column: 16, scope: !311)
!321 = !DILocalVariable(name: "n2", scope: !311, file: !1, line: 903, type: !314)
!322 = !DILocation(line: 903, column: 16, scope: !311)
!323 = !DILocalVariable(name: "d1", scope: !311, file: !1, line: 904, type: !314)
!324 = !DILocation(line: 904, column: 16, scope: !311)
!325 = !DILocalVariable(name: "d2", scope: !311, file: !1, line: 905, type: !314)
!326 = !DILocation(line: 905, column: 16, scope: !311)
!327 = !DILocalVariable(name: "num", scope: !311, file: !1, line: 906, type: !314)
!328 = !DILocation(line: 906, column: 16, scope: !311)
!329 = !DILocation(line: 906, column: 23, scope: !311)
!330 = !DILocation(line: 906, column: 27, scope: !311)
!331 = !DILocation(line: 906, column: 36, scope: !311)
!332 = !DILocation(line: 906, column: 40, scope: !311)
!333 = !DILocation(line: 906, column: 33, scope: !311)
!334 = !DILocalVariable(name: "den", scope: !311, file: !1, line: 907, type: !314)
!335 = !DILocation(line: 907, column: 16, scope: !311)
!336 = !DILocation(line: 907, column: 23, scope: !311)
!337 = !DILocation(line: 907, column: 27, scope: !311)
!338 = !DILocation(line: 907, column: 36, scope: !311)
!339 = !DILocation(line: 907, column: 40, scope: !311)
!340 = !DILocation(line: 907, column: 33, scope: !311)
!341 = !DILocalVariable(name: "pade", scope: !311, file: !1, line: 908, type: !314)
!342 = !DILocation(line: 908, column: 16, scope: !311)
!343 = !DILocation(line: 908, column: 56, scope: !311)
!344 = !DILocation(line: 908, column: 54, scope: !311)
!345 = !DILocation(line: 908, column: 62, scope: !311)
!346 = !DILocation(line: 908, column: 60, scope: !311)
!347 = !DILocalVariable(name: "c0", scope: !311, file: !1, line: 909, type: !314)
!348 = !DILocation(line: 909, column: 16, scope: !311)
!349 = !DILocalVariable(name: "c1", scope: !311, file: !1, line: 910, type: !314)
!350 = !DILocation(line: 910, column: 16, scope: !311)
!351 = !DILocalVariable(name: "c2", scope: !311, file: !1, line: 911, type: !314)
!352 = !DILocation(line: 911, column: 16, scope: !311)
!353 = !DILocalVariable(name: "c3", scope: !311, file: !1, line: 912, type: !314)
!354 = !DILocation(line: 912, column: 16, scope: !311)
!355 = !DILocalVariable(name: "c4", scope: !311, file: !1, line: 913, type: !314)
!356 = !DILocation(line: 913, column: 16, scope: !311)
!357 = !DILocalVariable(name: "eps5", scope: !311, file: !1, line: 914, type: !314)
!358 = !DILocation(line: 914, column: 16, scope: !311)
!359 = !DILocation(line: 914, column: 23, scope: !311)
!360 = !DILocation(line: 914, column: 27, scope: !311)
!361 = !DILocation(line: 914, column: 26, scope: !311)
!362 = !DILocation(line: 914, column: 31, scope: !311)
!363 = !DILocation(line: 914, column: 30, scope: !311)
!364 = !DILocation(line: 914, column: 35, scope: !311)
!365 = !DILocation(line: 914, column: 34, scope: !311)
!366 = !DILocation(line: 914, column: 39, scope: !311)
!367 = !DILocation(line: 914, column: 38, scope: !311)
!368 = !DILocalVariable(name: "corr", scope: !311, file: !1, line: 915, type: !314)
!369 = !DILocation(line: 915, column: 16, scope: !311)
!370 = !DILocation(line: 915, column: 23, scope: !311)
!371 = !DILocation(line: 915, column: 36, scope: !311)
!372 = !DILocation(line: 915, column: 46, scope: !311)
!373 = !DILocation(line: 915, column: 56, scope: !311)
!374 = !DILocation(line: 915, column: 69, scope: !311)
!375 = !DILocation(line: 915, column: 68, scope: !311)
!376 = !DILocation(line: 915, column: 64, scope: !311)
!377 = !DILocation(line: 915, column: 59, scope: !311)
!378 = !DILocation(line: 915, column: 54, scope: !311)
!379 = !DILocation(line: 915, column: 49, scope: !311)
!380 = !DILocation(line: 915, column: 44, scope: !311)
!381 = !DILocation(line: 915, column: 39, scope: !311)
!382 = !DILocation(line: 915, column: 34, scope: !311)
!383 = !DILocation(line: 915, column: 28, scope: !311)
!384 = !DILocation(line: 916, column: 17, scope: !311)
!385 = !DILocation(line: 916, column: 24, scope: !311)
!386 = !DILocation(line: 916, column: 31, scope: !311)
!387 = !DILocation(line: 916, column: 29, scope: !311)
!388 = !DILocation(line: 916, column: 21, scope: !311)
!389 = !DILocation(line: 916, column: 3, scope: !311)
!390 = !DILocation(line: 916, column: 11, scope: !311)
!391 = !DILocation(line: 916, column: 15, scope: !311)
!392 = !DILocation(line: 917, column: 46, scope: !311)
!393 = !DILocation(line: 917, column: 54, scope: !311)
!394 = !DILocation(line: 917, column: 41, scope: !311)
!395 = !DILocation(line: 917, column: 39, scope: !311)
!396 = !DILocation(line: 917, column: 3, scope: !311)
!397 = !DILocation(line: 917, column: 11, scope: !311)
!398 = !DILocation(line: 917, column: 15, scope: !311)
!399 = !DILocation(line: 918, column: 3, scope: !311)
!400 = distinct !DISubprogram(name: "lngamma_2_pade", scope: !1, file: !1, line: 924, type: !312, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!401 = !DILocalVariable(name: "eps", arg: 1, scope: !400, file: !1, line: 924, type: !314)
!402 = !DILocation(line: 924, column: 29, scope: !400)
!403 = !DILocalVariable(name: "result", arg: 2, scope: !400, file: !1, line: 924, type: !98)
!404 = !DILocation(line: 924, column: 50, scope: !400)
!405 = !DILocalVariable(name: "n1", scope: !400, file: !1, line: 929, type: !314)
!406 = !DILocation(line: 929, column: 16, scope: !400)
!407 = !DILocalVariable(name: "n2", scope: !400, file: !1, line: 930, type: !314)
!408 = !DILocation(line: 930, column: 16, scope: !400)
!409 = !DILocalVariable(name: "d1", scope: !400, file: !1, line: 931, type: !314)
!410 = !DILocation(line: 931, column: 16, scope: !400)
!411 = !DILocalVariable(name: "d2", scope: !400, file: !1, line: 932, type: !314)
!412 = !DILocation(line: 932, column: 16, scope: !400)
!413 = !DILocalVariable(name: "num", scope: !400, file: !1, line: 933, type: !314)
!414 = !DILocation(line: 933, column: 16, scope: !400)
!415 = !DILocation(line: 933, column: 23, scope: !400)
!416 = !DILocation(line: 933, column: 27, scope: !400)
!417 = !DILocation(line: 933, column: 36, scope: !400)
!418 = !DILocation(line: 933, column: 40, scope: !400)
!419 = !DILocation(line: 933, column: 33, scope: !400)
!420 = !DILocalVariable(name: "den", scope: !400, file: !1, line: 934, type: !314)
!421 = !DILocation(line: 934, column: 16, scope: !400)
!422 = !DILocation(line: 934, column: 23, scope: !400)
!423 = !DILocation(line: 934, column: 27, scope: !400)
!424 = !DILocation(line: 934, column: 36, scope: !400)
!425 = !DILocation(line: 934, column: 40, scope: !400)
!426 = !DILocation(line: 934, column: 33, scope: !400)
!427 = !DILocalVariable(name: "pade", scope: !400, file: !1, line: 935, type: !314)
!428 = !DILocation(line: 935, column: 16, scope: !400)
!429 = !DILocation(line: 935, column: 54, scope: !400)
!430 = !DILocation(line: 935, column: 52, scope: !400)
!431 = !DILocation(line: 935, column: 58, scope: !400)
!432 = !DILocation(line: 935, column: 57, scope: !400)
!433 = !DILocalVariable(name: "c0", scope: !400, file: !1, line: 936, type: !314)
!434 = !DILocation(line: 936, column: 16, scope: !400)
!435 = !DILocalVariable(name: "c1", scope: !400, file: !1, line: 937, type: !314)
!436 = !DILocation(line: 937, column: 16, scope: !400)
!437 = !DILocalVariable(name: "c2", scope: !400, file: !1, line: 938, type: !314)
!438 = !DILocation(line: 938, column: 16, scope: !400)
!439 = !DILocalVariable(name: "c3", scope: !400, file: !1, line: 939, type: !314)
!440 = !DILocation(line: 939, column: 16, scope: !400)
!441 = !DILocalVariable(name: "c4", scope: !400, file: !1, line: 940, type: !314)
!442 = !DILocation(line: 940, column: 16, scope: !400)
!443 = !DILocalVariable(name: "eps5", scope: !400, file: !1, line: 941, type: !314)
!444 = !DILocation(line: 941, column: 16, scope: !400)
!445 = !DILocation(line: 941, column: 23, scope: !400)
!446 = !DILocation(line: 941, column: 27, scope: !400)
!447 = !DILocation(line: 941, column: 26, scope: !400)
!448 = !DILocation(line: 941, column: 31, scope: !400)
!449 = !DILocation(line: 941, column: 30, scope: !400)
!450 = !DILocation(line: 941, column: 35, scope: !400)
!451 = !DILocation(line: 941, column: 34, scope: !400)
!452 = !DILocation(line: 941, column: 39, scope: !400)
!453 = !DILocation(line: 941, column: 38, scope: !400)
!454 = !DILocalVariable(name: "corr", scope: !400, file: !1, line: 942, type: !314)
!455 = !DILocation(line: 942, column: 16, scope: !400)
!456 = !DILocation(line: 942, column: 23, scope: !400)
!457 = !DILocation(line: 942, column: 36, scope: !400)
!458 = !DILocation(line: 942, column: 46, scope: !400)
!459 = !DILocation(line: 942, column: 56, scope: !400)
!460 = !DILocation(line: 942, column: 69, scope: !400)
!461 = !DILocation(line: 942, column: 68, scope: !400)
!462 = !DILocation(line: 942, column: 64, scope: !400)
!463 = !DILocation(line: 942, column: 59, scope: !400)
!464 = !DILocation(line: 942, column: 54, scope: !400)
!465 = !DILocation(line: 942, column: 49, scope: !400)
!466 = !DILocation(line: 942, column: 44, scope: !400)
!467 = !DILocation(line: 942, column: 39, scope: !400)
!468 = !DILocation(line: 942, column: 34, scope: !400)
!469 = !DILocation(line: 942, column: 28, scope: !400)
!470 = !DILocation(line: 943, column: 17, scope: !400)
!471 = !DILocation(line: 943, column: 24, scope: !400)
!472 = !DILocation(line: 943, column: 31, scope: !400)
!473 = !DILocation(line: 943, column: 29, scope: !400)
!474 = !DILocation(line: 943, column: 21, scope: !400)
!475 = !DILocation(line: 943, column: 3, scope: !400)
!476 = !DILocation(line: 943, column: 11, scope: !400)
!477 = !DILocation(line: 943, column: 15, scope: !400)
!478 = !DILocation(line: 944, column: 46, scope: !400)
!479 = !DILocation(line: 944, column: 54, scope: !400)
!480 = !DILocation(line: 944, column: 41, scope: !400)
!481 = !DILocation(line: 944, column: 39, scope: !400)
!482 = !DILocation(line: 944, column: 3, scope: !400)
!483 = !DILocation(line: 944, column: 11, scope: !400)
!484 = !DILocation(line: 944, column: 15, scope: !400)
!485 = !DILocation(line: 945, column: 3, scope: !400)
!486 = distinct !DISubprogram(name: "lngamma_lanczos", scope: !1, file: !1, line: 703, type: !96, isLocal: true, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!487 = !DILocalVariable(name: "x", arg: 1, scope: !486, file: !1, line: 703, type: !43)
!488 = !DILocation(line: 703, column: 24, scope: !486)
!489 = !DILocalVariable(name: "result", arg: 2, scope: !486, file: !1, line: 703, type: !98)
!490 = !DILocation(line: 703, column: 43, scope: !486)
!491 = !DILocalVariable(name: "k", scope: !486, file: !1, line: 705, type: !42)
!492 = !DILocation(line: 705, column: 7, scope: !486)
!493 = !DILocalVariable(name: "Ag", scope: !486, file: !1, line: 706, type: !43)
!494 = !DILocation(line: 706, column: 10, scope: !486)
!495 = !DILocalVariable(name: "term1", scope: !486, file: !1, line: 707, type: !43)
!496 = !DILocation(line: 707, column: 10, scope: !486)
!497 = !DILocalVariable(name: "term2", scope: !486, file: !1, line: 707, type: !43)
!498 = !DILocation(line: 707, column: 17, scope: !486)
!499 = !DILocation(line: 709, column: 5, scope: !486)
!500 = !DILocation(line: 711, column: 8, scope: !486)
!501 = !DILocation(line: 711, column: 6, scope: !486)
!502 = !DILocation(line: 712, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !486, file: !1, line: 712, column: 3)
!504 = !DILocation(line: 712, column: 7, scope: !503)
!505 = !DILocation(line: 712, column: 12, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 712, column: 3)
!508 = !DILocation(line: 712, column: 13, scope: !506)
!509 = !DILocation(line: 712, column: 3, scope: !506)
!510 = !DILocation(line: 712, column: 43, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 2)
!512 = distinct !DILexicalBlock(scope: !507, file: !1, line: 712, column: 23)
!513 = !DILocation(line: 712, column: 31, scope: !511)
!514 = !DILocation(line: 712, column: 47, scope: !511)
!515 = !DILocation(line: 712, column: 49, scope: !511)
!516 = !DILocation(line: 712, column: 48, scope: !511)
!517 = !DILocation(line: 712, column: 45, scope: !511)
!518 = !DILocation(line: 712, column: 28, scope: !511)
!519 = !DILocation(line: 712, column: 53, scope: !511)
!520 = !DILocation(line: 712, column: 19, scope: !521)
!521 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 3)
!522 = !DILocation(line: 712, column: 3, scope: !521)
!523 = distinct !{!523, !524}
!524 = !DILocation(line: 712, column: 3, scope: !486)
!525 = !DILocation(line: 715, column: 12, scope: !486)
!526 = !DILocation(line: 715, column: 13, scope: !486)
!527 = !DILocation(line: 715, column: 24, scope: !486)
!528 = !DILocation(line: 715, column: 25, scope: !486)
!529 = !DILocation(line: 715, column: 30, scope: !486)
!530 = !DILocation(line: 715, column: 19, scope: !486)
!531 = !DILocation(line: 715, column: 18, scope: !486)
!532 = !DILocation(line: 715, column: 9, scope: !486)
!533 = !DILocation(line: 716, column: 31, scope: !486)
!534 = !DILocation(line: 716, column: 27, scope: !486)
!535 = !DILocation(line: 716, column: 25, scope: !486)
!536 = !DILocation(line: 716, column: 9, scope: !486)
!537 = !DILocation(line: 717, column: 18, scope: !486)
!538 = !DILocation(line: 717, column: 27, scope: !486)
!539 = !DILocation(line: 717, column: 33, scope: !486)
!540 = !DILocation(line: 717, column: 24, scope: !486)
!541 = !DILocation(line: 717, column: 3, scope: !486)
!542 = !DILocation(line: 717, column: 11, scope: !486)
!543 = !DILocation(line: 717, column: 16, scope: !486)
!544 = !DILocation(line: 718, column: 48, scope: !486)
!545 = !DILocation(line: 718, column: 43, scope: !486)
!546 = !DILocation(line: 718, column: 62, scope: !486)
!547 = !DILocation(line: 718, column: 57, scope: !548)
!548 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!549 = !DILocation(line: 718, column: 55, scope: !486)
!550 = !DILocation(line: 718, column: 69, scope: !486)
!551 = !DILocation(line: 718, column: 40, scope: !486)
!552 = !DILocation(line: 718, column: 3, scope: !486)
!553 = !DILocation(line: 718, column: 11, scope: !486)
!554 = !DILocation(line: 718, column: 16, scope: !486)
!555 = !DILocation(line: 719, column: 41, scope: !486)
!556 = !DILocation(line: 719, column: 49, scope: !486)
!557 = !DILocation(line: 719, column: 36, scope: !486)
!558 = !DILocation(line: 719, column: 34, scope: !486)
!559 = !DILocation(line: 719, column: 3, scope: !486)
!560 = !DILocation(line: 719, column: 11, scope: !486)
!561 = !DILocation(line: 719, column: 15, scope: !486)
!562 = !DILocation(line: 721, column: 3, scope: !486)
!563 = distinct !DISubprogram(name: "lngamma_sgn_0", scope: !1, file: !1, line: 729, type: !564, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!564 = !DISubroutineType(types: !565)
!565 = !{!42, !43, !98, !56}
!566 = !DILocalVariable(name: "eps", arg: 1, scope: !563, file: !1, line: 729, type: !43)
!567 = !DILocation(line: 729, column: 22, scope: !563)
!568 = !DILocalVariable(name: "lng", arg: 2, scope: !563, file: !1, line: 729, type: !98)
!569 = !DILocation(line: 729, column: 43, scope: !563)
!570 = !DILocalVariable(name: "sgn", arg: 3, scope: !563, file: !1, line: 729, type: !56)
!571 = !DILocation(line: 729, column: 57, scope: !563)
!572 = !DILocalVariable(name: "c1", scope: !563, file: !1, line: 732, type: !314)
!573 = !DILocation(line: 732, column: 16, scope: !563)
!574 = !DILocalVariable(name: "c2", scope: !563, file: !1, line: 733, type: !314)
!575 = !DILocation(line: 733, column: 16, scope: !563)
!576 = !DILocalVariable(name: "c3", scope: !563, file: !1, line: 734, type: !314)
!577 = !DILocation(line: 734, column: 16, scope: !563)
!578 = !DILocalVariable(name: "c4", scope: !563, file: !1, line: 735, type: !314)
!579 = !DILocation(line: 735, column: 16, scope: !563)
!580 = !DILocalVariable(name: "c5", scope: !563, file: !1, line: 736, type: !314)
!581 = !DILocation(line: 736, column: 16, scope: !563)
!582 = !DILocalVariable(name: "c6", scope: !563, file: !1, line: 737, type: !314)
!583 = !DILocation(line: 737, column: 16, scope: !563)
!584 = !DILocalVariable(name: "c7", scope: !563, file: !1, line: 738, type: !314)
!585 = !DILocation(line: 738, column: 16, scope: !563)
!586 = !DILocalVariable(name: "c8", scope: !563, file: !1, line: 739, type: !314)
!587 = !DILocation(line: 739, column: 16, scope: !563)
!588 = !DILocalVariable(name: "c9", scope: !563, file: !1, line: 740, type: !314)
!589 = !DILocation(line: 740, column: 16, scope: !563)
!590 = !DILocalVariable(name: "c10", scope: !563, file: !1, line: 741, type: !314)
!591 = !DILocation(line: 741, column: 16, scope: !563)
!592 = !DILocalVariable(name: "g6", scope: !563, file: !1, line: 742, type: !314)
!593 = !DILocation(line: 742, column: 16, scope: !563)
!594 = !DILocation(line: 742, column: 25, scope: !563)
!595 = !DILocation(line: 742, column: 33, scope: !563)
!596 = !DILocation(line: 742, column: 43, scope: !563)
!597 = !DILocation(line: 742, column: 53, scope: !563)
!598 = !DILocation(line: 742, column: 56, scope: !563)
!599 = !DILocation(line: 742, column: 51, scope: !563)
!600 = !DILocation(line: 742, column: 46, scope: !563)
!601 = !DILocation(line: 742, column: 41, scope: !563)
!602 = !DILocation(line: 742, column: 36, scope: !563)
!603 = !DILocation(line: 742, column: 32, scope: !563)
!604 = !DILocation(line: 742, column: 28, scope: !563)
!605 = !DILocation(line: 742, column: 24, scope: !563)
!606 = !DILocalVariable(name: "g", scope: !563, file: !1, line: 743, type: !314)
!607 = !DILocation(line: 743, column: 16, scope: !563)
!608 = !DILocation(line: 743, column: 22, scope: !563)
!609 = !DILocation(line: 743, column: 30, scope: !563)
!610 = !DILocation(line: 743, column: 38, scope: !563)
!611 = !DILocation(line: 743, column: 46, scope: !563)
!612 = !DILocation(line: 743, column: 54, scope: !563)
!613 = !DILocation(line: 743, column: 62, scope: !563)
!614 = !DILocation(line: 743, column: 66, scope: !563)
!615 = !DILocation(line: 743, column: 65, scope: !563)
!616 = !DILocation(line: 743, column: 61, scope: !563)
!617 = !DILocation(line: 743, column: 57, scope: !563)
!618 = !DILocation(line: 743, column: 53, scope: !563)
!619 = !DILocation(line: 743, column: 49, scope: !563)
!620 = !DILocation(line: 743, column: 45, scope: !563)
!621 = !DILocation(line: 743, column: 41, scope: !563)
!622 = !DILocation(line: 743, column: 37, scope: !563)
!623 = !DILocation(line: 743, column: 33, scope: !563)
!624 = !DILocation(line: 743, column: 29, scope: !563)
!625 = !DILocation(line: 743, column: 25, scope: !563)
!626 = !DILocalVariable(name: "gee", scope: !563, file: !1, line: 746, type: !314)
!627 = !DILocation(line: 746, column: 16, scope: !563)
!628 = !DILocation(line: 746, column: 22, scope: !563)
!629 = !DILocation(line: 746, column: 35, scope: !563)
!630 = !DILocation(line: 746, column: 34, scope: !563)
!631 = !DILocation(line: 746, column: 29, scope: !563)
!632 = !DILocation(line: 746, column: 24, scope: !563)
!633 = !DILocation(line: 746, column: 46, scope: !563)
!634 = !DILocation(line: 746, column: 45, scope: !563)
!635 = !DILocation(line: 746, column: 40, scope: !563)
!636 = !DILocation(line: 748, column: 18, scope: !563)
!637 = !DILocation(line: 748, column: 27, scope: !563)
!638 = !DILocation(line: 748, column: 22, scope: !563)
!639 = !DILocation(line: 748, column: 21, scope: !563)
!640 = !DILocation(line: 748, column: 14, scope: !641)
!641 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 1)
!642 = !DILocation(line: 748, column: 3, scope: !563)
!643 = !DILocation(line: 748, column: 8, scope: !563)
!644 = !DILocation(line: 748, column: 12, scope: !563)
!645 = !DILocation(line: 749, column: 43, scope: !563)
!646 = !DILocation(line: 749, column: 48, scope: !563)
!647 = !DILocation(line: 749, column: 38, scope: !563)
!648 = !DILocation(line: 749, column: 36, scope: !563)
!649 = !DILocation(line: 749, column: 3, scope: !563)
!650 = !DILocation(line: 749, column: 8, scope: !563)
!651 = !DILocation(line: 749, column: 12, scope: !563)
!652 = !DILocation(line: 750, column: 10, scope: !563)
!653 = !DILocation(line: 750, column: 4, scope: !563)
!654 = !DILocation(line: 750, column: 8, scope: !563)
!655 = !DILocation(line: 752, column: 3, scope: !563)
!656 = distinct !DISubprogram(name: "lngamma_sgn_sing", scope: !1, file: !1, line: 763, type: !657, isLocal: true, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!657 = !DISubroutineType(types: !658)
!658 = !{!42, !42, !43, !98, !56}
!659 = !DILocalVariable(name: "N", arg: 1, scope: !656, file: !1, line: 763, type: !42)
!660 = !DILocation(line: 763, column: 22, scope: !656)
!661 = !DILocalVariable(name: "eps", arg: 2, scope: !656, file: !1, line: 763, type: !43)
!662 = !DILocation(line: 763, column: 32, scope: !656)
!663 = !DILocalVariable(name: "lng", arg: 3, scope: !656, file: !1, line: 763, type: !98)
!664 = !DILocation(line: 763, column: 53, scope: !656)
!665 = !DILocalVariable(name: "sgn", arg: 4, scope: !656, file: !1, line: 763, type: !56)
!666 = !DILocation(line: 763, column: 67, scope: !656)
!667 = !DILocation(line: 765, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !656, file: !1, line: 765, column: 6)
!669 = !DILocation(line: 765, column: 10, scope: !668)
!670 = !DILocation(line: 765, column: 6, scope: !656)
!671 = !DILocation(line: 766, column: 5, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !1, line: 765, column: 18)
!673 = !DILocation(line: 766, column: 10, scope: !672)
!674 = !DILocation(line: 766, column: 14, scope: !672)
!675 = !DILocation(line: 767, column: 5, scope: !672)
!676 = !DILocation(line: 767, column: 10, scope: !672)
!677 = !DILocation(line: 767, column: 14, scope: !672)
!678 = !DILocation(line: 768, column: 6, scope: !672)
!679 = !DILocation(line: 768, column: 10, scope: !672)
!680 = !DILocation(line: 769, column: 5, scope: !672)
!681 = distinct !{!681, !680}
!682 = !DILocation(line: 769, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !1, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !672, file: !1, line: 769, column: 5)
!685 = !DILocation(line: 770, column: 3, scope: !672)
!686 = !DILocation(line: 771, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !668, file: !1, line: 771, column: 11)
!688 = !DILocation(line: 771, column: 13, scope: !687)
!689 = !DILocation(line: 771, column: 11, scope: !668)
!690 = !DILocalVariable(name: "c0", scope: !691, file: !1, line: 776, type: !314)
!691 = distinct !DILexicalBlock(scope: !687, file: !1, line: 771, column: 19)
!692 = !DILocation(line: 776, column: 18, scope: !691)
!693 = !DILocalVariable(name: "c1", scope: !691, file: !1, line: 777, type: !314)
!694 = !DILocation(line: 777, column: 18, scope: !691)
!695 = !DILocalVariable(name: "c2", scope: !691, file: !1, line: 778, type: !314)
!696 = !DILocation(line: 778, column: 18, scope: !691)
!697 = !DILocalVariable(name: "c3", scope: !691, file: !1, line: 779, type: !314)
!698 = !DILocation(line: 779, column: 18, scope: !691)
!699 = !DILocalVariable(name: "c4", scope: !691, file: !1, line: 780, type: !314)
!700 = !DILocation(line: 780, column: 18, scope: !691)
!701 = !DILocalVariable(name: "c5", scope: !691, file: !1, line: 781, type: !314)
!702 = !DILocation(line: 781, column: 18, scope: !691)
!703 = !DILocalVariable(name: "c6", scope: !691, file: !1, line: 782, type: !314)
!704 = !DILocation(line: 782, column: 18, scope: !691)
!705 = !DILocalVariable(name: "c7", scope: !691, file: !1, line: 783, type: !314)
!706 = !DILocation(line: 783, column: 18, scope: !691)
!707 = !DILocalVariable(name: "c8", scope: !691, file: !1, line: 784, type: !314)
!708 = !DILocation(line: 784, column: 18, scope: !691)
!709 = !DILocalVariable(name: "c9", scope: !691, file: !1, line: 785, type: !314)
!710 = !DILocation(line: 785, column: 18, scope: !691)
!711 = !DILocalVariable(name: "g5", scope: !691, file: !1, line: 786, type: !314)
!712 = !DILocation(line: 786, column: 18, scope: !691)
!713 = !DILocation(line: 786, column: 28, scope: !691)
!714 = !DILocation(line: 786, column: 38, scope: !691)
!715 = !DILocation(line: 786, column: 48, scope: !691)
!716 = !DILocation(line: 786, column: 58, scope: !691)
!717 = !DILocation(line: 786, column: 61, scope: !691)
!718 = !DILocation(line: 786, column: 56, scope: !691)
!719 = !DILocation(line: 786, column: 51, scope: !691)
!720 = !DILocation(line: 786, column: 46, scope: !691)
!721 = !DILocation(line: 786, column: 41, scope: !691)
!722 = !DILocation(line: 786, column: 36, scope: !691)
!723 = !DILocation(line: 786, column: 31, scope: !691)
!724 = !DILocation(line: 786, column: 26, scope: !691)
!725 = !DILocalVariable(name: "g", scope: !691, file: !1, line: 787, type: !314)
!726 = !DILocation(line: 787, column: 18, scope: !691)
!727 = !DILocation(line: 787, column: 23, scope: !691)
!728 = !DILocation(line: 787, column: 33, scope: !691)
!729 = !DILocation(line: 787, column: 43, scope: !691)
!730 = !DILocation(line: 787, column: 53, scope: !691)
!731 = !DILocation(line: 787, column: 63, scope: !691)
!732 = !DILocation(line: 787, column: 73, scope: !691)
!733 = !DILocation(line: 787, column: 77, scope: !691)
!734 = !DILocation(line: 787, column: 76, scope: !691)
!735 = !DILocation(line: 787, column: 71, scope: !691)
!736 = !DILocation(line: 787, column: 66, scope: !691)
!737 = !DILocation(line: 787, column: 61, scope: !691)
!738 = !DILocation(line: 787, column: 56, scope: !691)
!739 = !DILocation(line: 787, column: 51, scope: !691)
!740 = !DILocation(line: 787, column: 46, scope: !691)
!741 = !DILocation(line: 787, column: 41, scope: !691)
!742 = !DILocation(line: 787, column: 36, scope: !691)
!743 = !DILocation(line: 787, column: 31, scope: !691)
!744 = !DILocation(line: 787, column: 26, scope: !691)
!745 = !DILocalVariable(name: "gam_e", scope: !691, file: !1, line: 790, type: !314)
!746 = !DILocation(line: 790, column: 18, scope: !691)
!747 = !DILocation(line: 790, column: 26, scope: !691)
!748 = !DILocation(line: 790, column: 28, scope: !691)
!749 = !DILocation(line: 790, column: 40, scope: !691)
!750 = !DILocation(line: 790, column: 39, scope: !691)
!751 = !DILocation(line: 790, column: 53, scope: !691)
!752 = !DILocation(line: 790, column: 52, scope: !691)
!753 = !DILocation(line: 790, column: 48, scope: !691)
!754 = !DILocation(line: 790, column: 43, scope: !691)
!755 = !DILocation(line: 790, column: 65, scope: !691)
!756 = !DILocation(line: 790, column: 69, scope: !691)
!757 = !DILocation(line: 790, column: 68, scope: !691)
!758 = !DILocation(line: 790, column: 63, scope: !691)
!759 = !DILocation(line: 790, column: 57, scope: !691)
!760 = !DILocation(line: 790, column: 34, scope: !691)
!761 = !DILocation(line: 792, column: 25, scope: !691)
!762 = !DILocation(line: 792, column: 20, scope: !691)
!763 = !DILocation(line: 792, column: 37, scope: !691)
!764 = !DILocation(line: 792, column: 32, scope: !765)
!765 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!766 = !DILocation(line: 792, column: 31, scope: !691)
!767 = !DILocation(line: 792, column: 16, scope: !768)
!768 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 2)
!769 = !DILocation(line: 792, column: 5, scope: !691)
!770 = !DILocation(line: 792, column: 10, scope: !691)
!771 = !DILocation(line: 792, column: 14, scope: !691)
!772 = !DILocation(line: 793, column: 45, scope: !691)
!773 = !DILocation(line: 793, column: 50, scope: !691)
!774 = !DILocation(line: 793, column: 40, scope: !691)
!775 = !DILocation(line: 793, column: 38, scope: !691)
!776 = !DILocation(line: 793, column: 5, scope: !691)
!777 = !DILocation(line: 793, column: 10, scope: !691)
!778 = !DILocation(line: 793, column: 14, scope: !691)
!779 = !DILocation(line: 794, column: 14, scope: !691)
!780 = !DILocation(line: 794, column: 18, scope: !691)
!781 = !DILocation(line: 794, column: 6, scope: !691)
!782 = !DILocation(line: 794, column: 10, scope: !691)
!783 = !DILocation(line: 795, column: 5, scope: !691)
!784 = !DILocalVariable(name: "g", scope: !785, file: !1, line: 798, type: !43)
!785 = distinct !DILexicalBlock(scope: !687, file: !1, line: 797, column: 8)
!786 = !DILocation(line: 798, column: 12, scope: !785)
!787 = !DILocalVariable(name: "cs1", scope: !785, file: !1, line: 803, type: !314)
!788 = !DILocation(line: 803, column: 18, scope: !785)
!789 = !DILocalVariable(name: "cs2", scope: !785, file: !1, line: 804, type: !314)
!790 = !DILocation(line: 804, column: 18, scope: !785)
!791 = !DILocalVariable(name: "cs3", scope: !785, file: !1, line: 805, type: !314)
!792 = !DILocation(line: 805, column: 18, scope: !785)
!793 = !DILocalVariable(name: "cs4", scope: !785, file: !1, line: 806, type: !314)
!794 = !DILocation(line: 806, column: 18, scope: !785)
!795 = !DILocalVariable(name: "cs5", scope: !785, file: !1, line: 807, type: !314)
!796 = !DILocation(line: 807, column: 18, scope: !785)
!797 = !DILocalVariable(name: "e2", scope: !785, file: !1, line: 808, type: !314)
!798 = !DILocation(line: 808, column: 18, scope: !785)
!799 = !DILocation(line: 808, column: 24, scope: !785)
!800 = !DILocation(line: 808, column: 28, scope: !785)
!801 = !DILocation(line: 808, column: 27, scope: !785)
!802 = !DILocalVariable(name: "sin_ser", scope: !785, file: !1, line: 809, type: !314)
!803 = !DILocation(line: 809, column: 18, scope: !785)
!804 = !DILocation(line: 809, column: 34, scope: !785)
!805 = !DILocation(line: 809, column: 42, scope: !785)
!806 = !DILocation(line: 809, column: 50, scope: !785)
!807 = !DILocation(line: 809, column: 58, scope: !785)
!808 = !DILocation(line: 809, column: 66, scope: !785)
!809 = !DILocation(line: 809, column: 68, scope: !785)
!810 = !DILocation(line: 809, column: 65, scope: !785)
!811 = !DILocation(line: 809, column: 60, scope: !785)
!812 = !DILocation(line: 809, column: 57, scope: !785)
!813 = !DILocation(line: 809, column: 52, scope: !785)
!814 = !DILocation(line: 809, column: 49, scope: !785)
!815 = !DILocation(line: 809, column: 44, scope: !785)
!816 = !DILocation(line: 809, column: 41, scope: !785)
!817 = !DILocation(line: 809, column: 36, scope: !785)
!818 = !DILocation(line: 809, column: 32, scope: !785)
!819 = !DILocalVariable(name: "aeps", scope: !785, file: !1, line: 814, type: !43)
!820 = !DILocation(line: 814, column: 12, scope: !785)
!821 = !DILocation(line: 814, column: 24, scope: !785)
!822 = !DILocation(line: 814, column: 19, scope: !785)
!823 = !DILocalVariable(name: "c1", scope: !785, file: !1, line: 815, type: !43)
!824 = !DILocation(line: 815, column: 12, scope: !785)
!825 = !DILocalVariable(name: "c2", scope: !785, file: !1, line: 815, type: !43)
!826 = !DILocation(line: 815, column: 16, scope: !785)
!827 = !DILocalVariable(name: "c3", scope: !785, file: !1, line: 815, type: !43)
!828 = !DILocation(line: 815, column: 20, scope: !785)
!829 = !DILocalVariable(name: "c4", scope: !785, file: !1, line: 815, type: !43)
!830 = !DILocation(line: 815, column: 24, scope: !785)
!831 = !DILocalVariable(name: "c5", scope: !785, file: !1, line: 815, type: !43)
!832 = !DILocation(line: 815, column: 28, scope: !785)
!833 = !DILocalVariable(name: "c6", scope: !785, file: !1, line: 815, type: !43)
!834 = !DILocation(line: 815, column: 32, scope: !785)
!835 = !DILocalVariable(name: "c7", scope: !785, file: !1, line: 815, type: !43)
!836 = !DILocation(line: 815, column: 36, scope: !785)
!837 = !DILocalVariable(name: "lng_ser", scope: !785, file: !1, line: 816, type: !43)
!838 = !DILocation(line: 816, column: 12, scope: !785)
!839 = !DILocalVariable(name: "c0", scope: !785, file: !1, line: 817, type: !99)
!840 = !DILocation(line: 817, column: 19, scope: !785)
!841 = !DILocalVariable(name: "psi_0", scope: !785, file: !1, line: 818, type: !99)
!842 = !DILocation(line: 818, column: 19, scope: !785)
!843 = !DILocalVariable(name: "psi_1", scope: !785, file: !1, line: 819, type: !99)
!844 = !DILocation(line: 819, column: 19, scope: !785)
!845 = !DILocalVariable(name: "psi_2", scope: !785, file: !1, line: 820, type: !99)
!846 = !DILocation(line: 820, column: 19, scope: !785)
!847 = !DILocalVariable(name: "psi_3", scope: !785, file: !1, line: 821, type: !99)
!848 = !DILocation(line: 821, column: 19, scope: !785)
!849 = !DILocalVariable(name: "psi_4", scope: !785, file: !1, line: 822, type: !99)
!850 = !DILocation(line: 822, column: 19, scope: !785)
!851 = !DILocalVariable(name: "psi_5", scope: !785, file: !1, line: 823, type: !99)
!852 = !DILocation(line: 823, column: 19, scope: !785)
!853 = !DILocalVariable(name: "psi_6", scope: !785, file: !1, line: 824, type: !99)
!854 = !DILocation(line: 824, column: 19, scope: !785)
!855 = !DILocation(line: 825, column: 11, scope: !785)
!856 = !DILocation(line: 825, column: 15, scope: !785)
!857 = !DILocation(line: 826, column: 11, scope: !785)
!858 = !DILocation(line: 826, column: 15, scope: !785)
!859 = !DILocation(line: 827, column: 11, scope: !785)
!860 = !DILocation(line: 827, column: 15, scope: !785)
!861 = !DILocation(line: 828, column: 11, scope: !785)
!862 = !DILocation(line: 828, column: 15, scope: !785)
!863 = !DILocation(line: 829, column: 11, scope: !785)
!864 = !DILocation(line: 829, column: 15, scope: !785)
!865 = !DILocation(line: 830, column: 21, scope: !785)
!866 = !DILocation(line: 830, column: 5, scope: !785)
!867 = !DILocation(line: 831, column: 22, scope: !785)
!868 = !DILocation(line: 831, column: 23, scope: !785)
!869 = !DILocation(line: 831, column: 5, scope: !785)
!870 = !DILocation(line: 832, column: 24, scope: !785)
!871 = !DILocation(line: 832, column: 25, scope: !785)
!872 = !DILocation(line: 832, column: 5, scope: !785)
!873 = !DILocation(line: 833, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !785, file: !1, line: 833, column: 8)
!875 = !DILocation(line: 833, column: 13, scope: !874)
!876 = !DILocation(line: 833, column: 8, scope: !785)
!877 = !DILocation(line: 833, column: 42, scope: !878)
!878 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 1)
!879 = !DILocation(line: 833, column: 43, scope: !878)
!880 = !DILocation(line: 833, column: 24, scope: !878)
!881 = !DILocation(line: 834, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !785, file: !1, line: 834, column: 8)
!883 = !DILocation(line: 834, column: 13, scope: !882)
!884 = !DILocation(line: 834, column: 8, scope: !785)
!885 = !DILocation(line: 834, column: 42, scope: !886)
!886 = !DILexicalBlockFile(scope: !882, file: !1, discriminator: 1)
!887 = !DILocation(line: 834, column: 43, scope: !886)
!888 = !DILocation(line: 834, column: 24, scope: !886)
!889 = !DILocation(line: 835, column: 8, scope: !890)
!890 = distinct !DILexicalBlock(scope: !785, file: !1, line: 835, column: 8)
!891 = !DILocation(line: 835, column: 13, scope: !890)
!892 = !DILocation(line: 835, column: 8, scope: !785)
!893 = !DILocation(line: 835, column: 42, scope: !894)
!894 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 1)
!895 = !DILocation(line: 835, column: 43, scope: !894)
!896 = !DILocation(line: 835, column: 24, scope: !894)
!897 = !DILocation(line: 836, column: 8, scope: !898)
!898 = distinct !DILexicalBlock(scope: !785, file: !1, line: 836, column: 8)
!899 = !DILocation(line: 836, column: 13, scope: !898)
!900 = !DILocation(line: 836, column: 8, scope: !785)
!901 = !DILocation(line: 836, column: 42, scope: !902)
!902 = !DILexicalBlockFile(scope: !898, file: !1, discriminator: 1)
!903 = !DILocation(line: 836, column: 43, scope: !902)
!904 = !DILocation(line: 836, column: 24, scope: !902)
!905 = !DILocation(line: 837, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !785, file: !1, line: 837, column: 8)
!907 = !DILocation(line: 837, column: 13, scope: !906)
!908 = !DILocation(line: 837, column: 8, scope: !785)
!909 = !DILocation(line: 837, column: 42, scope: !910)
!910 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!911 = !DILocation(line: 837, column: 43, scope: !910)
!912 = !DILocation(line: 837, column: 24, scope: !910)
!913 = !DILocation(line: 838, column: 16, scope: !785)
!914 = !DILocation(line: 838, column: 8, scope: !785)
!915 = !DILocation(line: 839, column: 16, scope: !785)
!916 = !DILocation(line: 839, column: 19, scope: !785)
!917 = !DILocation(line: 839, column: 8, scope: !785)
!918 = !DILocation(line: 840, column: 16, scope: !785)
!919 = !DILocation(line: 840, column: 19, scope: !785)
!920 = !DILocation(line: 840, column: 8, scope: !785)
!921 = !DILocation(line: 841, column: 16, scope: !785)
!922 = !DILocation(line: 841, column: 19, scope: !785)
!923 = !DILocation(line: 841, column: 8, scope: !785)
!924 = !DILocation(line: 842, column: 16, scope: !785)
!925 = !DILocation(line: 842, column: 19, scope: !785)
!926 = !DILocation(line: 842, column: 8, scope: !785)
!927 = !DILocation(line: 843, column: 16, scope: !785)
!928 = !DILocation(line: 843, column: 19, scope: !785)
!929 = !DILocation(line: 843, column: 8, scope: !785)
!930 = !DILocation(line: 844, column: 16, scope: !785)
!931 = !DILocation(line: 844, column: 19, scope: !785)
!932 = !DILocation(line: 844, column: 8, scope: !785)
!933 = !DILocation(line: 845, column: 18, scope: !785)
!934 = !DILocation(line: 845, column: 22, scope: !785)
!935 = !DILocation(line: 845, column: 27, scope: !785)
!936 = !DILocation(line: 845, column: 30, scope: !785)
!937 = !DILocation(line: 845, column: 35, scope: !785)
!938 = !DILocation(line: 845, column: 38, scope: !785)
!939 = !DILocation(line: 845, column: 43, scope: !785)
!940 = !DILocation(line: 845, column: 46, scope: !785)
!941 = !DILocation(line: 845, column: 51, scope: !785)
!942 = !DILocation(line: 845, column: 54, scope: !785)
!943 = !DILocation(line: 845, column: 59, scope: !785)
!944 = !DILocation(line: 845, column: 62, scope: !785)
!945 = !DILocation(line: 845, column: 67, scope: !785)
!946 = !DILocation(line: 845, column: 70, scope: !785)
!947 = !DILocation(line: 845, column: 74, scope: !785)
!948 = !DILocation(line: 845, column: 73, scope: !785)
!949 = !DILocation(line: 845, column: 69, scope: !785)
!950 = !DILocation(line: 845, column: 65, scope: !785)
!951 = !DILocation(line: 845, column: 61, scope: !785)
!952 = !DILocation(line: 845, column: 57, scope: !785)
!953 = !DILocation(line: 845, column: 53, scope: !785)
!954 = !DILocation(line: 845, column: 49, scope: !785)
!955 = !DILocation(line: 845, column: 45, scope: !785)
!956 = !DILocation(line: 845, column: 41, scope: !785)
!957 = !DILocation(line: 845, column: 37, scope: !785)
!958 = !DILocation(line: 845, column: 33, scope: !785)
!959 = !DILocation(line: 845, column: 29, scope: !785)
!960 = !DILocation(line: 845, column: 25, scope: !785)
!961 = !DILocation(line: 845, column: 21, scope: !785)
!962 = !DILocation(line: 845, column: 13, scope: !785)
!963 = !DILocation(line: 851, column: 10, scope: !785)
!964 = !DILocation(line: 851, column: 9, scope: !785)
!965 = !DILocation(line: 851, column: 24, scope: !785)
!966 = !DILocation(line: 851, column: 20, scope: !785)
!967 = !DILocation(line: 851, column: 18, scope: !785)
!968 = !DILocation(line: 851, column: 7, scope: !785)
!969 = !DILocation(line: 853, column: 16, scope: !785)
!970 = !DILocation(line: 853, column: 29, scope: !785)
!971 = !DILocation(line: 853, column: 24, scope: !785)
!972 = !DILocation(line: 853, column: 20, scope: !973)
!973 = !DILexicalBlockFile(scope: !785, file: !1, discriminator: 1)
!974 = !DILocation(line: 853, column: 18, scope: !785)
!975 = !DILocation(line: 853, column: 5, scope: !785)
!976 = !DILocation(line: 853, column: 10, scope: !785)
!977 = !DILocation(line: 853, column: 14, scope: !785)
!978 = !DILocation(line: 854, column: 19, scope: !785)
!979 = !DILocation(line: 854, column: 55, scope: !785)
!980 = !DILocation(line: 854, column: 50, scope: !785)
!981 = !DILocation(line: 854, column: 65, scope: !785)
!982 = !DILocation(line: 854, column: 70, scope: !785)
!983 = !DILocation(line: 854, column: 60, scope: !973)
!984 = !DILocation(line: 854, column: 58, scope: !785)
!985 = !DILocation(line: 854, column: 47, scope: !785)
!986 = !DILocation(line: 854, column: 23, scope: !785)
!987 = !DILocation(line: 854, column: 5, scope: !785)
!988 = !DILocation(line: 854, column: 10, scope: !785)
!989 = !DILocation(line: 854, column: 14, scope: !785)
!990 = !DILocation(line: 856, column: 14, scope: !785)
!991 = !DILocation(line: 856, column: 47, scope: !785)
!992 = !DILocation(line: 856, column: 51, scope: !785)
!993 = !DILocation(line: 856, column: 43, scope: !785)
!994 = !DILocation(line: 856, column: 6, scope: !785)
!995 = !DILocation(line: 856, column: 10, scope: !785)
!996 = !DILocation(line: 858, column: 5, scope: !785)
!997 = !DILocation(line: 860, column: 1, scope: !656)
!998 = distinct !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !1, file: !1, line: 1185, type: !564, isLocal: false, isDefinition: true, scopeLine: 1186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!999 = !DILocalVariable(name: "x", arg: 1, scope: !998, file: !1, line: 1185, type: !43)
!1000 = !DILocation(line: 1185, column: 33, scope: !998)
!1001 = !DILocalVariable(name: "result_lg", arg: 2, scope: !998, file: !1, line: 1185, type: !98)
!1002 = !DILocation(line: 1185, column: 52, scope: !998)
!1003 = !DILocalVariable(name: "sgn", arg: 3, scope: !998, file: !1, line: 1185, type: !56)
!1004 = !DILocation(line: 1185, column: 72, scope: !998)
!1005 = !DILocation(line: 1187, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1187, column: 6)
!1007 = !DILocation(line: 1187, column: 13, scope: !1006)
!1008 = !DILocation(line: 1187, column: 6, scope: !1006)
!1009 = !DILocation(line: 1187, column: 20, scope: !1006)
!1010 = !DILocation(line: 1187, column: 6, scope: !998)
!1011 = !DILocalVariable(name: "stat", scope: !1012, file: !1, line: 1188, type: !42)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 1187, column: 28)
!1013 = !DILocation(line: 1188, column: 9, scope: !1012)
!1014 = !DILocation(line: 1188, column: 31, scope: !1012)
!1015 = !DILocation(line: 1188, column: 33, scope: !1012)
!1016 = !DILocation(line: 1188, column: 40, scope: !1012)
!1017 = !DILocation(line: 1188, column: 16, scope: !1012)
!1018 = !DILocation(line: 1189, column: 51, scope: !1012)
!1019 = !DILocation(line: 1189, column: 53, scope: !1012)
!1020 = !DILocation(line: 1189, column: 46, scope: !1012)
!1021 = !DILocation(line: 1189, column: 44, scope: !1012)
!1022 = !DILocation(line: 1189, column: 26, scope: !1012)
!1023 = !DILocation(line: 1189, column: 5, scope: !1012)
!1024 = !DILocation(line: 1189, column: 16, scope: !1012)
!1025 = !DILocation(line: 1189, column: 20, scope: !1012)
!1026 = !DILocation(line: 1190, column: 6, scope: !1012)
!1027 = !DILocation(line: 1190, column: 10, scope: !1012)
!1028 = !DILocation(line: 1191, column: 12, scope: !1012)
!1029 = !DILocation(line: 1191, column: 5, scope: !1012)
!1030 = !DILocation(line: 1193, column: 16, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 1193, column: 11)
!1032 = !DILocation(line: 1193, column: 18, scope: !1031)
!1033 = !DILocation(line: 1193, column: 11, scope: !1031)
!1034 = !DILocation(line: 1193, column: 25, scope: !1031)
!1035 = !DILocation(line: 1193, column: 11, scope: !1006)
!1036 = !DILocalVariable(name: "stat", scope: !1037, file: !1, line: 1194, type: !42)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 1193, column: 33)
!1038 = !DILocation(line: 1194, column: 8, scope: !1037)
!1039 = !DILocation(line: 1194, column: 30, scope: !1037)
!1040 = !DILocation(line: 1194, column: 32, scope: !1037)
!1041 = !DILocation(line: 1194, column: 39, scope: !1037)
!1042 = !DILocation(line: 1194, column: 15, scope: !1037)
!1043 = !DILocation(line: 1195, column: 51, scope: !1037)
!1044 = !DILocation(line: 1195, column: 53, scope: !1037)
!1045 = !DILocation(line: 1195, column: 46, scope: !1037)
!1046 = !DILocation(line: 1195, column: 44, scope: !1037)
!1047 = !DILocation(line: 1195, column: 26, scope: !1037)
!1048 = !DILocation(line: 1195, column: 5, scope: !1037)
!1049 = !DILocation(line: 1195, column: 16, scope: !1037)
!1050 = !DILocation(line: 1195, column: 20, scope: !1037)
!1051 = !DILocation(line: 1196, column: 6, scope: !1037)
!1052 = !DILocation(line: 1196, column: 10, scope: !1037)
!1053 = !DILocation(line: 1197, column: 12, scope: !1037)
!1054 = !DILocation(line: 1197, column: 5, scope: !1037)
!1055 = !DILocation(line: 1199, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 1199, column: 11)
!1057 = !DILocation(line: 1199, column: 13, scope: !1056)
!1058 = !DILocation(line: 1199, column: 11, scope: !1031)
!1059 = !DILocation(line: 1200, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1199, column: 21)
!1061 = !DILocation(line: 1200, column: 10, scope: !1060)
!1062 = !DILocation(line: 1201, column: 28, scope: !1060)
!1063 = !DILocation(line: 1201, column: 31, scope: !1060)
!1064 = !DILocation(line: 1201, column: 12, scope: !1060)
!1065 = !DILocation(line: 1201, column: 5, scope: !1060)
!1066 = !DILocation(line: 1203, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1203, column: 11)
!1068 = !DILocation(line: 1203, column: 13, scope: !1067)
!1069 = !DILocation(line: 1203, column: 11, scope: !1056)
!1070 = !DILocation(line: 1204, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 1203, column: 21)
!1072 = !DILocation(line: 1204, column: 10, scope: !1071)
!1073 = !DILocation(line: 1205, column: 5, scope: !1071)
!1074 = distinct !{!1074, !1073}
!1075 = !DILocation(line: 1205, column: 5, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 1)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 1205, column: 5)
!1078 = distinct !{!1078, !1079}
!1079 = !DILocation(line: 1205, column: 5, scope: !1077)
!1080 = !DILocation(line: 1205, column: 5, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !1, discriminator: 2)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 1205, column: 5)
!1083 = !DILocation(line: 1205, column: 5, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 3)
!1085 = !DILocation(line: 1206, column: 3, scope: !1071)
!1086 = !DILocation(line: 1207, column: 16, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 1207, column: 11)
!1088 = !DILocation(line: 1207, column: 11, scope: !1087)
!1089 = !DILocation(line: 1207, column: 19, scope: !1087)
!1090 = !DILocation(line: 1207, column: 11, scope: !1067)
!1091 = !DILocation(line: 1208, column: 26, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 1207, column: 27)
!1093 = !DILocation(line: 1208, column: 29, scope: !1092)
!1094 = !DILocation(line: 1208, column: 40, scope: !1092)
!1095 = !DILocation(line: 1208, column: 12, scope: !1092)
!1096 = !DILocation(line: 1208, column: 5, scope: !1092)
!1097 = !DILocation(line: 1210, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 1210, column: 11)
!1099 = !DILocation(line: 1210, column: 13, scope: !1098)
!1100 = !DILocation(line: 1210, column: 11, scope: !1087)
!1101 = !DILocalVariable(name: "z", scope: !1102, file: !1, line: 1214, type: !43)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 1210, column: 44)
!1103 = !DILocation(line: 1214, column: 12, scope: !1102)
!1104 = !DILocation(line: 1214, column: 22, scope: !1102)
!1105 = !DILocation(line: 1214, column: 20, scope: !1102)
!1106 = !DILocalVariable(name: "s", scope: !1102, file: !1, line: 1215, type: !43)
!1107 = !DILocation(line: 1215, column: 12, scope: !1102)
!1108 = !DILocation(line: 1215, column: 25, scope: !1102)
!1109 = !DILocation(line: 1215, column: 24, scope: !1102)
!1110 = !DILocation(line: 1215, column: 16, scope: !1102)
!1111 = !DILocalVariable(name: "as", scope: !1102, file: !1, line: 1216, type: !43)
!1112 = !DILocation(line: 1216, column: 12, scope: !1102)
!1113 = !DILocation(line: 1216, column: 22, scope: !1102)
!1114 = !DILocation(line: 1216, column: 17, scope: !1102)
!1115 = !DILocation(line: 1217, column: 8, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 1217, column: 8)
!1117 = !DILocation(line: 1217, column: 10, scope: !1116)
!1118 = !DILocation(line: 1217, column: 8, scope: !1102)
!1119 = !DILocation(line: 1218, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 1217, column: 18)
!1121 = !DILocation(line: 1218, column: 12, scope: !1120)
!1122 = !DILocation(line: 1219, column: 7, scope: !1120)
!1123 = distinct !{!1123, !1122}
!1124 = !DILocation(line: 1219, column: 7, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 1)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 1219, column: 7)
!1127 = distinct !{!1127, !1128}
!1128 = !DILocation(line: 1219, column: 7, scope: !1126)
!1129 = !DILocation(line: 1219, column: 7, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 2)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 1219, column: 7)
!1132 = !DILocation(line: 1219, column: 7, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 3)
!1134 = !DILocation(line: 1220, column: 5, scope: !1120)
!1135 = !DILocation(line: 1221, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 1221, column: 13)
!1137 = !DILocation(line: 1221, column: 16, scope: !1136)
!1138 = !DILocation(line: 1221, column: 13, scope: !1116)
!1139 = !DILocation(line: 1223, column: 10, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 1223, column: 10)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 1221, column: 30)
!1142 = !DILocation(line: 1223, column: 12, scope: !1140)
!1143 = !DILocation(line: 1223, column: 10, scope: !1141)
!1144 = !DILocation(line: 1224, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 1223, column: 29)
!1146 = !DILocation(line: 1224, column: 20, scope: !1145)
!1147 = !DILocation(line: 1224, column: 24, scope: !1145)
!1148 = !DILocation(line: 1225, column: 9, scope: !1145)
!1149 = !DILocation(line: 1225, column: 20, scope: !1145)
!1150 = !DILocation(line: 1225, column: 24, scope: !1145)
!1151 = !DILocation(line: 1226, column: 10, scope: !1145)
!1152 = !DILocation(line: 1226, column: 14, scope: !1145)
!1153 = !DILocation(line: 1227, column: 9, scope: !1145)
!1154 = distinct !{!1154, !1153}
!1155 = !DILocation(line: 1227, column: 9, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 1)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 1227, column: 9)
!1158 = !DILocation(line: 1228, column: 7, scope: !1145)
!1159 = !DILocalVariable(name: "N", scope: !1160, file: !1, line: 1230, type: !42)
!1160 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 1229, column: 12)
!1161 = !DILocation(line: 1230, column: 13, scope: !1160)
!1162 = !DILocation(line: 1230, column: 24, scope: !1160)
!1163 = !DILocation(line: 1230, column: 26, scope: !1160)
!1164 = !DILocation(line: 1230, column: 18, scope: !1160)
!1165 = !DILocation(line: 1230, column: 17, scope: !1160)
!1166 = !DILocalVariable(name: "eps", scope: !1160, file: !1, line: 1231, type: !43)
!1167 = !DILocation(line: 1231, column: 16, scope: !1160)
!1168 = !DILocation(line: 1231, column: 22, scope: !1160)
!1169 = !DILocation(line: 1231, column: 26, scope: !1160)
!1170 = !DILocation(line: 1231, column: 24, scope: !1160)
!1171 = !DILocation(line: 1232, column: 33, scope: !1160)
!1172 = !DILocation(line: 1232, column: 36, scope: !1160)
!1173 = !DILocation(line: 1232, column: 41, scope: !1160)
!1174 = !DILocation(line: 1232, column: 52, scope: !1160)
!1175 = !DILocation(line: 1232, column: 16, scope: !1160)
!1176 = !DILocation(line: 1232, column: 9, scope: !1160)
!1177 = !DILocation(line: 1234, column: 5, scope: !1141)
!1178 = !DILocalVariable(name: "lg_z", scope: !1179, file: !1, line: 1236, type: !99)
!1179 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 1235, column: 10)
!1180 = !DILocation(line: 1236, column: 21, scope: !1179)
!1181 = !DILocation(line: 1237, column: 23, scope: !1179)
!1182 = !DILocation(line: 1237, column: 7, scope: !1179)
!1183 = !DILocation(line: 1238, column: 15, scope: !1179)
!1184 = !DILocation(line: 1238, column: 17, scope: !1179)
!1185 = !DILocation(line: 1238, column: 8, scope: !1179)
!1186 = !DILocation(line: 1238, column: 12, scope: !1179)
!1187 = !DILocation(line: 1239, column: 38, scope: !1179)
!1188 = !DILocation(line: 1239, column: 34, scope: !1179)
!1189 = !DILocation(line: 1239, column: 49, scope: !1179)
!1190 = !DILocation(line: 1239, column: 42, scope: !1179)
!1191 = !DILocation(line: 1239, column: 31, scope: !1179)
!1192 = !DILocation(line: 1239, column: 7, scope: !1179)
!1193 = !DILocation(line: 1239, column: 18, scope: !1179)
!1194 = !DILocation(line: 1239, column: 22, scope: !1179)
!1195 = !DILocation(line: 1240, column: 53, scope: !1179)
!1196 = !DILocation(line: 1240, column: 64, scope: !1179)
!1197 = !DILocation(line: 1240, column: 48, scope: !1179)
!1198 = !DILocation(line: 1240, column: 46, scope: !1179)
!1199 = !DILocation(line: 1240, column: 76, scope: !1179)
!1200 = !DILocation(line: 1240, column: 69, scope: !1179)
!1201 = !DILocation(line: 1240, column: 7, scope: !1179)
!1202 = !DILocation(line: 1240, column: 18, scope: !1179)
!1203 = !DILocation(line: 1240, column: 22, scope: !1179)
!1204 = !DILocation(line: 1241, column: 7, scope: !1179)
!1205 = !DILocation(line: 1243, column: 3, scope: !1102)
!1206 = !DILocation(line: 1246, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 1244, column: 8)
!1208 = !DILocation(line: 1246, column: 16, scope: !1207)
!1209 = !DILocation(line: 1246, column: 20, scope: !1207)
!1210 = !DILocation(line: 1247, column: 5, scope: !1207)
!1211 = !DILocation(line: 1247, column: 16, scope: !1207)
!1212 = !DILocation(line: 1247, column: 20, scope: !1207)
!1213 = !DILocation(line: 1248, column: 6, scope: !1207)
!1214 = !DILocation(line: 1248, column: 10, scope: !1207)
!1215 = !DILocation(line: 1249, column: 5, scope: !1207)
!1216 = distinct !{!1216, !1215}
!1217 = !DILocation(line: 1249, column: 5, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1219, file: !1, discriminator: 1)
!1219 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 1249, column: 5)
!1220 = !DILocation(line: 1251, column: 1, scope: !998)
!1221 = distinct !DISubprogram(name: "gsl_sf_gamma_e", scope: !1, file: !1, line: 1255, type: !312, isLocal: false, isDefinition: true, scopeLine: 1256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!1222 = !DILocalVariable(name: "x", arg: 1, scope: !1221, file: !1, line: 1255, type: !314)
!1223 = !DILocation(line: 1255, column: 29, scope: !1221)
!1224 = !DILocalVariable(name: "result", arg: 2, scope: !1221, file: !1, line: 1255, type: !98)
!1225 = !DILocation(line: 1255, column: 48, scope: !1221)
!1226 = !DILocation(line: 1257, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 1257, column: 6)
!1228 = !DILocation(line: 1257, column: 8, scope: !1227)
!1229 = !DILocation(line: 1257, column: 6, scope: !1221)
!1230 = !DILocalVariable(name: "rint_x", scope: !1231, file: !1, line: 1258, type: !42)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 1257, column: 15)
!1232 = !DILocation(line: 1258, column: 9, scope: !1231)
!1233 = !DILocation(line: 1258, column: 29, scope: !1231)
!1234 = !DILocation(line: 1258, column: 30, scope: !1231)
!1235 = !DILocation(line: 1258, column: 23, scope: !1231)
!1236 = !DILocation(line: 1258, column: 18, scope: !1231)
!1237 = !DILocalVariable(name: "f_x", scope: !1231, file: !1, line: 1259, type: !43)
!1238 = !DILocation(line: 1259, column: 12, scope: !1231)
!1239 = !DILocation(line: 1259, column: 18, scope: !1231)
!1240 = !DILocation(line: 1259, column: 22, scope: !1231)
!1241 = !DILocation(line: 1259, column: 20, scope: !1231)
!1242 = !DILocalVariable(name: "sgn_gamma", scope: !1231, file: !1, line: 1260, type: !43)
!1243 = !DILocation(line: 1260, column: 12, scope: !1231)
!1244 = !DILocation(line: 1260, column: 26, scope: !1231)
!1245 = !DILocalVariable(name: "sin_term", scope: !1231, file: !1, line: 1261, type: !43)
!1246 = !DILocation(line: 1261, column: 12, scope: !1231)
!1247 = !DILocation(line: 1261, column: 23, scope: !1231)
!1248 = !DILocation(line: 1261, column: 46, scope: !1231)
!1249 = !DILocation(line: 1261, column: 44, scope: !1231)
!1250 = !DILocation(line: 1261, column: 35, scope: !1231)
!1251 = !DILocation(line: 1261, column: 33, scope: !1231)
!1252 = !DILocation(line: 1261, column: 51, scope: !1231)
!1253 = !DILocation(line: 1263, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 1263, column: 8)
!1255 = !DILocation(line: 1263, column: 17, scope: !1254)
!1256 = !DILocation(line: 1263, column: 8, scope: !1231)
!1257 = !DILocation(line: 1264, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 1263, column: 25)
!1259 = distinct !{!1259, !1257}
!1260 = !DILocation(line: 1264, column: 7, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 1)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 1264, column: 7)
!1263 = distinct !{!1263, !1264}
!1264 = !DILocation(line: 1264, column: 7, scope: !1262)
!1265 = !DILocation(line: 1264, column: 7, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1267, file: !1, discriminator: 2)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 1264, column: 7)
!1268 = !DILocation(line: 1264, column: 7, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 3)
!1270 = !DILocation(line: 1265, column: 5, scope: !1258)
!1271 = !DILocation(line: 1266, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 1266, column: 13)
!1273 = !DILocation(line: 1266, column: 15, scope: !1272)
!1274 = !DILocation(line: 1266, column: 13, scope: !1254)
!1275 = !DILocalVariable(name: "g", scope: !1276, file: !1, line: 1267, type: !99)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 1266, column: 25)
!1277 = !DILocation(line: 1267, column: 21, scope: !1276)
!1278 = !DILocation(line: 1268, column: 25, scope: !1276)
!1279 = !DILocation(line: 1268, column: 24, scope: !1276)
!1280 = !DILocation(line: 1268, column: 7, scope: !1276)
!1281 = !DILocation(line: 1269, column: 15, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1269, column: 10)
!1283 = !DILocation(line: 1269, column: 10, scope: !1282)
!1284 = !DILocation(line: 1269, column: 29, scope: !1282)
!1285 = !DILocation(line: 1269, column: 25, scope: !1282)
!1286 = !DILocation(line: 1269, column: 33, scope: !1282)
!1287 = !DILocation(line: 1269, column: 47, scope: !1282)
!1288 = !DILocation(line: 1269, column: 10, scope: !1276)
!1289 = !DILocation(line: 1270, column: 29, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 1269, column: 54)
!1291 = !DILocation(line: 1270, column: 42, scope: !1290)
!1292 = !DILocation(line: 1270, column: 38, scope: !1290)
!1293 = !DILocation(line: 1270, column: 27, scope: !1290)
!1294 = !DILocation(line: 1270, column: 9, scope: !1290)
!1295 = !DILocation(line: 1270, column: 17, scope: !1290)
!1296 = !DILocation(line: 1270, column: 22, scope: !1290)
!1297 = !DILocation(line: 1271, column: 31, scope: !1290)
!1298 = !DILocation(line: 1271, column: 37, scope: !1290)
!1299 = !DILocation(line: 1271, column: 34, scope: !1290)
!1300 = !DILocation(line: 1271, column: 24, scope: !1290)
!1301 = !DILocation(line: 1271, column: 49, scope: !1290)
!1302 = !DILocation(line: 1271, column: 57, scope: !1290)
!1303 = !DILocation(line: 1271, column: 44, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1290, file: !1, discriminator: 1)
!1305 = !DILocation(line: 1271, column: 42, scope: !1290)
!1306 = !DILocation(line: 1271, column: 9, scope: !1290)
!1307 = !DILocation(line: 1271, column: 17, scope: !1290)
!1308 = !DILocation(line: 1271, column: 22, scope: !1290)
!1309 = !DILocation(line: 1272, column: 53, scope: !1290)
!1310 = !DILocation(line: 1272, column: 61, scope: !1290)
!1311 = !DILocation(line: 1272, column: 48, scope: !1290)
!1312 = !DILocation(line: 1272, column: 46, scope: !1290)
!1313 = !DILocation(line: 1272, column: 9, scope: !1290)
!1314 = !DILocation(line: 1272, column: 17, scope: !1290)
!1315 = !DILocation(line: 1272, column: 21, scope: !1290)
!1316 = !DILocation(line: 1273, column: 9, scope: !1290)
!1317 = !DILocation(line: 1276, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 1275, column: 12)
!1319 = distinct !{!1319, !1317}
!1320 = !DILocation(line: 1276, column: 9, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 1276, column: 9)
!1323 = distinct !{!1323, !1324}
!1324 = !DILocation(line: 1276, column: 9, scope: !1322)
!1325 = !DILocation(line: 1276, column: 9, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !1, discriminator: 2)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 1276, column: 9)
!1328 = !DILocation(line: 1276, column: 9, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 3)
!1330 = !DILocation(line: 1278, column: 5, scope: !1276)
!1331 = !DILocalVariable(name: "lng", scope: !1332, file: !1, line: 1285, type: !99)
!1332 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 1279, column: 10)
!1333 = !DILocation(line: 1285, column: 21, scope: !1332)
!1334 = !DILocalVariable(name: "sgn", scope: !1332, file: !1, line: 1286, type: !43)
!1335 = !DILocation(line: 1286, column: 14, scope: !1332)
!1336 = !DILocalVariable(name: "stat_lng", scope: !1332, file: !1, line: 1287, type: !42)
!1337 = !DILocation(line: 1287, column: 11, scope: !1332)
!1338 = !DILocation(line: 1287, column: 43, scope: !1332)
!1339 = !DILocation(line: 1287, column: 22, scope: !1332)
!1340 = !DILocalVariable(name: "stat_e", scope: !1332, file: !1, line: 1288, type: !42)
!1341 = !DILocation(line: 1288, column: 11, scope: !1332)
!1342 = !DILocation(line: 1288, column: 48, scope: !1332)
!1343 = !DILocation(line: 1288, column: 57, scope: !1332)
!1344 = !DILocation(line: 1288, column: 62, scope: !1332)
!1345 = !DILocation(line: 1288, column: 72, scope: !1332)
!1346 = !DILocation(line: 1288, column: 22, scope: !1332)
!1347 = !DILocation(line: 1289, column: 14, scope: !1332)
!1348 = !DILocation(line: 1289, column: 14, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 1)
!1350 = !DILocation(line: 1289, column: 14, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 2)
!1352 = !DILocation(line: 1289, column: 14, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 3)
!1354 = !DILocation(line: 1289, column: 14, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 4)
!1356 = !DILocation(line: 1289, column: 14, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 5)
!1358 = !DILocation(line: 1289, column: 14, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1332, file: !1, discriminator: 6)
!1360 = !DILocation(line: 1289, column: 7, scope: !1359)
!1361 = !DILocation(line: 1291, column: 3, scope: !1231)
!1362 = !DILocation(line: 1293, column: 26, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 1292, column: 8)
!1364 = !DILocation(line: 1293, column: 29, scope: !1363)
!1365 = !DILocation(line: 1293, column: 12, scope: !1363)
!1366 = !DILocation(line: 1293, column: 5, scope: !1363)
!1367 = !DILocation(line: 1295, column: 1, scope: !1221)
!1368 = distinct !DISubprogram(name: "gamma_xgthalf", scope: !1, file: !1, line: 1019, type: !312, isLocal: true, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!1369 = !DILocalVariable(name: "x", arg: 1, scope: !1368, file: !1, line: 1019, type: !314)
!1370 = !DILocation(line: 1019, column: 28, scope: !1368)
!1371 = !DILocalVariable(name: "result", arg: 2, scope: !1368, file: !1, line: 1019, type: !98)
!1372 = !DILocation(line: 1019, column: 47, scope: !1368)
!1373 = !DILocation(line: 1023, column: 6, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 1023, column: 6)
!1375 = !DILocation(line: 1023, column: 8, scope: !1374)
!1376 = !DILocation(line: 1023, column: 6, scope: !1368)
!1377 = !DILocation(line: 1024, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 1023, column: 16)
!1379 = !DILocation(line: 1024, column: 13, scope: !1378)
!1380 = !DILocation(line: 1024, column: 17, scope: !1378)
!1381 = !DILocation(line: 1025, column: 37, scope: !1378)
!1382 = !DILocation(line: 1025, column: 45, scope: !1378)
!1383 = !DILocation(line: 1025, column: 35, scope: !1378)
!1384 = !DILocation(line: 1025, column: 5, scope: !1378)
!1385 = !DILocation(line: 1025, column: 13, scope: !1378)
!1386 = !DILocation(line: 1025, column: 17, scope: !1378)
!1387 = !DILocation(line: 1026, column: 5, scope: !1378)
!1388 = !DILocation(line: 1027, column: 14, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 1027, column: 14)
!1390 = !DILocation(line: 1027, column: 16, scope: !1389)
!1391 = !DILocation(line: 1027, column: 44, scope: !1389)
!1392 = !DILocation(line: 1027, column: 47, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1389, file: !1, discriminator: 1)
!1394 = !DILocation(line: 1027, column: 58, scope: !1393)
!1395 = !DILocation(line: 1027, column: 52, scope: !1393)
!1396 = !DILocation(line: 1027, column: 49, scope: !1393)
!1397 = !DILocation(line: 1027, column: 14, scope: !1393)
!1398 = !DILocalVariable(name: "n", scope: !1399, file: !1, line: 1028, type: !42)
!1399 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 1027, column: 62)
!1400 = !DILocation(line: 1028, column: 9, scope: !1399)
!1401 = !DILocation(line: 1028, column: 26, scope: !1399)
!1402 = !DILocation(line: 1028, column: 19, scope: !1399)
!1403 = !DILocation(line: 1028, column: 13, scope: !1399)
!1404 = !DILocation(line: 1029, column: 30, scope: !1399)
!1405 = !DILocation(line: 1029, column: 32, scope: !1399)
!1406 = !DILocation(line: 1029, column: 19, scope: !1399)
!1407 = !DILocation(line: 1029, column: 37, scope: !1399)
!1408 = !DILocation(line: 1029, column: 5, scope: !1399)
!1409 = !DILocation(line: 1029, column: 13, scope: !1399)
!1410 = !DILocation(line: 1029, column: 17, scope: !1399)
!1411 = !DILocation(line: 1030, column: 37, scope: !1399)
!1412 = !DILocation(line: 1030, column: 45, scope: !1399)
!1413 = !DILocation(line: 1030, column: 35, scope: !1399)
!1414 = !DILocation(line: 1030, column: 5, scope: !1399)
!1415 = !DILocation(line: 1030, column: 13, scope: !1399)
!1416 = !DILocation(line: 1030, column: 17, scope: !1399)
!1417 = !DILocation(line: 1031, column: 5, scope: !1399)
!1418 = !DILocation(line: 1033, column: 16, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 1033, column: 11)
!1420 = !DILocation(line: 1033, column: 18, scope: !1419)
!1421 = !DILocation(line: 1033, column: 11, scope: !1419)
!1422 = !DILocation(line: 1033, column: 25, scope: !1419)
!1423 = !DILocation(line: 1033, column: 11, scope: !1389)
!1424 = !DILocalVariable(name: "eps", scope: !1425, file: !1, line: 1036, type: !314)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 1033, column: 33)
!1426 = !DILocation(line: 1036, column: 18, scope: !1425)
!1427 = !DILocation(line: 1036, column: 24, scope: !1425)
!1428 = !DILocation(line: 1036, column: 26, scope: !1425)
!1429 = !DILocalVariable(name: "c1", scope: !1425, file: !1, line: 1037, type: !314)
!1430 = !DILocation(line: 1037, column: 18, scope: !1425)
!1431 = !DILocalVariable(name: "c2", scope: !1425, file: !1, line: 1038, type: !314)
!1432 = !DILocation(line: 1038, column: 18, scope: !1425)
!1433 = !DILocalVariable(name: "c3", scope: !1425, file: !1, line: 1039, type: !314)
!1434 = !DILocation(line: 1039, column: 18, scope: !1425)
!1435 = !DILocalVariable(name: "c4", scope: !1425, file: !1, line: 1040, type: !314)
!1436 = !DILocation(line: 1040, column: 18, scope: !1425)
!1437 = !DILocalVariable(name: "c5", scope: !1425, file: !1, line: 1041, type: !314)
!1438 = !DILocation(line: 1041, column: 18, scope: !1425)
!1439 = !DILocalVariable(name: "c6", scope: !1425, file: !1, line: 1042, type: !314)
!1440 = !DILocation(line: 1042, column: 18, scope: !1425)
!1441 = !DILocalVariable(name: "c7", scope: !1425, file: !1, line: 1043, type: !314)
!1442 = !DILocation(line: 1043, column: 18, scope: !1425)
!1443 = !DILocation(line: 1044, column: 23, scope: !1425)
!1444 = !DILocation(line: 1044, column: 22, scope: !1425)
!1445 = !DILocation(line: 1044, column: 27, scope: !1425)
!1446 = !DILocation(line: 1044, column: 35, scope: !1425)
!1447 = !DILocation(line: 1044, column: 43, scope: !1425)
!1448 = !DILocation(line: 1044, column: 51, scope: !1425)
!1449 = !DILocation(line: 1044, column: 59, scope: !1425)
!1450 = !DILocation(line: 1044, column: 67, scope: !1425)
!1451 = !DILocation(line: 1044, column: 75, scope: !1425)
!1452 = !DILocation(line: 1044, column: 78, scope: !1425)
!1453 = !DILocation(line: 1044, column: 74, scope: !1425)
!1454 = !DILocation(line: 1044, column: 70, scope: !1425)
!1455 = !DILocation(line: 1044, column: 66, scope: !1425)
!1456 = !DILocation(line: 1044, column: 62, scope: !1425)
!1457 = !DILocation(line: 1044, column: 58, scope: !1425)
!1458 = !DILocation(line: 1044, column: 54, scope: !1425)
!1459 = !DILocation(line: 1044, column: 50, scope: !1425)
!1460 = !DILocation(line: 1044, column: 46, scope: !1425)
!1461 = !DILocation(line: 1044, column: 42, scope: !1425)
!1462 = !DILocation(line: 1044, column: 38, scope: !1425)
!1463 = !DILocation(line: 1044, column: 34, scope: !1425)
!1464 = !DILocation(line: 1044, column: 30, scope: !1425)
!1465 = !DILocation(line: 1044, column: 25, scope: !1425)
!1466 = !DILocation(line: 1044, column: 5, scope: !1425)
!1467 = !DILocation(line: 1044, column: 13, scope: !1425)
!1468 = !DILocation(line: 1044, column: 17, scope: !1425)
!1469 = !DILocation(line: 1045, column: 5, scope: !1425)
!1470 = !DILocation(line: 1045, column: 13, scope: !1425)
!1471 = !DILocation(line: 1045, column: 17, scope: !1425)
!1472 = !DILocation(line: 1046, column: 5, scope: !1425)
!1473 = !DILocation(line: 1048, column: 16, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 1048, column: 11)
!1475 = !DILocation(line: 1048, column: 18, scope: !1474)
!1476 = !DILocation(line: 1048, column: 11, scope: !1474)
!1477 = !DILocation(line: 1048, column: 25, scope: !1474)
!1478 = !DILocation(line: 1048, column: 11, scope: !1419)
!1479 = !DILocalVariable(name: "eps", scope: !1480, file: !1, line: 1051, type: !314)
!1480 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 1048, column: 33)
!1481 = !DILocation(line: 1051, column: 18, scope: !1480)
!1482 = !DILocation(line: 1051, column: 24, scope: !1480)
!1483 = !DILocation(line: 1051, column: 26, scope: !1480)
!1484 = !DILocalVariable(name: "c1", scope: !1480, file: !1, line: 1052, type: !314)
!1485 = !DILocation(line: 1052, column: 18, scope: !1480)
!1486 = !DILocalVariable(name: "c2", scope: !1480, file: !1, line: 1053, type: !314)
!1487 = !DILocation(line: 1053, column: 18, scope: !1480)
!1488 = !DILocalVariable(name: "c3", scope: !1480, file: !1, line: 1054, type: !314)
!1489 = !DILocation(line: 1054, column: 18, scope: !1480)
!1490 = !DILocalVariable(name: "c4", scope: !1480, file: !1, line: 1055, type: !314)
!1491 = !DILocation(line: 1055, column: 18, scope: !1480)
!1492 = !DILocalVariable(name: "c5", scope: !1480, file: !1, line: 1056, type: !314)
!1493 = !DILocation(line: 1056, column: 18, scope: !1480)
!1494 = !DILocalVariable(name: "c6", scope: !1480, file: !1, line: 1057, type: !314)
!1495 = !DILocation(line: 1057, column: 18, scope: !1480)
!1496 = !DILocalVariable(name: "c7", scope: !1480, file: !1, line: 1058, type: !314)
!1497 = !DILocation(line: 1058, column: 18, scope: !1480)
!1498 = !DILocalVariable(name: "c8", scope: !1480, file: !1, line: 1059, type: !314)
!1499 = !DILocation(line: 1059, column: 18, scope: !1480)
!1500 = !DILocation(line: 1060, column: 25, scope: !1480)
!1501 = !DILocation(line: 1060, column: 33, scope: !1480)
!1502 = !DILocation(line: 1060, column: 41, scope: !1480)
!1503 = !DILocation(line: 1060, column: 49, scope: !1480)
!1504 = !DILocation(line: 1060, column: 57, scope: !1480)
!1505 = !DILocation(line: 1060, column: 65, scope: !1480)
!1506 = !DILocation(line: 1060, column: 73, scope: !1480)
!1507 = !DILocation(line: 1060, column: 81, scope: !1480)
!1508 = !DILocation(line: 1060, column: 84, scope: !1480)
!1509 = !DILocation(line: 1060, column: 80, scope: !1480)
!1510 = !DILocation(line: 1060, column: 76, scope: !1480)
!1511 = !DILocation(line: 1060, column: 72, scope: !1480)
!1512 = !DILocation(line: 1060, column: 68, scope: !1480)
!1513 = !DILocation(line: 1060, column: 64, scope: !1480)
!1514 = !DILocation(line: 1060, column: 60, scope: !1480)
!1515 = !DILocation(line: 1060, column: 56, scope: !1480)
!1516 = !DILocation(line: 1060, column: 52, scope: !1480)
!1517 = !DILocation(line: 1060, column: 48, scope: !1480)
!1518 = !DILocation(line: 1060, column: 44, scope: !1480)
!1519 = !DILocation(line: 1060, column: 40, scope: !1480)
!1520 = !DILocation(line: 1060, column: 36, scope: !1480)
!1521 = !DILocation(line: 1060, column: 32, scope: !1480)
!1522 = !DILocation(line: 1060, column: 28, scope: !1480)
!1523 = !DILocation(line: 1060, column: 23, scope: !1480)
!1524 = !DILocation(line: 1060, column: 5, scope: !1480)
!1525 = !DILocation(line: 1060, column: 13, scope: !1480)
!1526 = !DILocation(line: 1060, column: 17, scope: !1480)
!1527 = !DILocation(line: 1061, column: 5, scope: !1480)
!1528 = !DILocation(line: 1061, column: 13, scope: !1480)
!1529 = !DILocation(line: 1061, column: 17, scope: !1480)
!1530 = !DILocation(line: 1062, column: 5, scope: !1480)
!1531 = !DILocation(line: 1064, column: 11, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 1064, column: 11)
!1533 = !DILocation(line: 1064, column: 13, scope: !1532)
!1534 = !DILocation(line: 1064, column: 11, scope: !1474)
!1535 = !DILocalVariable(name: "lg", scope: !1536, file: !1, line: 1069, type: !99)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 1064, column: 20)
!1537 = !DILocation(line: 1069, column: 19, scope: !1536)
!1538 = !DILocation(line: 1070, column: 21, scope: !1536)
!1539 = !DILocation(line: 1070, column: 5, scope: !1536)
!1540 = !DILocation(line: 1071, column: 26, scope: !1536)
!1541 = !DILocation(line: 1071, column: 19, scope: !1536)
!1542 = !DILocation(line: 1071, column: 5, scope: !1536)
!1543 = !DILocation(line: 1071, column: 13, scope: !1536)
!1544 = !DILocation(line: 1071, column: 17, scope: !1536)
!1545 = !DILocation(line: 1072, column: 19, scope: !1536)
!1546 = !DILocation(line: 1072, column: 27, scope: !1536)
!1547 = !DILocation(line: 1072, column: 37, scope: !1536)
!1548 = !DILocation(line: 1072, column: 41, scope: !1536)
!1549 = !DILocation(line: 1072, column: 31, scope: !1536)
!1550 = !DILocation(line: 1072, column: 5, scope: !1536)
!1551 = !DILocation(line: 1072, column: 13, scope: !1536)
!1552 = !DILocation(line: 1072, column: 17, scope: !1536)
!1553 = !DILocation(line: 1073, column: 5, scope: !1536)
!1554 = !DILocation(line: 1075, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 1075, column: 11)
!1556 = !DILocation(line: 1075, column: 13, scope: !1555)
!1557 = !DILocation(line: 1075, column: 11, scope: !1532)
!1558 = !DILocalVariable(name: "gamma_8", scope: !1559, file: !1, line: 1080, type: !314)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 1075, column: 21)
!1560 = !DILocation(line: 1080, column: 18, scope: !1559)
!1561 = !DILocalVariable(name: "t", scope: !1559, file: !1, line: 1081, type: !314)
!1562 = !DILocation(line: 1081, column: 18, scope: !1559)
!1563 = !DILocation(line: 1081, column: 27, scope: !1559)
!1564 = !DILocation(line: 1081, column: 26, scope: !1559)
!1565 = !DILocation(line: 1081, column: 29, scope: !1559)
!1566 = !DILocation(line: 1081, column: 36, scope: !1559)
!1567 = !DILocalVariable(name: "c", scope: !1559, file: !1, line: 1082, type: !99)
!1568 = !DILocation(line: 1082, column: 19, scope: !1559)
!1569 = !DILocation(line: 1083, column: 33, scope: !1559)
!1570 = !DILocation(line: 1083, column: 5, scope: !1559)
!1571 = !DILocation(line: 1084, column: 26, scope: !1559)
!1572 = !DILocation(line: 1084, column: 20, scope: !1559)
!1573 = !DILocation(line: 1084, column: 31, scope: !1559)
!1574 = !DILocation(line: 1084, column: 5, scope: !1559)
!1575 = !DILocation(line: 1084, column: 13, scope: !1559)
!1576 = !DILocation(line: 1084, column: 18, scope: !1559)
!1577 = !DILocation(line: 1085, column: 20, scope: !1559)
!1578 = !DILocation(line: 1085, column: 28, scope: !1559)
!1579 = !DILocation(line: 1085, column: 36, scope: !1559)
!1580 = !DILocation(line: 1085, column: 32, scope: !1559)
!1581 = !DILocation(line: 1085, column: 5, scope: !1559)
!1582 = !DILocation(line: 1085, column: 13, scope: !1559)
!1583 = !DILocation(line: 1085, column: 18, scope: !1559)
!1584 = !DILocation(line: 1086, column: 44, scope: !1559)
!1585 = !DILocation(line: 1086, column: 52, scope: !1559)
!1586 = !DILocation(line: 1086, column: 42, scope: !1559)
!1587 = !DILocation(line: 1086, column: 5, scope: !1559)
!1588 = !DILocation(line: 1086, column: 13, scope: !1559)
!1589 = !DILocation(line: 1086, column: 17, scope: !1559)
!1590 = !DILocation(line: 1087, column: 5, scope: !1559)
!1591 = !DILocation(line: 1089, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 1089, column: 11)
!1593 = !DILocation(line: 1089, column: 13, scope: !1592)
!1594 = !DILocation(line: 1089, column: 11, scope: !1555)
!1595 = !DILocalVariable(name: "p", scope: !1596, file: !1, line: 1095, type: !43)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 1089, column: 34)
!1597 = !DILocation(line: 1095, column: 12, scope: !1596)
!1598 = !DILocation(line: 1095, column: 20, scope: !1596)
!1599 = !DILocation(line: 1095, column: 27, scope: !1596)
!1600 = !DILocation(line: 1095, column: 26, scope: !1596)
!1601 = !DILocation(line: 1095, column: 16, scope: !1596)
!1602 = !DILocalVariable(name: "e", scope: !1596, file: !1, line: 1096, type: !43)
!1603 = !DILocation(line: 1096, column: 12, scope: !1596)
!1604 = !DILocation(line: 1096, column: 21, scope: !1596)
!1605 = !DILocation(line: 1096, column: 20, scope: !1596)
!1606 = !DILocation(line: 1096, column: 16, scope: !1596)
!1607 = !DILocalVariable(name: "q", scope: !1596, file: !1, line: 1097, type: !43)
!1608 = !DILocation(line: 1097, column: 12, scope: !1596)
!1609 = !DILocation(line: 1097, column: 17, scope: !1596)
!1610 = !DILocation(line: 1097, column: 21, scope: !1596)
!1611 = !DILocation(line: 1097, column: 19, scope: !1596)
!1612 = !DILocation(line: 1097, column: 26, scope: !1596)
!1613 = !DILocation(line: 1097, column: 24, scope: !1596)
!1614 = !DILocalVariable(name: "pre", scope: !1596, file: !1, line: 1098, type: !43)
!1615 = !DILocation(line: 1098, column: 12, scope: !1596)
!1616 = !DILocation(line: 1098, column: 39, scope: !1596)
!1617 = !DILocation(line: 1098, column: 37, scope: !1596)
!1618 = !DILocation(line: 1098, column: 46, scope: !1596)
!1619 = !DILocation(line: 1098, column: 41, scope: !1596)
!1620 = !DILocation(line: 1098, column: 40, scope: !1596)
!1621 = !DILocalVariable(name: "gstar", scope: !1596, file: !1, line: 1099, type: !99)
!1622 = !DILocation(line: 1099, column: 19, scope: !1596)
!1623 = !DILocalVariable(name: "stat_gs", scope: !1596, file: !1, line: 1100, type: !42)
!1624 = !DILocation(line: 1100, column: 9, scope: !1596)
!1625 = !DILocation(line: 1100, column: 33, scope: !1596)
!1626 = !DILocation(line: 1100, column: 19, scope: !1596)
!1627 = !DILocation(line: 1101, column: 19, scope: !1596)
!1628 = !DILocation(line: 1101, column: 31, scope: !1596)
!1629 = !DILocation(line: 1101, column: 23, scope: !1596)
!1630 = !DILocation(line: 1101, column: 5, scope: !1596)
!1631 = !DILocation(line: 1101, column: 13, scope: !1596)
!1632 = !DILocation(line: 1101, column: 17, scope: !1596)
!1633 = !DILocation(line: 1102, column: 20, scope: !1596)
!1634 = !DILocation(line: 1102, column: 22, scope: !1596)
!1635 = !DILocation(line: 1102, column: 29, scope: !1596)
!1636 = !DILocation(line: 1102, column: 49, scope: !1596)
!1637 = !DILocation(line: 1102, column: 57, scope: !1596)
!1638 = !DILocation(line: 1102, column: 47, scope: !1596)
!1639 = !DILocation(line: 1102, column: 5, scope: !1596)
!1640 = !DILocation(line: 1102, column: 13, scope: !1596)
!1641 = !DILocation(line: 1102, column: 17, scope: !1596)
!1642 = !DILocation(line: 1103, column: 12, scope: !1596)
!1643 = !DILocation(line: 1103, column: 5, scope: !1596)
!1644 = !DILocation(line: 1106, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 1105, column: 8)
!1646 = distinct !{!1646, !1644}
!1647 = !DILocation(line: 1106, column: 5, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 1)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 1106, column: 5)
!1650 = distinct !{!1650, !1651}
!1651 = !DILocation(line: 1106, column: 5, scope: !1649)
!1652 = !DILocation(line: 1106, column: 5, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1654, file: !1, discriminator: 2)
!1654 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1106, column: 5)
!1655 = !DILocation(line: 1106, column: 5, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 3)
!1657 = !DILocation(line: 1108, column: 1, scope: !1368)
!1658 = distinct !DISubprogram(name: "gsl_sf_gammastar_e", scope: !1, file: !1, line: 1299, type: !312, isLocal: false, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!1659 = !DILocalVariable(name: "x", arg: 1, scope: !1658, file: !1, line: 1299, type: !314)
!1660 = !DILocation(line: 1299, column: 33, scope: !1658)
!1661 = !DILocalVariable(name: "result", arg: 2, scope: !1658, file: !1, line: 1299, type: !98)
!1662 = !DILocation(line: 1299, column: 52, scope: !1658)
!1663 = !DILocation(line: 1303, column: 6, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 1303, column: 6)
!1665 = !DILocation(line: 1303, column: 8, scope: !1664)
!1666 = !DILocation(line: 1303, column: 6, scope: !1658)
!1667 = !DILocation(line: 1304, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1303, column: 16)
!1669 = distinct !{!1669, !1667}
!1670 = !DILocation(line: 1304, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 1)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 1304, column: 5)
!1673 = distinct !{!1673, !1674}
!1674 = !DILocation(line: 1304, column: 5, scope: !1672)
!1675 = !DILocation(line: 1304, column: 5, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !1, discriminator: 2)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 1304, column: 5)
!1678 = !DILocation(line: 1304, column: 5, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 3)
!1680 = !DILocation(line: 1305, column: 3, scope: !1668)
!1681 = !DILocation(line: 1306, column: 11, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1306, column: 11)
!1683 = !DILocation(line: 1306, column: 13, scope: !1682)
!1684 = !DILocation(line: 1306, column: 11, scope: !1664)
!1685 = !DILocalVariable(name: "lg", scope: !1686, file: !1, line: 1307, type: !99)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1306, column: 20)
!1687 = !DILocation(line: 1307, column: 19, scope: !1686)
!1688 = !DILocalVariable(name: "stat_lg", scope: !1686, file: !1, line: 1308, type: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1690 = !DILocation(line: 1308, column: 15, scope: !1686)
!1691 = !DILocation(line: 1308, column: 42, scope: !1686)
!1692 = !DILocation(line: 1308, column: 25, scope: !1686)
!1693 = !DILocalVariable(name: "lx", scope: !1686, file: !1, line: 1309, type: !314)
!1694 = !DILocation(line: 1309, column: 18, scope: !1686)
!1695 = !DILocation(line: 1309, column: 27, scope: !1686)
!1696 = !DILocation(line: 1309, column: 23, scope: !1686)
!1697 = !DILocalVariable(name: "c", scope: !1686, file: !1, line: 1310, type: !314)
!1698 = !DILocation(line: 1310, column: 18, scope: !1686)
!1699 = !DILocalVariable(name: "lnr_val", scope: !1686, file: !1, line: 1311, type: !314)
!1700 = !DILocation(line: 1311, column: 18, scope: !1686)
!1701 = !DILocation(line: 1311, column: 31, scope: !1686)
!1702 = !DILocation(line: 1311, column: 38, scope: !1686)
!1703 = !DILocation(line: 1311, column: 39, scope: !1686)
!1704 = !DILocation(line: 1311, column: 45, scope: !1686)
!1705 = !DILocation(line: 1311, column: 44, scope: !1686)
!1706 = !DILocation(line: 1311, column: 35, scope: !1686)
!1707 = !DILocation(line: 1311, column: 50, scope: !1686)
!1708 = !DILocation(line: 1311, column: 48, scope: !1686)
!1709 = !DILocation(line: 1311, column: 52, scope: !1686)
!1710 = !DILocalVariable(name: "lnr_err", scope: !1686, file: !1, line: 1312, type: !314)
!1711 = !DILocation(line: 1312, column: 18, scope: !1686)
!1712 = !DILocation(line: 1312, column: 31, scope: !1686)
!1713 = !DILocation(line: 1312, column: 62, scope: !1686)
!1714 = !DILocation(line: 1312, column: 63, scope: !1686)
!1715 = !DILocation(line: 1312, column: 74, scope: !1686)
!1716 = !DILocation(line: 1312, column: 69, scope: !1686)
!1717 = !DILocation(line: 1312, column: 68, scope: !1686)
!1718 = !DILocation(line: 1312, column: 78, scope: !1686)
!1719 = !DILocation(line: 1312, column: 59, scope: !1686)
!1720 = !DILocation(line: 1312, column: 35, scope: !1686)
!1721 = !DILocalVariable(name: "stat_e", scope: !1686, file: !1, line: 1313, type: !1689)
!1722 = !DILocation(line: 1313, column: 15, scope: !1686)
!1723 = !DILocation(line: 1313, column: 42, scope: !1686)
!1724 = !DILocation(line: 1313, column: 51, scope: !1686)
!1725 = !DILocation(line: 1313, column: 60, scope: !1686)
!1726 = !DILocation(line: 1313, column: 25, scope: !1686)
!1727 = !DILocation(line: 1314, column: 12, scope: !1686)
!1728 = !DILocation(line: 1314, column: 12, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 1)
!1730 = !DILocation(line: 1314, column: 12, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 2)
!1732 = !DILocation(line: 1314, column: 12, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 3)
!1734 = !DILocation(line: 1314, column: 12, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 4)
!1736 = !DILocation(line: 1314, column: 12, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 5)
!1738 = !DILocation(line: 1314, column: 12, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1686, file: !1, discriminator: 6)
!1740 = !DILocation(line: 1314, column: 5, scope: !1739)
!1741 = !DILocation(line: 1316, column: 11, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1316, column: 11)
!1743 = !DILocation(line: 1316, column: 13, scope: !1742)
!1744 = !DILocation(line: 1316, column: 11, scope: !1682)
!1745 = !DILocalVariable(name: "t", scope: !1746, file: !1, line: 1317, type: !314)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 1316, column: 20)
!1747 = !DILocation(line: 1317, column: 18, scope: !1746)
!1748 = !DILocation(line: 1317, column: 31, scope: !1746)
!1749 = !DILocation(line: 1317, column: 32, scope: !1746)
!1750 = !DILocation(line: 1317, column: 29, scope: !1746)
!1751 = !DILocation(line: 1317, column: 38, scope: !1746)
!1752 = !DILocation(line: 1318, column: 37, scope: !1746)
!1753 = !DILocation(line: 1318, column: 40, scope: !1746)
!1754 = !DILocation(line: 1318, column: 12, scope: !1746)
!1755 = !DILocation(line: 1318, column: 5, scope: !1746)
!1756 = !DILocation(line: 1320, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 1320, column: 11)
!1758 = !DILocation(line: 1320, column: 13, scope: !1757)
!1759 = !DILocation(line: 1320, column: 11, scope: !1742)
!1760 = !DILocalVariable(name: "t", scope: !1761, file: !1, line: 1321, type: !314)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 1320, column: 21)
!1762 = !DILocation(line: 1321, column: 18, scope: !1761)
!1763 = !DILocation(line: 1321, column: 28, scope: !1761)
!1764 = !DILocation(line: 1321, column: 29, scope: !1761)
!1765 = !DILocation(line: 1321, column: 26, scope: !1761)
!1766 = !DILocation(line: 1321, column: 35, scope: !1761)
!1767 = !DILocalVariable(name: "c", scope: !1761, file: !1, line: 1322, type: !99)
!1768 = !DILocation(line: 1322, column: 19, scope: !1761)
!1769 = !DILocation(line: 1323, column: 30, scope: !1761)
!1770 = !DILocation(line: 1323, column: 5, scope: !1761)
!1771 = !DILocation(line: 1324, column: 22, scope: !1761)
!1772 = !DILocation(line: 1324, column: 27, scope: !1761)
!1773 = !DILocation(line: 1324, column: 29, scope: !1761)
!1774 = !DILocation(line: 1324, column: 28, scope: !1761)
!1775 = !DILocation(line: 1324, column: 25, scope: !1761)
!1776 = !DILocation(line: 1324, column: 32, scope: !1761)
!1777 = !DILocation(line: 1324, column: 50, scope: !1761)
!1778 = !DILocation(line: 1324, column: 49, scope: !1761)
!1779 = !DILocation(line: 1324, column: 43, scope: !1761)
!1780 = !DILocation(line: 1324, column: 38, scope: !1761)
!1781 = !DILocation(line: 1324, column: 5, scope: !1761)
!1782 = !DILocation(line: 1324, column: 13, scope: !1761)
!1783 = !DILocation(line: 1324, column: 18, scope: !1761)
!1784 = !DILocation(line: 1325, column: 22, scope: !1761)
!1785 = !DILocation(line: 1325, column: 27, scope: !1761)
!1786 = !DILocation(line: 1325, column: 29, scope: !1761)
!1787 = !DILocation(line: 1325, column: 28, scope: !1761)
!1788 = !DILocation(line: 1325, column: 25, scope: !1761)
!1789 = !DILocation(line: 1325, column: 5, scope: !1761)
!1790 = !DILocation(line: 1325, column: 13, scope: !1761)
!1791 = !DILocation(line: 1325, column: 18, scope: !1761)
!1792 = !DILocation(line: 1326, column: 49, scope: !1761)
!1793 = !DILocation(line: 1326, column: 57, scope: !1761)
!1794 = !DILocation(line: 1326, column: 44, scope: !1761)
!1795 = !DILocation(line: 1326, column: 42, scope: !1761)
!1796 = !DILocation(line: 1326, column: 5, scope: !1761)
!1797 = !DILocation(line: 1326, column: 13, scope: !1761)
!1798 = !DILocation(line: 1326, column: 17, scope: !1761)
!1799 = !DILocation(line: 1327, column: 5, scope: !1761)
!1800 = !DILocation(line: 1329, column: 11, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 1329, column: 11)
!1802 = !DILocation(line: 1329, column: 13, scope: !1801)
!1803 = !DILocation(line: 1329, column: 11, scope: !1757)
!1804 = !DILocation(line: 1330, column: 26, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 1329, column: 42)
!1806 = !DILocation(line: 1330, column: 29, scope: !1805)
!1807 = !DILocation(line: 1330, column: 12, scope: !1805)
!1808 = !DILocation(line: 1330, column: 5, scope: !1805)
!1809 = !DILocation(line: 1332, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 1332, column: 11)
!1811 = !DILocation(line: 1332, column: 13, scope: !1810)
!1812 = !DILocation(line: 1332, column: 11, scope: !1801)
!1813 = !DILocalVariable(name: "xi", scope: !1814, file: !1, line: 1335, type: !314)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 1332, column: 36)
!1815 = !DILocation(line: 1335, column: 18, scope: !1814)
!1816 = !DILocation(line: 1335, column: 27, scope: !1814)
!1817 = !DILocation(line: 1335, column: 26, scope: !1814)
!1818 = !DILocation(line: 1336, column: 25, scope: !1814)
!1819 = !DILocation(line: 1336, column: 27, scope: !1814)
!1820 = !DILocation(line: 1336, column: 40, scope: !1814)
!1821 = !DILocation(line: 1336, column: 42, scope: !1814)
!1822 = !DILocation(line: 1336, column: 55, scope: !1814)
!1823 = !DILocation(line: 1336, column: 86, scope: !1814)
!1824 = !DILocation(line: 1336, column: 85, scope: !1814)
!1825 = !DILocation(line: 1336, column: 71, scope: !1814)
!1826 = !DILocation(line: 1336, column: 57, scope: !1814)
!1827 = !DILocation(line: 1336, column: 53, scope: !1814)
!1828 = !DILocation(line: 1336, column: 47, scope: !1814)
!1829 = !DILocation(line: 1336, column: 38, scope: !1814)
!1830 = !DILocation(line: 1336, column: 32, scope: !1814)
!1831 = !DILocation(line: 1336, column: 23, scope: !1814)
!1832 = !DILocation(line: 1336, column: 5, scope: !1814)
!1833 = !DILocation(line: 1336, column: 13, scope: !1814)
!1834 = !DILocation(line: 1336, column: 17, scope: !1814)
!1835 = !DILocation(line: 1337, column: 48, scope: !1814)
!1836 = !DILocation(line: 1337, column: 56, scope: !1814)
!1837 = !DILocation(line: 1337, column: 43, scope: !1814)
!1838 = !DILocation(line: 1337, column: 41, scope: !1814)
!1839 = !DILocation(line: 1337, column: 5, scope: !1814)
!1840 = !DILocation(line: 1337, column: 13, scope: !1814)
!1841 = !DILocation(line: 1337, column: 17, scope: !1814)
!1842 = !DILocation(line: 1338, column: 5, scope: !1814)
!1843 = !DILocation(line: 1341, column: 5, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 1340, column: 8)
!1845 = !DILocation(line: 1341, column: 13, scope: !1844)
!1846 = !DILocation(line: 1341, column: 17, scope: !1844)
!1847 = !DILocation(line: 1342, column: 23, scope: !1844)
!1848 = !DILocation(line: 1342, column: 22, scope: !1844)
!1849 = !DILocation(line: 1342, column: 5, scope: !1844)
!1850 = !DILocation(line: 1342, column: 13, scope: !1844)
!1851 = !DILocation(line: 1342, column: 17, scope: !1844)
!1852 = !DILocation(line: 1343, column: 5, scope: !1844)
!1853 = !DILocation(line: 1345, column: 1, scope: !1658)
!1854 = distinct !DISubprogram(name: "cheb_eval_e", scope: !1855, file: !1855, line: 3, type: !1856, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!1855 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!42, !1858, !314, !98}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1859 = !DILocalVariable(name: "cs", arg: 1, scope: !1854, file: !1855, line: 3, type: !1858)
!1860 = !DILocation(line: 3, column: 33, scope: !1854)
!1861 = !DILocalVariable(name: "x", arg: 2, scope: !1854, file: !1855, line: 4, type: !314)
!1862 = !DILocation(line: 4, column: 26, scope: !1854)
!1863 = !DILocalVariable(name: "result", arg: 3, scope: !1854, file: !1855, line: 5, type: !98)
!1864 = !DILocation(line: 5, column: 29, scope: !1854)
!1865 = !DILocalVariable(name: "j", scope: !1854, file: !1855, line: 7, type: !42)
!1866 = !DILocation(line: 7, column: 7, scope: !1854)
!1867 = !DILocalVariable(name: "d", scope: !1854, file: !1855, line: 8, type: !43)
!1868 = !DILocation(line: 8, column: 10, scope: !1854)
!1869 = !DILocalVariable(name: "dd", scope: !1854, file: !1855, line: 9, type: !43)
!1870 = !DILocation(line: 9, column: 10, scope: !1854)
!1871 = !DILocalVariable(name: "y", scope: !1854, file: !1855, line: 11, type: !43)
!1872 = !DILocation(line: 11, column: 10, scope: !1854)
!1873 = !DILocation(line: 11, column: 20, scope: !1854)
!1874 = !DILocation(line: 11, column: 19, scope: !1854)
!1875 = !DILocation(line: 11, column: 24, scope: !1854)
!1876 = !DILocation(line: 11, column: 28, scope: !1854)
!1877 = !DILocation(line: 11, column: 22, scope: !1854)
!1878 = !DILocation(line: 11, column: 32, scope: !1854)
!1879 = !DILocation(line: 11, column: 36, scope: !1854)
!1880 = !DILocation(line: 11, column: 30, scope: !1854)
!1881 = !DILocation(line: 11, column: 42, scope: !1854)
!1882 = !DILocation(line: 11, column: 46, scope: !1854)
!1883 = !DILocation(line: 11, column: 50, scope: !1854)
!1884 = !DILocation(line: 11, column: 54, scope: !1854)
!1885 = !DILocation(line: 11, column: 48, scope: !1854)
!1886 = !DILocation(line: 11, column: 39, scope: !1854)
!1887 = !DILocalVariable(name: "y2", scope: !1854, file: !1855, line: 12, type: !43)
!1888 = !DILocation(line: 12, column: 10, scope: !1854)
!1889 = !DILocation(line: 12, column: 21, scope: !1854)
!1890 = !DILocation(line: 12, column: 19, scope: !1854)
!1891 = !DILocalVariable(name: "e", scope: !1854, file: !1855, line: 14, type: !43)
!1892 = !DILocation(line: 14, column: 10, scope: !1854)
!1893 = !DILocation(line: 16, column: 11, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1854, file: !1855, line: 16, column: 3)
!1895 = !DILocation(line: 16, column: 15, scope: !1894)
!1896 = !DILocation(line: 16, column: 9, scope: !1894)
!1897 = !DILocation(line: 16, column: 7, scope: !1894)
!1898 = !DILocation(line: 16, column: 22, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !1855, discriminator: 1)
!1900 = distinct !DILexicalBlock(scope: !1894, file: !1855, line: 16, column: 3)
!1901 = !DILocation(line: 16, column: 23, scope: !1899)
!1902 = !DILocation(line: 16, column: 3, scope: !1899)
!1903 = !DILocalVariable(name: "temp", scope: !1904, file: !1855, line: 17, type: !43)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !1855, line: 16, column: 33)
!1905 = !DILocation(line: 17, column: 12, scope: !1904)
!1906 = !DILocation(line: 17, column: 19, scope: !1904)
!1907 = !DILocation(line: 18, column: 9, scope: !1904)
!1908 = !DILocation(line: 18, column: 12, scope: !1904)
!1909 = !DILocation(line: 18, column: 11, scope: !1904)
!1910 = !DILocation(line: 18, column: 16, scope: !1904)
!1911 = !DILocation(line: 18, column: 14, scope: !1904)
!1912 = !DILocation(line: 18, column: 27, scope: !1904)
!1913 = !DILocation(line: 18, column: 21, scope: !1904)
!1914 = !DILocation(line: 18, column: 25, scope: !1904)
!1915 = !DILocation(line: 18, column: 19, scope: !1904)
!1916 = !DILocation(line: 18, column: 7, scope: !1904)
!1917 = !DILocation(line: 19, column: 15, scope: !1904)
!1918 = !DILocation(line: 19, column: 18, scope: !1904)
!1919 = !DILocation(line: 19, column: 17, scope: !1904)
!1920 = !DILocation(line: 19, column: 10, scope: !1904)
!1921 = !DILocation(line: 19, column: 31, scope: !1904)
!1922 = !DILocation(line: 19, column: 26, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1904, file: !1855, discriminator: 1)
!1924 = !DILocation(line: 19, column: 24, scope: !1904)
!1925 = !DILocation(line: 19, column: 48, scope: !1904)
!1926 = !DILocation(line: 19, column: 42, scope: !1904)
!1927 = !DILocation(line: 19, column: 46, scope: !1904)
!1928 = !DILocation(line: 19, column: 37, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1904, file: !1855, discriminator: 2)
!1930 = !DILocation(line: 19, column: 35, scope: !1904)
!1931 = !DILocation(line: 19, column: 7, scope: !1904)
!1932 = !DILocation(line: 20, column: 10, scope: !1904)
!1933 = !DILocation(line: 20, column: 8, scope: !1904)
!1934 = !DILocation(line: 21, column: 3, scope: !1904)
!1935 = !DILocation(line: 16, column: 29, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1900, file: !1855, discriminator: 2)
!1937 = !DILocation(line: 16, column: 3, scope: !1936)
!1938 = distinct !{!1938, !1939}
!1939 = !DILocation(line: 16, column: 3, scope: !1854)
!1940 = !DILocalVariable(name: "temp", scope: !1941, file: !1855, line: 24, type: !43)
!1941 = distinct !DILexicalBlock(scope: !1854, file: !1855, line: 23, column: 3)
!1942 = !DILocation(line: 24, column: 12, scope: !1941)
!1943 = !DILocation(line: 24, column: 19, scope: !1941)
!1944 = !DILocation(line: 25, column: 9, scope: !1941)
!1945 = !DILocation(line: 25, column: 11, scope: !1941)
!1946 = !DILocation(line: 25, column: 10, scope: !1941)
!1947 = !DILocation(line: 25, column: 15, scope: !1941)
!1948 = !DILocation(line: 25, column: 13, scope: !1941)
!1949 = !DILocation(line: 25, column: 26, scope: !1941)
!1950 = !DILocation(line: 25, column: 30, scope: !1941)
!1951 = !DILocation(line: 25, column: 24, scope: !1941)
!1952 = !DILocation(line: 25, column: 18, scope: !1941)
!1953 = !DILocation(line: 25, column: 7, scope: !1941)
!1954 = !DILocation(line: 26, column: 15, scope: !1941)
!1955 = !DILocation(line: 26, column: 17, scope: !1941)
!1956 = !DILocation(line: 26, column: 16, scope: !1941)
!1957 = !DILocation(line: 26, column: 10, scope: !1941)
!1958 = !DILocation(line: 26, column: 30, scope: !1941)
!1959 = !DILocation(line: 26, column: 25, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1941, file: !1855, discriminator: 1)
!1961 = !DILocation(line: 26, column: 23, scope: !1941)
!1962 = !DILocation(line: 26, column: 47, scope: !1941)
!1963 = !DILocation(line: 26, column: 51, scope: !1941)
!1964 = !DILocation(line: 26, column: 42, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1941, file: !1855, discriminator: 2)
!1966 = !DILocation(line: 26, column: 40, scope: !1941)
!1967 = !DILocation(line: 26, column: 34, scope: !1941)
!1968 = !DILocation(line: 26, column: 7, scope: !1941)
!1969 = !DILocation(line: 29, column: 17, scope: !1854)
!1970 = !DILocation(line: 29, column: 3, scope: !1854)
!1971 = !DILocation(line: 29, column: 11, scope: !1854)
!1972 = !DILocation(line: 29, column: 15, scope: !1854)
!1973 = !DILocation(line: 30, column: 35, scope: !1854)
!1974 = !DILocation(line: 30, column: 33, scope: !1854)
!1975 = !DILocation(line: 30, column: 50, scope: !1854)
!1976 = !DILocation(line: 30, column: 54, scope: !1854)
!1977 = !DILocation(line: 30, column: 44, scope: !1854)
!1978 = !DILocation(line: 30, column: 48, scope: !1854)
!1979 = !DILocation(line: 30, column: 39, scope: !1854)
!1980 = !DILocation(line: 30, column: 37, scope: !1854)
!1981 = !DILocation(line: 30, column: 3, scope: !1854)
!1982 = !DILocation(line: 30, column: 11, scope: !1854)
!1983 = !DILocation(line: 30, column: 15, scope: !1854)
!1984 = !DILocation(line: 32, column: 3, scope: !1854)
!1985 = distinct !DISubprogram(name: "gammastar_ser", scope: !1, file: !1, line: 954, type: !312, isLocal: true, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!1986 = !DILocalVariable(name: "x", arg: 1, scope: !1985, file: !1, line: 954, type: !314)
!1987 = !DILocation(line: 954, column: 28, scope: !1985)
!1988 = !DILocalVariable(name: "result", arg: 2, scope: !1985, file: !1, line: 954, type: !98)
!1989 = !DILocation(line: 954, column: 47, scope: !1985)
!1990 = !DILocalVariable(name: "y", scope: !1985, file: !1, line: 960, type: !314)
!1991 = !DILocation(line: 960, column: 16, scope: !1985)
!1992 = !DILocation(line: 960, column: 25, scope: !1985)
!1993 = !DILocation(line: 960, column: 27, scope: !1985)
!1994 = !DILocation(line: 960, column: 26, scope: !1985)
!1995 = !DILocation(line: 960, column: 23, scope: !1985)
!1996 = !DILocalVariable(name: "c0", scope: !1985, file: !1, line: 961, type: !314)
!1997 = !DILocation(line: 961, column: 16, scope: !1985)
!1998 = !DILocalVariable(name: "c1", scope: !1985, file: !1, line: 962, type: !314)
!1999 = !DILocation(line: 962, column: 16, scope: !1985)
!2000 = !DILocalVariable(name: "c2", scope: !1985, file: !1, line: 963, type: !314)
!2001 = !DILocation(line: 963, column: 16, scope: !1985)
!2002 = !DILocalVariable(name: "c3", scope: !1985, file: !1, line: 964, type: !314)
!2003 = !DILocation(line: 964, column: 16, scope: !1985)
!2004 = !DILocalVariable(name: "c4", scope: !1985, file: !1, line: 965, type: !314)
!2005 = !DILocation(line: 965, column: 16, scope: !1985)
!2006 = !DILocalVariable(name: "c5", scope: !1985, file: !1, line: 966, type: !314)
!2007 = !DILocation(line: 966, column: 16, scope: !1985)
!2008 = !DILocalVariable(name: "c6", scope: !1985, file: !1, line: 967, type: !314)
!2009 = !DILocation(line: 967, column: 16, scope: !1985)
!2010 = !DILocalVariable(name: "c7", scope: !1985, file: !1, line: 968, type: !314)
!2011 = !DILocation(line: 968, column: 16, scope: !1985)
!2012 = !DILocalVariable(name: "ser", scope: !1985, file: !1, line: 969, type: !314)
!2013 = !DILocation(line: 969, column: 16, scope: !1985)
!2014 = !DILocation(line: 969, column: 27, scope: !1985)
!2015 = !DILocation(line: 969, column: 35, scope: !1985)
!2016 = !DILocation(line: 969, column: 43, scope: !1985)
!2017 = !DILocation(line: 969, column: 51, scope: !1985)
!2018 = !DILocation(line: 969, column: 59, scope: !1985)
!2019 = !DILocation(line: 969, column: 67, scope: !1985)
!2020 = !DILocation(line: 969, column: 75, scope: !1985)
!2021 = !DILocation(line: 969, column: 76, scope: !1985)
!2022 = !DILocation(line: 969, column: 73, scope: !1985)
!2023 = !DILocation(line: 969, column: 68, scope: !1985)
!2024 = !DILocation(line: 969, column: 65, scope: !1985)
!2025 = !DILocation(line: 969, column: 60, scope: !1985)
!2026 = !DILocation(line: 969, column: 57, scope: !1985)
!2027 = !DILocation(line: 969, column: 52, scope: !1985)
!2028 = !DILocation(line: 969, column: 49, scope: !1985)
!2029 = !DILocation(line: 969, column: 44, scope: !1985)
!2030 = !DILocation(line: 969, column: 41, scope: !1985)
!2031 = !DILocation(line: 969, column: 36, scope: !1985)
!2032 = !DILocation(line: 969, column: 33, scope: !1985)
!2033 = !DILocation(line: 969, column: 28, scope: !1985)
!2034 = !DILocation(line: 969, column: 25, scope: !1985)
!2035 = !DILocation(line: 970, column: 21, scope: !1985)
!2036 = !DILocation(line: 970, column: 25, scope: !1985)
!2037 = !DILocation(line: 970, column: 24, scope: !1985)
!2038 = !DILocation(line: 970, column: 17, scope: !1985)
!2039 = !DILocation(line: 970, column: 3, scope: !1985)
!2040 = !DILocation(line: 970, column: 11, scope: !1985)
!2041 = !DILocation(line: 970, column: 15, scope: !1985)
!2042 = !DILocation(line: 971, column: 41, scope: !1985)
!2043 = !DILocation(line: 971, column: 49, scope: !1985)
!2044 = !DILocation(line: 971, column: 39, scope: !1985)
!2045 = !DILocation(line: 971, column: 72, scope: !1985)
!2046 = !DILocation(line: 971, column: 76, scope: !1985)
!2047 = !DILocation(line: 971, column: 75, scope: !1985)
!2048 = !DILocation(line: 971, column: 55, scope: !1985)
!2049 = !DILocation(line: 971, column: 53, scope: !1985)
!2050 = !DILocation(line: 971, column: 3, scope: !1985)
!2051 = !DILocation(line: 971, column: 11, scope: !1985)
!2052 = !DILocation(line: 971, column: 15, scope: !1985)
!2053 = !DILocation(line: 972, column: 3, scope: !1985)
!2054 = distinct !DISubprogram(name: "gsl_sf_gammainv_e", scope: !1, file: !1, line: 1349, type: !312, isLocal: false, isDefinition: true, scopeLine: 1350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2055 = !DILocalVariable(name: "x", arg: 1, scope: !2054, file: !1, line: 1349, type: !314)
!2056 = !DILocation(line: 1349, column: 32, scope: !2054)
!2057 = !DILocalVariable(name: "result", arg: 2, scope: !2054, file: !1, line: 1349, type: !98)
!2058 = !DILocation(line: 1349, column: 51, scope: !2054)
!2059 = !DILocation(line: 1353, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 1353, column: 7)
!2061 = !DILocation(line: 1353, column: 9, scope: !2060)
!2062 = !DILocation(line: 1353, column: 16, scope: !2060)
!2063 = !DILocation(line: 1353, column: 19, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 1)
!2065 = !DILocation(line: 1353, column: 30, scope: !2064)
!2066 = !DILocation(line: 1353, column: 24, scope: !2064)
!2067 = !DILocation(line: 1353, column: 21, scope: !2064)
!2068 = !DILocation(line: 1353, column: 7, scope: !2064)
!2069 = !DILocation(line: 1354, column: 5, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 1353, column: 34)
!2071 = !DILocation(line: 1354, column: 13, scope: !2070)
!2072 = !DILocation(line: 1354, column: 17, scope: !2070)
!2073 = !DILocation(line: 1355, column: 5, scope: !2070)
!2074 = !DILocation(line: 1355, column: 13, scope: !2070)
!2075 = !DILocation(line: 1355, column: 17, scope: !2070)
!2076 = !DILocation(line: 1356, column: 5, scope: !2070)
!2077 = !DILocation(line: 1357, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 1357, column: 13)
!2079 = !DILocation(line: 1357, column: 15, scope: !2078)
!2080 = !DILocation(line: 1357, column: 13, scope: !2060)
!2081 = !DILocalVariable(name: "lng", scope: !2082, file: !1, line: 1358, type: !99)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1357, column: 22)
!2083 = !DILocation(line: 1358, column: 19, scope: !2082)
!2084 = !DILocalVariable(name: "sgn", scope: !2082, file: !1, line: 1359, type: !43)
!2085 = !DILocation(line: 1359, column: 12, scope: !2082)
!2086 = !DILocalVariable(name: "stat_lng", scope: !2082, file: !1, line: 1360, type: !42)
!2087 = !DILocation(line: 1360, column: 9, scope: !2082)
!2088 = !DILocation(line: 1360, column: 41, scope: !2082)
!2089 = !DILocation(line: 1360, column: 20, scope: !2082)
!2090 = !DILocation(line: 1361, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 1361, column: 8)
!2092 = !DILocation(line: 1361, column: 17, scope: !2091)
!2093 = !DILocation(line: 1361, column: 8, scope: !2082)
!2094 = !DILocation(line: 1362, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1361, column: 30)
!2096 = !DILocation(line: 1362, column: 15, scope: !2095)
!2097 = !DILocation(line: 1362, column: 19, scope: !2095)
!2098 = !DILocation(line: 1363, column: 7, scope: !2095)
!2099 = !DILocation(line: 1363, column: 15, scope: !2095)
!2100 = !DILocation(line: 1363, column: 19, scope: !2095)
!2101 = !DILocation(line: 1364, column: 7, scope: !2095)
!2102 = !DILocation(line: 1366, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1366, column: 13)
!2104 = !DILocation(line: 1366, column: 22, scope: !2103)
!2105 = !DILocation(line: 1366, column: 13, scope: !2091)
!2106 = !DILocation(line: 1367, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 1366, column: 38)
!2108 = !DILocation(line: 1367, column: 15, scope: !2107)
!2109 = !DILocation(line: 1367, column: 19, scope: !2107)
!2110 = !DILocation(line: 1368, column: 7, scope: !2107)
!2111 = !DILocation(line: 1368, column: 15, scope: !2107)
!2112 = !DILocation(line: 1368, column: 19, scope: !2107)
!2113 = !DILocation(line: 1369, column: 14, scope: !2107)
!2114 = !DILocation(line: 1369, column: 7, scope: !2107)
!2115 = !DILocation(line: 1372, column: 41, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 1371, column: 10)
!2117 = !DILocation(line: 1372, column: 36, scope: !2116)
!2118 = !DILocation(line: 1372, column: 50, scope: !2116)
!2119 = !DILocation(line: 1372, column: 55, scope: !2116)
!2120 = !DILocation(line: 1372, column: 65, scope: !2116)
!2121 = !DILocation(line: 1372, column: 14, scope: !2116)
!2122 = !DILocation(line: 1372, column: 7, scope: !2116)
!2123 = !DILocalVariable(name: "g", scope: !2124, file: !1, line: 1376, type: !99)
!2124 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 1375, column: 8)
!2125 = !DILocation(line: 1376, column: 19, scope: !2124)
!2126 = !DILocalVariable(name: "stat_g", scope: !2124, file: !1, line: 1377, type: !42)
!2127 = !DILocation(line: 1377, column: 9, scope: !2124)
!2128 = !DILocation(line: 1377, column: 32, scope: !2124)
!2129 = !DILocation(line: 1377, column: 18, scope: !2124)
!2130 = !DILocation(line: 1378, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 1378, column: 8)
!2132 = !DILocation(line: 1378, column: 15, scope: !2131)
!2133 = !DILocation(line: 1378, column: 8, scope: !2124)
!2134 = !DILocation(line: 1379, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 1378, column: 31)
!2136 = distinct !{!2136, !2134}
!2137 = !DILocation(line: 1379, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 1)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 1379, column: 7)
!2140 = distinct !{!2140, !2141}
!2141 = !DILocation(line: 1379, column: 7, scope: !2139)
!2142 = !DILocation(line: 1379, column: 7, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !1, discriminator: 2)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 1379, column: 7)
!2145 = !DILocation(line: 1379, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 3)
!2147 = !DILocation(line: 1380, column: 5, scope: !2135)
!2148 = !DILocation(line: 1382, column: 28, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 1381, column: 10)
!2150 = !DILocation(line: 1382, column: 25, scope: !2149)
!2151 = !DILocation(line: 1382, column: 7, scope: !2149)
!2152 = !DILocation(line: 1382, column: 15, scope: !2149)
!2153 = !DILocation(line: 1382, column: 20, scope: !2149)
!2154 = !DILocation(line: 1383, column: 29, scope: !2149)
!2155 = !DILocation(line: 1383, column: 35, scope: !2149)
!2156 = !DILocation(line: 1383, column: 32, scope: !2149)
!2157 = !DILocation(line: 1383, column: 22, scope: !2149)
!2158 = !DILocation(line: 1383, column: 47, scope: !2149)
!2159 = !DILocation(line: 1383, column: 55, scope: !2149)
!2160 = !DILocation(line: 1383, column: 42, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2149, file: !1, discriminator: 1)
!2162 = !DILocation(line: 1383, column: 40, scope: !2149)
!2163 = !DILocation(line: 1383, column: 7, scope: !2149)
!2164 = !DILocation(line: 1383, column: 15, scope: !2149)
!2165 = !DILocation(line: 1383, column: 20, scope: !2149)
!2166 = !DILocation(line: 1384, column: 51, scope: !2149)
!2167 = !DILocation(line: 1384, column: 59, scope: !2149)
!2168 = !DILocation(line: 1384, column: 46, scope: !2149)
!2169 = !DILocation(line: 1384, column: 44, scope: !2149)
!2170 = !DILocation(line: 1384, column: 7, scope: !2149)
!2171 = !DILocation(line: 1384, column: 15, scope: !2149)
!2172 = !DILocation(line: 1384, column: 19, scope: !2149)
!2173 = !DILocation(line: 1385, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 1385, column: 7)
!2175 = !DILocation(line: 1385, column: 7, scope: !2149)
!2176 = !DILocation(line: 1385, column: 7, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2174, file: !1, discriminator: 1)
!2178 = distinct !{!2178, !2173}
!2179 = !DILocation(line: 1385, column: 7, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !1, discriminator: 2)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 1385, column: 7)
!2182 = !DILocation(line: 1385, column: 7, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2181, file: !1, discriminator: 3)
!2184 = !DILocation(line: 1386, column: 7, scope: !2149)
!2185 = !DILocation(line: 1389, column: 1, scope: !2054)
!2186 = distinct !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !1, file: !1, line: 1393, type: !2187, isLocal: false, isDefinition: true, scopeLine: 1394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!42, !43, !43, !98, !98}
!2189 = !DILocalVariable(name: "zr", arg: 1, scope: !2186, file: !1, line: 1393, type: !43)
!2190 = !DILocation(line: 1393, column: 33, scope: !2186)
!2191 = !DILocalVariable(name: "zi", arg: 2, scope: !2186, file: !1, line: 1393, type: !43)
!2192 = !DILocation(line: 1393, column: 44, scope: !2186)
!2193 = !DILocalVariable(name: "lnr", arg: 3, scope: !2186, file: !1, line: 1393, type: !98)
!2194 = !DILocation(line: 1393, column: 64, scope: !2186)
!2195 = !DILocalVariable(name: "arg", arg: 4, scope: !2186, file: !1, line: 1393, type: !98)
!2196 = !DILocation(line: 1393, column: 85, scope: !2186)
!2197 = !DILocation(line: 1395, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2186, file: !1, line: 1395, column: 6)
!2199 = !DILocation(line: 1395, column: 9, scope: !2198)
!2200 = !DILocation(line: 1395, column: 6, scope: !2186)
!2201 = !DILocalVariable(name: "x", scope: !2202, file: !1, line: 1399, type: !43)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 1395, column: 17)
!2203 = !DILocation(line: 1399, column: 12, scope: !2202)
!2204 = !DILocation(line: 1399, column: 20, scope: !2202)
!2205 = !DILocation(line: 1399, column: 19, scope: !2202)
!2206 = !DILocalVariable(name: "y", scope: !2202, file: !1, line: 1400, type: !43)
!2207 = !DILocation(line: 1400, column: 12, scope: !2202)
!2208 = !DILocation(line: 1400, column: 17, scope: !2202)
!2209 = !DILocation(line: 1400, column: 16, scope: !2202)
!2210 = !DILocalVariable(name: "a", scope: !2202, file: !1, line: 1401, type: !99)
!2211 = !DILocation(line: 1401, column: 19, scope: !2202)
!2212 = !DILocalVariable(name: "b", scope: !2202, file: !1, line: 1401, type: !99)
!2213 = !DILocation(line: 1401, column: 22, scope: !2202)
!2214 = !DILocalVariable(name: "lnsin_r", scope: !2202, file: !1, line: 1402, type: !99)
!2215 = !DILocation(line: 1402, column: 19, scope: !2202)
!2216 = !DILocalVariable(name: "lnsin_i", scope: !2202, file: !1, line: 1402, type: !99)
!2217 = !DILocation(line: 1402, column: 28, scope: !2202)
!2218 = !DILocalVariable(name: "stat_l", scope: !2202, file: !1, line: 1404, type: !42)
!2219 = !DILocation(line: 1404, column: 9, scope: !2202)
!2220 = !DILocation(line: 1404, column: 42, scope: !2202)
!2221 = !DILocation(line: 1404, column: 45, scope: !2202)
!2222 = !DILocation(line: 1404, column: 18, scope: !2202)
!2223 = !DILocalVariable(name: "stat_s", scope: !2202, file: !1, line: 1405, type: !42)
!2224 = !DILocation(line: 1405, column: 9, scope: !2202)
!2225 = !DILocation(line: 1405, column: 47, scope: !2202)
!2226 = !DILocation(line: 1405, column: 46, scope: !2202)
!2227 = !DILocation(line: 1405, column: 56, scope: !2202)
!2228 = !DILocation(line: 1405, column: 55, scope: !2202)
!2229 = !DILocation(line: 1405, column: 18, scope: !2202)
!2230 = !DILocation(line: 1407, column: 8, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 1407, column: 8)
!2232 = !DILocation(line: 1407, column: 15, scope: !2231)
!2233 = !DILocation(line: 1407, column: 8, scope: !2202)
!2234 = !DILocalVariable(name: "stat_r", scope: !2235, file: !1, line: 1408, type: !42)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !1, line: 1407, column: 31)
!2236 = !DILocation(line: 1408, column: 11, scope: !2235)
!2237 = !DILocation(line: 1409, column: 35, scope: !2235)
!2238 = !DILocation(line: 1409, column: 25, scope: !2235)
!2239 = !DILocation(line: 1409, column: 43, scope: !2235)
!2240 = !DILocation(line: 1409, column: 39, scope: !2235)
!2241 = !DILocation(line: 1409, column: 7, scope: !2235)
!2242 = !DILocation(line: 1409, column: 12, scope: !2235)
!2243 = !DILocation(line: 1409, column: 16, scope: !2235)
!2244 = !DILocation(line: 1410, column: 26, scope: !2235)
!2245 = !DILocation(line: 1410, column: 34, scope: !2235)
!2246 = !DILocation(line: 1410, column: 30, scope: !2235)
!2247 = !DILocation(line: 1410, column: 69, scope: !2235)
!2248 = !DILocation(line: 1410, column: 74, scope: !2235)
!2249 = !DILocation(line: 1410, column: 64, scope: !2235)
!2250 = !DILocation(line: 1410, column: 62, scope: !2235)
!2251 = !DILocation(line: 1410, column: 38, scope: !2235)
!2252 = !DILocation(line: 1410, column: 7, scope: !2235)
!2253 = !DILocation(line: 1410, column: 12, scope: !2235)
!2254 = !DILocation(line: 1410, column: 16, scope: !2235)
!2255 = !DILocation(line: 1411, column: 27, scope: !2235)
!2256 = !DILocation(line: 1411, column: 18, scope: !2235)
!2257 = !DILocation(line: 1411, column: 35, scope: !2235)
!2258 = !DILocation(line: 1411, column: 31, scope: !2235)
!2259 = !DILocation(line: 1411, column: 7, scope: !2235)
!2260 = !DILocation(line: 1411, column: 12, scope: !2235)
!2261 = !DILocation(line: 1411, column: 16, scope: !2235)
!2262 = !DILocation(line: 1412, column: 26, scope: !2235)
!2263 = !DILocation(line: 1412, column: 34, scope: !2235)
!2264 = !DILocation(line: 1412, column: 30, scope: !2235)
!2265 = !DILocation(line: 1412, column: 69, scope: !2235)
!2266 = !DILocation(line: 1412, column: 74, scope: !2235)
!2267 = !DILocation(line: 1412, column: 64, scope: !2235)
!2268 = !DILocation(line: 1412, column: 62, scope: !2235)
!2269 = !DILocation(line: 1412, column: 38, scope: !2235)
!2270 = !DILocation(line: 1412, column: 7, scope: !2235)
!2271 = !DILocation(line: 1412, column: 12, scope: !2235)
!2272 = !DILocation(line: 1412, column: 16, scope: !2235)
!2273 = !DILocation(line: 1413, column: 47, scope: !2235)
!2274 = !DILocation(line: 1413, column: 52, scope: !2235)
!2275 = !DILocation(line: 1413, column: 16, scope: !2235)
!2276 = !DILocation(line: 1413, column: 14, scope: !2235)
!2277 = !DILocation(line: 1414, column: 14, scope: !2235)
!2278 = !DILocation(line: 1414, column: 14, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 1)
!2280 = !DILocation(line: 1414, column: 14, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 2)
!2282 = !DILocation(line: 1414, column: 14, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 3)
!2284 = !DILocation(line: 1414, column: 14, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 4)
!2286 = !DILocation(line: 1414, column: 14, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 5)
!2288 = !DILocation(line: 1414, column: 14, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2235, file: !1, discriminator: 6)
!2290 = !DILocation(line: 1414, column: 7, scope: !2289)
!2291 = !DILocation(line: 1417, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2231, file: !1, line: 1416, column: 10)
!2293 = distinct !{!2293, !2291}
!2294 = !DILocation(line: 1417, column: 7, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !1, discriminator: 1)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !1, line: 1417, column: 7)
!2297 = distinct !{!2297, !2298}
!2298 = !DILocation(line: 1417, column: 7, scope: !2296)
!2299 = !DILocation(line: 1417, column: 7, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2301, file: !1, discriminator: 2)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 1417, column: 7)
!2302 = !DILocation(line: 1417, column: 7, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2296, file: !1, discriminator: 3)
!2304 = !DILocation(line: 1419, column: 3, scope: !2202)
!2305 = !DILocation(line: 1422, column: 36, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 1420, column: 8)
!2307 = !DILocation(line: 1422, column: 40, scope: !2306)
!2308 = !DILocation(line: 1422, column: 44, scope: !2306)
!2309 = !DILocation(line: 1422, column: 49, scope: !2306)
!2310 = !DILocation(line: 1422, column: 12, scope: !2306)
!2311 = !DILocation(line: 1422, column: 5, scope: !2306)
!2312 = !DILocation(line: 1424, column: 1, scope: !2186)
!2313 = distinct !DISubprogram(name: "lngamma_lanczos_complex", scope: !1, file: !1, line: 661, type: !2187, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2314 = !DILocalVariable(name: "zr", arg: 1, scope: !2313, file: !1, line: 661, type: !43)
!2315 = !DILocation(line: 661, column: 32, scope: !2313)
!2316 = !DILocalVariable(name: "zi", arg: 2, scope: !2313, file: !1, line: 661, type: !43)
!2317 = !DILocation(line: 661, column: 43, scope: !2313)
!2318 = !DILocalVariable(name: "yr", arg: 3, scope: !2313, file: !1, line: 661, type: !98)
!2319 = !DILocation(line: 661, column: 63, scope: !2313)
!2320 = !DILocalVariable(name: "yi", arg: 4, scope: !2313, file: !1, line: 661, type: !98)
!2321 = !DILocation(line: 661, column: 83, scope: !2313)
!2322 = !DILocalVariable(name: "k", scope: !2313, file: !1, line: 663, type: !42)
!2323 = !DILocation(line: 663, column: 7, scope: !2313)
!2324 = !DILocalVariable(name: "log1_r", scope: !2313, file: !1, line: 664, type: !99)
!2325 = !DILocation(line: 664, column: 17, scope: !2313)
!2326 = !DILocalVariable(name: "log1_i", scope: !2313, file: !1, line: 664, type: !99)
!2327 = !DILocation(line: 664, column: 28, scope: !2313)
!2328 = !DILocalVariable(name: "logAg_r", scope: !2313, file: !1, line: 665, type: !99)
!2329 = !DILocation(line: 665, column: 17, scope: !2313)
!2330 = !DILocalVariable(name: "logAg_i", scope: !2313, file: !1, line: 665, type: !99)
!2331 = !DILocation(line: 665, column: 28, scope: !2313)
!2332 = !DILocalVariable(name: "Ag_r", scope: !2313, file: !1, line: 666, type: !43)
!2333 = !DILocation(line: 666, column: 10, scope: !2313)
!2334 = !DILocalVariable(name: "Ag_i", scope: !2313, file: !1, line: 666, type: !43)
!2335 = !DILocation(line: 666, column: 16, scope: !2313)
!2336 = !DILocalVariable(name: "yi_tmp_val", scope: !2313, file: !1, line: 667, type: !43)
!2337 = !DILocation(line: 667, column: 10, scope: !2313)
!2338 = !DILocalVariable(name: "yi_tmp_err", scope: !2313, file: !1, line: 667, type: !43)
!2339 = !DILocation(line: 667, column: 22, scope: !2313)
!2340 = !DILocation(line: 669, column: 6, scope: !2313)
!2341 = !DILocation(line: 671, column: 10, scope: !2313)
!2342 = !DILocation(line: 671, column: 8, scope: !2313)
!2343 = !DILocation(line: 672, column: 8, scope: !2313)
!2344 = !DILocation(line: 673, column: 8, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 673, column: 3)
!2346 = !DILocation(line: 673, column: 7, scope: !2345)
!2347 = !DILocation(line: 673, column: 12, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !1, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !1, line: 673, column: 3)
!2350 = !DILocation(line: 673, column: 13, scope: !2348)
!2351 = !DILocation(line: 673, column: 3, scope: !2348)
!2352 = !DILocalVariable(name: "R", scope: !2353, file: !1, line: 674, type: !43)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 673, column: 23)
!2354 = !DILocation(line: 674, column: 12, scope: !2353)
!2355 = !DILocation(line: 674, column: 16, scope: !2353)
!2356 = !DILocation(line: 674, column: 21, scope: !2353)
!2357 = !DILocation(line: 674, column: 19, scope: !2353)
!2358 = !DILocalVariable(name: "I", scope: !2353, file: !1, line: 675, type: !43)
!2359 = !DILocation(line: 675, column: 12, scope: !2353)
!2360 = !DILocation(line: 675, column: 16, scope: !2353)
!2361 = !DILocalVariable(name: "a", scope: !2353, file: !1, line: 676, type: !43)
!2362 = !DILocation(line: 676, column: 12, scope: !2353)
!2363 = !DILocation(line: 676, column: 28, scope: !2353)
!2364 = !DILocation(line: 676, column: 16, scope: !2353)
!2365 = !DILocation(line: 676, column: 34, scope: !2353)
!2366 = !DILocation(line: 676, column: 36, scope: !2353)
!2367 = !DILocation(line: 676, column: 35, scope: !2353)
!2368 = !DILocation(line: 676, column: 40, scope: !2353)
!2369 = !DILocation(line: 676, column: 42, scope: !2353)
!2370 = !DILocation(line: 676, column: 41, scope: !2353)
!2371 = !DILocation(line: 676, column: 38, scope: !2353)
!2372 = !DILocation(line: 676, column: 31, scope: !2353)
!2373 = !DILocation(line: 677, column: 14, scope: !2353)
!2374 = !DILocation(line: 677, column: 18, scope: !2353)
!2375 = !DILocation(line: 677, column: 16, scope: !2353)
!2376 = !DILocation(line: 677, column: 10, scope: !2353)
!2377 = !DILocation(line: 678, column: 14, scope: !2353)
!2378 = !DILocation(line: 678, column: 18, scope: !2353)
!2379 = !DILocation(line: 678, column: 16, scope: !2353)
!2380 = !DILocation(line: 678, column: 10, scope: !2353)
!2381 = !DILocation(line: 679, column: 3, scope: !2353)
!2382 = !DILocation(line: 673, column: 19, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2349, file: !1, discriminator: 2)
!2384 = !DILocation(line: 673, column: 3, scope: !2383)
!2385 = distinct !{!2385, !2386}
!2386 = !DILocation(line: 673, column: 3, scope: !2313)
!2387 = !DILocation(line: 681, column: 24, scope: !2313)
!2388 = !DILocation(line: 681, column: 27, scope: !2313)
!2389 = !DILocation(line: 681, column: 34, scope: !2313)
!2390 = !DILocation(line: 681, column: 3, scope: !2313)
!2391 = !DILocation(line: 682, column: 24, scope: !2313)
!2392 = !DILocation(line: 682, column: 30, scope: !2313)
!2393 = !DILocation(line: 682, column: 3, scope: !2313)
!2394 = !DILocation(line: 685, column: 14, scope: !2313)
!2395 = !DILocation(line: 685, column: 16, scope: !2313)
!2396 = !DILocation(line: 685, column: 29, scope: !2313)
!2397 = !DILocation(line: 685, column: 21, scope: !2313)
!2398 = !DILocation(line: 685, column: 35, scope: !2313)
!2399 = !DILocation(line: 685, column: 45, scope: !2313)
!2400 = !DILocation(line: 685, column: 37, scope: !2313)
!2401 = !DILocation(line: 685, column: 33, scope: !2313)
!2402 = !DILocation(line: 685, column: 52, scope: !2313)
!2403 = !DILocation(line: 685, column: 54, scope: !2313)
!2404 = !DILocation(line: 685, column: 49, scope: !2313)
!2405 = !DILocation(line: 685, column: 60, scope: !2313)
!2406 = !DILocation(line: 685, column: 86, scope: !2313)
!2407 = !DILocation(line: 685, column: 76, scope: !2313)
!2408 = !DILocation(line: 685, column: 3, scope: !2313)
!2409 = !DILocation(line: 685, column: 7, scope: !2313)
!2410 = !DILocation(line: 685, column: 11, scope: !2313)
!2411 = !DILocation(line: 686, column: 13, scope: !2313)
!2412 = !DILocation(line: 686, column: 23, scope: !2313)
!2413 = !DILocation(line: 686, column: 15, scope: !2313)
!2414 = !DILocation(line: 686, column: 30, scope: !2313)
!2415 = !DILocation(line: 686, column: 32, scope: !2313)
!2416 = !DILocation(line: 686, column: 45, scope: !2313)
!2417 = !DILocation(line: 686, column: 37, scope: !2313)
!2418 = !DILocation(line: 686, column: 27, scope: !2313)
!2419 = !DILocation(line: 686, column: 51, scope: !2313)
!2420 = !DILocation(line: 686, column: 49, scope: !2313)
!2421 = !DILocation(line: 686, column: 64, scope: !2313)
!2422 = !DILocation(line: 686, column: 54, scope: !2313)
!2423 = !DILocation(line: 686, column: 3, scope: !2313)
!2424 = !DILocation(line: 686, column: 7, scope: !2313)
!2425 = !DILocation(line: 686, column: 11, scope: !2313)
!2426 = !DILocation(line: 687, column: 42, scope: !2313)
!2427 = !DILocation(line: 687, column: 46, scope: !2313)
!2428 = !DILocation(line: 687, column: 37, scope: !2313)
!2429 = !DILocation(line: 687, column: 35, scope: !2313)
!2430 = !DILocation(line: 687, column: 3, scope: !2313)
!2431 = !DILocation(line: 687, column: 7, scope: !2313)
!2432 = !DILocation(line: 687, column: 11, scope: !2313)
!2433 = !DILocation(line: 688, column: 42, scope: !2313)
!2434 = !DILocation(line: 688, column: 46, scope: !2313)
!2435 = !DILocation(line: 688, column: 37, scope: !2313)
!2436 = !DILocation(line: 688, column: 35, scope: !2313)
!2437 = !DILocation(line: 688, column: 3, scope: !2313)
!2438 = !DILocation(line: 688, column: 7, scope: !2313)
!2439 = !DILocation(line: 688, column: 11, scope: !2313)
!2440 = !DILocation(line: 689, column: 16, scope: !2313)
!2441 = !DILocation(line: 689, column: 20, scope: !2313)
!2442 = !DILocation(line: 689, column: 14, scope: !2313)
!2443 = !DILocation(line: 690, column: 16, scope: !2313)
!2444 = !DILocation(line: 690, column: 20, scope: !2313)
!2445 = !DILocation(line: 690, column: 14, scope: !2313)
!2446 = !DILocation(line: 691, column: 36, scope: !2313)
!2447 = !DILocation(line: 691, column: 48, scope: !2313)
!2448 = !DILocation(line: 691, column: 3, scope: !2313)
!2449 = !DILocation(line: 692, column: 14, scope: !2313)
!2450 = !DILocation(line: 692, column: 3, scope: !2313)
!2451 = !DILocation(line: 692, column: 7, scope: !2313)
!2452 = !DILocation(line: 692, column: 11, scope: !2313)
!2453 = !DILocation(line: 693, column: 3, scope: !2313)
!2454 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !1, file: !1, line: 1427, type: !2455, isLocal: false, isDefinition: true, scopeLine: 1428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!42, !1689, !314, !98}
!2457 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !1, line: 1427, type: !1689)
!2458 = !DILocation(line: 1427, column: 36, scope: !2454)
!2459 = !DILocalVariable(name: "x", arg: 2, scope: !2454, file: !1, line: 1427, type: !314)
!2460 = !DILocation(line: 1427, column: 52, scope: !2454)
!2461 = !DILocalVariable(name: "result", arg: 3, scope: !2454, file: !1, line: 1427, type: !98)
!2462 = !DILocation(line: 1427, column: 71, scope: !2454)
!2463 = !DILocation(line: 1431, column: 6, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 1431, column: 6)
!2465 = !DILocation(line: 1431, column: 8, scope: !2464)
!2466 = !DILocation(line: 1431, column: 14, scope: !2464)
!2467 = !DILocation(line: 1431, column: 17, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2464, file: !1, discriminator: 1)
!2469 = !DILocation(line: 1431, column: 19, scope: !2468)
!2470 = !DILocation(line: 1431, column: 6, scope: !2468)
!2471 = !DILocation(line: 1432, column: 5, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !1, line: 1431, column: 24)
!2473 = distinct !{!2473, !2471}
!2474 = !DILocation(line: 1432, column: 5, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 1)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !1, line: 1432, column: 5)
!2477 = distinct !{!2477, !2478}
!2478 = !DILocation(line: 1432, column: 5, scope: !2476)
!2479 = !DILocation(line: 1432, column: 5, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !1, discriminator: 2)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !1, line: 1432, column: 5)
!2482 = !DILocation(line: 1432, column: 5, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 3)
!2484 = !DILocation(line: 1433, column: 3, scope: !2472)
!2485 = !DILocation(line: 1434, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2464, file: !1, line: 1434, column: 11)
!2487 = !DILocation(line: 1434, column: 13, scope: !2486)
!2488 = !DILocation(line: 1434, column: 11, scope: !2464)
!2489 = !DILocation(line: 1435, column: 5, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !1, line: 1434, column: 19)
!2491 = !DILocation(line: 1435, column: 13, scope: !2490)
!2492 = !DILocation(line: 1435, column: 17, scope: !2490)
!2493 = !DILocation(line: 1436, column: 5, scope: !2490)
!2494 = !DILocation(line: 1436, column: 13, scope: !2490)
!2495 = !DILocation(line: 1436, column: 17, scope: !2490)
!2496 = !DILocation(line: 1437, column: 5, scope: !2490)
!2497 = !DILocation(line: 1439, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2486, file: !1, line: 1439, column: 11)
!2499 = !DILocation(line: 1439, column: 13, scope: !2498)
!2500 = !DILocation(line: 1439, column: 11, scope: !2486)
!2501 = !DILocation(line: 1440, column: 19, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 1439, column: 19)
!2503 = !DILocation(line: 1440, column: 5, scope: !2502)
!2504 = !DILocation(line: 1440, column: 13, scope: !2502)
!2505 = !DILocation(line: 1440, column: 17, scope: !2502)
!2506 = !DILocation(line: 1441, column: 5, scope: !2502)
!2507 = !DILocation(line: 1441, column: 13, scope: !2502)
!2508 = !DILocation(line: 1441, column: 17, scope: !2502)
!2509 = !DILocation(line: 1442, column: 5, scope: !2502)
!2510 = !DILocation(line: 1444, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 1444, column: 11)
!2512 = !DILocation(line: 1444, column: 13, scope: !2511)
!2513 = !DILocation(line: 1444, column: 11, scope: !2498)
!2514 = !DILocation(line: 1445, column: 5, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 1444, column: 21)
!2516 = !DILocation(line: 1445, column: 13, scope: !2515)
!2517 = !DILocation(line: 1445, column: 17, scope: !2515)
!2518 = !DILocation(line: 1446, column: 5, scope: !2515)
!2519 = !DILocation(line: 1446, column: 13, scope: !2515)
!2520 = !DILocation(line: 1446, column: 17, scope: !2515)
!2521 = !DILocation(line: 1447, column: 5, scope: !2515)
!2522 = !DILocalVariable(name: "log2pi", scope: !2523, file: !1, line: 1450, type: !314)
!2523 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 1449, column: 8)
!2524 = !DILocation(line: 1450, column: 18, scope: !2523)
!2525 = !DILocalVariable(name: "ln_test", scope: !2523, file: !1, line: 1451, type: !314)
!2526 = !DILocation(line: 1451, column: 18, scope: !2523)
!2527 = !DILocation(line: 1451, column: 28, scope: !2523)
!2528 = !DILocation(line: 1451, column: 35, scope: !2523)
!2529 = !DILocation(line: 1451, column: 31, scope: !2523)
!2530 = !DILocation(line: 1451, column: 37, scope: !2523)
!2531 = !DILocation(line: 1451, column: 29, scope: !2523)
!2532 = !DILocation(line: 1451, column: 43, scope: !2523)
!2533 = !DILocation(line: 1451, column: 52, scope: !2523)
!2534 = !DILocation(line: 1451, column: 53, scope: !2523)
!2535 = !DILocation(line: 1451, column: 63, scope: !2523)
!2536 = !DILocation(line: 1451, column: 64, scope: !2523)
!2537 = !DILocation(line: 1451, column: 59, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2523, file: !1, discriminator: 1)
!2539 = !DILocation(line: 1451, column: 58, scope: !2523)
!2540 = !DILocation(line: 1451, column: 49, scope: !2523)
!2541 = !DILocation(line: 1451, column: 70, scope: !2523)
!2542 = !DILocation(line: 1453, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2523, file: !1, line: 1453, column: 8)
!2544 = !DILocation(line: 1453, column: 16, scope: !2543)
!2545 = !DILocation(line: 1453, column: 8, scope: !2523)
!2546 = !DILocation(line: 1454, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !1, line: 1453, column: 39)
!2548 = distinct !{!2548, !2546}
!2549 = !DILocation(line: 1454, column: 7, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2551, file: !1, discriminator: 1)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 1454, column: 7)
!2552 = distinct !{!2552, !2553}
!2553 = !DILocation(line: 1454, column: 7, scope: !2551)
!2554 = !DILocation(line: 1454, column: 7, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !1, discriminator: 2)
!2556 = distinct !DILexicalBlock(scope: !2551, file: !1, line: 1454, column: 7)
!2557 = !DILocation(line: 1454, column: 7, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2551, file: !1, discriminator: 3)
!2559 = !DILocation(line: 1455, column: 5, scope: !2547)
!2560 = !DILocation(line: 1456, column: 13, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2543, file: !1, line: 1456, column: 13)
!2562 = !DILocation(line: 1456, column: 21, scope: !2561)
!2563 = !DILocation(line: 1456, column: 13, scope: !2543)
!2564 = !DILocation(line: 1457, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 1456, column: 44)
!2566 = distinct !{!2566, !2564}
!2567 = !DILocation(line: 1457, column: 7, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2569, file: !1, discriminator: 1)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !1, line: 1457, column: 7)
!2570 = distinct !{!2570, !2571}
!2571 = !DILocation(line: 1457, column: 7, scope: !2569)
!2572 = !DILocation(line: 1457, column: 7, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !1, discriminator: 2)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !1, line: 1457, column: 7)
!2575 = !DILocation(line: 1457, column: 7, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2569, file: !1, discriminator: 3)
!2577 = !DILocation(line: 1458, column: 5, scope: !2565)
!2578 = !DILocalVariable(name: "product", scope: !2579, file: !1, line: 1460, type: !43)
!2579 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 1459, column: 10)
!2580 = !DILocation(line: 1460, column: 14, scope: !2579)
!2581 = !DILocalVariable(name: "k", scope: !2579, file: !1, line: 1461, type: !42)
!2582 = !DILocation(line: 1461, column: 11, scope: !2579)
!2583 = !DILocation(line: 1462, column: 12, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 1462, column: 7)
!2585 = !DILocation(line: 1462, column: 11, scope: !2584)
!2586 = !DILocation(line: 1462, column: 16, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !1, discriminator: 1)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 1462, column: 7)
!2589 = !DILocation(line: 1462, column: 19, scope: !2587)
!2590 = !DILocation(line: 1462, column: 17, scope: !2587)
!2591 = !DILocation(line: 1462, column: 7, scope: !2587)
!2592 = !DILocation(line: 1463, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 1462, column: 27)
!2594 = !DILocation(line: 1463, column: 23, scope: !2593)
!2595 = !DILocation(line: 1463, column: 22, scope: !2593)
!2596 = !DILocation(line: 1463, column: 17, scope: !2593)
!2597 = !DILocation(line: 1464, column: 7, scope: !2593)
!2598 = !DILocation(line: 1462, column: 23, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2588, file: !1, discriminator: 2)
!2600 = !DILocation(line: 1462, column: 7, scope: !2599)
!2601 = distinct !{!2601, !2602}
!2602 = !DILocation(line: 1462, column: 7, scope: !2579)
!2603 = !DILocation(line: 1465, column: 21, scope: !2579)
!2604 = !DILocation(line: 1465, column: 7, scope: !2579)
!2605 = !DILocation(line: 1465, column: 15, scope: !2579)
!2606 = !DILocation(line: 1465, column: 19, scope: !2579)
!2607 = !DILocation(line: 1466, column: 21, scope: !2579)
!2608 = !DILocation(line: 1466, column: 23, scope: !2579)
!2609 = !DILocation(line: 1466, column: 43, scope: !2579)
!2610 = !DILocation(line: 1466, column: 41, scope: !2579)
!2611 = !DILocation(line: 1466, column: 7, scope: !2579)
!2612 = !DILocation(line: 1466, column: 15, scope: !2579)
!2613 = !DILocation(line: 1466, column: 19, scope: !2579)
!2614 = !DILocation(line: 1467, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 1467, column: 7)
!2616 = !DILocation(line: 1467, column: 7, scope: !2579)
!2617 = !DILocation(line: 1467, column: 7, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2615, file: !1, discriminator: 1)
!2619 = distinct !{!2619, !2614}
!2620 = !DILocation(line: 1467, column: 7, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2622, file: !1, discriminator: 2)
!2622 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 1467, column: 7)
!2623 = !DILocation(line: 1467, column: 7, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2622, file: !1, discriminator: 3)
!2625 = !DILocation(line: 1468, column: 7, scope: !2579)
!2626 = !DILocation(line: 1471, column: 1, scope: !2454)
!2627 = distinct !DISubprogram(name: "gsl_sf_fact_e", scope: !1, file: !1, line: 1474, type: !2628, isLocal: false, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!42, !2630, !98}
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !1, line: 1474, type: !2630)
!2633 = !DILocation(line: 1474, column: 38, scope: !2627)
!2634 = !DILocalVariable(name: "result", arg: 2, scope: !2627, file: !1, line: 1474, type: !98)
!2635 = !DILocation(line: 1474, column: 57, scope: !2627)
!2636 = !DILocation(line: 1478, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 1478, column: 6)
!2638 = !DILocation(line: 1478, column: 8, scope: !2637)
!2639 = !DILocation(line: 1478, column: 6, scope: !2627)
!2640 = !DILocation(line: 1479, column: 30, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 1478, column: 14)
!2642 = !DILocation(line: 1479, column: 19, scope: !2641)
!2643 = !DILocation(line: 1479, column: 33, scope: !2641)
!2644 = !DILocation(line: 1479, column: 5, scope: !2641)
!2645 = !DILocation(line: 1479, column: 13, scope: !2641)
!2646 = !DILocation(line: 1479, column: 17, scope: !2641)
!2647 = !DILocation(line: 1480, column: 5, scope: !2641)
!2648 = !DILocation(line: 1480, column: 13, scope: !2641)
!2649 = !DILocation(line: 1480, column: 17, scope: !2641)
!2650 = !DILocation(line: 1481, column: 5, scope: !2641)
!2651 = !DILocation(line: 1483, column: 11, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 1483, column: 11)
!2653 = !DILocation(line: 1483, column: 13, scope: !2652)
!2654 = !DILocation(line: 1483, column: 11, scope: !2637)
!2655 = !DILocation(line: 1484, column: 30, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 1483, column: 33)
!2657 = !DILocation(line: 1484, column: 19, scope: !2656)
!2658 = !DILocation(line: 1484, column: 33, scope: !2656)
!2659 = !DILocation(line: 1484, column: 5, scope: !2656)
!2660 = !DILocation(line: 1484, column: 13, scope: !2656)
!2661 = !DILocation(line: 1484, column: 17, scope: !2656)
!2662 = !DILocation(line: 1485, column: 48, scope: !2656)
!2663 = !DILocation(line: 1485, column: 56, scope: !2656)
!2664 = !DILocation(line: 1485, column: 43, scope: !2656)
!2665 = !DILocation(line: 1485, column: 41, scope: !2656)
!2666 = !DILocation(line: 1485, column: 5, scope: !2656)
!2667 = !DILocation(line: 1485, column: 13, scope: !2656)
!2668 = !DILocation(line: 1485, column: 17, scope: !2656)
!2669 = !DILocation(line: 1486, column: 5, scope: !2656)
!2670 = !DILocation(line: 1489, column: 5, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 1488, column: 8)
!2672 = distinct !{!2672, !2670}
!2673 = !DILocation(line: 1489, column: 5, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 1)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1489, column: 5)
!2676 = distinct !{!2676, !2677}
!2677 = !DILocation(line: 1489, column: 5, scope: !2675)
!2678 = !DILocation(line: 1489, column: 5, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 2)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 1489, column: 5)
!2681 = !DILocation(line: 1489, column: 5, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 3)
!2683 = !DILocation(line: 1491, column: 1, scope: !2627)
!2684 = distinct !DISubprogram(name: "gsl_sf_doublefact_e", scope: !1, file: !1, line: 1494, type: !2628, isLocal: false, isDefinition: true, scopeLine: 1495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2685 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !1, line: 1494, type: !2630)
!2686 = !DILocation(line: 1494, column: 44, scope: !2684)
!2687 = !DILocalVariable(name: "result", arg: 2, scope: !2684, file: !1, line: 1494, type: !98)
!2688 = !DILocation(line: 1494, column: 63, scope: !2684)
!2689 = !DILocation(line: 1498, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 1498, column: 6)
!2691 = !DILocation(line: 1498, column: 8, scope: !2690)
!2692 = !DILocation(line: 1498, column: 6, scope: !2684)
!2693 = !DILocation(line: 1499, column: 35, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 1498, column: 14)
!2695 = !DILocation(line: 1499, column: 19, scope: !2694)
!2696 = !DILocation(line: 1499, column: 38, scope: !2694)
!2697 = !DILocation(line: 1499, column: 5, scope: !2694)
!2698 = !DILocation(line: 1499, column: 13, scope: !2694)
!2699 = !DILocation(line: 1499, column: 17, scope: !2694)
!2700 = !DILocation(line: 1500, column: 5, scope: !2694)
!2701 = !DILocation(line: 1500, column: 13, scope: !2694)
!2702 = !DILocation(line: 1500, column: 17, scope: !2694)
!2703 = !DILocation(line: 1501, column: 5, scope: !2694)
!2704 = !DILocation(line: 1503, column: 11, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 1503, column: 11)
!2706 = !DILocation(line: 1503, column: 13, scope: !2705)
!2707 = !DILocation(line: 1503, column: 11, scope: !2690)
!2708 = !DILocation(line: 1504, column: 35, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1503, column: 39)
!2710 = !DILocation(line: 1504, column: 19, scope: !2709)
!2711 = !DILocation(line: 1504, column: 38, scope: !2709)
!2712 = !DILocation(line: 1504, column: 5, scope: !2709)
!2713 = !DILocation(line: 1504, column: 13, scope: !2709)
!2714 = !DILocation(line: 1504, column: 17, scope: !2709)
!2715 = !DILocation(line: 1505, column: 48, scope: !2709)
!2716 = !DILocation(line: 1505, column: 56, scope: !2709)
!2717 = !DILocation(line: 1505, column: 43, scope: !2709)
!2718 = !DILocation(line: 1505, column: 41, scope: !2709)
!2719 = !DILocation(line: 1505, column: 5, scope: !2709)
!2720 = !DILocation(line: 1505, column: 13, scope: !2709)
!2721 = !DILocation(line: 1505, column: 17, scope: !2709)
!2722 = !DILocation(line: 1506, column: 5, scope: !2709)
!2723 = !DILocation(line: 1509, column: 5, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 1508, column: 8)
!2725 = distinct !{!2725, !2723}
!2726 = !DILocation(line: 1509, column: 5, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2728, file: !1, discriminator: 1)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 1509, column: 5)
!2729 = distinct !{!2729, !2730}
!2730 = !DILocation(line: 1509, column: 5, scope: !2728)
!2731 = !DILocation(line: 1509, column: 5, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2733, file: !1, discriminator: 2)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 1509, column: 5)
!2734 = !DILocation(line: 1509, column: 5, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2728, file: !1, discriminator: 3)
!2736 = !DILocation(line: 1511, column: 1, scope: !2684)
!2737 = distinct !DISubprogram(name: "gsl_sf_lnfact_e", scope: !1, file: !1, line: 1514, type: !2628, isLocal: false, isDefinition: true, scopeLine: 1515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2738 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !1, line: 1514, type: !2630)
!2739 = !DILocation(line: 1514, column: 40, scope: !2737)
!2740 = !DILocalVariable(name: "result", arg: 2, scope: !2737, file: !1, line: 1514, type: !98)
!2741 = !DILocation(line: 1514, column: 59, scope: !2737)
!2742 = !DILocation(line: 1518, column: 6, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 1518, column: 6)
!2744 = !DILocation(line: 1518, column: 8, scope: !2743)
!2745 = !DILocation(line: 1518, column: 6, scope: !2737)
!2746 = !DILocation(line: 1519, column: 34, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 1518, column: 28)
!2748 = !DILocation(line: 1519, column: 23, scope: !2747)
!2749 = !DILocation(line: 1519, column: 37, scope: !2747)
!2750 = !DILocation(line: 1519, column: 19, scope: !2747)
!2751 = !DILocation(line: 1519, column: 5, scope: !2747)
!2752 = !DILocation(line: 1519, column: 13, scope: !2747)
!2753 = !DILocation(line: 1519, column: 17, scope: !2747)
!2754 = !DILocation(line: 1520, column: 48, scope: !2747)
!2755 = !DILocation(line: 1520, column: 56, scope: !2747)
!2756 = !DILocation(line: 1520, column: 43, scope: !2747)
!2757 = !DILocation(line: 1520, column: 41, scope: !2747)
!2758 = !DILocation(line: 1520, column: 5, scope: !2747)
!2759 = !DILocation(line: 1520, column: 13, scope: !2747)
!2760 = !DILocation(line: 1520, column: 17, scope: !2747)
!2761 = !DILocation(line: 1521, column: 5, scope: !2747)
!2762 = !DILocation(line: 1524, column: 22, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 1523, column: 8)
!2764 = !DILocation(line: 1524, column: 23, scope: !2763)
!2765 = !DILocation(line: 1524, column: 29, scope: !2763)
!2766 = !DILocation(line: 1524, column: 5, scope: !2763)
!2767 = !DILocation(line: 1525, column: 5, scope: !2763)
!2768 = !DILocation(line: 1527, column: 1, scope: !2737)
!2769 = distinct !DISubprogram(name: "gsl_sf_lndoublefact_e", scope: !1, file: !1, line: 1530, type: !2628, isLocal: false, isDefinition: true, scopeLine: 1531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !1, line: 1530, type: !2630)
!2771 = !DILocation(line: 1530, column: 46, scope: !2769)
!2772 = !DILocalVariable(name: "result", arg: 2, scope: !2769, file: !1, line: 1530, type: !98)
!2773 = !DILocation(line: 1530, column: 65, scope: !2769)
!2774 = !DILocation(line: 1534, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !1, line: 1534, column: 6)
!2776 = !DILocation(line: 1534, column: 8, scope: !2775)
!2777 = !DILocation(line: 1534, column: 6, scope: !2769)
!2778 = !DILocation(line: 1535, column: 39, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 1534, column: 34)
!2780 = !DILocation(line: 1535, column: 23, scope: !2779)
!2781 = !DILocation(line: 1535, column: 42, scope: !2779)
!2782 = !DILocation(line: 1535, column: 19, scope: !2779)
!2783 = !DILocation(line: 1535, column: 5, scope: !2779)
!2784 = !DILocation(line: 1535, column: 13, scope: !2779)
!2785 = !DILocation(line: 1535, column: 17, scope: !2779)
!2786 = !DILocation(line: 1536, column: 48, scope: !2779)
!2787 = !DILocation(line: 1536, column: 56, scope: !2779)
!2788 = !DILocation(line: 1536, column: 43, scope: !2779)
!2789 = !DILocation(line: 1536, column: 41, scope: !2779)
!2790 = !DILocation(line: 1536, column: 5, scope: !2779)
!2791 = !DILocation(line: 1536, column: 13, scope: !2779)
!2792 = !DILocation(line: 1536, column: 17, scope: !2779)
!2793 = !DILocation(line: 1537, column: 5, scope: !2779)
!2794 = !DILocation(line: 1539, column: 11, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 1539, column: 11)
!2796 = !DILocation(line: 1539, column: 11, scope: !2775)
!2797 = !DILocalVariable(name: "lg", scope: !2798, file: !1, line: 1540, type: !99)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 1539, column: 26)
!2799 = !DILocation(line: 1540, column: 19, scope: !2798)
!2800 = !DILocation(line: 1541, column: 27, scope: !2798)
!2801 = !DILocation(line: 1541, column: 28, scope: !2798)
!2802 = !DILocation(line: 1541, column: 25, scope: !2798)
!2803 = !DILocation(line: 1541, column: 5, scope: !2798)
!2804 = !DILocation(line: 1542, column: 24, scope: !2798)
!2805 = !DILocation(line: 1542, column: 25, scope: !2798)
!2806 = !DILocation(line: 1542, column: 22, scope: !2798)
!2807 = !DILocation(line: 1542, column: 31, scope: !2798)
!2808 = !DILocation(line: 1542, column: 39, scope: !2798)
!2809 = !DILocation(line: 1542, column: 57, scope: !2798)
!2810 = !DILocation(line: 1542, column: 52, scope: !2798)
!2811 = !DILocation(line: 1542, column: 5, scope: !2798)
!2812 = !DILocation(line: 1542, column: 13, scope: !2798)
!2813 = !DILocation(line: 1542, column: 17, scope: !2798)
!2814 = !DILocation(line: 1543, column: 48, scope: !2798)
!2815 = !DILocation(line: 1543, column: 56, scope: !2798)
!2816 = !DILocation(line: 1543, column: 43, scope: !2798)
!2817 = !DILocation(line: 1543, column: 41, scope: !2798)
!2818 = !DILocation(line: 1543, column: 66, scope: !2798)
!2819 = !DILocation(line: 1543, column: 61, scope: !2798)
!2820 = !DILocation(line: 1543, column: 5, scope: !2798)
!2821 = !DILocation(line: 1543, column: 13, scope: !2798)
!2822 = !DILocation(line: 1543, column: 17, scope: !2798)
!2823 = !DILocation(line: 1544, column: 5, scope: !2798)
!2824 = !DILocalVariable(name: "lg", scope: !2825, file: !1, line: 1547, type: !99)
!2825 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 1546, column: 8)
!2826 = !DILocation(line: 1547, column: 19, scope: !2825)
!2827 = !DILocation(line: 1548, column: 26, scope: !2825)
!2828 = !DILocation(line: 1548, column: 25, scope: !2825)
!2829 = !DILocation(line: 1548, column: 27, scope: !2825)
!2830 = !DILocation(line: 1548, column: 5, scope: !2825)
!2831 = !DILocation(line: 1549, column: 23, scope: !2825)
!2832 = !DILocation(line: 1549, column: 22, scope: !2825)
!2833 = !DILocation(line: 1549, column: 24, scope: !2825)
!2834 = !DILocation(line: 1549, column: 36, scope: !2825)
!2835 = !DILocation(line: 1549, column: 31, scope: !2825)
!2836 = !DILocation(line: 1549, column: 5, scope: !2825)
!2837 = !DILocation(line: 1549, column: 13, scope: !2825)
!2838 = !DILocation(line: 1549, column: 17, scope: !2825)
!2839 = !DILocation(line: 1550, column: 48, scope: !2825)
!2840 = !DILocation(line: 1550, column: 56, scope: !2825)
!2841 = !DILocation(line: 1550, column: 43, scope: !2825)
!2842 = !DILocation(line: 1550, column: 41, scope: !2825)
!2843 = !DILocation(line: 1550, column: 66, scope: !2825)
!2844 = !DILocation(line: 1550, column: 61, scope: !2825)
!2845 = !DILocation(line: 1550, column: 5, scope: !2825)
!2846 = !DILocation(line: 1550, column: 13, scope: !2825)
!2847 = !DILocation(line: 1550, column: 17, scope: !2825)
!2848 = !DILocation(line: 1551, column: 5, scope: !2825)
!2849 = !DILocation(line: 1553, column: 1, scope: !2769)
!2850 = distinct !DISubprogram(name: "gsl_sf_lnchoose_e", scope: !1, file: !1, line: 1556, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!42, !2631, !2631, !98}
!2853 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !1, line: 1556, type: !2631)
!2854 = !DILocation(line: 1556, column: 36, scope: !2850)
!2855 = !DILocalVariable(name: "m", arg: 2, scope: !2850, file: !1, line: 1556, type: !2631)
!2856 = !DILocation(line: 1556, column: 52, scope: !2850)
!2857 = !DILocalVariable(name: "result", arg: 3, scope: !2850, file: !1, line: 1556, type: !98)
!2858 = !DILocation(line: 1556, column: 71, scope: !2850)
!2859 = !DILocation(line: 1560, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2850, file: !1, line: 1560, column: 6)
!2861 = !DILocation(line: 1560, column: 10, scope: !2860)
!2862 = !DILocation(line: 1560, column: 8, scope: !2860)
!2863 = !DILocation(line: 1560, column: 6, scope: !2850)
!2864 = !DILocation(line: 1561, column: 5, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !1, line: 1560, column: 13)
!2866 = distinct !{!2866, !2864}
!2867 = !DILocation(line: 1561, column: 5, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2869, file: !1, discriminator: 1)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 1561, column: 5)
!2870 = distinct !{!2870, !2871}
!2871 = !DILocation(line: 1561, column: 5, scope: !2869)
!2872 = !DILocation(line: 1561, column: 5, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2874, file: !1, discriminator: 2)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !1, line: 1561, column: 5)
!2875 = !DILocation(line: 1561, column: 5, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2869, file: !1, discriminator: 3)
!2877 = !DILocation(line: 1562, column: 3, scope: !2865)
!2878 = !DILocation(line: 1563, column: 11, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2860, file: !1, line: 1563, column: 11)
!2880 = !DILocation(line: 1563, column: 16, scope: !2879)
!2881 = !DILocation(line: 1563, column: 13, scope: !2879)
!2882 = !DILocation(line: 1563, column: 18, scope: !2879)
!2883 = !DILocation(line: 1563, column: 21, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2879, file: !1, discriminator: 1)
!2885 = !DILocation(line: 1563, column: 23, scope: !2884)
!2886 = !DILocation(line: 1563, column: 11, scope: !2884)
!2887 = !DILocation(line: 1564, column: 5, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !1, line: 1563, column: 29)
!2889 = !DILocation(line: 1564, column: 13, scope: !2888)
!2890 = !DILocation(line: 1564, column: 17, scope: !2888)
!2891 = !DILocation(line: 1565, column: 5, scope: !2888)
!2892 = !DILocation(line: 1565, column: 13, scope: !2888)
!2893 = !DILocation(line: 1565, column: 17, scope: !2888)
!2894 = !DILocation(line: 1566, column: 5, scope: !2888)
!2895 = !DILocalVariable(name: "nf", scope: !2896, file: !1, line: 1569, type: !99)
!2896 = distinct !DILexicalBlock(scope: !2879, file: !1, line: 1568, column: 8)
!2897 = !DILocation(line: 1569, column: 19, scope: !2896)
!2898 = !DILocalVariable(name: "mf", scope: !2896, file: !1, line: 1570, type: !99)
!2899 = !DILocation(line: 1570, column: 19, scope: !2896)
!2900 = !DILocalVariable(name: "nmmf", scope: !2896, file: !1, line: 1571, type: !99)
!2901 = !DILocation(line: 1571, column: 19, scope: !2896)
!2902 = !DILocation(line: 1572, column: 8, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2896, file: !1, line: 1572, column: 8)
!2904 = !DILocation(line: 1572, column: 9, scope: !2903)
!2905 = !DILocation(line: 1572, column: 14, scope: !2903)
!2906 = !DILocation(line: 1572, column: 12, scope: !2903)
!2907 = !DILocation(line: 1572, column: 8, scope: !2896)
!2908 = !DILocation(line: 1572, column: 21, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2903, file: !1, discriminator: 1)
!2910 = !DILocation(line: 1572, column: 23, scope: !2909)
!2911 = !DILocation(line: 1572, column: 22, scope: !2909)
!2912 = !DILocation(line: 1572, column: 19, scope: !2909)
!2913 = !DILocation(line: 1572, column: 17, scope: !2909)
!2914 = !DILocation(line: 1573, column: 21, scope: !2896)
!2915 = !DILocation(line: 1573, column: 5, scope: !2896)
!2916 = !DILocation(line: 1574, column: 21, scope: !2896)
!2917 = !DILocation(line: 1574, column: 5, scope: !2896)
!2918 = !DILocation(line: 1575, column: 21, scope: !2896)
!2919 = !DILocation(line: 1575, column: 23, scope: !2896)
!2920 = !DILocation(line: 1575, column: 22, scope: !2896)
!2921 = !DILocation(line: 1575, column: 5, scope: !2896)
!2922 = !DILocation(line: 1576, column: 23, scope: !2896)
!2923 = !DILocation(line: 1576, column: 32, scope: !2896)
!2924 = !DILocation(line: 1576, column: 27, scope: !2896)
!2925 = !DILocation(line: 1576, column: 43, scope: !2896)
!2926 = !DILocation(line: 1576, column: 36, scope: !2896)
!2927 = !DILocation(line: 1576, column: 5, scope: !2896)
!2928 = !DILocation(line: 1576, column: 13, scope: !2896)
!2929 = !DILocation(line: 1576, column: 18, scope: !2896)
!2930 = !DILocation(line: 1577, column: 23, scope: !2896)
!2931 = !DILocation(line: 1577, column: 32, scope: !2896)
!2932 = !DILocation(line: 1577, column: 27, scope: !2896)
!2933 = !DILocation(line: 1577, column: 43, scope: !2896)
!2934 = !DILocation(line: 1577, column: 36, scope: !2896)
!2935 = !DILocation(line: 1577, column: 5, scope: !2896)
!2936 = !DILocation(line: 1577, column: 13, scope: !2896)
!2937 = !DILocation(line: 1577, column: 18, scope: !2896)
!2938 = !DILocation(line: 1578, column: 49, scope: !2896)
!2939 = !DILocation(line: 1578, column: 57, scope: !2896)
!2940 = !DILocation(line: 1578, column: 44, scope: !2896)
!2941 = !DILocation(line: 1578, column: 42, scope: !2896)
!2942 = !DILocation(line: 1578, column: 5, scope: !2896)
!2943 = !DILocation(line: 1578, column: 13, scope: !2896)
!2944 = !DILocation(line: 1578, column: 17, scope: !2896)
!2945 = !DILocation(line: 1579, column: 5, scope: !2896)
!2946 = !DILocation(line: 1581, column: 1, scope: !2850)
!2947 = distinct !DISubprogram(name: "gsl_sf_choose_e", scope: !1, file: !1, line: 1584, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1585, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2947, file: !1, line: 1584, type: !2631)
!2949 = !DILocation(line: 1584, column: 34, scope: !2947)
!2950 = !DILocalVariable(name: "m", arg: 2, scope: !2947, file: !1, line: 1584, type: !2631)
!2951 = !DILocation(line: 1584, column: 50, scope: !2947)
!2952 = !DILocalVariable(name: "result", arg: 3, scope: !2947, file: !1, line: 1584, type: !98)
!2953 = !DILocation(line: 1584, column: 69, scope: !2947)
!2954 = !DILocation(line: 1586, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2947, file: !1, line: 1586, column: 6)
!2956 = !DILocation(line: 1586, column: 10, scope: !2955)
!2957 = !DILocation(line: 1586, column: 8, scope: !2955)
!2958 = !DILocation(line: 1586, column: 6, scope: !2947)
!2959 = !DILocation(line: 1587, column: 5, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !1, line: 1586, column: 13)
!2961 = distinct !{!2961, !2959}
!2962 = !DILocation(line: 1587, column: 5, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2964, file: !1, discriminator: 1)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !1, line: 1587, column: 5)
!2965 = distinct !{!2965, !2966}
!2966 = !DILocation(line: 1587, column: 5, scope: !2964)
!2967 = !DILocation(line: 1587, column: 5, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2969, file: !1, discriminator: 2)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 1587, column: 5)
!2970 = !DILocation(line: 1587, column: 5, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2964, file: !1, discriminator: 3)
!2972 = !DILocation(line: 1588, column: 3, scope: !2960)
!2973 = !DILocation(line: 1589, column: 11, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2955, file: !1, line: 1589, column: 11)
!2975 = !DILocation(line: 1589, column: 16, scope: !2974)
!2976 = !DILocation(line: 1589, column: 13, scope: !2974)
!2977 = !DILocation(line: 1589, column: 18, scope: !2974)
!2978 = !DILocation(line: 1589, column: 21, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2974, file: !1, discriminator: 1)
!2980 = !DILocation(line: 1589, column: 23, scope: !2979)
!2981 = !DILocation(line: 1589, column: 11, scope: !2979)
!2982 = !DILocation(line: 1590, column: 5, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 1589, column: 29)
!2984 = !DILocation(line: 1590, column: 13, scope: !2983)
!2985 = !DILocation(line: 1590, column: 17, scope: !2983)
!2986 = !DILocation(line: 1591, column: 5, scope: !2983)
!2987 = !DILocation(line: 1591, column: 13, scope: !2983)
!2988 = !DILocation(line: 1591, column: 17, scope: !2983)
!2989 = !DILocation(line: 1592, column: 5, scope: !2983)
!2990 = !DILocation(line: 1594, column: 12, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 1594, column: 12)
!2992 = !DILocation(line: 1594, column: 14, scope: !2991)
!2993 = !DILocation(line: 1594, column: 12, scope: !2974)
!2994 = !DILocation(line: 1595, column: 31, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !1, line: 1594, column: 35)
!2996 = !DILocation(line: 1595, column: 20, scope: !2995)
!2997 = !DILocation(line: 1595, column: 34, scope: !2995)
!2998 = !DILocation(line: 1595, column: 49, scope: !2995)
!2999 = !DILocation(line: 1595, column: 38, scope: !2995)
!3000 = !DILocation(line: 1595, column: 52, scope: !2995)
!3001 = !DILocation(line: 1595, column: 36, scope: !2995)
!3002 = !DILocation(line: 1595, column: 68, scope: !2995)
!3003 = !DILocation(line: 1595, column: 70, scope: !2995)
!3004 = !DILocation(line: 1595, column: 69, scope: !2995)
!3005 = !DILocation(line: 1595, column: 57, scope: !2995)
!3006 = !DILocation(line: 1595, column: 73, scope: !2995)
!3007 = !DILocation(line: 1595, column: 55, scope: !2995)
!3008 = !DILocation(line: 1595, column: 5, scope: !2995)
!3009 = !DILocation(line: 1595, column: 13, scope: !2995)
!3010 = !DILocation(line: 1595, column: 17, scope: !2995)
!3011 = !DILocation(line: 1596, column: 48, scope: !2995)
!3012 = !DILocation(line: 1596, column: 56, scope: !2995)
!3013 = !DILocation(line: 1596, column: 43, scope: !2995)
!3014 = !DILocation(line: 1596, column: 41, scope: !2995)
!3015 = !DILocation(line: 1596, column: 5, scope: !2995)
!3016 = !DILocation(line: 1596, column: 13, scope: !2995)
!3017 = !DILocation(line: 1596, column: 17, scope: !2995)
!3018 = !DILocation(line: 1597, column: 5, scope: !2995)
!3019 = !DILocation(line: 1599, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !1, line: 1599, column: 8)
!3021 = distinct !DILexicalBlock(scope: !2991, file: !1, line: 1598, column: 10)
!3022 = !DILocation(line: 1599, column: 9, scope: !3020)
!3023 = !DILocation(line: 1599, column: 14, scope: !3020)
!3024 = !DILocation(line: 1599, column: 12, scope: !3020)
!3025 = !DILocation(line: 1599, column: 8, scope: !3021)
!3026 = !DILocation(line: 1599, column: 21, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3020, file: !1, discriminator: 1)
!3028 = !DILocation(line: 1599, column: 23, scope: !3027)
!3029 = !DILocation(line: 1599, column: 22, scope: !3027)
!3030 = !DILocation(line: 1599, column: 19, scope: !3027)
!3031 = !DILocation(line: 1599, column: 17, scope: !3027)
!3032 = !DILocation(line: 1601, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3021, file: !1, line: 1601, column: 9)
!3034 = !DILocation(line: 1601, column: 13, scope: !3033)
!3035 = !DILocation(line: 1601, column: 11, scope: !3033)
!3036 = !DILocation(line: 1601, column: 15, scope: !3033)
!3037 = !DILocation(line: 1601, column: 9, scope: !3021)
!3038 = !DILocalVariable(name: "prod", scope: !3039, file: !1, line: 1603, type: !43)
!3039 = distinct !DILexicalBlock(scope: !3033, file: !1, line: 1602, column: 7)
!3040 = !DILocation(line: 1603, column: 16, scope: !3039)
!3041 = !DILocalVariable(name: "k", scope: !3039, file: !1, line: 1604, type: !2631)
!3042 = !DILocation(line: 1604, column: 22, scope: !3039)
!3043 = !DILocation(line: 1606, column: 15, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !1, line: 1606, column: 9)
!3045 = !DILocation(line: 1606, column: 14, scope: !3044)
!3046 = !DILocation(line: 1606, column: 13, scope: !3044)
!3047 = !DILocation(line: 1606, column: 18, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3049, file: !1, discriminator: 1)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !1, line: 1606, column: 9)
!3050 = !DILocation(line: 1606, column: 21, scope: !3048)
!3051 = !DILocation(line: 1606, column: 22, scope: !3048)
!3052 = !DILocation(line: 1606, column: 19, scope: !3048)
!3053 = !DILocation(line: 1606, column: 9, scope: !3048)
!3054 = !DILocalVariable(name: "tk", scope: !3055, file: !1, line: 1607, type: !43)
!3055 = distinct !DILexicalBlock(scope: !3049, file: !1, line: 1606, column: 31)
!3056 = !DILocation(line: 1607, column: 18, scope: !3055)
!3057 = !DILocation(line: 1607, column: 31, scope: !3055)
!3058 = !DILocation(line: 1607, column: 23, scope: !3055)
!3059 = !DILocation(line: 1607, column: 44, scope: !3055)
!3060 = !DILocation(line: 1607, column: 46, scope: !3055)
!3061 = !DILocation(line: 1607, column: 45, scope: !3055)
!3062 = !DILocation(line: 1607, column: 35, scope: !3055)
!3063 = !DILocation(line: 1607, column: 33, scope: !3055)
!3064 = !DILocation(line: 1608, column: 14, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3055, file: !1, line: 1608, column: 14)
!3066 = !DILocation(line: 1608, column: 31, scope: !3065)
!3067 = !DILocation(line: 1608, column: 30, scope: !3065)
!3068 = !DILocation(line: 1608, column: 17, scope: !3065)
!3069 = !DILocation(line: 1608, column: 14, scope: !3055)
!3070 = !DILocation(line: 1609, column: 13, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3065, file: !1, line: 1608, column: 37)
!3072 = distinct !{!3072, !3070}
!3073 = !DILocation(line: 1609, column: 13, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3075, file: !1, discriminator: 1)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 1609, column: 13)
!3076 = distinct !{!3076, !3077}
!3077 = !DILocation(line: 1609, column: 13, scope: !3075)
!3078 = !DILocation(line: 1609, column: 13, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3080, file: !1, discriminator: 2)
!3080 = distinct !DILexicalBlock(scope: !3075, file: !1, line: 1609, column: 13)
!3081 = !DILocation(line: 1609, column: 13, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3075, file: !1, discriminator: 3)
!3083 = !DILocation(line: 1610, column: 11, scope: !3071)
!3084 = !DILocation(line: 1611, column: 19, scope: !3055)
!3085 = !DILocation(line: 1611, column: 16, scope: !3055)
!3086 = !DILocation(line: 1612, column: 9, scope: !3055)
!3087 = !DILocation(line: 1606, column: 27, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3049, file: !1, discriminator: 2)
!3089 = !DILocation(line: 1606, column: 9, scope: !3088)
!3090 = distinct !{!3090, !3091}
!3091 = !DILocation(line: 1606, column: 9, scope: !3039)
!3092 = !DILocation(line: 1613, column: 23, scope: !3039)
!3093 = !DILocation(line: 1613, column: 9, scope: !3039)
!3094 = !DILocation(line: 1613, column: 17, scope: !3039)
!3095 = !DILocation(line: 1613, column: 21, scope: !3039)
!3096 = !DILocation(line: 1614, column: 47, scope: !3039)
!3097 = !DILocation(line: 1614, column: 45, scope: !3039)
!3098 = !DILocation(line: 1614, column: 59, scope: !3039)
!3099 = !DILocation(line: 1614, column: 61, scope: !3039)
!3100 = !DILocation(line: 1614, column: 60, scope: !3039)
!3101 = !DILocation(line: 1614, column: 54, scope: !3039)
!3102 = !DILocation(line: 1614, column: 52, scope: !3039)
!3103 = !DILocation(line: 1614, column: 9, scope: !3039)
!3104 = !DILocation(line: 1614, column: 17, scope: !3039)
!3105 = !DILocation(line: 1614, column: 21, scope: !3039)
!3106 = !DILocation(line: 1615, column: 9, scope: !3039)
!3107 = !DILocalVariable(name: "lc", scope: !3108, file: !1, line: 1619, type: !99)
!3108 = distinct !DILexicalBlock(scope: !3033, file: !1, line: 1618, column: 7)
!3109 = !DILocation(line: 1619, column: 23, scope: !3108)
!3110 = !DILocalVariable(name: "stat_lc", scope: !3108, file: !1, line: 1620, type: !1689)
!3111 = !DILocation(line: 1620, column: 19, scope: !3108)
!3112 = !DILocation(line: 1620, column: 48, scope: !3108)
!3113 = !DILocation(line: 1620, column: 51, scope: !3108)
!3114 = !DILocation(line: 1620, column: 29, scope: !3108)
!3115 = !DILocalVariable(name: "stat_e", scope: !3108, file: !1, line: 1621, type: !1689)
!3116 = !DILocation(line: 1621, column: 19, scope: !3108)
!3117 = !DILocation(line: 1621, column: 49, scope: !3108)
!3118 = !DILocation(line: 1621, column: 57, scope: !3108)
!3119 = !DILocation(line: 1621, column: 62, scope: !3108)
!3120 = !DILocation(line: 1621, column: 29, scope: !3108)
!3121 = !DILocation(line: 1622, column: 16, scope: !3108)
!3122 = !DILocation(line: 1622, column: 16, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 1)
!3124 = !DILocation(line: 1622, column: 16, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 2)
!3126 = !DILocation(line: 1622, column: 16, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 3)
!3128 = !DILocation(line: 1622, column: 16, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 4)
!3130 = !DILocation(line: 1622, column: 16, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 5)
!3132 = !DILocation(line: 1622, column: 16, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3108, file: !1, discriminator: 6)
!3134 = !DILocation(line: 1622, column: 9, scope: !3133)
!3135 = !DILocation(line: 1625, column: 1, scope: !2947)
!3136 = distinct !DISubprogram(name: "gsl_sf_fact", scope: !1, file: !1, line: 1632, type: !3137, isLocal: false, isDefinition: true, scopeLine: 1633, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!43, !2630}
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !1, line: 1632, type: !2630)
!3140 = !DILocation(line: 1632, column: 39, scope: !3136)
!3141 = !DILocalVariable(name: "result", scope: !3136, file: !1, line: 1634, type: !99)
!3142 = !DILocation(line: 1634, column: 3, scope: !3136)
!3143 = !DILocalVariable(name: "status", scope: !3136, file: !1, line: 1634, type: !42)
!3144 = !DILocation(line: 1634, column: 3, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3136, file: !1, line: 1634, column: 3)
!3146 = !DILocation(line: 1634, column: 3, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3148, file: !1, discriminator: 1)
!3148 = distinct !DILexicalBlock(scope: !3145, file: !1, line: 1634, column: 3)
!3149 = distinct !{!3149, !3150}
!3150 = !DILocation(line: 1634, column: 3, scope: !3148)
!3151 = !DILocation(line: 1634, column: 3, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3153, file: !1, discriminator: 2)
!3153 = distinct !DILexicalBlock(scope: !3148, file: !1, line: 1634, column: 3)
!3154 = !DILocation(line: 1634, column: 3, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3148, file: !1, discriminator: 3)
!3156 = !DILocation(line: 1634, column: 3, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3136, file: !1, discriminator: 4)
!3158 = !DILocation(line: 1635, column: 1, scope: !3136)
!3159 = distinct !DISubprogram(name: "gsl_sf_lnfact", scope: !1, file: !1, line: 1637, type: !3137, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3160 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !1, line: 1637, type: !2630)
!3161 = !DILocation(line: 1637, column: 41, scope: !3159)
!3162 = !DILocalVariable(name: "result", scope: !3159, file: !1, line: 1639, type: !99)
!3163 = !DILocation(line: 1639, column: 3, scope: !3159)
!3164 = !DILocalVariable(name: "status", scope: !3159, file: !1, line: 1639, type: !42)
!3165 = !DILocation(line: 1639, column: 3, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1639, column: 3)
!3167 = !DILocation(line: 1639, column: 3, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3169, file: !1, discriminator: 1)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 1639, column: 3)
!3170 = distinct !{!3170, !3171}
!3171 = !DILocation(line: 1639, column: 3, scope: !3169)
!3172 = !DILocation(line: 1639, column: 3, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3174, file: !1, discriminator: 2)
!3174 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 1639, column: 3)
!3175 = !DILocation(line: 1639, column: 3, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3169, file: !1, discriminator: 3)
!3177 = !DILocation(line: 1639, column: 3, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3159, file: !1, discriminator: 4)
!3179 = !DILocation(line: 1640, column: 1, scope: !3159)
!3180 = distinct !DISubprogram(name: "gsl_sf_doublefact", scope: !1, file: !1, line: 1642, type: !3137, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !1, line: 1642, type: !2630)
!3182 = !DILocation(line: 1642, column: 45, scope: !3180)
!3183 = !DILocalVariable(name: "result", scope: !3180, file: !1, line: 1644, type: !99)
!3184 = !DILocation(line: 1644, column: 3, scope: !3180)
!3185 = !DILocalVariable(name: "status", scope: !3180, file: !1, line: 1644, type: !42)
!3186 = !DILocation(line: 1644, column: 3, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3180, file: !1, line: 1644, column: 3)
!3188 = !DILocation(line: 1644, column: 3, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3190, file: !1, discriminator: 1)
!3190 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 1644, column: 3)
!3191 = distinct !{!3191, !3192}
!3192 = !DILocation(line: 1644, column: 3, scope: !3190)
!3193 = !DILocation(line: 1644, column: 3, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3195, file: !1, discriminator: 2)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 1644, column: 3)
!3196 = !DILocation(line: 1644, column: 3, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3190, file: !1, discriminator: 3)
!3198 = !DILocation(line: 1644, column: 3, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3180, file: !1, discriminator: 4)
!3200 = !DILocation(line: 1645, column: 1, scope: !3180)
!3201 = distinct !DISubprogram(name: "gsl_sf_lndoublefact", scope: !1, file: !1, line: 1647, type: !3137, isLocal: false, isDefinition: true, scopeLine: 1648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !1, line: 1647, type: !2630)
!3203 = !DILocation(line: 1647, column: 47, scope: !3201)
!3204 = !DILocalVariable(name: "result", scope: !3201, file: !1, line: 1649, type: !99)
!3205 = !DILocation(line: 1649, column: 3, scope: !3201)
!3206 = !DILocalVariable(name: "status", scope: !3201, file: !1, line: 1649, type: !42)
!3207 = !DILocation(line: 1649, column: 3, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !1, line: 1649, column: 3)
!3209 = !DILocation(line: 1649, column: 3, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !1, discriminator: 1)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1649, column: 3)
!3212 = distinct !{!3212, !3213}
!3213 = !DILocation(line: 1649, column: 3, scope: !3211)
!3214 = !DILocation(line: 1649, column: 3, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3216, file: !1, discriminator: 2)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !1, line: 1649, column: 3)
!3217 = !DILocation(line: 1649, column: 3, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3211, file: !1, discriminator: 3)
!3219 = !DILocation(line: 1649, column: 3, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3201, file: !1, discriminator: 4)
!3221 = !DILocation(line: 1650, column: 1, scope: !3201)
!3222 = distinct !DISubprogram(name: "gsl_sf_lngamma", scope: !1, file: !1, line: 1652, type: !3223, isLocal: false, isDefinition: true, scopeLine: 1653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!43, !314}
!3225 = !DILocalVariable(name: "x", arg: 1, scope: !3222, file: !1, line: 1652, type: !314)
!3226 = !DILocation(line: 1652, column: 36, scope: !3222)
!3227 = !DILocalVariable(name: "result", scope: !3222, file: !1, line: 1654, type: !99)
!3228 = !DILocation(line: 1654, column: 3, scope: !3222)
!3229 = !DILocalVariable(name: "status", scope: !3222, file: !1, line: 1654, type: !42)
!3230 = !DILocation(line: 1654, column: 3, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 1654, column: 3)
!3232 = !DILocation(line: 1654, column: 3, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3234, file: !1, discriminator: 1)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !1, line: 1654, column: 3)
!3235 = distinct !{!3235, !3236}
!3236 = !DILocation(line: 1654, column: 3, scope: !3234)
!3237 = !DILocation(line: 1654, column: 3, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3239, file: !1, discriminator: 2)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !1, line: 1654, column: 3)
!3240 = !DILocation(line: 1654, column: 3, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3234, file: !1, discriminator: 3)
!3242 = !DILocation(line: 1654, column: 3, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3222, file: !1, discriminator: 4)
!3244 = !DILocation(line: 1655, column: 1, scope: !3222)
!3245 = distinct !DISubprogram(name: "gsl_sf_gamma", scope: !1, file: !1, line: 1657, type: !3223, isLocal: false, isDefinition: true, scopeLine: 1658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3246 = !DILocalVariable(name: "x", arg: 1, scope: !3245, file: !1, line: 1657, type: !314)
!3247 = !DILocation(line: 1657, column: 34, scope: !3245)
!3248 = !DILocalVariable(name: "result", scope: !3245, file: !1, line: 1659, type: !99)
!3249 = !DILocation(line: 1659, column: 3, scope: !3245)
!3250 = !DILocalVariable(name: "status", scope: !3245, file: !1, line: 1659, type: !42)
!3251 = !DILocation(line: 1659, column: 3, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3245, file: !1, line: 1659, column: 3)
!3253 = !DILocation(line: 1659, column: 3, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3255, file: !1, discriminator: 1)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !1, line: 1659, column: 3)
!3256 = distinct !{!3256, !3257}
!3257 = !DILocation(line: 1659, column: 3, scope: !3255)
!3258 = !DILocation(line: 1659, column: 3, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3260, file: !1, discriminator: 2)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 1659, column: 3)
!3261 = !DILocation(line: 1659, column: 3, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !3255, file: !1, discriminator: 3)
!3263 = !DILocation(line: 1659, column: 3, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3245, file: !1, discriminator: 4)
!3265 = !DILocation(line: 1660, column: 1, scope: !3245)
!3266 = distinct !DISubprogram(name: "gsl_sf_gammastar", scope: !1, file: !1, line: 1662, type: !3223, isLocal: false, isDefinition: true, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3267 = !DILocalVariable(name: "x", arg: 1, scope: !3266, file: !1, line: 1662, type: !314)
!3268 = !DILocation(line: 1662, column: 38, scope: !3266)
!3269 = !DILocalVariable(name: "result", scope: !3266, file: !1, line: 1664, type: !99)
!3270 = !DILocation(line: 1664, column: 3, scope: !3266)
!3271 = !DILocalVariable(name: "status", scope: !3266, file: !1, line: 1664, type: !42)
!3272 = !DILocation(line: 1664, column: 3, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 1664, column: 3)
!3274 = !DILocation(line: 1664, column: 3, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3276, file: !1, discriminator: 1)
!3276 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 1664, column: 3)
!3277 = distinct !{!3277, !3278}
!3278 = !DILocation(line: 1664, column: 3, scope: !3276)
!3279 = !DILocation(line: 1664, column: 3, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3281, file: !1, discriminator: 2)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !1, line: 1664, column: 3)
!3282 = !DILocation(line: 1664, column: 3, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3276, file: !1, discriminator: 3)
!3284 = !DILocation(line: 1664, column: 3, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3266, file: !1, discriminator: 4)
!3286 = !DILocation(line: 1665, column: 1, scope: !3266)
!3287 = distinct !DISubprogram(name: "gsl_sf_gammainv", scope: !1, file: !1, line: 1667, type: !3223, isLocal: false, isDefinition: true, scopeLine: 1668, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3288 = !DILocalVariable(name: "x", arg: 1, scope: !3287, file: !1, line: 1667, type: !314)
!3289 = !DILocation(line: 1667, column: 37, scope: !3287)
!3290 = !DILocalVariable(name: "result", scope: !3287, file: !1, line: 1669, type: !99)
!3291 = !DILocation(line: 1669, column: 3, scope: !3287)
!3292 = !DILocalVariable(name: "status", scope: !3287, file: !1, line: 1669, type: !42)
!3293 = !DILocation(line: 1669, column: 3, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 1669, column: 3)
!3295 = !DILocation(line: 1669, column: 3, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3297, file: !1, discriminator: 1)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !1, line: 1669, column: 3)
!3298 = distinct !{!3298, !3299}
!3299 = !DILocation(line: 1669, column: 3, scope: !3297)
!3300 = !DILocation(line: 1669, column: 3, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3302, file: !1, discriminator: 2)
!3302 = distinct !DILexicalBlock(scope: !3297, file: !1, line: 1669, column: 3)
!3303 = !DILocation(line: 1669, column: 3, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3297, file: !1, discriminator: 3)
!3305 = !DILocation(line: 1669, column: 3, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 4)
!3307 = !DILocation(line: 1670, column: 1, scope: !3287)
!3308 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff", scope: !1, file: !1, line: 1672, type: !3309, isLocal: false, isDefinition: true, scopeLine: 1673, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!43, !1689, !314}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !1, line: 1672, type: !1689)
!3312 = !DILocation(line: 1672, column: 37, scope: !3308)
!3313 = !DILocalVariable(name: "x", arg: 2, scope: !3308, file: !1, line: 1672, type: !314)
!3314 = !DILocation(line: 1672, column: 53, scope: !3308)
!3315 = !DILocalVariable(name: "result", scope: !3308, file: !1, line: 1674, type: !99)
!3316 = !DILocation(line: 1674, column: 3, scope: !3308)
!3317 = !DILocalVariable(name: "status", scope: !3308, file: !1, line: 1674, type: !42)
!3318 = !DILocation(line: 1674, column: 3, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3308, file: !1, line: 1674, column: 3)
!3320 = !DILocation(line: 1674, column: 3, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3322, file: !1, discriminator: 1)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !1, line: 1674, column: 3)
!3323 = distinct !{!3323, !3324}
!3324 = !DILocation(line: 1674, column: 3, scope: !3322)
!3325 = !DILocation(line: 1674, column: 3, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !3327, file: !1, discriminator: 2)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 1674, column: 3)
!3328 = !DILocation(line: 1674, column: 3, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3322, file: !1, discriminator: 3)
!3330 = !DILocation(line: 1674, column: 3, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3308, file: !1, discriminator: 4)
!3332 = !DILocation(line: 1675, column: 1, scope: !3308)
!3333 = distinct !DISubprogram(name: "gsl_sf_choose", scope: !1, file: !1, line: 1677, type: !3334, isLocal: false, isDefinition: true, scopeLine: 1678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!43, !2631, !2631}
!3336 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !1, line: 1677, type: !2631)
!3337 = !DILocation(line: 1677, column: 35, scope: !3333)
!3338 = !DILocalVariable(name: "m", arg: 2, scope: !3333, file: !1, line: 1677, type: !2631)
!3339 = !DILocation(line: 1677, column: 51, scope: !3333)
!3340 = !DILocalVariable(name: "result", scope: !3333, file: !1, line: 1679, type: !99)
!3341 = !DILocation(line: 1679, column: 3, scope: !3333)
!3342 = !DILocalVariable(name: "status", scope: !3333, file: !1, line: 1679, type: !42)
!3343 = !DILocation(line: 1679, column: 3, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3333, file: !1, line: 1679, column: 3)
!3345 = !DILocation(line: 1679, column: 3, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3347, file: !1, discriminator: 1)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 1679, column: 3)
!3348 = distinct !{!3348, !3349}
!3349 = !DILocation(line: 1679, column: 3, scope: !3347)
!3350 = !DILocation(line: 1679, column: 3, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3352, file: !1, discriminator: 2)
!3352 = distinct !DILexicalBlock(scope: !3347, file: !1, line: 1679, column: 3)
!3353 = !DILocation(line: 1679, column: 3, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3347, file: !1, discriminator: 3)
!3355 = !DILocation(line: 1679, column: 3, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3333, file: !1, discriminator: 4)
!3357 = !DILocation(line: 1680, column: 1, scope: !3333)
!3358 = distinct !DISubprogram(name: "gsl_sf_lnchoose", scope: !1, file: !1, line: 1682, type: !3334, isLocal: false, isDefinition: true, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !105)
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !1, line: 1682, type: !2631)
!3360 = !DILocation(line: 1682, column: 37, scope: !3358)
!3361 = !DILocalVariable(name: "m", arg: 2, scope: !3358, file: !1, line: 1682, type: !2631)
!3362 = !DILocation(line: 1682, column: 53, scope: !3358)
!3363 = !DILocalVariable(name: "result", scope: !3358, file: !1, line: 1684, type: !99)
!3364 = !DILocation(line: 1684, column: 3, scope: !3358)
!3365 = !DILocalVariable(name: "status", scope: !3358, file: !1, line: 1684, type: !42)
!3366 = !DILocation(line: 1684, column: 3, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3358, file: !1, line: 1684, column: 3)
!3368 = !DILocation(line: 1684, column: 3, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3370, file: !1, discriminator: 1)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !1, line: 1684, column: 3)
!3371 = distinct !{!3371, !3372}
!3372 = !DILocation(line: 1684, column: 3, scope: !3370)
!3373 = !DILocation(line: 1684, column: 3, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3375, file: !1, discriminator: 2)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !1, line: 1684, column: 3)
!3376 = !DILocation(line: 1684, column: 3, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3370, file: !1, discriminator: 3)
!3378 = !DILocation(line: 1684, column: 3, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3358, file: !1, discriminator: 4)
!3380 = !DILocation(line: 1685, column: 1, scope: !3358)
