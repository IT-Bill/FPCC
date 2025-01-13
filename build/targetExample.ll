; ModuleID = 'src/targetExample.c'
source_filename = "src/targetExample.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define double @foo(double) #0 !dbg !6 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !10, metadata !11), !dbg !12
  call void @llvm.dbg.declare(metadata double* %3, metadata !13, metadata !11), !dbg !14
  %4 = load double, double* %2, align 8, !dbg !15
  %5 = fadd double %4, 1.000000e+00, !dbg !16
  %6 = fsub double %5, 2.000000e+00, !dbg !17
  store double %6, double* %3, align 8, !dbg !14
  %7 = load double, double* %3, align 8, !dbg !18
  ret double %7, !dbg !19
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define double @foo2(double) #0 !dbg !20 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !21, metadata !11), !dbg !22
  call void @llvm.dbg.declare(metadata double* %4, metadata !23, metadata !11), !dbg !24
  store double 0x3F820AB099E6A571, double* %4, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata double* %5, metadata !25, metadata !11), !dbg !26
  store double 0xBF947AAEDE26AD3A, double* %5, align 8, !dbg !26
  %11 = load double, double* %3, align 8, !dbg !27
  %12 = fcmp ole double %11, 1.000000e+00, !dbg !29
  br i1 %12, label %13, label %25, !dbg !30

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata double* %6, metadata !31, metadata !11), !dbg !33
  %14 = load double, double* %4, align 8, !dbg !34
  %15 = fadd double 2.500000e-01, %14, !dbg !35
  store double %15, double* %6, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata double* %7, metadata !36, metadata !11), !dbg !37
  %16 = load double, double* %3, align 8, !dbg !38
  %17 = load double, double* %6, align 8, !dbg !39
  %18 = fmul double %16, %17, !dbg !40
  store double %18, double* %7, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata double* %8, metadata !41, metadata !11), !dbg !42
  %19 = load double, double* %5, align 8, !dbg !43
  %20 = load double, double* %7, align 8, !dbg !44
  %21 = fsub double %19, %20, !dbg !45
  store double %21, double* %8, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata double* %9, metadata !46, metadata !11), !dbg !47
  %22 = load double, double* %8, align 8, !dbg !48
  %23 = fmul double 3.750000e-01, %22, !dbg !49
  store double %23, double* %9, align 8, !dbg !47
  %24 = load double, double* %9, align 8, !dbg !50
  store double %24, double* %2, align 8, !dbg !51
  br label %26, !dbg !51

; <label>:25:                                     ; preds = %1
  store double 0.000000e+00, double* %2, align 8, !dbg !52
  br label %26, !dbg !52

; <label>:26:                                     ; preds = %25, %13
  %27 = load double, double* %2, align 8, !dbg !54
  ret double %27, !dbg !54
}

; Function Attrs: nounwind uwtable
define double @foo3(double) #0 !dbg !55 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !56, metadata !11), !dbg !57
  call void @llvm.dbg.declare(metadata double* %3, metadata !58, metadata !11), !dbg !59
  %4 = load double, double* %2, align 8, !dbg !60
  %5 = call double @cos(double %4) #3, !dbg !61
  %6 = fsub double 1.000000e+00, %5, !dbg !62
  %7 = load double, double* %2, align 8, !dbg !63
  %8 = load double, double* %2, align 8, !dbg !64
  %9 = fmul double %7, %8, !dbg !65
  %10 = fdiv double %6, %9, !dbg !66
  store double %10, double* %3, align 8, !dbg !59
  %11 = load double, double* %3, align 8, !dbg !67
  ret double %11, !dbg !68
}

