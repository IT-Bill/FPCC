; ModuleID = 'airy_zero.c'
source_filename = "airy_zero.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [17 x i8] c"s is less than 1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"airy_zero.c\00", align 1
@zero_Ai = internal constant [101 x double] [double 0.000000e+00, double 0xC002B471A873ADF9, double 0xC0105A0F6B48F9C0, double 0xC016150DA2B52089, double 0xC01B2596CE396D64, double 0xC01FC6CAF47EF4F9, double 0xC0220B98E484A6EA, double 0xC0241491BB3642B8, double 0xC026045D4C2B82D5, double 0xC027DF3D6E914B25, double 0xC029A8556D327CAC, double 0xC02B620AD9CF8B96, double 0xC02D0E3FBA3972DA, double 0xC02EAE777509F066, double 0xC03021F7A789BF29, double 0xC030E7D7A1311B7B, double 0xC031A94AF6B6CF6A, double 0xC03266B0A042F43C, double 0xC033205A7883BE5F, double 0xC033D68FAE3ABE6E, double 0xC034898EA6418A2C, double 0xC035398E74871AB5, double 0xC035E6C006D8B659, double 0xC036914F14856F44, double 0xC0373962E0A4B9B5, double 0xC037DF1ED920E200, double 0xC03882A31A1242D2, double 0xC039240CDB1F31C3, double 0xC039C376CB3CB0A4, double 0xC03A60F95E2E7D2E, double 0xC03AFCAB0E67FCFF, double 0xC03B96A09560CF67, double 0xC03C2EED1C02FBEB, double 0xC03CC5A26484E834, double 0xC03D5AD0EEC02391, double 0xC03DEE8817E31021, double 0xC03E80D636332554, double 0xC03F11C8B17576B0, double 0xC03FA16C187978DE, double 0xC04017E61A16A367, double 0xC0405E7A0C48EC5C, double 0xC040A47719EBF2EE, double 0xC040E9E22DF17373, double 0xC0412EBFED333244, double 0xC0417314BBE50513, double 0xC041B6E4C27D4506, double 0xC041FA33F224014E, double 0xC0423D0608B708A5, double 0xC0427F5E946EF920, double 0xC042C140F72FE953, double 0xC04302B0698EDF2C, double 0xC04343AFFD941DD3, double 0xC0438442A14153ED, double 0xC043C46B20E1D7D4, double 0xC044042C292A61E0, double 0xC0444388492D117F, double 0xC0448281F425FBEC, double 0xC044C11B83240852, double 0xC044FF57369171D1, double 0xC0453D37379EEA41, double 0xC0457ABD99940678, double 0xC045B7EC5B0754DE, double 0xC045F4C567003FE9, double 0xC046314A9604A610, double 0xC0466D7DAF13DFBC, double 0xC046A9606890BFEA, double 0xC046E4F4691BF57D, double 0xC047203B486010F4, double 0xC0475B368FD05376, double 0xC04795E7BB5B50E1, double 0xC047D0503A125625, double 0xC0480A716EC66F3E, double 0xC048444CB09BD4AB, double 0xC0487DE34B94768A, double 0xC048B73681124BBF, double 0xC048F0478851FD38, double 0xC04929178EDE78A1, double 0xC04961A7B8FDEA1A, double 0xC04999F922189215, double 0xC049D20CDD19E2FB, double 0xC04A09E3F4CC4984, double 0xC04A417F6C2FFAED, double 0xC04A78E03ECD1D07, double 0xC04AB00761019590, double 0xC04AE6F5C04AC87F, double 0xC04B1DAC438B8763, double 0xC04B542BCB4E6F0A, double 0xC04B8A753204EC40, double 0xC04BC0894C431C24, double 0xC04BF668E8F8B8ED, double 0xC04C2C14D1A74075, double 0xC04C618DCA957E9D, double 0xC04C96D49300A2CA, double 0xC04CCBE9E54B04FA, double 0xC04D00CE7728BC5F, double 0xC04D3582F9CA275A, double 0xC04D6A081A048245, double 0xC04D9E5E8078A8D6, double 0xC04DD286D1B81BD8, double 0xC04E0681AE686376, double 0xC04E3A4FB364E4A0], align 16
@zero_Bi = internal constant [101 x double] [double 0.000000e+00, double 0xBFF2C7878426B20D, double 0xC00A2B32F72EC62A, double 0xC01352ACF0D5F3B2, double 0xC018ADEDB760FE7D, double 0xC01D81CDEB2507AE, double 0xC020FBE0B81E2020, double 0xC023138E36B45DC1, double 0xC0250F50D2BA0431, double 0xC026F4334180E826, double 0xC028C5D87799A74D, double 0xC02A86FBC271EFAA, double 0xC02C39BB42AEB3D1, double 0xC02DDFC5FD375A62, double 0xC02F7A79C77674A2, double 0xC030857BC06D783D, double 0xC031491899BD8CD9, double 0xC032087A1CC5B1C7, double 0xC032C3F859D6A8B5, double 0xC0337BDF91825F76, double 0xC034307258A43719, double 0xC034E1EB41E9E923, double 0xC035907E2CEAE0B3, double 0xC0363C59515CC61B, double 0xC036E5A61691BDFC, double 0xC0378C89C30B5162, double 0xC03831260CDCCCAB, double 0xC038D399916A5008, double 0xC0397400397F37F4, double 0xC03A12738D8FC054, double 0xC03AAF0AFD1F2938, double 0xC03B49DC1B9F96B5, double 0xC03BE2FAD4A46F83, double 0xC03C7A7998E09C2A, double 0xC03D106985203F80, double 0xC03DA4DA8433ECB9, double 0xC03E37DB6C9611FB, double 0xC03EC97A1A6F6440, double 0xC03F59C386826BC5, double 0xC03FE8C3DA6F42A7, double 0xC0403B434156F85F, double 0xC040818B1F47511C, double 0xC040C73E9741450D, double 0xC0410C6270730490, double 0xC04150FB2EBE1E77, double 0xC041950D17E28AB1, double 0xC041D89C38289815, double 0xC0421BAC6698E7F6, double 0xC0425E4148CF903A, double 0xC042A05E5675BCB6, double 0xC042E206DC6BAC66, double 0xC043233DFFABA38D, double 0xC0436406BFED5722, double 0xC043A463FA1068D4, double 0xC043E4586A53BF0F, double 0xC04423E6AE5ED46D, double 0xC0446311472181D7, double 0xC044A1DA9A8E4287, double 0xC044E044F5327E33, double 0xC0451E528BB0017A, double 0xC0455C057C1A74FF, double 0xC045995FCF3B56EB, double 0xC045D66379BEB6E5, double 0xC04613125D4AB94D, double 0xC0464F6E4983B1FD, double 0xC0468B78FCFE7881, double 0xC046C73426226E8D, double 0xC04702A163FC8D0F, double 0xC0473DC24704ABB5, double 0xC047789851D619DE, double 0xC047B324F9DC8613, double 0xC047ED69A7F61A0A, double 0xC0482767B90B9C8B, double 0xC04861207E9F57FB, double 0xC0489A953F53739B, double 0xC048D3C737685E95, double 0xC0490CB79933DE4C, double 0xC04945678D91454D, double 0xC0497DD8344B4D15, double 0xC049B60AA48002EA, double 0xC049EDFFECFF2F00, double 0xC04A25B914A394D2, double 0xC04A5D371AA7642E, double 0xC04A947AF6F42B9D, double 0xC04ACB859A6E969E, double 0xC04B0257EF3E3C84, double 0xC04B38F2D911BFA0, double 0xC04B6F57355F779D, double 0xC04BA585DBA2DDB7, double 0xC04BDB7F9D96ED6D, double 0xC04C1145476DA8AB, double 0xC04C46D7A004EB32, double 0xC04C7C376918B5D0, double 0xC04CB1655F731741, double 0xC04CE6623B19D5EB, double 0xC04D1B2EAF79FB57, double 0xC04D4FCB6B915FFF, double 0xC04D84391A16540F, double 0xC04DB878619D7FD5, double 0xC04DEC89E4BE14D4, double 0xC04E206E423466DF], align 16
@zero_Aip = internal constant [101 x double] [double 0.000000e+00, double 0xBFF04CF9DBE9EDBF, double 0xC009FC4F039344F5, double 0xC01347C8166DF3C8, double 0xC018A73A0B1EABDD, double 0xC01D7D1C08CAFB1C, double 0xC020FA1AEEE64A03, double 0xC023122660D1C0A7, double 0xC0250E2980E8A723, double 0xC026F33A9F81174D, double 0xC028C502FB41EACA, double 0xC02A864190517C7F, double 0xC02C3916C9492800, double 0xC02DDF3329060C91, double 0xC02F79F587CBBE53, double 0xC030853FBD1BAE58, double 0xC03148E1C65A033F, double 0xC0320847BCB7DB9B, double 0xC032C3C9D495CEA3, double 0xC0337BB46A1BACDA, double 0xC034304A279423EB, double 0xC034E1C5B0908AE7, double 0xC035905AF221C168, double 0xC0363C382EDC8974, double 0xC036E586D6EF6DAA, double 0xC0378C6C3826029E, double 0xC038310A0E9FA59E, double 0xC038D37EFCCEB62C, double 0xC03973E6EFC0579F, double 0xC03A125B73846F86, double 0xC03AAEF3FAB1E4BF, double 0xC03B49C61B5E55E5, double 0xC03BE2E5C36380D8, double 0xC03C7A65656CD341, double 0xC03D10561FFD8D7D, double 0xC03DA4C7DF661A76, double 0xC03E37C97B71CC56, double 0xC03EC968D1722830, double 0xC03F59B2DB302880, double 0xC03FE8B3C334C0CD, double 0xC0403B3B7B639D3E, double 0xC04081839AF865E2, double 0xC040C73750E42B37, double 0xC0410C5B649F7ECF, double 0xC04150F45A4EE48C, double 0xC041950677EEC16A, double 0xC041D895C9FE0D91, double 0xC0421BA627B6F97B, double 0xC0425E3B36E2A2EA, double 0xC042A0586F5335F1, double 0xC042E2011E0E5980, double 0xC0432338683082DB, double 0xC04364014D90B65E, double 0xC043A45EAB2B4E8F, double 0xC043E4533D599645, double 0xC04423E1A1DB528C, double 0xC044630C59B6C08C, double 0xC044A1D5CAF3077E, double 0xC044E0404230ABBB, double 0xC0451E4DF4232B9E, double 0xC0455C00FEEE9736, double 0xC045995B6B6BA6E7, double 0xC045D65F2E54918F, double 0xC046130E295CA73E, double 0xC0464F6A2C348120, double 0xC0468B74F57C68C7, double 0xC046C73033A66FD5, double 0xC047029D85C98CAC, double 0xC0473DBE7C66F00D, double 0xC04778949A22AADB, double 0xC047B3215470A136, double 0xC047ED661436B11D, double 0xC04827643664DDF3, double 0xC048611D0C843FE0, double 0xC0489A91DD3D651C, double 0xC048D3C3E4D6C457, double 0xC0490CB455ABD1CE, double 0xC0494564589D3C67, double 0xC0497DD50D7ACD28, double 0xC049B6078B67594A, double 0xC049EDFCE1372E2D, double 0xC04A25B615C9561D, double 0xC04A5D34285C0D74, double 0xC04A947810DCB8CA, double 0xC04ACB82C033A6A5, double 0xC04B0255208BE19A, double 0xC04B38F015975267, double 0xC04B6F547CCF6D21, double 0xC04BA5832DB29FF0, double 0xC04BDB7CF9FEB624, double 0xC04C1142ADE85E9C, double 0xC04C46D510500138, double 0xC04C7C34E2F40BFB, double 0xC04CB162E2A0DDB4, double 0xC04CE65FC75E716A, double 0xC04D1B2C449BEB58, double 0xC04D4FC909592636, double 0xC04D8436C04E5D52, double 0xC04DB87610120E42, double 0xC04DEC879B3D2B26, double 0xC04E206C008DB4E6], align 16
@zero_Bip = internal constant [51 x double] [double 0.000000e+00, double 0xC0025B03313BC73A, double 0xC0104AE92AEC65DB, double 0xC0160CB177560F95, double 0xC01B200BA6B84C98, double 0xC01FC2BE33C98033, double 0xC0220A06D47B225A, double 0xC024134CEF1B38F8, double 0xC026034F1324F03B, double 0xC027DE578AD67DE9, double 0xC029A78E66AE8554, double 0xC02B615C1AC2CCFE, double 0xC02D0DA483757F05, double 0xC02EADEC406DD12F, double 0xC03021B8B7206B90, double 0xC030E79E5014D072, double 0xC031A9167214BA59, double 0xC03266803EC88C4C, double 0xC033202DB057FE13, double 0xC033D6660DCA2B48, double 0xC0348967CEF77D2C, double 0xC035396A16DF1BBC, double 0xC035E69DDF64973C, double 0xC036912EE9A49330, double 0xC037394480BDA86F, double 0xC037DF02193C0F46, double 0xC0388287D4BE4D49, double 0xC03923F2EF8D530C, double 0xC039C35E1C88A124, double 0xC03A60E1D2C84897, double 0xC03AFC948F989930, double 0xC03B968B0EE3FB0D, double 0xC03C2ED87BB22C53, double 0xC03CC58E9A0FFE75, double 0xC03D5ABDEB715699, double 0xC03DEE75CE6C0387, double 0xC03E80C49A818EE1, double 0xC03F11B7B88E06D3, double 0xC03FA15BB857FA68, double 0xC04017DE31D48E5B, double 0xC0405E7267A31447, double 0xC040A46FB5076EB0, double 0xC040E9DB0541D24F, double 0xC0412EB8FD728FE6, double 0xC041730E020D13D0, double 0xC041B6DE3BC12B9F, double 0xC041FA2D9BEAEF12, double 0xC0423CFFE097674B, double 0xC0427F58982A278D, double 0xC042C13B24AE6D88, double 0xC04302AABEDD0043], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"gsl_sf_airy_zero_Ai_e(s, &result)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_airy_zero_Bi_e(s, &result)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"gsl_sf_airy_zero_Ai_deriv_e(s, &result)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"gsl_sf_airy_zero_Bi_deriv_e(s, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_zero_Ai_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !66 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !80), !dbg !81
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !82, metadata !80), !dbg !83
  %8 = load i32, i32* %4, align 4, !dbg !84
  %9 = icmp ult i32 %8, 1, !dbg !86
  br i1 %9, label %10, label %19, !dbg !87

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !88, !llvm.loop !90

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !91
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !91
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !91
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !91
  br label %16, !dbg !91, !llvm.loop !94

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 439, i32 1), !dbg !96
  store i32 1, i32* %3, align 4, !dbg !96
  br label %56, !dbg !96
                                                  ; No predecessors!
  br label %18, !dbg !99

