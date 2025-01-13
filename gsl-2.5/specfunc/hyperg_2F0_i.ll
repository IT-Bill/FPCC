; ModuleID = 'hyperg_2F0.ll'
source_filename = "hyperg_2F0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_2F0.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_hyperg_2F0_e(a, b, x, &result)\00", align 1
@0 = private unnamed_addr constant [20 x i8] c"gsl_sf_hyperg_2F0_e\00"
@1 = private unnamed_addr constant [14 x i8] c"hyperg_2F0.ll\00"
@2 = private unnamed_addr constant [18 x i8] c"gsl_sf_hyperg_2F0\00"
@3 = private unnamed_addr constant [14 x i8] c"hyperg_2F0.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F0_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !59, metadata !60), !dbg !61
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !62, metadata !60), !dbg !63
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !66, metadata !60), !dbg !67
  %13 = load double, double* %8, align 8, !dbg !68
  %14 = fcmp olt double %13, 0.000000e+00, !dbg !70
  %15 = call i1 @fCmpInstHandler(double %13, double 0.000000e+00, i1 %14, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881488256, i32 33, i32 8), !dbg !71
  br i1 %15, label %16, label %48, !dbg !71

; <label>:16:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !72, metadata !60), !dbg !74
  call void @llvm.dbg.declare(metadata double* %11, metadata !75, metadata !60), !dbg !76
  %17 = load double, double* %8, align 8, !dbg !77
  %18 = fdiv double -1.000000e+00, %17, !dbg !78
  call void @fDivHandler(double -1.000000e+00, double %17, double %18, i64 0, i64 94051881491512, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881491984, i32 37, i32 26), !dbg !79
  %19 = load double, double* %6, align 8, !dbg !79
  %20 = call double @pow(double %18, double %19) #5, !dbg !80
  call void @callTwoArgsHandler(i32 15, double %18, double %19, double %20, i64 94051881491984, i64 94051881492344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881493144, i32 37, i32 18), !dbg !76
  store double %20, double* %11, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %12, metadata !81, metadata !60), !dbg !82
  %21 = load double, double* %6, align 8, !dbg !83
  %22 = load double, double* %6, align 8, !dbg !84
  %23 = fadd double 1.000000e+00, %22, !dbg !85
  call void @fAddHandler(double 1.000000e+00, double %22, double %23, i64 0, i64 94051881496648, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881497152, i32 38, i32 42), !dbg !86
  %24 = load double, double* %7, align 8, !dbg !86
  %25 = fsub double %23, %24, !dbg !87
  call void @fSubHandler(double %23, double %24, double %25, i64 94051881497152, i64 94051881497512, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881497920, i32 38, i32 44), !dbg !88
  %26 = load double, double* %8, align 8, !dbg !88
  %27 = fdiv double -1.000000e+00, %26, !dbg !89
  call void @fDivHandler(double -1.000000e+00, double %26, double %27, i64 0, i64 94051881498312, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881498752, i32 38, i32 52), !dbg !90
  %28 = call i32 @gsl_sf_hyperg_U_e(double %21, double %25, double %27, %struct.gsl_sf_result_struct* %10), !dbg !90
  store i32 %28, i32* %12, align 4, !dbg !82
  %29 = load double, double* %11, align 8, !dbg !91
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !92
  %31 = load double, double* %30, align 8, !dbg !92
  %32 = fmul double %29, %31, !dbg !93
  call void @fMulHandler(double %29, double %31, double %32, i64 94051881501720, i64 94051881502616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881504288, i32 39, i32 23), !dbg !94
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !94
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !95
  store double %32, double* %34, align 8, !dbg !96
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !97
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !98
  %37 = load double, double* %36, align 8, !dbg !98
  %38 = call double @fabs(double %37) #1, !dbg !99
  %39 = fmul double 0x3CB0000000000000, %38, !dbg !100
  call void @fMulHandler(double 0x3CB0000000000000, double %38, double %39, i64 0, i64 94051881509296, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881509872, i32 40, i32 35), !dbg !101
  %40 = load double, double* %11, align 8, !dbg !101
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !102
  %42 = load double, double* %41, align 8, !dbg !102
  %43 = fmul double %40, %42, !dbg !103
  call void @fMulHandler(double %40, double %42, double %43, i64 94051881510264, i64 94051881511096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881512768, i32 40, i32 61), !dbg !104
  %44 = fadd double %39, %43, !dbg !104
  call void @fAddHandler(double %39, double %43, double %44, i64 94051881509872, i64 94051881512768, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881513184, i32 40, i32 55), !dbg !105
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !105
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !106
  store double %44, double* %46, align 8, !dbg !107
  %47 = load i32, i32* %12, align 4, !dbg !108
  store i32 %47, i32* %5, align 4, !dbg !109
  br label %67, !dbg !109