; Function Attrs: nounwind
declare double @cos(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/targetExample.c", directory: "/fpcc")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !7, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9}
!9 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!10 = !DILocalVariable(name: "x", arg: 1, scope: !6, file: !1, line: 3, type: !9)
!11 = !DIExpression()
!12 = !DILocation(line: 3, column: 19, scope: !6)
!13 = !DILocalVariable(name: "val", scope: !6, file: !1, line: 4, type: !9)
!14 = !DILocation(line: 4, column: 12, scope: !6)
!15 = !DILocation(line: 4, column: 18, scope: !6)
!16 = !DILocation(line: 4, column: 20, scope: !6)
!17 = !DILocation(line: 4, column: 24, scope: !6)
!18 = !DILocation(line: 5, column: 12, scope: !6)
!19 = !DILocation(line: 5, column: 5, scope: !6)
!20 = distinct !DISubprogram(name: "foo2", scope: !1, file: !1, line: 29, type: !7, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!21 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !1, line: 29, type: !9)
!22 = !DILocation(line: 29, column: 20, scope: !20)
!23 = !DILocalVariable(name: "b", scope: !20, file: !1, line: 34, type: !9)
!24 = !DILocation(line: 34, column: 12, scope: !20)
!25 = !DILocalVariable(name: "a", scope: !20, file: !1, line: 35, type: !9)
!26 = !DILocation(line: 35, column: 12, scope: !20)
!27 = !DILocation(line: 36, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !20, file: !1, line: 36, column: 8)
!29 = !DILocation(line: 36, column: 9, scope: !28)
!30 = !DILocation(line: 36, column: 8, scope: !20)
!31 = !DILocalVariable(name: "v1", scope: !32, file: !1, line: 37, type: !9)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 36, column: 13)
!33 = !DILocation(line: 37, column: 16, scope: !32)
!34 = !DILocation(line: 37, column: 28, scope: !32)
!35 = !DILocation(line: 37, column: 26, scope: !32)
!36 = !DILocalVariable(name: "v2", scope: !32, file: !1, line: 38, type: !9)
!37 = !DILocation(line: 38, column: 16, scope: !32)
!38 = !DILocation(line: 38, column: 21, scope: !32)
!39 = !DILocation(line: 38, column: 23, scope: !32)
!40 = !DILocation(line: 38, column: 22, scope: !32)
!41 = !DILocalVariable(name: "v3", scope: !32, file: !1, line: 39, type: !9)
!42 = !DILocation(line: 39, column: 16, scope: !32)
!43 = !DILocation(line: 39, column: 21, scope: !32)
!44 = !DILocation(line: 39, column: 23, scope: !32)
!45 = !DILocation(line: 39, column: 22, scope: !32)
!46 = !DILocalVariable(name: "v4", scope: !32, file: !1, line: 40, type: !9)
!47 = !DILocation(line: 40, column: 16, scope: !32)
!48 = !DILocation(line: 40, column: 27, scope: !32)
!49 = !DILocation(line: 40, column: 26, scope: !32)
!50 = !DILocation(line: 41, column: 16, scope: !32)
!51 = !DILocation(line: 41, column: 9, scope: !32)
!52 = !DILocation(line: 44, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !28, file: !1, line: 43, column: 10)
!54 = !DILocation(line: 48, column: 1, scope: !20)
!55 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 51, type: !7, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!56 = !DILocalVariable(name: "x", arg: 1, scope: !55, file: !1, line: 51, type: !9)
!57 = !DILocation(line: 51, column: 20, scope: !55)
!58 = !DILocalVariable(name: "val", scope: !55, file: !1, line: 57, type: !9)
!59 = !DILocation(line: 57, column: 12, scope: !55)
!60 = !DILocation(line: 57, column: 25, scope: !55)
!61 = !DILocation(line: 57, column: 21, scope: !55)
!62 = !DILocation(line: 57, column: 20, scope: !55)
!63 = !DILocation(line: 57, column: 30, scope: !55)
!64 = !DILocation(line: 57, column: 32, scope: !55)
!65 = !DILocation(line: 57, column: 31, scope: !55)
!66 = !DILocation(line: 57, column: 28, scope: !55)
!67 = !DILocation(line: 58, column: 12, scope: !55)
!68 = !DILocation(line: 58, column: 5, scope: !55)
