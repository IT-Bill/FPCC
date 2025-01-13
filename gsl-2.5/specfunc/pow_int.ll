; ModuleID = 'pow_int.c'
source_filename = "pow_int.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pow_int.c\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"gsl_sf_pow_int_e(x, n, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_pow_int_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !58, metadata !59), !dbg !60
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !61, metadata !59), !dbg !62
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !63, metadata !59), !dbg !64
  call void @llvm.dbg.declare(metadata double* %8, metadata !65, metadata !59), !dbg !66
  store double 1.000000e+00, double* %8, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %9, metadata !67, metadata !59), !dbg !68
  store i32 0, i32* %9, align 4, !dbg !68
  %11 = load i32, i32* %6, align 4, !dbg !69
  %12 = icmp slt i32 %11, 0, !dbg !71
  br i1 %12, label %13, label %41, !dbg !72

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4, !dbg !73
  %15 = sub nsw i32 0, %14, !dbg !75
  store i32 %15, i32* %6, align 4, !dbg !76
  %16 = load double, double* %5, align 8, !dbg !77
  %17 = fcmp oeq double %16, 0.000000e+00, !dbg !79
  br i1 %17, label %18, label %38, !dbg !80

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata double* %10, metadata !81, metadata !59), !dbg !83
  %19 = load double, double* %5, align 8, !dbg !84
  %20 = fdiv double 1.000000e+00, %19, !dbg !85
  store double %20, double* %10, align 8, !dbg !83
  %21 = load i32, i32* %6, align 4, !dbg !86
  %22 = srem i32 %21, 2, !dbg !87
  %23 = icmp ne i32 %22, 0, !dbg !87
  br i1 %23, label %24, label %26, !dbg !88

; <label>:24:                                     ; preds = %18
  %25 = load double, double* %10, align 8, !dbg !89
  br label %30, !dbg !91

; <label>:26:                                     ; preds = %18
  %27 = load double, double* %10, align 8, !dbg !92
  %28 = load double, double* %10, align 8, !dbg !94
  %29 = fmul double %27, %28, !dbg !95
  br label %30, !dbg !96

; <label>:30:                                     ; preds = %26, %24
  %31 = phi double [ %25, %24 ], [ %29, %26 ], !dbg !97
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !99
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !100
  store double %31, double* %33, align 8, !dbg !101
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !102
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !103
  store double 0x7FF0000000000000, double* %35, align 8, !dbg !104
  br label %36, !dbg !105, !llvm.loop !106

; <label>:36:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 45, i32 16), !dbg !107
  store i32 16, i32* %4, align 4, !dbg !107
  br label %74, !dbg !107
                                                  ; No predecessors!
  br label %38, !dbg !110

; <label>:38:                                     ; preds = %37, %13
  %39 = load double, double* %5, align 8, !dbg !111
  %40 = fdiv double 1.000000e+00, %39, !dbg !112
  store double %40, double* %5, align 8, !dbg !113
  br label %41, !dbg !114

; <label>:41:                                     ; preds = %38, %3
  br label %42, !dbg !115, !llvm.loop !116

; <label>:42:                                     ; preds = %58, %41
  %43 = load i32, i32* %6, align 4, !dbg !117
  %44 = and i32 %43, 1, !dbg !117
  %45 = icmp ne i32 %44, 0, !dbg !117
  br i1 %45, label %46, label %50, !dbg !120

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %5, align 8, !dbg !121
  %48 = load double, double* %8, align 8, !dbg !123
  %49 = fmul double %48, %47, !dbg !123
  store double %49, double* %8, align 8, !dbg !123
  br label %50, !dbg !124

; <label>:50:                                     ; preds = %46, %42
  %51 = load i32, i32* %6, align 4, !dbg !125
  %52 = ashr i32 %51, 1, !dbg !125
  store i32 %52, i32* %6, align 4, !dbg !125
  %53 = load double, double* %5, align 8, !dbg !126
  %54 = load double, double* %5, align 8, !dbg !127
  %55 = fmul double %54, %53, !dbg !127
  store double %55, double* %5, align 8, !dbg !127
  %56 = load i32, i32* %9, align 4, !dbg !128
  %57 = add nsw i32 %56, 1, !dbg !128
  store i32 %57, i32* %9, align 4, !dbg !128
  br label %58, !dbg !129

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %6, align 4, !dbg !130
  %60 = icmp ne i32 %59, 0, !dbg !132
  br i1 %60, label %42, label %61, !dbg !132, !llvm.loop !116