; <label>:18:                                     ; preds = %17
  br label %56, !dbg !101

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !dbg !102
  %21 = zext i32 %20 to i64, !dbg !102
  %22 = icmp ult i64 %21, 101, !dbg !104
  br i1 %22, label %23, label %37, !dbg !105

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !106
  %25 = zext i32 %24 to i64, !dbg !108
  %26 = getelementptr inbounds [101 x double], [101 x double]* @zero_Ai, i64 0, i64 %25, !dbg !108
  %27 = load double, double* %26, align 8, !dbg !108
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !110
  store double %27, double* %29, align 8, !dbg !111
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !112
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !113
  %32 = load double, double* %31, align 8, !dbg !113
  %33 = call double @fabs(double %32) #1, !dbg !114
  %34 = fmul double 0x3CB0000000000000, %33, !dbg !115
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !116
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !117
  store double %34, double* %36, align 8, !dbg !118
  store i32 0, i32* %3, align 4, !dbg !119
  br label %56, !dbg !119

; <label>:37:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !120, metadata !80), !dbg !122
  %38 = load i32, i32* %4, align 4, !dbg !123
  %39 = uitofp i32 %38 to double, !dbg !123
  %40 = fmul double 4.000000e+00, %39, !dbg !124
  %41 = fsub double %40, 1.000000e+00, !dbg !125
  %42 = fmul double 0x3FF2D97C7F3321D2, %41, !dbg !126
  store double %42, double* %6, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata double* %7, metadata !127, metadata !80), !dbg !128
  %43 = load double, double* %6, align 8, !dbg !129
  %44 = call double @zero_f(double %43), !dbg !130
  store double %44, double* %7, align 8, !dbg !128
  %45 = load double, double* %7, align 8, !dbg !131
  %46 = fsub double -0.000000e+00, %45, !dbg !132
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !133
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !134
  store double %46, double* %48, align 8, !dbg !135
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !136
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !137
  %51 = load double, double* %50, align 8, !dbg !137
  %52 = call double @fabs(double %51) #1, !dbg !138
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !139
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !141
  store double %53, double* %55, align 8, !dbg !142
  store i32 0, i32* %3, align 4, !dbg !143
  br label %56, !dbg !143