; <label>:48:                                     ; preds = %4
  %49 = load double, double* %8, align 8, !dbg !110
  %50 = fcmp oeq double %49, 0.000000e+00, !dbg !112
  %51 = call i1 @fCmpInstHandler(double %49, double 0.000000e+00, i1 %50, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94051881517760, i32 43, i32 13), !dbg !113
  br i1 %51, label %52, label %57, !dbg !113

; <label>:52:                                     ; preds = %48
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !114
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !116
  store double 1.000000e+00, double* %54, align 8, !dbg !117
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !118
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %56, align 8, !dbg !120
  store i32 0, i32* %5, align 4, !dbg !121
  br label %67, !dbg !121

; <label>:57:                                     ; preds = %48
  br label %58, !dbg !122, !llvm.loop !124

; <label>:58:                                     ; preds = %57
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !125
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !125
  store double 0x7FF8000000000000, double* %60, align 8, !dbg !125
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !125
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !125
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !125
  br label %63, !dbg !125, !llvm.loop !128

; <label>:63:                                     ; preds = %58
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 52, i32 1), !dbg !130
  store i32 1, i32* %5, align 4, !dbg !130
  br label %67, !dbg !130
                                                  ; No predecessors!
  br label %65, !dbg !133

; <label>:65:                                     ; preds = %64
  br label %66

; <label>:66:                                     ; preds = %65
  br label %67