; <label>:61:                                     ; preds = %58
  %62 = load double, double* %8, align 8, !dbg !133
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !134
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !135
  store double %62, double* %64, align 8, !dbg !136
  %65 = load i32, i32* %9, align 4, !dbg !137
  %66 = sitofp i32 %65 to double, !dbg !137
  %67 = fadd double %66, 1.000000e+00, !dbg !138
  %68 = fmul double 0x3CC0000000000000, %67, !dbg !139
  %69 = load double, double* %8, align 8, !dbg !140
  %70 = call double @fabs(double %69) #1, !dbg !141
  %71 = fmul double %68, %70, !dbg !142
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !144
  store double %71, double* %73, align 8, !dbg !145
  store i32 0, i32* %4, align 4, !dbg !146
  br label %74, !dbg !146

; <label>:74:                                     ; preds = %61, %36
  %75 = load i32, i32* %4, align 4, !dbg !147
  ret i32 %75, !dbg !147
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_pow_int(double, i32) #0 !dbg !148 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !153, metadata !59), !dbg !154
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !155, metadata !59), !dbg !156
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !157, metadata !59), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %7, metadata !159, metadata !59), !dbg !158
  %8 = load double, double* %4, align 8, !dbg !158
  %9 = load i32, i32* %5, align 4, !dbg !158
  %10 = call i32 @gsl_sf_pow_int_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !158
  store i32 %10, i32* %7, align 4, !dbg !158
  %11 = load i32, i32* %7, align 4, !dbg !160
  %12 = icmp ne i32 %11, 0, !dbg !160
  br i1 %12, label %13, label %19, !dbg !158

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !162, !llvm.loop !165

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !167
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 73, i32 %15), !dbg !167
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !167
  %17 = load double, double* %16, align 8, !dbg !167
  store double %17, double* %3, align 8, !dbg !167
  br label %22, !dbg !167
                                                  ; No predecessors!
  br label %19, !dbg !170

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !172
  %21 = load double, double* %20, align 8, !dbg !172
  store double %21, double* %3, align 8, !dbg !172
  br label %22, !dbg !172

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !174
  ret double %23, !dbg !174
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "pow_int.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!45 = distinct !DISubprogram(name: "gsl_sf_pow_int_e", scope: !1, file: !1, line: 30, type: !46, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !48, !50}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !49, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 30, type: !49)
!59 = !DIExpression()
!60 = !DILocation(line: 30, column: 29, scope: !45)
!61 = !DILocalVariable(name: "n", arg: 2, scope: !45, file: !1, line: 30, type: !48)
!62 = !DILocation(line: 30, column: 36, scope: !45)
!63 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 30, type: !50)
!64 = !DILocation(line: 30, column: 55, scope: !45)
!65 = !DILocalVariable(name: "value", scope: !45, file: !1, line: 32, type: !49)
!66 = !DILocation(line: 32, column: 10, scope: !45)
!67 = !DILocalVariable(name: "count", scope: !45, file: !1, line: 33, type: !48)
!68 = !DILocation(line: 33, column: 7, scope: !45)
!69 = !DILocation(line: 38, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !45, file: !1, line: 38, column: 6)
!71 = !DILocation(line: 38, column: 8, scope: !70)
!72 = !DILocation(line: 38, column: 6, scope: !45)
!73 = !DILocation(line: 39, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 38, column: 13)
!75 = !DILocation(line: 39, column: 9, scope: !74)
!76 = !DILocation(line: 39, column: 7, scope: !74)
!77 = !DILocation(line: 41, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 41, column: 8)
!79 = !DILocation(line: 41, column: 10, scope: !78)
!80 = !DILocation(line: 41, column: 8, scope: !74)
!81 = !DILocalVariable(name: "u", scope: !82, file: !1, line: 42, type: !49)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 41, column: 18)
!83 = !DILocation(line: 42, column: 14, scope: !82)
!84 = !DILocation(line: 42, column: 24, scope: !82)
!85 = !DILocation(line: 42, column: 22, scope: !82)
!86 = !DILocation(line: 43, column: 22, scope: !82)
!87 = !DILocation(line: 43, column: 24, scope: !82)
!88 = !DILocation(line: 43, column: 21, scope: !82)
!89 = !DILocation(line: 43, column: 31, scope: !90)
!90 = !DILexicalBlockFile(scope: !82, file: !1, discriminator: 1)
!91 = !DILocation(line: 43, column: 21, scope: !90)
!92 = !DILocation(line: 43, column: 36, scope: !93)
!93 = !DILexicalBlockFile(scope: !82, file: !1, discriminator: 2)
!94 = !DILocation(line: 43, column: 40, scope: !93)
!95 = !DILocation(line: 43, column: 38, scope: !93)
!96 = !DILocation(line: 43, column: 21, scope: !93)
!97 = !DILocation(line: 43, column: 21, scope: !98)
!98 = !DILexicalBlockFile(scope: !82, file: !1, discriminator: 3)
!99 = !DILocation(line: 43, column: 7, scope: !98)
!100 = !DILocation(line: 43, column: 15, scope: !98)
!101 = !DILocation(line: 43, column: 19, scope: !98)
!102 = !DILocation(line: 44, column: 7, scope: !82)
!103 = !DILocation(line: 44, column: 15, scope: !82)
!104 = !DILocation(line: 44, column: 19, scope: !82)
!105 = !DILocation(line: 45, column: 7, scope: !82)
!106 = distinct !{!106, !105}
!107 = !DILocation(line: 45, column: 7, scope: !108)
!108 = !DILexicalBlockFile(scope: !109, file: !1, discriminator: 1)
!109 = distinct !DILexicalBlock(scope: !82, file: !1, line: 45, column: 7)
!110 = !DILocation(line: 46, column: 5, scope: !82)
!111 = !DILocation(line: 48, column: 13, scope: !74)
!112 = !DILocation(line: 48, column: 12, scope: !74)
!113 = !DILocation(line: 48, column: 7, scope: !74)
!114 = !DILocation(line: 49, column: 3, scope: !74)
!115 = !DILocation(line: 54, column: 3, scope: !45)
!116 = distinct !{!116, !115}
!117 = !DILocation(line: 55, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 55, column: 9)
!119 = distinct !DILexicalBlock(scope: !45, file: !1, line: 54, column: 6)
!120 = !DILocation(line: 55, column: 9, scope: !119)
!121 = !DILocation(line: 55, column: 33, scope: !122)
!122 = !DILexicalBlockFile(scope: !118, file: !1, discriminator: 1)
!123 = !DILocation(line: 55, column: 30, scope: !122)
!124 = !DILocation(line: 55, column: 24, scope: !122)
!125 = !DILocation(line: 56, column: 8, scope: !119)
!126 = !DILocation(line: 57, column: 11, scope: !119)
!127 = !DILocation(line: 57, column: 8, scope: !119)
!128 = !DILocation(line: 58, column: 6, scope: !119)
!129 = !DILocation(line: 59, column: 3, scope: !119)
!130 = !DILocation(line: 59, column: 12, scope: !131)
!131 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!132 = !DILocation(line: 59, column: 3, scope: !131)
!133 = !DILocation(line: 61, column: 17, scope: !45)
!134 = !DILocation(line: 61, column: 3, scope: !45)
!135 = !DILocation(line: 61, column: 11, scope: !45)
!136 = !DILocation(line: 61, column: 15, scope: !45)
!137 = !DILocation(line: 62, column: 42, scope: !45)
!138 = !DILocation(line: 62, column: 48, scope: !45)
!139 = !DILocation(line: 62, column: 39, scope: !45)
!140 = !DILocation(line: 62, column: 62, scope: !45)
!141 = !DILocation(line: 62, column: 57, scope: !45)
!142 = !DILocation(line: 62, column: 55, scope: !45)
!143 = !DILocation(line: 62, column: 3, scope: !45)
!144 = !DILocation(line: 62, column: 11, scope: !45)
!145 = !DILocation(line: 62, column: 15, scope: !45)
!146 = !DILocation(line: 64, column: 3, scope: !45)
!147 = !DILocation(line: 65, column: 1, scope: !45)
!148 = distinct !DISubprogram(name: "gsl_sf_pow_int", scope: !1, file: !1, line: 71, type: !149, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!149 = !DISubroutineType(types: !150)
!150 = !{!49, !151, !152}
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!153 = !DILocalVariable(name: "x", arg: 1, scope: !148, file: !1, line: 71, type: !151)
!154 = !DILocation(line: 71, column: 36, scope: !148)
!155 = !DILocalVariable(name: "n", arg: 2, scope: !148, file: !1, line: 71, type: !152)
!156 = !DILocation(line: 71, column: 49, scope: !148)
!157 = !DILocalVariable(name: "result", scope: !148, file: !1, line: 73, type: !51)
!158 = !DILocation(line: 73, column: 3, scope: !148)
!159 = !DILocalVariable(name: "status", scope: !148, file: !1, line: 73, type: !48)
!160 = !DILocation(line: 73, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !148, file: !1, line: 73, column: 3)
!162 = !DILocation(line: 73, column: 3, scope: !163)
!163 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 1)
!164 = distinct !DILexicalBlock(scope: !161, file: !1, line: 73, column: 3)
!165 = distinct !{!165, !166}
!166 = !DILocation(line: 73, column: 3, scope: !164)
!167 = !DILocation(line: 73, column: 3, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 2)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 73, column: 3)
!170 = !DILocation(line: 73, column: 3, scope: !171)
!171 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 3)
!172 = !DILocation(line: 73, column: 3, scope: !173)
!173 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 4)
!174 = !DILocation(line: 74, column: 1, scope: !148)