; <label>:56:                                     ; preds = %16, %23, %37, %18
  %57 = load i32, i32* %3, align 4, !dbg !144
  ret i32 %57, !dbg !144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal double @zero_f(double) #0 !dbg !145 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !148, metadata !80), !dbg !149
  call void @llvm.dbg.declare(metadata double* %3, metadata !150, metadata !80), !dbg !151
  %10 = load double, double* %2, align 8, !dbg !152
  %11 = call double @pow(double %10, double 0x3FE5555555555555) #5, !dbg !153
  store double %11, double* %3, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata double* %4, metadata !154, metadata !80), !dbg !155
  %12 = load double, double* %2, align 8, !dbg !156
  %13 = load double, double* %2, align 8, !dbg !157
  %14 = fmul double %12, %13, !dbg !158
  %15 = fdiv double 1.000000e+00, %14, !dbg !159
  store double %15, double* %4, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata double* %5, metadata !160, metadata !80), !dbg !161
  %16 = load double, double* %4, align 8, !dbg !162
  %17 = load double, double* %4, align 8, !dbg !163
  %18 = fmul double %16, %17, !dbg !164
  store double %18, double* %5, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %6, metadata !165, metadata !80), !dbg !166
  %19 = load double, double* %4, align 8, !dbg !167
  %20 = fmul double 0x3FBAAAAAAAAAAAAB, %19, !dbg !168
  store double %20, double* %6, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %7, metadata !169, metadata !80), !dbg !170
  %21 = load double, double* %5, align 8, !dbg !171
  %22 = fmul double 0xBFC1C71C71C71C72, %21, !dbg !172
  store double %22, double* %7, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata double* %8, metadata !173, metadata !80), !dbg !174
  %23 = load double, double* %5, align 8, !dbg !175
  %24 = fmul double 0x3FEDC148B0FCD6EA, %23, !dbg !176
  %25 = load double, double* %4, align 8, !dbg !177
  %26 = fmul double %24, %25, !dbg !178
  store double %26, double* %8, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata double* %9, metadata !179, metadata !80), !dbg !180
  %27 = load double, double* %5, align 8, !dbg !181
  %28 = fmul double 0xC02F04AFFD978D9F, %27, !dbg !182
  %29 = load double, double* %5, align 8, !dbg !183
  %30 = fmul double %28, %29, !dbg !184
  store double %30, double* %9, align 8, !dbg !180
  %31 = load double, double* %3, align 8, !dbg !185
  %32 = load double, double* %6, align 8, !dbg !186
  %33 = fadd double 1.000000e+00, %32, !dbg !187
  %34 = load double, double* %7, align 8, !dbg !188
  %35 = fadd double %33, %34, !dbg !189
  %36 = load double, double* %8, align 8, !dbg !190
  %37 = fadd double %35, %36, !dbg !191
  %38 = load double, double* %9, align 8, !dbg !192
  %39 = fadd double %37, %38, !dbg !193
  %40 = fmul double %31, %39, !dbg !194
  ret double %40, !dbg !195
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_zero_Bi_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !196 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !197, metadata !80), !dbg !198
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !199, metadata !80), !dbg !200
  %8 = load i32, i32* %4, align 4, !dbg !201
  %9 = icmp ult i32 %8, 1, !dbg !203
  br i1 %9, label %10, label %19, !dbg !204

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !205, !llvm.loop !207

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !208
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !208
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !208
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !208
  br label %16, !dbg !208, !llvm.loop !211

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 462, i32 1), !dbg !213
  store i32 1, i32* %3, align 4, !dbg !213
  br label %56, !dbg !213
                                                  ; No predecessors!
  br label %18, !dbg !216

; <label>:18:                                     ; preds = %17
  br label %56, !dbg !218

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !dbg !219
  %21 = zext i32 %20 to i64, !dbg !219
  %22 = icmp ult i64 %21, 101, !dbg !221
  br i1 %22, label %23, label %37, !dbg !222

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !223
  %25 = zext i32 %24 to i64, !dbg !225
  %26 = getelementptr inbounds [101 x double], [101 x double]* @zero_Bi, i64 0, i64 %25, !dbg !225
  %27 = load double, double* %26, align 8, !dbg !225
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !227
  store double %27, double* %29, align 8, !dbg !228
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !229
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !230
  %32 = load double, double* %31, align 8, !dbg !230
  %33 = call double @fabs(double %32) #1, !dbg !231
  %34 = fmul double 0x3CB0000000000000, %33, !dbg !232
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !233
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !234
  store double %34, double* %36, align 8, !dbg !235
  store i32 0, i32* %3, align 4, !dbg !236
  br label %56, !dbg !236

; <label>:37:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !237, metadata !80), !dbg !239
  %38 = load i32, i32* %4, align 4, !dbg !240
  %39 = uitofp i32 %38 to double, !dbg !240
  %40 = fmul double 4.000000e+00, %39, !dbg !241
  %41 = fsub double %40, 3.000000e+00, !dbg !242
  %42 = fmul double 0x3FF2D97C7F3321D2, %41, !dbg !243
  store double %42, double* %6, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata double* %7, metadata !244, metadata !80), !dbg !245
  %43 = load double, double* %6, align 8, !dbg !246
  %44 = call double @zero_f(double %43), !dbg !247
  store double %44, double* %7, align 8, !dbg !245
  %45 = load double, double* %7, align 8, !dbg !248
  %46 = fsub double -0.000000e+00, %45, !dbg !249
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !251
  store double %46, double* %48, align 8, !dbg !252
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !253
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !254
  %51 = load double, double* %50, align 8, !dbg !254
  %52 = call double @fabs(double %51) #1, !dbg !255
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !256
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !258
  store double %53, double* %55, align 8, !dbg !259
  store i32 0, i32* %3, align 4, !dbg !260
  br label %56, !dbg !260

; <label>:56:                                     ; preds = %16, %23, %37, %18
  %57 = load i32, i32* %3, align 4, !dbg !261
  ret i32 %57, !dbg !261
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_zero_Ai_deriv_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !262 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !263, metadata !80), !dbg !264
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !265, metadata !80), !dbg !266
  %8 = load i32, i32* %4, align 4, !dbg !267
  %9 = icmp ult i32 %8, 1, !dbg !269
  br i1 %9, label %10, label %19, !dbg !270

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !271, !llvm.loop !273

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !274
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !274
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !274
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !274
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !274
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !274
  br label %16, !dbg !274, !llvm.loop !277

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 485, i32 1), !dbg !279
  store i32 1, i32* %3, align 4, !dbg !279
  br label %56, !dbg !279
                                                  ; No predecessors!
  br label %18, !dbg !282

; <label>:18:                                     ; preds = %17
  br label %56, !dbg !284

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !dbg !285
  %21 = zext i32 %20 to i64, !dbg !285
  %22 = icmp ult i64 %21, 101, !dbg !287
  br i1 %22, label %23, label %37, !dbg !288

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !289
  %25 = zext i32 %24 to i64, !dbg !291
  %26 = getelementptr inbounds [101 x double], [101 x double]* @zero_Aip, i64 0, i64 %25, !dbg !291
  %27 = load double, double* %26, align 8, !dbg !291
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !293
  store double %27, double* %29, align 8, !dbg !294
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !295
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !296
  %32 = load double, double* %31, align 8, !dbg !296
  %33 = call double @fabs(double %32) #1, !dbg !297
  %34 = fmul double 0x3CB0000000000000, %33, !dbg !298
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !300
  store double %34, double* %36, align 8, !dbg !301
  store i32 0, i32* %3, align 4, !dbg !302
  br label %56, !dbg !302

