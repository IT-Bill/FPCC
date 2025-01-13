; ModuleID = 'pow_int.ll'
source_filename = "pow_int.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pow_int.c\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"gsl_sf_pow_int_e(x, n, &result)\00", align 1
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_pow_int_e\00"
@1 = private unnamed_addr constant [11 x i8] c"pow_int.ll\00"
@2 = private unnamed_addr constant [15 x i8] c"gsl_sf_pow_int\00"
@3 = private unnamed_addr constant [11 x i8] c"pow_int.ll\00"

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
  %13 = sext i32 %11 to i64, !dbg !72
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252720576, i32 38, i32 8), !dbg !72
  br i1 %14, label %15, label %46, !dbg !72

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %6, align 4, !dbg !73
  %17 = sub nsw i32 0, %16, !dbg !75
  store i32 %17, i32* %6, align 4, !dbg !76
  %18 = load double, double* %5, align 8, !dbg !77
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !79
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252723312, i32 41, i32 10), !dbg !80
  br i1 %20, label %21, label %43, !dbg !80

; <label>:21:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata double* %10, metadata !81, metadata !59), !dbg !83
  %22 = load double, double* %5, align 8, !dbg !84
  %23 = fdiv double 1.000000e+00, %22, !dbg !85
  call void @fDivHandler(double 1.000000e+00, double %22, double %23, i64 0, i64 94649252725336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252725744, i32 42, i32 22), !dbg !83
  store double %23, double* %10, align 8, !dbg !83
  %24 = load i32, i32* %6, align 4, !dbg !86
  %25 = srem i32 %24, 2, !dbg !87
  %26 = icmp ne i32 %25, 0, !dbg !87
  %27 = sext i32 %25 to i64, !dbg !88
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 0, i1 %26, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252728672, i32 43, i32 24), !dbg !88
  br i1 %28, label %29, label %31, !dbg !88

; <label>:29:                                     ; preds = %21
  %30 = load double, double* %10, align 8, !dbg !89
  br label %35, !dbg !91

; <label>:31:                                     ; preds = %21
  %32 = load double, double* %10, align 8, !dbg !92
  %33 = load double, double* %10, align 8, !dbg !94
  %34 = fmul double %32, %33, !dbg !95
  call void @fMulHandler(double %32, double %33, double %34, i64 94649252731896, i64 94649252732216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252732624, i32 43, i32 38), !dbg !96
  br label %35, !dbg !96

; <label>:35:                                     ; preds = %31, %29
  %36 = phi double [ %30, %29 ], [ %34, %31 ], !dbg !97
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !99
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !100
  store double %36, double* %38, align 8, !dbg !101
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !102
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !103
  store double 0x7FF0000000000000, double* %40, align 8, !dbg !104
  br label %41, !dbg !105, !llvm.loop !106

; <label>:41:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 45, i32 16), !dbg !107
  store i32 16, i32* %4, align 4, !dbg !107
  br label %83, !dbg !107
                                                  ; No predecessors!
  br label %43, !dbg !110

; <label>:43:                                     ; preds = %42, %15
  %44 = load double, double* %5, align 8, !dbg !111
  %45 = fdiv double 1.000000e+00, %44, !dbg !112
  call void @fDivHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94649252745896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252746272, i32 48, i32 12), !dbg !113
  store double %45, double* %5, align 8, !dbg !113
  br label %46, !dbg !114

; <label>:46:                                     ; preds = %43, %3
  br label %47, !dbg !115, !llvm.loop !116

; <label>:47:                                     ; preds = %65, %46
  %48 = load i32, i32* %6, align 4, !dbg !117
  %49 = and i32 %48, 1, !dbg !117
  %50 = icmp ne i32 %49, 0, !dbg !117
  %51 = sext i32 %49 to i64, !dbg !120
  %52 = call i1 @iCmpInstHandler(i64 %51, i64 0, i1 %50, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252750208, i32 55, i32 9), !dbg !120
  br i1 %52, label %53, label %57, !dbg !120

; <label>:53:                                     ; preds = %47
  %54 = load double, double* %5, align 8, !dbg !121
  %55 = load double, double* %8, align 8, !dbg !123
  %56 = fmul double %55, %54, !dbg !123
  call void @fMulHandler(double %55, double %54, double %56, i64 94649252751352, i64 94649252751032, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252751760, i32 55, i32 30), !dbg !123
  store double %56, double* %8, align 8, !dbg !123
  br label %57, !dbg !124

; <label>:57:                                     ; preds = %53, %47
  %58 = load i32, i32* %6, align 4, !dbg !125
  %59 = ashr i32 %58, 1, !dbg !125
  store i32 %59, i32* %6, align 4, !dbg !125
  %60 = load double, double* %5, align 8, !dbg !126
  %61 = load double, double* %5, align 8, !dbg !127
  %62 = fmul double %61, %60, !dbg !127
  call void @fMulHandler(double %61, double %60, double %62, i64 94649252756440, i64 94649252756056, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252756848, i32 57, i32 8), !dbg !127
  store double %62, double* %5, align 8, !dbg !127
  %63 = load i32, i32* %9, align 4, !dbg !128
  %64 = add nsw i32 %63, 1, !dbg !128
  store i32 %64, i32* %9, align 4, !dbg !128
  br label %65, !dbg !129

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* %6, align 4, !dbg !130
  %67 = icmp ne i32 %66, 0, !dbg !132
  %68 = sext i32 %66 to i64, !dbg !132
  %69 = call i1 @iCmpInstHandler(i64 %68, i64 0, i1 %67, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252761696, i32 59, i32 3), !dbg !132
  br i1 %69, label %47, label %70, !dbg !132, !llvm.loop !116

; <label>:70:                                     ; preds = %65
  %71 = load double, double* %8, align 8, !dbg !133
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !134
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !135
  store double %71, double* %73, align 8, !dbg !136
  %74 = load i32, i32* %9, align 4, !dbg !137
  %75 = sitofp i32 %74 to double, !dbg !137
  %76 = fadd double %75, 1.000000e+00, !dbg !138
  call void @fAddHandler(double %75, double 1.000000e+00, double %76, i64 94649252768472, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252770176, i32 62, i32 48), !dbg !139
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !139
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 94649252770176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252770624, i32 62, i32 39), !dbg !140
  %78 = load double, double* %8, align 8, !dbg !140
  %79 = call double @fabs(double %78) #1, !dbg !141
  %80 = fmul double %77, %79, !dbg !142
  call void @fMulHandler(double %77, double %79, double %80, i64 94649252770624, i64 94649252771808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94649252772320, i32 62, i32 55), !dbg !143
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !144
  store double %80, double* %82, align 8, !dbg !145
  store i32 0, i32* %4, align 4, !dbg !146
  br label %83, !dbg !146

; <label>:83:                                     ; preds = %70, %41
  %84 = load i32, i32* %4, align 4, !dbg !147
  ret i32 %84, !dbg !147
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
  %13 = sext i32 %11 to i64, !dbg !158
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94649252787104, i32 73, i32 3), !dbg !158
  br i1 %14, label %15, label %21, !dbg !158

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !162, !llvm.loop !165

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !167
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 73, i32 %17), !dbg !167
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !167
  %19 = load double, double* %18, align 8, !dbg !167
  store double %19, double* %3, align 8, !dbg !167
  br label %24, !dbg !167
                                                  ; No predecessors!
  br label %21, !dbg !170

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !172
  %23 = load double, double* %22, align 8, !dbg !172
  store double %23, double* %3, align 8, !dbg !172
  br label %24, !dbg !172

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !174
  ret double %25, !dbg !174
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