; <label>:67:                                     ; preds = %66, %63, %52, %16
  %68 = load i32, i32* %5, align 4, !dbg !135
  ret i32 %68, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare i32 @gsl_sf_hyperg_U_e(double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F0(double, double, double) #0 !dbg !136 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !139, metadata !60), !dbg !140
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !141, metadata !60), !dbg !142
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !143, metadata !60), !dbg !144
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !145, metadata !60), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %9, metadata !147, metadata !60), !dbg !146
  %10 = load double, double* %5, align 8, !dbg !146
  %11 = load double, double* %6, align 8, !dbg !146
  %12 = load double, double* %7, align 8, !dbg !146
  %13 = call i32 @gsl_sf_hyperg_2F0_e(double %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !146
  store i32 %13, i32* %9, align 4, !dbg !146
  %14 = load i32, i32* %9, align 4, !dbg !148
  %15 = icmp ne i32 %14, 0, !dbg !148
  %16 = sext i32 %14 to i64, !dbg !146
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94051881549792, i32 62, i32 3), !dbg !146
  br i1 %17, label %18, label %24, !dbg !146

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !150, !llvm.loop !153

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !155
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 62, i32 %20), !dbg !155
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !155
  %22 = load double, double* %21, align 8, !dbg !155
  store double %22, double* %4, align 8, !dbg !155
  br label %27, !dbg !155
                                                  ; No predecessors!
  br label %24, !dbg !158

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !160
  %26 = load double, double* %25, align 8, !dbg !160
  store double %26, double* %4, align 8, !dbg !160
  br label %27, !dbg !160

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !162
  ret double %28, !dbg !162
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
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "hyperg_2F0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_e", scope: !1, file: !1, line: 31, type: !46, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !51}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 31, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 31, column: 34, scope: !45)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !1, line: 31, type: !49)
!63 = !DILocation(line: 31, column: 50, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 31, type: !49)
!65 = !DILocation(line: 31, column: 66, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 31, type: !51)
!67 = !DILocation(line: 31, column: 85, scope: !45)
!68 = !DILocation(line: 33, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !45, file: !1, line: 33, column: 6)
!70 = !DILocation(line: 33, column: 8, scope: !69)
!71 = !DILocation(line: 33, column: 6, scope: !45)
!72 = !DILocalVariable(name: "U", scope: !73, file: !1, line: 36, type: !52)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 33, column: 15)
!74 = !DILocation(line: 36, column: 19, scope: !73)
!75 = !DILocalVariable(name: "pre", scope: !73, file: !1, line: 37, type: !50)
!76 = !DILocation(line: 37, column: 12, scope: !73)
!77 = !DILocation(line: 37, column: 27, scope: !73)
!78 = !DILocation(line: 37, column: 26, scope: !73)
!79 = !DILocation(line: 37, column: 30, scope: !73)
!80 = !DILocation(line: 37, column: 18, scope: !73)
!81 = !DILocalVariable(name: "stat_U", scope: !73, file: !1, line: 38, type: !48)
!82 = !DILocation(line: 38, column: 9, scope: !73)
!83 = !DILocation(line: 38, column: 36, scope: !73)
!84 = !DILocation(line: 38, column: 43, scope: !73)
!85 = !DILocation(line: 38, column: 42, scope: !73)
!86 = !DILocation(line: 38, column: 45, scope: !73)
!87 = !DILocation(line: 38, column: 44, scope: !73)
!88 = !DILocation(line: 38, column: 53, scope: !73)
!89 = !DILocation(line: 38, column: 52, scope: !73)
!90 = !DILocation(line: 38, column: 18, scope: !73)
!91 = !DILocation(line: 39, column: 19, scope: !73)
!92 = !DILocation(line: 39, column: 27, scope: !73)
!93 = !DILocation(line: 39, column: 23, scope: !73)
!94 = !DILocation(line: 39, column: 5, scope: !73)
!95 = !DILocation(line: 39, column: 13, scope: !73)
!96 = !DILocation(line: 39, column: 17, scope: !73)
!97 = !DILocation(line: 40, column: 42, scope: !73)
!98 = !DILocation(line: 40, column: 50, scope: !73)
!99 = !DILocation(line: 40, column: 37, scope: !73)
!100 = !DILocation(line: 40, column: 35, scope: !73)
!101 = !DILocation(line: 40, column: 57, scope: !73)
!102 = !DILocation(line: 40, column: 65, scope: !73)
!103 = !DILocation(line: 40, column: 61, scope: !73)
!104 = !DILocation(line: 40, column: 55, scope: !73)
!105 = !DILocation(line: 40, column: 5, scope: !73)
!106 = !DILocation(line: 40, column: 13, scope: !73)
!107 = !DILocation(line: 40, column: 17, scope: !73)
!108 = !DILocation(line: 41, column: 12, scope: !73)
!109 = !DILocation(line: 41, column: 5, scope: !73)
!110 = !DILocation(line: 43, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !69, file: !1, line: 43, column: 11)
!112 = !DILocation(line: 43, column: 13, scope: !111)
!113 = !DILocation(line: 43, column: 11, scope: !69)
!114 = !DILocation(line: 44, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 43, column: 21)
!116 = !DILocation(line: 44, column: 13, scope: !115)
!117 = !DILocation(line: 44, column: 17, scope: !115)
!118 = !DILocation(line: 45, column: 5, scope: !115)
!119 = !DILocation(line: 45, column: 13, scope: !115)
!120 = !DILocation(line: 45, column: 17, scope: !115)
!121 = !DILocation(line: 46, column: 5, scope: !115)
!122 = !DILocation(line: 52, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 48, column: 8)
!124 = distinct !{!124, !122}
!125 = !DILocation(line: 52, column: 5, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 52, column: 5)
!128 = distinct !{!128, !129}
!129 = !DILocation(line: 52, column: 5, scope: !127)
!130 = !DILocation(line: 52, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 2)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 52, column: 5)
!133 = !DILocation(line: 52, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 3)
!135 = !DILocation(line: 54, column: 1, scope: !45)
!136 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0", scope: !1, file: !1, line: 60, type: !137, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!137 = !DISubroutineType(types: !138)
!138 = !{!50, !49, !49, !49}
!139 = !DILocalVariable(name: "a", arg: 1, scope: !136, file: !1, line: 60, type: !49)
!140 = !DILocation(line: 60, column: 39, scope: !136)
!141 = !DILocalVariable(name: "b", arg: 2, scope: !136, file: !1, line: 60, type: !49)
!142 = !DILocation(line: 60, column: 55, scope: !136)
!143 = !DILocalVariable(name: "x", arg: 3, scope: !136, file: !1, line: 60, type: !49)
!144 = !DILocation(line: 60, column: 71, scope: !136)
!145 = !DILocalVariable(name: "result", scope: !136, file: !1, line: 62, type: !52)
!146 = !DILocation(line: 62, column: 3, scope: !136)
!147 = !DILocalVariable(name: "status", scope: !136, file: !1, line: 62, type: !48)
!148 = !DILocation(line: 62, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !136, file: !1, line: 62, column: 3)
!150 = !DILocation(line: 62, column: 3, scope: !151)
!151 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 1)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 62, column: 3)
!153 = distinct !{!153, !154}
!154 = !DILocation(line: 62, column: 3, scope: !152)
!155 = !DILocation(line: 62, column: 3, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 2)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 62, column: 3)
!158 = !DILocation(line: 62, column: 3, scope: !159)
!159 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 3)
!160 = !DILocation(line: 62, column: 3, scope: !161)
!161 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 4)
!162 = !DILocation(line: 63, column: 1, scope: !136)