; <label>:37:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !303, metadata !80), !dbg !305
  %38 = load i32, i32* %4, align 4, !dbg !306
  %39 = uitofp i32 %38 to double, !dbg !306
  %40 = fmul double 4.000000e+00, %39, !dbg !307
  %41 = fsub double %40, 3.000000e+00, !dbg !308
  %42 = fmul double 0x3FF2D97C7F3321D2, %41, !dbg !309
  store double %42, double* %6, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata double* %7, metadata !310, metadata !80), !dbg !311
  %43 = load double, double* %6, align 8, !dbg !312
  %44 = call double @zero_g(double %43), !dbg !313
  store double %44, double* %7, align 8, !dbg !311
  %45 = load double, double* %7, align 8, !dbg !314
  %46 = fsub double -0.000000e+00, %45, !dbg !315
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !316
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !317
  store double %46, double* %48, align 8, !dbg !318
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !319
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !320
  %51 = load double, double* %50, align 8, !dbg !320
  %52 = call double @fabs(double %51) #1, !dbg !321
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !322
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !323
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !324
  store double %53, double* %55, align 8, !dbg !325
  store i32 0, i32* %3, align 4, !dbg !326
  br label %56, !dbg !326

; <label>:56:                                     ; preds = %16, %23, %37, %18
  %57 = load i32, i32* %3, align 4, !dbg !327
  ret i32 %57, !dbg !327
}

; Function Attrs: nounwind uwtable
define internal double @zero_g(double) #0 !dbg !328 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !329, metadata !80), !dbg !330
  call void @llvm.dbg.declare(metadata double* %3, metadata !331, metadata !80), !dbg !332
  %10 = load double, double* %2, align 8, !dbg !333
  %11 = call double @pow(double %10, double 0x3FE5555555555555) #5, !dbg !334
  store double %11, double* %3, align 8, !dbg !332
  call void @llvm.dbg.declare(metadata double* %4, metadata !335, metadata !80), !dbg !336
  %12 = load double, double* %2, align 8, !dbg !337
  %13 = load double, double* %2, align 8, !dbg !338
  %14 = fmul double %12, %13, !dbg !339
  %15 = fdiv double 1.000000e+00, %14, !dbg !340
  store double %15, double* %4, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata double* %5, metadata !341, metadata !80), !dbg !342
  %16 = load double, double* %4, align 8, !dbg !343
  %17 = load double, double* %4, align 8, !dbg !344
  %18 = fmul double %16, %17, !dbg !345
  store double %18, double* %5, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata double* %6, metadata !346, metadata !80), !dbg !347
  %19 = load double, double* %4, align 8, !dbg !348
  %20 = fmul double 0xBFC2AAAAAAAAAAAB, %19, !dbg !349
  store double %20, double* %6, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %7, metadata !350, metadata !80), !dbg !351
  %21 = load double, double* %5, align 8, !dbg !352
  %22 = fmul double 0x3FBF1C71C71C71C7, %21, !dbg !353
  store double %22, double* %7, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata double* %8, metadata !354, metadata !80), !dbg !355
  %23 = load double, double* %5, align 8, !dbg !356
  %24 = fmul double 0xBFEBF76D5A63DF22, %23, !dbg !357
  %25 = load double, double* %4, align 8, !dbg !358
  %26 = fmul double %24, %25, !dbg !359
  store double %26, double* %8, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata double* %9, metadata !360, metadata !80), !dbg !361
  %27 = load double, double* %5, align 8, !dbg !362
  %28 = fmul double 0x402E08A14A60801B, %27, !dbg !363
  %29 = load double, double* %5, align 8, !dbg !364
  %30 = fmul double %28, %29, !dbg !365
  store double %30, double* %9, align 8, !dbg !361
  %31 = load double, double* %3, align 8, !dbg !366
  %32 = load double, double* %6, align 8, !dbg !367
  %33 = fadd double 1.000000e+00, %32, !dbg !368
  %34 = load double, double* %7, align 8, !dbg !369
  %35 = fadd double %33, %34, !dbg !370
  %36 = load double, double* %8, align 8, !dbg !371
  %37 = fadd double %35, %36, !dbg !372
  %38 = load double, double* %9, align 8, !dbg !373
  %39 = fadd double %37, %38, !dbg !374
  %40 = fmul double %31, %39, !dbg !375
  ret double %40, !dbg !376
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_zero_Bi_deriv_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !377 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !378, metadata !80), !dbg !379
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !380, metadata !80), !dbg !381
  %8 = load i32, i32* %4, align 4, !dbg !382
  %9 = icmp ult i32 %8, 1, !dbg !384
  br i1 %9, label %10, label %19, !dbg !385

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !386, !llvm.loop !388

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !389
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !389
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !389
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !389
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !389
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !389
  br label %16, !dbg !389, !llvm.loop !392

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 508, i32 1), !dbg !394
  store i32 1, i32* %3, align 4, !dbg !394
  br label %56, !dbg !394
                                                  ; No predecessors!
  br label %18, !dbg !397

; <label>:18:                                     ; preds = %17
  br label %56, !dbg !399

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %4, align 4, !dbg !400
  %21 = zext i32 %20 to i64, !dbg !400
  %22 = icmp ult i64 %21, 51, !dbg !402
  br i1 %22, label %23, label %37, !dbg !403

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !404
  %25 = zext i32 %24 to i64, !dbg !406
  %26 = getelementptr inbounds [51 x double], [51 x double]* @zero_Bip, i64 0, i64 %25, !dbg !406
  %27 = load double, double* %26, align 8, !dbg !406
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !407
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !408
  store double %27, double* %29, align 8, !dbg !409
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !410
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !411
  %32 = load double, double* %31, align 8, !dbg !411
  %33 = call double @fabs(double %32) #1, !dbg !412
  %34 = fmul double 0x3CB0000000000000, %33, !dbg !413
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !414
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !415
  store double %34, double* %36, align 8, !dbg !416
  store i32 0, i32* %3, align 4, !dbg !417
  br label %56, !dbg !417

; <label>:37:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !418, metadata !80), !dbg !420
  %38 = load i32, i32* %4, align 4, !dbg !421
  %39 = uitofp i32 %38 to double, !dbg !421
  %40 = fmul double 4.000000e+00, %39, !dbg !422
  %41 = fsub double %40, 1.000000e+00, !dbg !423
  %42 = fmul double 0x3FF2D97C7F3321D2, %41, !dbg !424
  store double %42, double* %6, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata double* %7, metadata !425, metadata !80), !dbg !426
  %43 = load double, double* %6, align 8, !dbg !427
  %44 = call double @zero_g(double %43), !dbg !428
  store double %44, double* %7, align 8, !dbg !426
  %45 = load double, double* %7, align 8, !dbg !429
  %46 = fsub double -0.000000e+00, %45, !dbg !430
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !432
  store double %46, double* %48, align 8, !dbg !433
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !434
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !435
  %51 = load double, double* %50, align 8, !dbg !435
  %52 = call double @fabs(double %51) #1, !dbg !436
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !437
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !438
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !439
  store double %53, double* %55, align 8, !dbg !440
  store i32 0, i32* %3, align 4, !dbg !441
  br label %56, !dbg !441

; <label>:56:                                     ; preds = %16, %23, %37, %18
  %57 = load i32, i32* %3, align 4, !dbg !442
  ret i32 %57, !dbg !442
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_zero_Ai(i32) #0 !dbg !443 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !446, metadata !80), !dbg !447
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !448, metadata !80), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %5, metadata !450, metadata !80), !dbg !449
  %6 = load i32, i32* %3, align 4, !dbg !449
  %7 = call i32 @gsl_sf_airy_zero_Ai_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !449
  store i32 %7, i32* %5, align 4, !dbg !449
  %8 = load i32, i32* %5, align 4, !dbg !451
  %9 = icmp ne i32 %8, 0, !dbg !451
  br i1 %9, label %10, label %16, !dbg !449

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !453, !llvm.loop !456

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !458
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 530, i32 %12), !dbg !458
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !458
  %14 = load double, double* %13, align 8, !dbg !458
  store double %14, double* %2, align 8, !dbg !458
  br label %19, !dbg !458
                                                  ; No predecessors!
  br label %16, !dbg !461

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !463
  %18 = load double, double* %17, align 8, !dbg !463
  store double %18, double* %2, align 8, !dbg !463
  br label %19, !dbg !463

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !465
  ret double %20, !dbg !465
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_zero_Bi(i32) #0 !dbg !466 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !467, metadata !80), !dbg !468
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !469, metadata !80), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %5, metadata !471, metadata !80), !dbg !470
  %6 = load i32, i32* %3, align 4, !dbg !470
  %7 = call i32 @gsl_sf_airy_zero_Bi_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !470
  store i32 %7, i32* %5, align 4, !dbg !470
  %8 = load i32, i32* %5, align 4, !dbg !472
  %9 = icmp ne i32 %8, 0, !dbg !472
  br i1 %9, label %10, label %16, !dbg !470

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !474, !llvm.loop !477

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !479
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 535, i32 %12), !dbg !479
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !479
  %14 = load double, double* %13, align 8, !dbg !479
  store double %14, double* %2, align 8, !dbg !479
  br label %19, !dbg !479
                                                  ; No predecessors!
  br label %16, !dbg !482

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !484
  %18 = load double, double* %17, align 8, !dbg !484
  store double %18, double* %2, align 8, !dbg !484
  br label %19, !dbg !484

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !486
  ret double %20, !dbg !486
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_zero_Ai_deriv(i32) #0 !dbg !487 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !488, metadata !80), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !490, metadata !80), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %5, metadata !492, metadata !80), !dbg !491
  %6 = load i32, i32* %3, align 4, !dbg !491
  %7 = call i32 @gsl_sf_airy_zero_Ai_deriv_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !491
  store i32 %7, i32* %5, align 4, !dbg !491
  %8 = load i32, i32* %5, align 4, !dbg !493
  %9 = icmp ne i32 %8, 0, !dbg !493
  br i1 %9, label %10, label %16, !dbg !491

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !495, !llvm.loop !498

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !500
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 540, i32 %12), !dbg !500
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !500
  %14 = load double, double* %13, align 8, !dbg !500
  store double %14, double* %2, align 8, !dbg !500
  br label %19, !dbg !500
                                                  ; No predecessors!
  br label %16, !dbg !503

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !505
  %18 = load double, double* %17, align 8, !dbg !505
  store double %18, double* %2, align 8, !dbg !505
  br label %19, !dbg !505

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !507
  ret double %20, !dbg !507
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_zero_Bi_deriv(i32) #0 !dbg !508 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !509, metadata !80), !dbg !510
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !511, metadata !80), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %5, metadata !513, metadata !80), !dbg !512
  %6 = load i32, i32* %3, align 4, !dbg !512
  %7 = call i32 @gsl_sf_airy_zero_Bi_deriv_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !512
  store i32 %7, i32* %5, align 4, !dbg !512
  %8 = load i32, i32* %5, align 4, !dbg !514
  %9 = icmp ne i32 %8, 0, !dbg !514
  br i1 %9, label %10, label %16, !dbg !512

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !516, !llvm.loop !519

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !521
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 545, i32 %12), !dbg !521
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !521
  %14 = load double, double* %13, align 8, !dbg !521
  store double %14, double* %2, align 8, !dbg !521
  br label %19, !dbg !521
                                                  ; No predecessors!
  br label %16, !dbg !524

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !526
  %18 = load double, double* %17, align 8, !dbg !526
  store double %18, double* %2, align 8, !dbg !526
  br label %19, !dbg !526

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !528
  ret double %20, !dbg !528
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "airy_zero.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !47, !48, !49, !50, !56, !57, !58}
!42 = distinct !DIGlobalVariable(name: "size_zero_Ai", scope: !0, file: !1, line: 132, type: !43, isLocal: true, isDefinition: true, variable: i64 101)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 62, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!46 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!47 = distinct !DIGlobalVariable(name: "size_zero_Bi", scope: !0, file: !1, line: 238, type: !43, isLocal: true, isDefinition: true, variable: i64 101)
!48 = distinct !DIGlobalVariable(name: "size_zero_Aip", scope: !0, file: !1, line: 344, type: !43, isLocal: true, isDefinition: true, variable: i64 101)
!49 = distinct !DIGlobalVariable(name: "size_zero_Bip", scope: !0, file: !1, line: 400, type: !43, isLocal: true, isDefinition: true, variable: i64 51)
!50 = distinct !DIGlobalVariable(name: "zero_Ai", scope: !0, file: !1, line: 29, type: !51, isLocal: true, isDefinition: true, variable: [101 x double]* @zero_Ai)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 6464, align: 64, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!54 = !{!55}
!55 = !DISubrange(count: 101)
!56 = distinct !DIGlobalVariable(name: "zero_Bi", scope: !0, file: !1, line: 135, type: !51, isLocal: true, isDefinition: true, variable: [101 x double]* @zero_Bi)
!57 = distinct !DIGlobalVariable(name: "zero_Aip", scope: !0, file: !1, line: 241, type: !51, isLocal: true, isDefinition: true, variable: [101 x double]* @zero_Aip)
!58 = distinct !DIGlobalVariable(name: "zero_Bip", scope: !0, file: !1, line: 347, type: !59, isLocal: true, isDefinition: true, variable: [51 x double]* @zero_Bip)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3264, align: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 51)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"PIC Level", i32 2}
!65 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!66 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_e", scope: !1, file: !1, line: 434, type: !67, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !70, !71}
!69 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!70 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !73, line: 37, size: 128, align: 64, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !73, line: 38, baseType: !53, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !74, file: !73, line: 39, baseType: !53, size: 64, align: 64, offset: 64)
!78 = !{}
!79 = !DILocalVariable(name: "s", arg: 1, scope: !66, file: !1, line: 434, type: !70)
!80 = !DIExpression()
!81 = !DILocation(line: 434, column: 36, scope: !66)
!82 = !DILocalVariable(name: "result", arg: 2, scope: !66, file: !1, line: 434, type: !71)
!83 = !DILocation(line: 434, column: 55, scope: !66)
!84 = !DILocation(line: 438, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !66, file: !1, line: 438, column: 6)
!86 = !DILocation(line: 438, column: 8, scope: !85)
!87 = !DILocation(line: 438, column: 6, scope: !66)
!88 = !DILocation(line: 439, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 438, column: 13)
!90 = distinct !{!90, !88}
!91 = !DILocation(line: 439, column: 5, scope: !92)
!92 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 1)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 439, column: 5)
!94 = distinct !{!94, !95}
!95 = !DILocation(line: 439, column: 5, scope: !93)
!96 = !DILocation(line: 439, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 2)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 439, column: 5)
!99 = !DILocation(line: 439, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 3)
!101 = !DILocation(line: 440, column: 3, scope: !89)
!102 = !DILocation(line: 441, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !85, file: !1, line: 441, column: 11)
!104 = !DILocation(line: 441, column: 13, scope: !103)
!105 = !DILocation(line: 441, column: 11, scope: !85)
!106 = !DILocation(line: 442, column: 27, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 441, column: 29)
!108 = !DILocation(line: 442, column: 19, scope: !107)
!109 = !DILocation(line: 442, column: 5, scope: !107)
!110 = !DILocation(line: 442, column: 13, scope: !107)
!111 = !DILocation(line: 442, column: 17, scope: !107)
!112 = !DILocation(line: 443, column: 42, scope: !107)
!113 = !DILocation(line: 443, column: 50, scope: !107)
!114 = !DILocation(line: 443, column: 37, scope: !107)
!115 = !DILocation(line: 443, column: 35, scope: !107)
!116 = !DILocation(line: 443, column: 5, scope: !107)
!117 = !DILocation(line: 443, column: 13, scope: !107)
!118 = !DILocation(line: 443, column: 17, scope: !107)
!119 = !DILocation(line: 444, column: 5, scope: !107)
!120 = !DILocalVariable(name: "z", scope: !121, file: !1, line: 447, type: !52)
!121 = distinct !DILexicalBlock(scope: !103, file: !1, line: 446, column: 8)
!122 = !DILocation(line: 447, column: 18, scope: !121)
!123 = !DILocation(line: 447, column: 42, scope: !121)
!124 = !DILocation(line: 447, column: 41, scope: !121)
!125 = !DILocation(line: 447, column: 44, scope: !121)
!126 = !DILocation(line: 447, column: 35, scope: !121)
!127 = !DILocalVariable(name: "f", scope: !121, file: !1, line: 448, type: !52)
!128 = !DILocation(line: 448, column: 18, scope: !121)
!129 = !DILocation(line: 448, column: 29, scope: !121)
!130 = !DILocation(line: 448, column: 22, scope: !121)
!131 = !DILocation(line: 449, column: 20, scope: !121)
!132 = !DILocation(line: 449, column: 19, scope: !121)
!133 = !DILocation(line: 449, column: 5, scope: !121)
!134 = !DILocation(line: 449, column: 13, scope: !121)
!135 = !DILocation(line: 449, column: 17, scope: !121)
!136 = !DILocation(line: 450, column: 48, scope: !121)
!137 = !DILocation(line: 450, column: 56, scope: !121)
!138 = !DILocation(line: 450, column: 43, scope: !121)
!139 = !DILocation(line: 450, column: 41, scope: !121)
!140 = !DILocation(line: 450, column: 5, scope: !121)
!141 = !DILocation(line: 450, column: 13, scope: !121)
!142 = !DILocation(line: 450, column: 17, scope: !121)
!143 = !DILocation(line: 451, column: 5, scope: !121)
!144 = !DILocation(line: 453, column: 1, scope: !66)
!145 = distinct !DISubprogram(name: "zero_f", scope: !1, file: !1, line: 406, type: !146, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!146 = !DISubroutineType(types: !147)
!147 = !{!53, !53}
!148 = !DILocalVariable(name: "z", arg: 1, scope: !145, file: !1, line: 406, type: !53)
!149 = !DILocation(line: 406, column: 15, scope: !145)
!150 = !DILocalVariable(name: "pre", scope: !145, file: !1, line: 408, type: !52)
!151 = !DILocation(line: 408, column: 16, scope: !145)
!152 = !DILocation(line: 408, column: 26, scope: !145)
!153 = !DILocation(line: 408, column: 22, scope: !145)
!154 = !DILocalVariable(name: "zi2", scope: !145, file: !1, line: 409, type: !52)
!155 = !DILocation(line: 409, column: 16, scope: !145)
!156 = !DILocation(line: 409, column: 27, scope: !145)
!157 = !DILocation(line: 409, column: 29, scope: !145)
!158 = !DILocation(line: 409, column: 28, scope: !145)
!159 = !DILocation(line: 409, column: 25, scope: !145)
!160 = !DILocalVariable(name: "zi4", scope: !145, file: !1, line: 410, type: !52)
!161 = !DILocation(line: 410, column: 16, scope: !145)
!162 = !DILocation(line: 410, column: 22, scope: !145)
!163 = !DILocation(line: 410, column: 28, scope: !145)
!164 = !DILocation(line: 410, column: 26, scope: !145)
!165 = !DILocalVariable(name: "t1", scope: !145, file: !1, line: 411, type: !52)
!166 = !DILocation(line: 411, column: 16, scope: !145)
!167 = !DILocation(line: 411, column: 34, scope: !145)
!168 = !DILocation(line: 411, column: 32, scope: !145)
!169 = !DILocalVariable(name: "t2", scope: !145, file: !1, line: 412, type: !52)
!170 = !DILocation(line: 412, column: 16, scope: !145)
!171 = !DILocation(line: 412, column: 34, scope: !145)
!172 = !DILocation(line: 412, column: 32, scope: !145)
!173 = !DILocalVariable(name: "t3", scope: !145, file: !1, line: 413, type: !52)
!174 = !DILocation(line: 413, column: 16, scope: !145)
!175 = !DILocation(line: 413, column: 41, scope: !145)
!176 = !DILocation(line: 413, column: 39, scope: !145)
!177 = !DILocation(line: 413, column: 47, scope: !145)
!178 = !DILocation(line: 413, column: 45, scope: !145)
!179 = !DILocalVariable(name: "t4", scope: !145, file: !1, line: 414, type: !52)
!180 = !DILocation(line: 414, column: 16, scope: !145)
!181 = !DILocation(line: 414, column: 47, scope: !145)
!182 = !DILocation(line: 414, column: 45, scope: !145)
!183 = !DILocation(line: 414, column: 53, scope: !145)
!184 = !DILocation(line: 414, column: 51, scope: !145)
!185 = !DILocation(line: 415, column: 10, scope: !145)
!186 = !DILocation(line: 415, column: 23, scope: !145)
!187 = !DILocation(line: 415, column: 21, scope: !145)
!188 = !DILocation(line: 415, column: 28, scope: !145)
!189 = !DILocation(line: 415, column: 26, scope: !145)
!190 = !DILocation(line: 415, column: 33, scope: !145)
!191 = !DILocation(line: 415, column: 31, scope: !145)
!192 = !DILocation(line: 415, column: 38, scope: !145)
!193 = !DILocation(line: 415, column: 36, scope: !145)
!194 = !DILocation(line: 415, column: 14, scope: !145)
!195 = !DILocation(line: 415, column: 3, scope: !145)
!196 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_e", scope: !1, file: !1, line: 457, type: !67, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!197 = !DILocalVariable(name: "s", arg: 1, scope: !196, file: !1, line: 457, type: !70)
!198 = !DILocation(line: 457, column: 36, scope: !196)
!199 = !DILocalVariable(name: "result", arg: 2, scope: !196, file: !1, line: 457, type: !71)
!200 = !DILocation(line: 457, column: 55, scope: !196)
!201 = !DILocation(line: 461, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !1, line: 461, column: 6)
!203 = !DILocation(line: 461, column: 8, scope: !202)
!204 = !DILocation(line: 461, column: 6, scope: !196)
!205 = !DILocation(line: 462, column: 5, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 461, column: 13)
!207 = distinct !{!207, !205}
!208 = !DILocation(line: 462, column: 5, scope: !209)
!209 = !DILexicalBlockFile(scope: !210, file: !1, discriminator: 1)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 462, column: 5)
!211 = distinct !{!211, !212}
!212 = !DILocation(line: 462, column: 5, scope: !210)
!213 = !DILocation(line: 462, column: 5, scope: !214)
!214 = !DILexicalBlockFile(scope: !215, file: !1, discriminator: 2)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 462, column: 5)
!216 = !DILocation(line: 462, column: 5, scope: !217)
!217 = !DILexicalBlockFile(scope: !210, file: !1, discriminator: 3)
!218 = !DILocation(line: 463, column: 3, scope: !206)
!219 = !DILocation(line: 464, column: 11, scope: !220)
!220 = distinct !DILexicalBlock(scope: !202, file: !1, line: 464, column: 11)
!221 = !DILocation(line: 464, column: 13, scope: !220)
!222 = !DILocation(line: 464, column: 11, scope: !202)
!223 = !DILocation(line: 465, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 464, column: 29)
!225 = !DILocation(line: 465, column: 19, scope: !224)
!226 = !DILocation(line: 465, column: 5, scope: !224)
!227 = !DILocation(line: 465, column: 13, scope: !224)
!228 = !DILocation(line: 465, column: 17, scope: !224)
!229 = !DILocation(line: 466, column: 42, scope: !224)
!230 = !DILocation(line: 466, column: 50, scope: !224)
!231 = !DILocation(line: 466, column: 37, scope: !224)
!232 = !DILocation(line: 466, column: 35, scope: !224)
!233 = !DILocation(line: 466, column: 5, scope: !224)
!234 = !DILocation(line: 466, column: 13, scope: !224)
!235 = !DILocation(line: 466, column: 17, scope: !224)
!236 = !DILocation(line: 467, column: 5, scope: !224)
!237 = !DILocalVariable(name: "z", scope: !238, file: !1, line: 470, type: !52)
!238 = distinct !DILexicalBlock(scope: !220, file: !1, line: 469, column: 8)
!239 = !DILocation(line: 470, column: 18, scope: !238)
!240 = !DILocation(line: 470, column: 42, scope: !238)
!241 = !DILocation(line: 470, column: 41, scope: !238)
!242 = !DILocation(line: 470, column: 44, scope: !238)
!243 = !DILocation(line: 470, column: 35, scope: !238)
!244 = !DILocalVariable(name: "f", scope: !238, file: !1, line: 471, type: !52)
!245 = !DILocation(line: 471, column: 18, scope: !238)
!246 = !DILocation(line: 471, column: 29, scope: !238)
!247 = !DILocation(line: 471, column: 22, scope: !238)
!248 = !DILocation(line: 472, column: 20, scope: !238)
!249 = !DILocation(line: 472, column: 19, scope: !238)
!250 = !DILocation(line: 472, column: 5, scope: !238)
!251 = !DILocation(line: 472, column: 13, scope: !238)
!252 = !DILocation(line: 472, column: 17, scope: !238)
!253 = !DILocation(line: 473, column: 48, scope: !238)
!254 = !DILocation(line: 473, column: 56, scope: !238)
!255 = !DILocation(line: 473, column: 43, scope: !238)
!256 = !DILocation(line: 473, column: 41, scope: !238)
!257 = !DILocation(line: 473, column: 5, scope: !238)
!258 = !DILocation(line: 473, column: 13, scope: !238)
!259 = !DILocation(line: 473, column: 17, scope: !238)
!260 = !DILocation(line: 474, column: 5, scope: !238)
!261 = !DILocation(line: 476, column: 1, scope: !196)
!262 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv_e", scope: !1, file: !1, line: 480, type: !67, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!263 = !DILocalVariable(name: "s", arg: 1, scope: !262, file: !1, line: 480, type: !70)
!264 = !DILocation(line: 480, column: 42, scope: !262)
!265 = !DILocalVariable(name: "result", arg: 2, scope: !262, file: !1, line: 480, type: !71)
!266 = !DILocation(line: 480, column: 61, scope: !262)
!267 = !DILocation(line: 484, column: 6, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !1, line: 484, column: 6)
!269 = !DILocation(line: 484, column: 8, scope: !268)
!270 = !DILocation(line: 484, column: 6, scope: !262)
!271 = !DILocation(line: 485, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 484, column: 13)
!273 = distinct !{!273, !271}
!274 = !DILocation(line: 485, column: 5, scope: !275)
!275 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 1)
!276 = distinct !DILexicalBlock(scope: !272, file: !1, line: 485, column: 5)
!277 = distinct !{!277, !278}
!278 = !DILocation(line: 485, column: 5, scope: !276)
!279 = !DILocation(line: 485, column: 5, scope: !280)
!280 = !DILexicalBlockFile(scope: !281, file: !1, discriminator: 2)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 485, column: 5)
!282 = !DILocation(line: 485, column: 5, scope: !283)
!283 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 3)
!284 = !DILocation(line: 486, column: 3, scope: !272)
!285 = !DILocation(line: 487, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !268, file: !1, line: 487, column: 11)
!287 = !DILocation(line: 487, column: 13, scope: !286)
!288 = !DILocation(line: 487, column: 11, scope: !268)
!289 = !DILocation(line: 488, column: 28, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 487, column: 30)
!291 = !DILocation(line: 488, column: 19, scope: !290)
!292 = !DILocation(line: 488, column: 5, scope: !290)
!293 = !DILocation(line: 488, column: 13, scope: !290)
!294 = !DILocation(line: 488, column: 17, scope: !290)
!295 = !DILocation(line: 489, column: 42, scope: !290)
!296 = !DILocation(line: 489, column: 50, scope: !290)
!297 = !DILocation(line: 489, column: 37, scope: !290)
!298 = !DILocation(line: 489, column: 35, scope: !290)
!299 = !DILocation(line: 489, column: 5, scope: !290)
!300 = !DILocation(line: 489, column: 13, scope: !290)
!301 = !DILocation(line: 489, column: 17, scope: !290)
!302 = !DILocation(line: 490, column: 5, scope: !290)
!303 = !DILocalVariable(name: "z", scope: !304, file: !1, line: 493, type: !52)
!304 = distinct !DILexicalBlock(scope: !286, file: !1, line: 492, column: 8)
!305 = !DILocation(line: 493, column: 18, scope: !304)
!306 = !DILocation(line: 493, column: 42, scope: !304)
!307 = !DILocation(line: 493, column: 41, scope: !304)
!308 = !DILocation(line: 493, column: 44, scope: !304)
!309 = !DILocation(line: 493, column: 35, scope: !304)
!310 = !DILocalVariable(name: "g", scope: !304, file: !1, line: 494, type: !52)
!311 = !DILocation(line: 494, column: 18, scope: !304)
!312 = !DILocation(line: 494, column: 29, scope: !304)
!313 = !DILocation(line: 494, column: 22, scope: !304)
!314 = !DILocation(line: 495, column: 20, scope: !304)
!315 = !DILocation(line: 495, column: 19, scope: !304)
!316 = !DILocation(line: 495, column: 5, scope: !304)
!317 = !DILocation(line: 495, column: 13, scope: !304)
!318 = !DILocation(line: 495, column: 17, scope: !304)
!319 = !DILocation(line: 496, column: 48, scope: !304)
!320 = !DILocation(line: 496, column: 56, scope: !304)
!321 = !DILocation(line: 496, column: 43, scope: !304)
!322 = !DILocation(line: 496, column: 41, scope: !304)
!323 = !DILocation(line: 496, column: 5, scope: !304)
!324 = !DILocation(line: 496, column: 13, scope: !304)
!325 = !DILocation(line: 496, column: 17, scope: !304)
!326 = !DILocation(line: 497, column: 5, scope: !304)
!327 = !DILocation(line: 499, column: 1, scope: !262)
!328 = distinct !DISubprogram(name: "zero_g", scope: !1, file: !1, line: 419, type: !146, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!329 = !DILocalVariable(name: "z", arg: 1, scope: !328, file: !1, line: 419, type: !53)
!330 = !DILocation(line: 419, column: 15, scope: !328)
!331 = !DILocalVariable(name: "pre", scope: !328, file: !1, line: 421, type: !52)
!332 = !DILocation(line: 421, column: 16, scope: !328)
!333 = !DILocation(line: 421, column: 26, scope: !328)
!334 = !DILocation(line: 421, column: 22, scope: !328)
!335 = !DILocalVariable(name: "zi2", scope: !328, file: !1, line: 422, type: !52)
!336 = !DILocation(line: 422, column: 16, scope: !328)
!337 = !DILocation(line: 422, column: 27, scope: !328)
!338 = !DILocation(line: 422, column: 29, scope: !328)
!339 = !DILocation(line: 422, column: 28, scope: !328)
!340 = !DILocation(line: 422, column: 25, scope: !328)
!341 = !DILocalVariable(name: "zi4", scope: !328, file: !1, line: 423, type: !52)
!342 = !DILocation(line: 423, column: 16, scope: !328)
!343 = !DILocation(line: 423, column: 22, scope: !328)
!344 = !DILocation(line: 423, column: 28, scope: !328)
!345 = !DILocation(line: 423, column: 26, scope: !328)
!346 = !DILocalVariable(name: "t1", scope: !328, file: !1, line: 424, type: !52)
!347 = !DILocation(line: 424, column: 16, scope: !328)
!348 = !DILocation(line: 424, column: 34, scope: !328)
!349 = !DILocation(line: 424, column: 32, scope: !328)
!350 = !DILocalVariable(name: "t2", scope: !328, file: !1, line: 425, type: !52)
!351 = !DILocation(line: 425, column: 16, scope: !328)
!352 = !DILocation(line: 425, column: 36, scope: !328)
!353 = !DILocation(line: 425, column: 34, scope: !328)
!354 = !DILocalVariable(name: "t3", scope: !328, file: !1, line: 426, type: !52)
!355 = !DILocation(line: 426, column: 16, scope: !328)
!356 = !DILocation(line: 426, column: 43, scope: !328)
!357 = !DILocation(line: 426, column: 41, scope: !328)
!358 = !DILocation(line: 426, column: 49, scope: !328)
!359 = !DILocation(line: 426, column: 47, scope: !328)
!360 = !DILocalVariable(name: "t4", scope: !328, file: !1, line: 427, type: !52)
!361 = !DILocation(line: 427, column: 16, scope: !328)
!362 = !DILocation(line: 427, column: 46, scope: !328)
!363 = !DILocation(line: 427, column: 44, scope: !328)
!364 = !DILocation(line: 427, column: 52, scope: !328)
!365 = !DILocation(line: 427, column: 50, scope: !328)
!366 = !DILocation(line: 428, column: 10, scope: !328)
!367 = !DILocation(line: 428, column: 23, scope: !328)
!368 = !DILocation(line: 428, column: 21, scope: !328)
!369 = !DILocation(line: 428, column: 28, scope: !328)
!370 = !DILocation(line: 428, column: 26, scope: !328)
!371 = !DILocation(line: 428, column: 33, scope: !328)
!372 = !DILocation(line: 428, column: 31, scope: !328)
!373 = !DILocation(line: 428, column: 38, scope: !328)
!374 = !DILocation(line: 428, column: 36, scope: !328)
!375 = !DILocation(line: 428, column: 14, scope: !328)
!376 = !DILocation(line: 428, column: 3, scope: !328)
!377 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv_e", scope: !1, file: !1, line: 503, type: !67, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!378 = !DILocalVariable(name: "s", arg: 1, scope: !377, file: !1, line: 503, type: !70)
!379 = !DILocation(line: 503, column: 42, scope: !377)
!380 = !DILocalVariable(name: "result", arg: 2, scope: !377, file: !1, line: 503, type: !71)
!381 = !DILocation(line: 503, column: 61, scope: !377)
!382 = !DILocation(line: 507, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !1, line: 507, column: 6)
!384 = !DILocation(line: 507, column: 8, scope: !383)
!385 = !DILocation(line: 507, column: 6, scope: !377)
!386 = !DILocation(line: 508, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 507, column: 13)
!388 = distinct !{!388, !386}
!389 = !DILocation(line: 508, column: 5, scope: !390)
!390 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 508, column: 5)
!392 = distinct !{!392, !393}
!393 = !DILocation(line: 508, column: 5, scope: !391)
!394 = !DILocation(line: 508, column: 5, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 2)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 508, column: 5)
!397 = !DILocation(line: 508, column: 5, scope: !398)
!398 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 3)
!399 = !DILocation(line: 509, column: 3, scope: !387)
!400 = !DILocation(line: 510, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !383, file: !1, line: 510, column: 11)
!402 = !DILocation(line: 510, column: 13, scope: !401)
!403 = !DILocation(line: 510, column: 11, scope: !383)
!404 = !DILocation(line: 511, column: 28, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 510, column: 30)
!406 = !DILocation(line: 511, column: 19, scope: !405)
!407 = !DILocation(line: 511, column: 5, scope: !405)
!408 = !DILocation(line: 511, column: 13, scope: !405)
!409 = !DILocation(line: 511, column: 17, scope: !405)
!410 = !DILocation(line: 512, column: 42, scope: !405)
!411 = !DILocation(line: 512, column: 50, scope: !405)
!412 = !DILocation(line: 512, column: 37, scope: !405)
!413 = !DILocation(line: 512, column: 35, scope: !405)
!414 = !DILocation(line: 512, column: 5, scope: !405)
!415 = !DILocation(line: 512, column: 13, scope: !405)
!416 = !DILocation(line: 512, column: 17, scope: !405)
!417 = !DILocation(line: 513, column: 5, scope: !405)
!418 = !DILocalVariable(name: "z", scope: !419, file: !1, line: 516, type: !52)
!419 = distinct !DILexicalBlock(scope: !401, file: !1, line: 515, column: 8)
!420 = !DILocation(line: 516, column: 18, scope: !419)
!421 = !DILocation(line: 516, column: 42, scope: !419)
!422 = !DILocation(line: 516, column: 41, scope: !419)
!423 = !DILocation(line: 516, column: 44, scope: !419)
!424 = !DILocation(line: 516, column: 35, scope: !419)
!425 = !DILocalVariable(name: "g", scope: !419, file: !1, line: 517, type: !52)
!426 = !DILocation(line: 517, column: 18, scope: !419)
!427 = !DILocation(line: 517, column: 29, scope: !419)
!428 = !DILocation(line: 517, column: 22, scope: !419)
!429 = !DILocation(line: 518, column: 20, scope: !419)
!430 = !DILocation(line: 518, column: 19, scope: !419)
!431 = !DILocation(line: 518, column: 5, scope: !419)
!432 = !DILocation(line: 518, column: 13, scope: !419)
!433 = !DILocation(line: 518, column: 17, scope: !419)
!434 = !DILocation(line: 519, column: 48, scope: !419)
!435 = !DILocation(line: 519, column: 56, scope: !419)
!436 = !DILocation(line: 519, column: 43, scope: !419)
!437 = !DILocation(line: 519, column: 41, scope: !419)
!438 = !DILocation(line: 519, column: 5, scope: !419)
!439 = !DILocation(line: 519, column: 13, scope: !419)
!440 = !DILocation(line: 519, column: 17, scope: !419)
!441 = !DILocation(line: 520, column: 5, scope: !419)
!442 = !DILocation(line: 522, column: 1, scope: !377)
!443 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai", scope: !1, file: !1, line: 528, type: !444, isLocal: false, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!444 = !DISubroutineType(types: !445)
!445 = !{!53, !70}
!446 = !DILocalVariable(name: "s", arg: 1, scope: !443, file: !1, line: 528, type: !70)
!447 = !DILocation(line: 528, column: 41, scope: !443)
!448 = !DILocalVariable(name: "result", scope: !443, file: !1, line: 530, type: !72)
!449 = !DILocation(line: 530, column: 3, scope: !443)
!450 = !DILocalVariable(name: "status", scope: !443, file: !1, line: 530, type: !69)
!451 = !DILocation(line: 530, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !443, file: !1, line: 530, column: 3)
!453 = !DILocation(line: 530, column: 3, scope: !454)
!454 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 1)
!455 = distinct !DILexicalBlock(scope: !452, file: !1, line: 530, column: 3)
!456 = distinct !{!456, !457}
!457 = !DILocation(line: 530, column: 3, scope: !455)
!458 = !DILocation(line: 530, column: 3, scope: !459)
!459 = !DILexicalBlockFile(scope: !460, file: !1, discriminator: 2)
!460 = distinct !DILexicalBlock(scope: !455, file: !1, line: 530, column: 3)
!461 = !DILocation(line: 530, column: 3, scope: !462)
!462 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 3)
!463 = !DILocation(line: 530, column: 3, scope: !464)
!464 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!465 = !DILocation(line: 531, column: 1, scope: !443)
!466 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi", scope: !1, file: !1, line: 533, type: !444, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!467 = !DILocalVariable(name: "s", arg: 1, scope: !466, file: !1, line: 533, type: !70)
!468 = !DILocation(line: 533, column: 41, scope: !466)
!469 = !DILocalVariable(name: "result", scope: !466, file: !1, line: 535, type: !72)
!470 = !DILocation(line: 535, column: 3, scope: !466)
!471 = !DILocalVariable(name: "status", scope: !466, file: !1, line: 535, type: !69)
!472 = !DILocation(line: 535, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !1, line: 535, column: 3)
!474 = !DILocation(line: 535, column: 3, scope: !475)
!475 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!476 = distinct !DILexicalBlock(scope: !473, file: !1, line: 535, column: 3)
!477 = distinct !{!477, !478}
!478 = !DILocation(line: 535, column: 3, scope: !476)
!479 = !DILocation(line: 535, column: 3, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 2)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 535, column: 3)
!482 = !DILocation(line: 535, column: 3, scope: !483)
!483 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 3)
!484 = !DILocation(line: 535, column: 3, scope: !485)
!485 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 4)
!486 = !DILocation(line: 536, column: 1, scope: !466)
!487 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Ai_deriv", scope: !1, file: !1, line: 538, type: !444, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!488 = !DILocalVariable(name: "s", arg: 1, scope: !487, file: !1, line: 538, type: !70)
!489 = !DILocation(line: 538, column: 47, scope: !487)
!490 = !DILocalVariable(name: "result", scope: !487, file: !1, line: 540, type: !72)
!491 = !DILocation(line: 540, column: 3, scope: !487)
!492 = !DILocalVariable(name: "status", scope: !487, file: !1, line: 540, type: !69)
!493 = !DILocation(line: 540, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !1, line: 540, column: 3)
!495 = !DILocation(line: 540, column: 3, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 540, column: 3)
!498 = distinct !{!498, !499}
!499 = !DILocation(line: 540, column: 3, scope: !497)
!500 = !DILocation(line: 540, column: 3, scope: !501)
!501 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 2)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 540, column: 3)
!503 = !DILocation(line: 540, column: 3, scope: !504)
!504 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 3)
!505 = !DILocation(line: 540, column: 3, scope: !506)
!506 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 4)
!507 = !DILocation(line: 541, column: 1, scope: !487)
!508 = distinct !DISubprogram(name: "gsl_sf_airy_zero_Bi_deriv", scope: !1, file: !1, line: 543, type: !444, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !78)
!509 = !DILocalVariable(name: "s", arg: 1, scope: !508, file: !1, line: 543, type: !70)
!510 = !DILocation(line: 543, column: 47, scope: !508)
!511 = !DILocalVariable(name: "result", scope: !508, file: !1, line: 545, type: !72)
!512 = !DILocation(line: 545, column: 3, scope: !508)
!513 = !DILocalVariable(name: "status", scope: !508, file: !1, line: 545, type: !69)
!514 = !DILocation(line: 545, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !1, line: 545, column: 3)
!516 = !DILocation(line: 545, column: 3, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 545, column: 3)
!519 = distinct !{!519, !520}
!520 = !DILocation(line: 545, column: 3, scope: !518)
!521 = !DILocation(line: 545, column: 3, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 545, column: 3)
!524 = !DILocation(line: 545, column: 3, scope: !525)
!525 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!526 = !DILocation(line: 545, column: 3, scope: !527)
!527 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!528 = !DILocation(line: 546, column: 1, scope: !508)
