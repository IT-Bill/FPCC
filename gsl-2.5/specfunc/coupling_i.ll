; ModuleID = 'coupling.ll'
source_filename = "coupling.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"coupling.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, &result)\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, &result)\00", align 1
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_coupling_3j_e\00"
@1 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@2 = private unnamed_addr constant [25 x i8] c"triangle_selection_fails\00"
@3 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@4 = private unnamed_addr constant [18 x i8] c"m_selection_fails\00"
@5 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@6 = private unnamed_addr constant [8 x i8] c"locMax3\00"
@7 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@8 = private unnamed_addr constant [8 x i8] c"locMin3\00"
@9 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@10 = private unnamed_addr constant [21 x i8] c"gsl_sf_coupling_6j_e\00"
@11 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@12 = private unnamed_addr constant [6 x i8] c"delta\00"
@13 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@14 = private unnamed_addr constant [8 x i8] c"locMin5\00"
@15 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@16 = private unnamed_addr constant [25 x i8] c"gsl_sf_coupling_RacahW_e\00"
@17 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@18 = private unnamed_addr constant [21 x i8] c"gsl_sf_coupling_9j_e\00"
@19 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@20 = private unnamed_addr constant [19 x i8] c"gsl_sf_coupling_3j\00"
@21 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@22 = private unnamed_addr constant [19 x i8] c"gsl_sf_coupling_6j\00"
@23 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@24 = private unnamed_addr constant [23 x i8] c"gsl_sf_coupling_RacahW\00"
@25 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"
@26 = private unnamed_addr constant [19 x i8] c"gsl_sf_coupling_9j\00"
@27 = private unnamed_addr constant [12 x i8] c"coupling.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_3j_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  %38 = alloca %struct.gsl_sf_result_struct, align 8
  %39 = alloca %struct.gsl_sf_result_struct, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca %struct.gsl_sf_result_struct, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !58, metadata !59), !dbg !60
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !61, metadata !59), !dbg !62
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !63, metadata !59), !dbg !64
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !65, metadata !59), !dbg !66
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !67, metadata !59), !dbg !68
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !69, metadata !59), !dbg !70
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %15, metadata !71, metadata !59), !dbg !72
  %45 = load i32, i32* %9, align 4, !dbg !73
  %46 = icmp slt i32 %45, 0, !dbg !75
  %47 = sext i32 %45 to i64, !dbg !76
  %48 = call i1 @iCmpInstHandler(i64 %47, i64 0, i1 %46, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593197728, i32 119, i32 13), !dbg !76
  br i1 %48, label %59, label %49, !dbg !76

; <label>:49:                                     ; preds = %7
  %50 = load i32, i32* %10, align 4, !dbg !77
  %51 = icmp slt i32 %50, 0, !dbg !79
  %52 = sext i32 %50 to i64, !dbg !80
  %53 = call i1 @iCmpInstHandler(i64 %52, i64 0, i1 %51, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593199184, i32 119, i32 27), !dbg !80
  br i1 %53, label %59, label %54, !dbg !80

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %11, align 4, !dbg !81
  %56 = icmp slt i32 %55, 0, !dbg !83
  %57 = sext i32 %55 to i64, !dbg !84
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593200496, i32 119, i32 41), !dbg !84
  br i1 %58, label %59, label %68, !dbg !84

; <label>:59:                                     ; preds = %54, %49, %7
  br label %60, !dbg !85, !llvm.loop !87

; <label>:60:                                     ; preds = %59
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !88
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !88
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !88
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !88
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !88
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !88
  br label %65, !dbg !88, !llvm.loop !91

; <label>:65:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 120, i32 1), !dbg !93
  store i32 1, i32* %8, align 4, !dbg !93
  br label %395, !dbg !93
                                                  ; No predecessors!
  br label %67, !dbg !96

; <label>:67:                                     ; preds = %66
  br label %395, !dbg !98

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %9, align 4, !dbg !99
  %70 = load i32, i32* %10, align 4, !dbg !101
  %71 = load i32, i32* %11, align 4, !dbg !102
  %72 = call i32 @triangle_selection_fails(i32 %69, i32 %70, i32 %71), !dbg !103
  %73 = icmp ne i32 %72, 0, !dbg !103
  %74 = sext i32 %72 to i64, !dbg !104
  %75 = call i1 @iCmpInstHandler(i64 %74, i64 0, i1 %73, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593219232, i32 122, i32 15), !dbg !104
  br i1 %75, label %87, label %76, !dbg !104

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %9, align 4, !dbg !105
  %78 = load i32, i32* %10, align 4, !dbg !107
  %79 = load i32, i32* %11, align 4, !dbg !108
  %80 = load i32, i32* %12, align 4, !dbg !109
  %81 = load i32, i32* %13, align 4, !dbg !110
  %82 = load i32, i32* %14, align 4, !dbg !111
  %83 = call i32 @m_selection_fails(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82), !dbg !112
  %84 = icmp ne i32 %83, 0, !dbg !112
  %85 = sext i32 %83 to i64, !dbg !113
  %86 = call i1 @iCmpInstHandler(i64 %85, i64 0, i1 %84, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593224864, i32 123, i32 15), !dbg !113
  br i1 %86, label %87, label %92, !dbg !113

; <label>:87:                                     ; preds = %76, %68
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !114
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !116
  store double 0.000000e+00, double* %89, align 8, !dbg !117
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !118
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %91, align 8, !dbg !120
  store i32 0, i32* %8, align 4, !dbg !121
  br label %395, !dbg !121

; <label>:92:                                     ; preds = %76
  %93 = load i32, i32* %12, align 4, !dbg !122
  %94 = icmp eq i32 %93, 0, !dbg !124
  %95 = sext i32 %93 to i64, !dbg !125
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593232000, i32 129, i32 20), !dbg !125
  br i1 %96, label %97, label %122, !dbg !125

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %13, align 4, !dbg !126
  %99 = icmp eq i32 %98, 0, !dbg !128
  %100 = sext i32 %98 to i64, !dbg !129
  %101 = call i1 @iCmpInstHandler(i64 %100, i64 0, i1 %99, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593233456, i32 129, i32 35), !dbg !129
  br i1 %101, label %102, label %122, !dbg !129

; <label>:102:                                    ; preds = %97
  %103 = load i32, i32* %14, align 4, !dbg !130
  %104 = icmp eq i32 %103, 0, !dbg !132
  %105 = sext i32 %103 to i64, !dbg !133
  %106 = call i1 @iCmpInstHandler(i64 %105, i64 0, i1 %104, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593234768, i32 129, i32 50), !dbg !133
  br i1 %106, label %107, label %122, !dbg !133

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* %9, align 4, !dbg !134
  %109 = load i32, i32* %10, align 4, !dbg !135
  %110 = add nsw i32 %108, %109, !dbg !136
  %111 = load i32, i32* %11, align 4, !dbg !137
  %112 = add nsw i32 %110, %111, !dbg !138
  %113 = srem i32 %112, 4, !dbg !139
  %114 = icmp eq i32 %113, 2, !dbg !140
  %115 = sext i32 %113 to i64, !dbg !141
  %116 = call i1 @iCmpInstHandler(i64 %115, i64 2, i1 %114, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593238224, i32 130, i32 48), !dbg !141
  br i1 %116, label %117, label %122, !dbg !141

; <label>:117:                                    ; preds = %107
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !143
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !145
  store double 0.000000e+00, double* %119, align 8, !dbg !146
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !147
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !148
  store double 0.000000e+00, double* %121, align 8, !dbg !149
  store i32 0, i32* %8, align 4, !dbg !150
  br label %395, !dbg !150

; <label>:122:                                    ; preds = %107, %102, %97, %92
  call void @llvm.dbg.declare(metadata i32* %16, metadata !151, metadata !59), !dbg !153
  %123 = load i32, i32* %9, align 4, !dbg !154
  %124 = sub nsw i32 0, %123, !dbg !155
  %125 = load i32, i32* %10, align 4, !dbg !156
  %126 = add nsw i32 %124, %125, !dbg !157
  %127 = load i32, i32* %11, align 4, !dbg !158
  %128 = add nsw i32 %126, %127, !dbg !159
  %129 = sdiv i32 %128, 2, !dbg !160
  store i32 %129, i32* %16, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %17, metadata !161, metadata !59), !dbg !162
  %130 = load i32, i32* %9, align 4, !dbg !163
  %131 = load i32, i32* %10, align 4, !dbg !164
  %132 = sub nsw i32 %130, %131, !dbg !165
  %133 = load i32, i32* %11, align 4, !dbg !166
  %134 = add nsw i32 %132, %133, !dbg !167
  %135 = sdiv i32 %134, 2, !dbg !168
  store i32 %135, i32* %17, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %18, metadata !169, metadata !59), !dbg !170
  %136 = load i32, i32* %9, align 4, !dbg !171
  %137 = load i32, i32* %10, align 4, !dbg !172
  %138 = add nsw i32 %136, %137, !dbg !173
  %139 = load i32, i32* %11, align 4, !dbg !174
  %140 = sub nsw i32 %138, %139, !dbg !175
  %141 = sdiv i32 %140, 2, !dbg !176
  store i32 %141, i32* %18, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %19, metadata !177, metadata !59), !dbg !178
  %142 = load i32, i32* %9, align 4, !dbg !179
  %143 = load i32, i32* %12, align 4, !dbg !180
  %144 = sub nsw i32 %142, %143, !dbg !181
  %145 = sdiv i32 %144, 2, !dbg !182
  store i32 %145, i32* %19, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %20, metadata !183, metadata !59), !dbg !184
  %146 = load i32, i32* %10, align 4, !dbg !185
  %147 = load i32, i32* %13, align 4, !dbg !186
  %148 = sub nsw i32 %146, %147, !dbg !187
  %149 = sdiv i32 %148, 2, !dbg !188
  store i32 %149, i32* %20, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %21, metadata !189, metadata !59), !dbg !190
  %150 = load i32, i32* %11, align 4, !dbg !191
  %151 = load i32, i32* %14, align 4, !dbg !192
  %152 = sub nsw i32 %150, %151, !dbg !193
  %153 = sdiv i32 %152, 2, !dbg !194
  store i32 %153, i32* %21, align 4, !dbg !190
  call void @llvm.dbg.declare(metadata i32* %22, metadata !195, metadata !59), !dbg !196
  %154 = load i32, i32* %9, align 4, !dbg !197
  %155 = load i32, i32* %12, align 4, !dbg !198
  %156 = add nsw i32 %154, %155, !dbg !199
  %157 = sdiv i32 %156, 2, !dbg !200
  store i32 %157, i32* %22, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata i32* %23, metadata !201, metadata !59), !dbg !202
  %158 = load i32, i32* %10, align 4, !dbg !203
  %159 = load i32, i32* %13, align 4, !dbg !204
  %160 = add nsw i32 %158, %159, !dbg !205
  %161 = sdiv i32 %160, 2, !dbg !206
  store i32 %161, i32* %23, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %24, metadata !207, metadata !59), !dbg !208
  %162 = load i32, i32* %11, align 4, !dbg !209
  %163 = load i32, i32* %14, align 4, !dbg !210
  %164 = add nsw i32 %162, %163, !dbg !211
  %165 = sdiv i32 %164, 2, !dbg !212
  store i32 %165, i32* %24, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %25, metadata !213, metadata !59), !dbg !214
  %166 = load i32, i32* %9, align 4, !dbg !215
  %167 = load i32, i32* %10, align 4, !dbg !216
  %168 = add nsw i32 %166, %167, !dbg !217
  %169 = load i32, i32* %11, align 4, !dbg !218
  %170 = add nsw i32 %168, %169, !dbg !219
  %171 = sdiv i32 %170, 2, !dbg !220
  store i32 %171, i32* %25, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata i32* %26, metadata !221, metadata !59), !dbg !222
  %172 = load i32, i32* %23, align 4, !dbg !223
  %173 = load i32, i32* %21, align 4, !dbg !224
  %174 = sub nsw i32 %172, %173, !dbg !225
  %175 = load i32, i32* %19, align 4, !dbg !226
  %176 = load i32, i32* %24, align 4, !dbg !227
  %177 = sub nsw i32 %175, %176, !dbg !228
  %178 = call i32 @locMax3(i32 0, i32 %174, i32 %177), !dbg !229
  store i32 %178, i32* %26, align 4, !dbg !222
  call void @llvm.dbg.declare(metadata i32* %27, metadata !230, metadata !59), !dbg !231
  %179 = load i32, i32* %18, align 4, !dbg !232
  %180 = load i32, i32* %19, align 4, !dbg !233
  %181 = load i32, i32* %23, align 4, !dbg !234
  %182 = call i32 @locMin3(i32 %179, i32 %180, i32 %181), !dbg !235
  store i32 %182, i32* %27, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %28, metadata !236, metadata !59), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %29, metadata !238, metadata !59), !dbg !239
  %183 = load i32, i32* %26, align 4, !dbg !240
  %184 = load i32, i32* %22, align 4, !dbg !240
  %185 = sub nsw i32 %183, %184, !dbg !240
  %186 = load i32, i32* %20, align 4, !dbg !240
  %187 = add nsw i32 %185, %186, !dbg !240
  %188 = and i32 %187, 1, !dbg !240
  %189 = icmp ne i32 %188, 0, !dbg !240
  %190 = sext i32 %188 to i64, !dbg !240
  %191 = call i1 @iCmpInstHandler(i64 %190, i64 0, i1 %189, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593309040, i32 149, i32 19), !dbg !240
  %192 = select i1 %191, i32 -1, i32 1, !dbg !240
  store i32 %192, i32* %29, align 4, !dbg !239
  call void @llvm.dbg.declare(metadata i32* %30, metadata !241, metadata !59), !dbg !242
  store i32 0, i32* %30, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata double* %31, metadata !243, metadata !59), !dbg !244
  store double 0.000000e+00, double* %31, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata double* %32, metadata !245, metadata !59), !dbg !246
  store double 0.000000e+00, double* %32, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata double* %33, metadata !247, metadata !59), !dbg !248
  store double 0.000000e+00, double* %33, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !249, metadata !59), !dbg !250
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !251, metadata !59), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !253, metadata !59), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !255, metadata !59), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %38, metadata !257, metadata !59), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %39, metadata !259, metadata !59), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !261, metadata !59), !dbg !262
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !263, metadata !59), !dbg !264
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !265, metadata !59), !dbg !266
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %43, metadata !267, metadata !59), !dbg !268
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !269, metadata !59), !dbg !270
  %193 = load i32, i32* %9, align 4, !dbg !271
  %194 = load i32, i32* %18, align 4, !dbg !272
  %195 = call i32 @gsl_sf_lnchoose_e(i32 %193, i32 %194, %struct.gsl_sf_result_struct* %37), !dbg !273
  %196 = load i32, i32* %30, align 4, !dbg !274
  %197 = add nsw i32 %196, %195, !dbg !274
  store i32 %197, i32* %30, align 4, !dbg !274
  %198 = load i32, i32* %10, align 4, !dbg !275
  %199 = load i32, i32* %18, align 4, !dbg !276
  %200 = call i32 @gsl_sf_lnchoose_e(i32 %198, i32 %199, %struct.gsl_sf_result_struct* %38), !dbg !277
  %201 = load i32, i32* %30, align 4, !dbg !278
  %202 = add nsw i32 %201, %200, !dbg !278
  store i32 %202, i32* %30, align 4, !dbg !278
  %203 = load i32, i32* %25, align 4, !dbg !279
  %204 = add nsw i32 %203, 1, !dbg !280
  %205 = load i32, i32* %18, align 4, !dbg !281
  %206 = call i32 @gsl_sf_lnchoose_e(i32 %204, i32 %205, %struct.gsl_sf_result_struct* %39), !dbg !282
  %207 = load i32, i32* %30, align 4, !dbg !283
  %208 = add nsw i32 %207, %206, !dbg !283
  store i32 %208, i32* %30, align 4, !dbg !283
  %209 = load i32, i32* %9, align 4, !dbg !284
  %210 = load i32, i32* %19, align 4, !dbg !285
  %211 = call i32 @gsl_sf_lnchoose_e(i32 %209, i32 %210, %struct.gsl_sf_result_struct* %40), !dbg !286
  %212 = load i32, i32* %30, align 4, !dbg !287
  %213 = add nsw i32 %212, %211, !dbg !287
  store i32 %213, i32* %30, align 4, !dbg !287
  %214 = load i32, i32* %10, align 4, !dbg !288
  %215 = load i32, i32* %20, align 4, !dbg !289
  %216 = call i32 @gsl_sf_lnchoose_e(i32 %214, i32 %215, %struct.gsl_sf_result_struct* %41), !dbg !290
  %217 = load i32, i32* %30, align 4, !dbg !291
  %218 = add nsw i32 %217, %216, !dbg !291
  store i32 %218, i32* %30, align 4, !dbg !291
  %219 = load i32, i32* %11, align 4, !dbg !292
  %220 = load i32, i32* %24, align 4, !dbg !293
  %221 = call i32 @gsl_sf_lnchoose_e(i32 %219, i32 %220, %struct.gsl_sf_result_struct* %42), !dbg !294
  %222 = load i32, i32* %30, align 4, !dbg !295
  %223 = add nsw i32 %222, %221, !dbg !295
  store i32 %223, i32* %30, align 4, !dbg !295
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !296
  %225 = load double, double* %224, align 8, !dbg !296
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !297
  %227 = load double, double* %226, align 8, !dbg !297
  %228 = fadd double %225, %227, !dbg !298
  call void @fAddHandler(double %225, double %227, double %228, i64 94824593358520, i64 94824593360616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593362288, i32 161, i32 33), !dbg !299
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !299
  %230 = load double, double* %229, align 8, !dbg !299
  %231 = fsub double %228, %230, !dbg !300
  call void @fSubHandler(double %228, double %230, double %231, i64 94824593362288, i64 94824593363128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593364800, i32 161, i32 44), !dbg !301
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !301
  %233 = load double, double* %232, align 8, !dbg !301
  %234 = fsub double %231, %233, !dbg !302
  call void @fSubHandler(double %231, double %233, double %234, i64 94824593364800, i64 94824593365640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593367312, i32 161, i32 55), !dbg !303
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !303
  %236 = load double, double* %235, align 8, !dbg !303
  %237 = fsub double %234, %236, !dbg !304
  call void @fSubHandler(double %234, double %236, double %237, i64 94824593367312, i64 94824593368152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593369824, i32 161, i32 66), !dbg !305
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !305
  %239 = load double, double* %238, align 8, !dbg !305
  %240 = fsub double %237, %239, !dbg !306
  call void @fSubHandler(double %237, double %239, double %240, i64 94824593369824, i64 94824593370664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593372336, i32 162, i32 24), !dbg !307
  %241 = load i32, i32* %11, align 4, !dbg !307
  %242 = sitofp i32 %241 to double, !dbg !307
  %243 = fadd double %242, 1.000000e+00, !dbg !308
  call void @fAddHandler(double %242, double 1.000000e+00, double %243, i64 94824593373112, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593374880, i32 162, i32 48), !dbg !309
  %244 = call double @log(double %243) #6, !dbg !309
  call void @callOneArgHandler(i32 12, double %243, double %244, i64 94824593374880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593375600, i32 162, i32 37), !dbg !310
  %245 = fsub double %240, %244, !dbg !310
  call void @fSubHandler(double %240, double %244, double %245, i64 94824593372336, i64 94824593375600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593376112, i32 162, i32 35), !dbg !311
  %246 = fmul double 5.000000e-01, %245, !dbg !311
  call void @fMulHandler(double 5.000000e-01, double %245, double %246, i64 0, i64 94824593376112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593376624, i32 161, i32 21), !dbg !312
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !312
  store double %246, double* %247, align 8, !dbg !313
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !314
  %249 = load double, double* %248, align 8, !dbg !314
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !315
  %251 = load double, double* %250, align 8, !dbg !315
  %252 = fadd double %249, %251, !dbg !316
  call void @fAddHandler(double %249, double %251, double %252, i64 94824593378296, i64 94824593380392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593382064, i32 163, i32 33), !dbg !317
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !317
  %254 = load double, double* %253, align 8, !dbg !317
  %255 = fadd double %252, %254, !dbg !318
  call void @fAddHandler(double %252, double %254, double %255, i64 94824593382064, i64 94824593382904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593384576, i32 163, i32 44), !dbg !319
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !319
  %257 = load double, double* %256, align 8, !dbg !319
  %258 = fadd double %255, %257, !dbg !320
  call void @fAddHandler(double %255, double %257, double %258, i64 94824593384576, i64 94824593385416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593387088, i32 163, i32 55), !dbg !321
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !321
  %260 = load double, double* %259, align 8, !dbg !321
  %261 = fadd double %258, %260, !dbg !322
  call void @fAddHandler(double %258, double %260, double %261, i64 94824593387088, i64 94824593387928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593389600, i32 163, i32 66), !dbg !323
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !323
  %263 = load double, double* %262, align 8, !dbg !323
  %264 = fadd double %261, %263, !dbg !324
  call void @fAddHandler(double %261, double %263, double %264, i64 94824593389600, i64 94824593390440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593392112, i32 164, i32 24), !dbg !325
  %265 = load i32, i32* %11, align 4, !dbg !325
  %266 = sitofp i32 %265 to double, !dbg !325
  %267 = fadd double %266, 1.000000e+00, !dbg !326
  call void @fAddHandler(double %266, double 1.000000e+00, double %267, i64 94824593392888, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593394592, i32 164, i32 66), !dbg !327
  %268 = call double @log(double %267) #6, !dbg !327
  call void @callOneArgHandler(i32 12, double %267, double %268, i64 94824593394592, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593395040, i32 164, i32 55), !dbg !328
  %269 = fmul double 0x3CB0000000000000, %268, !dbg !328
  call void @fMulHandler(double 0x3CB0000000000000, double %268, double %269, i64 0, i64 94824593395040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593395584, i32 164, i32 53), !dbg !329
  %270 = fadd double %264, %269, !dbg !329
  call void @fAddHandler(double %264, double %269, double %270, i64 94824593392112, i64 94824593395584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593396000, i32 164, i32 35), !dbg !330
  %271 = fmul double 5.000000e-01, %270, !dbg !330
  call void @fMulHandler(double 5.000000e-01, double %270, double %271, i64 0, i64 94824593396000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593396448, i32 163, i32 21), !dbg !331
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !331
  store double %271, double* %272, align 8, !dbg !332
  %273 = load i32, i32* %26, align 4, !dbg !333
  store i32 %273, i32* %28, align 4, !dbg !335
  br label %274, !dbg !336

; <label>:274:                                    ; preds = %361, %122
  %275 = load i32, i32* %28, align 4, !dbg !337
  %276 = load i32, i32* %27, align 4, !dbg !340
  %277 = icmp sle i32 %275, %276, !dbg !341
  %278 = sext i32 %275 to i64, !dbg !342
  %279 = sext i32 %276 to i64, !dbg !342
  %280 = call i1 @iCmpInstHandler(i64 %278, i64 %279, i1 %277, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593265456, i32 166, i32 22), !dbg !342
  br i1 %280, label %281, label %364, !dbg !342

; <label>:281:                                    ; preds = %274
  %282 = load i32, i32* %18, align 4, !dbg !343
  %283 = load i32, i32* %28, align 4, !dbg !345
  %284 = call i32 @gsl_sf_lnchoose_e(i32 %282, i32 %283, %struct.gsl_sf_result_struct* %34), !dbg !346
  %285 = load i32, i32* %30, align 4, !dbg !347
  %286 = add nsw i32 %285, %284, !dbg !347
  store i32 %286, i32* %30, align 4, !dbg !347
  %287 = load i32, i32* %17, align 4, !dbg !348
  %288 = load i32, i32* %19, align 4, !dbg !349
  %289 = load i32, i32* %28, align 4, !dbg !350
  %290 = sub nsw i32 %288, %289, !dbg !351
  %291 = call i32 @gsl_sf_lnchoose_e(i32 %287, i32 %290, %struct.gsl_sf_result_struct* %35), !dbg !352
  %292 = load i32, i32* %30, align 4, !dbg !353
  %293 = add nsw i32 %292, %291, !dbg !353
  store i32 %293, i32* %30, align 4, !dbg !353
  %294 = load i32, i32* %16, align 4, !dbg !354
  %295 = load i32, i32* %23, align 4, !dbg !355
  %296 = load i32, i32* %28, align 4, !dbg !356
  %297 = sub nsw i32 %295, %296, !dbg !357
  %298 = call i32 @gsl_sf_lnchoose_e(i32 %294, i32 %297, %struct.gsl_sf_result_struct* %36), !dbg !358
  %299 = load i32, i32* %30, align 4, !dbg !359
  %300 = add nsw i32 %299, %298, !dbg !359
  store i32 %300, i32* %30, align 4, !dbg !359
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !360
  %302 = load double, double* %301, align 8, !dbg !360
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !361
  %304 = load double, double* %303, align 8, !dbg !361
  %305 = fadd double %302, %304, !dbg !362
  call void @fAddHandler(double %302, double %304, double %305, i64 94824593415480, i64 94824593417576, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593419248, i32 170, i32 42), !dbg !363
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !363
  %307 = load double, double* %306, align 8, !dbg !363
  %308 = fadd double %305, %307, !dbg !364
  call void @fAddHandler(double %305, double %307, double %308, i64 94824593419248, i64 94824593420088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593421760, i32 170, i32 52), !dbg !365
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !365
  %310 = load double, double* %309, align 8, !dbg !365
  %311 = fadd double %308, %310, !dbg !366
  call void @fAddHandler(double %308, double %310, double %311, i64 94824593421760, i64 94824593422600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593424272, i32 170, i32 62), !dbg !367
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !367
  %313 = load double, double* %312, align 8, !dbg !367
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !368
  %315 = load double, double* %314, align 8, !dbg !368
  %316 = fadd double %313, %315, !dbg !369
  call void @fAddHandler(double %313, double %315, double %316, i64 94824593425112, i64 94824593427208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593428880, i32 171, i32 42), !dbg !370
  %317 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !370
  %318 = load double, double* %317, align 8, !dbg !370
  %319 = fadd double %316, %318, !dbg !371
  call void @fAddHandler(double %316, double %318, double %319, i64 94824593428880, i64 94824593429720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593431392, i32 171, i32 52), !dbg !372
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !372
  %321 = load double, double* %320, align 8, !dbg !372
  %322 = fadd double %319, %321, !dbg !373
  call void @fAddHandler(double %319, double %321, double %322, i64 94824593431392, i64 94824593432232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593433904, i32 171, i32 62), !dbg !374
  %323 = call i32 @gsl_sf_exp_err_e(double %311, double %322, %struct.gsl_sf_result_struct* %43), !dbg !374
  %324 = load i32, i32* %30, align 4, !dbg !375
  %325 = add nsw i32 %324, %323, !dbg !375
  store i32 %325, i32* %30, align 4, !dbg !375
  %326 = load i32, i32* %30, align 4, !dbg !376
  %327 = icmp ne i32 %326, 0, !dbg !378
  %328 = sext i32 %326 to i64, !dbg !379
  %329 = call i1 @iCmpInstHandler(i64 %328, i64 0, i1 %327, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593437808, i32 174, i32 18), !dbg !379
  br i1 %329, label %330, label %339, !dbg !379

; <label>:330:                                    ; preds = %281
  br label %331, !dbg !380, !llvm.loop !382

; <label>:331:                                    ; preds = %330
  %332 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !383
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %332, i32 0, i32 0, !dbg !383
  store double 0x7FF0000000000000, double* %333, align 8, !dbg !383
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !383
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 1, !dbg !383
  store double 0x7FF0000000000000, double* %335, align 8, !dbg !383
  br label %336, !dbg !383, !llvm.loop !386

; <label>:336:                                    ; preds = %331
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 175, i32 16), !dbg !388
  store i32 16, i32* %8, align 4, !dbg !388
  br label %395, !dbg !388
                                                  ; No predecessors!
  br label %338, !dbg !391

; <label>:338:                                    ; preds = %337
  br label %339, !dbg !393

; <label>:339:                                    ; preds = %338, %281
  %340 = load i32, i32* %29, align 4, !dbg !394
  %341 = icmp slt i32 %340, 0, !dbg !396
  %342 = sext i32 %340 to i64, !dbg !397
  %343 = call i1 @iCmpInstHandler(i64 %342, i64 0, i1 %341, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593446624, i32 178, i32 16), !dbg !397
  br i1 %343, label %344, label %349, !dbg !397

; <label>:344:                                    ; preds = %339
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !398
  %346 = load double, double* %345, align 8, !dbg !398
  %347 = load double, double* %32, align 8, !dbg !400
  %348 = fadd double %347, %346, !dbg !400
  call void @fAddHandler(double %347, double %346, double %348, i64 94824593449768, i64 94824593448120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593450176, i32 179, i32 17), !dbg !400
  store double %348, double* %32, align 8, !dbg !400
  br label %354, !dbg !401

; <label>:349:                                    ; preds = %339
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !402
  %351 = load double, double* %350, align 8, !dbg !402
  %352 = load double, double* %31, align 8, !dbg !404
  %353 = fadd double %352, %351, !dbg !404
  call void @fAddHandler(double %352, double %351, double %353, i64 94824593454520, i64 94824593452872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593454928, i32 181, i32 17), !dbg !404
  store double %353, double* %31, align 8, !dbg !404
  br label %354

; <label>:354:                                    ; preds = %349, %344
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !405
  %356 = load double, double* %355, align 8, !dbg !405
  %357 = load double, double* %33, align 8, !dbg !406
  %358 = fadd double %357, %356, !dbg !406
  call void @fAddHandler(double %357, double %356, double %358, i64 94824593458840, i64 94824593457192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593459248, i32 184, i32 15), !dbg !406
  store double %358, double* %33, align 8, !dbg !406
  %359 = load i32, i32* %29, align 4, !dbg !407
  %360 = sub nsw i32 0, %359, !dbg !408
  store i32 %360, i32* %29, align 4, !dbg !409
  br label %361, !dbg !410

; <label>:361:                                    ; preds = %354
  %362 = load i32, i32* %28, align 4, !dbg !411
  %363 = add nsw i32 %362, 1, !dbg !411
  store i32 %363, i32* %28, align 4, !dbg !411
  br label %274, !dbg !413, !llvm.loop !414

; <label>:364:                                    ; preds = %274
  %365 = load double, double* %31, align 8, !dbg !416
  %366 = load double, double* %32, align 8, !dbg !417
  %367 = fsub double %365, %366, !dbg !418
  call void @fSubHandler(double %365, double %366, double %367, i64 94824593465576, i64 94824593465896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593466304, i32 189, i32 28), !dbg !419
  %368 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !419
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %368, i32 0, i32 0, !dbg !420
  store double %367, double* %369, align 8, !dbg !421
  %370 = load double, double* %33, align 8, !dbg !422
  %371 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !423
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %371, i32 0, i32 1, !dbg !424
  store double %370, double* %372, align 8, !dbg !425
  %373 = load double, double* %31, align 8, !dbg !426
  %374 = load double, double* %32, align 8, !dbg !427
  %375 = fadd double %373, %374, !dbg !428
  call void @fAddHandler(double %373, double %374, double %375, i64 94824593469576, i64 94824593469960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593470368, i32 191, i32 53), !dbg !429
  %376 = fmul double 0x3CC0000000000000, %375, !dbg !429
  call void @fMulHandler(double 0x3CC0000000000000, double %375, double %376, i64 0, i64 94824593470368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593470848, i32 191, i32 42), !dbg !430
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !430
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 1, !dbg !431
  %379 = load double, double* %378, align 8, !dbg !432
  %380 = fadd double %379, %376, !dbg !432
  call void @fAddHandler(double %379, double %376, double %380, i64 94824593472072, i64 94824593470848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593472480, i32 191, i32 17), !dbg !432
  store double %380, double* %378, align 8, !dbg !432
  %381 = load i32, i32* %27, align 4, !dbg !433
  %382 = load i32, i32* %26, align 4, !dbg !434
  %383 = sub nsw i32 %381, %382, !dbg !435
  %384 = sitofp i32 %383 to double, !dbg !436
  %385 = fmul double 0x3CC0000000000000, %384, !dbg !437
  call void @fMulHandler(double 0x3CC0000000000000, double %384, double %385, i64 0, i64 94824593475448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593475856, i32 192, i32 42), !dbg !438
  %386 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !438
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %386, i32 0, i32 0, !dbg !439
  %388 = load double, double* %387, align 8, !dbg !439
  %389 = call double @fabs(double %388) #1, !dbg !440
  %390 = fmul double %385, %389, !dbg !441
  call void @fMulHandler(double %385, double %389, double %390, i64 94824593475856, i64 94824593479088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593479600, i32 192, i32 58), !dbg !442
  %391 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !442
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %391, i32 0, i32 1, !dbg !443
  %393 = load double, double* %392, align 8, !dbg !444
  %394 = fadd double %393, %390, !dbg !444
  call void @fAddHandler(double %393, double %390, double %394, i64 94824593480824, i64 94824593479600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94824593481232, i32 192, i32 17), !dbg !444
  store double %394, double* %392, align 8, !dbg !444
  store i32 0, i32* %8, align 4, !dbg !445
  br label %395, !dbg !445

; <label>:395:                                    ; preds = %364, %336, %117, %87, %67, %65
  %396 = load i32, i32* %8, align 4, !dbg !446
  ret i32 %396, !dbg !446
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @triangle_selection_fails(i32, i32, i32) #0 !dbg !447 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !450, metadata !59), !dbg !451
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !452, metadata !59), !dbg !453
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !454, metadata !59), !dbg !455
  %7 = load i32, i32* %5, align 4, !dbg !456
  %8 = load i32, i32* %4, align 4, !dbg !457
  %9 = load i32, i32* %6, align 4, !dbg !458
  %10 = sub nsw i32 %8, %9, !dbg !459
  %11 = call i32 @abs(i32 %10) #1, !dbg !460
  %12 = icmp slt i32 %7, %11, !dbg !461
  %13 = sext i32 %7 to i64, !dbg !462
  %14 = sext i32 %11 to i64, !dbg !462
  %15 = call i1 @iCmpInstHandler(i64 %13, i64 %14, i1 %12, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94824593490576, i32 87, i32 20), !dbg !462
  br i1 %15, label %33, label %16, !dbg !462

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !463
  %18 = load i32, i32* %4, align 4, !dbg !465
  %19 = load i32, i32* %6, align 4, !dbg !466
  %20 = add nsw i32 %18, %19, !dbg !467
  %21 = icmp sgt i32 %17, %20, !dbg !468
  %22 = sext i32 %17 to i64, !dbg !469
  %23 = sext i32 %20 to i64, !dbg !469
  %24 = call i1 @iCmpInstHandler(i64 %22, i64 %23, i1 %21, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94824593493216, i32 87, i32 55), !dbg !469
  br i1 %24, label %33, label %25, !dbg !469

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %4, align 4, !dbg !470
  %27 = load i32, i32* %5, align 4, !dbg !470
  %28 = add nsw i32 %26, %27, !dbg !470
  %29 = load i32, i32* %6, align 4, !dbg !470
  %30 = add nsw i32 %28, %29, !dbg !470
  %31 = and i32 %30, 1, !dbg !470
  %32 = icmp ne i32 %31, 0, !dbg !471
  br label %33, !dbg !471

; <label>:33:                                     ; preds = %25, %16, %3
  %34 = phi i1 [ true, %16 ], [ true, %3 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32, !dbg !473
  ret i32 %35, !dbg !475
}

; Function Attrs: nounwind uwtable
define internal i32 @m_selection_fails(i32, i32, i32, i32, i32, i32) #0 !dbg !476 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !479, metadata !59), !dbg !480
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !481, metadata !59), !dbg !482
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !483, metadata !59), !dbg !484
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !485, metadata !59), !dbg !486
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !487, metadata !59), !dbg !488
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !489, metadata !59), !dbg !490
  %13 = load i32, i32* %10, align 4, !dbg !491
  %14 = call i32 @abs(i32 %13) #1, !dbg !492
  %15 = load i32, i32* %7, align 4, !dbg !493
  %16 = icmp sgt i32 %14, %15, !dbg !494
  %17 = sext i32 %14 to i64, !dbg !495
  %18 = sext i32 %15 to i64, !dbg !495
  %19 = call i1 @iCmpInstHandler(i64 %17, i64 %18, i1 %16, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593509760, i32 98, i32 22), !dbg !495
  br i1 %19, label %67, label %20, !dbg !495

; <label>:20:                                     ; preds = %6
  %21 = load i32, i32* %11, align 4, !dbg !496
  %22 = call i32 @abs(i32 %21) #1, !dbg !498
  %23 = load i32, i32* %8, align 4, !dbg !499
  %24 = icmp sgt i32 %22, %23, !dbg !500
  %25 = sext i32 %22 to i64, !dbg !501
  %26 = sext i32 %23 to i64, !dbg !501
  %27 = call i1 @iCmpInstHandler(i64 %25, i64 %26, i1 %24, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593512000, i32 99, i32 22), !dbg !501
  br i1 %27, label %67, label %28, !dbg !501

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %12, align 4, !dbg !502
  %30 = call i32 @abs(i32 %29) #1, !dbg !503
  %31 = load i32, i32* %9, align 4, !dbg !504
  %32 = icmp sgt i32 %30, %31, !dbg !505
  %33 = sext i32 %30 to i64, !dbg !506
  %34 = sext i32 %31 to i64, !dbg !506
  %35 = call i1 @iCmpInstHandler(i64 %33, i64 %34, i1 %32, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593514240, i32 100, i32 22), !dbg !506
  br i1 %35, label %67, label %36, !dbg !506

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %7, align 4, !dbg !507
  %38 = load i32, i32* %10, align 4, !dbg !507
  %39 = add nsw i32 %37, %38, !dbg !507
  %40 = and i32 %39, 1, !dbg !507
  %41 = icmp ne i32 %40, 0, !dbg !507
  %42 = sext i32 %40 to i64, !dbg !508
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593517456, i32 101, i32 10), !dbg !508
  br i1 %43, label %67, label %44, !dbg !508

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %8, align 4, !dbg !509
  %46 = load i32, i32* %11, align 4, !dbg !509
  %47 = add nsw i32 %45, %46, !dbg !509
  %48 = and i32 %47, 1, !dbg !509
  %49 = icmp ne i32 %48, 0, !dbg !509
  %50 = sext i32 %48 to i64, !dbg !510
  %51 = call i1 @iCmpInstHandler(i64 %50, i64 0, i1 %49, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593520384, i32 102, i32 10), !dbg !510
  br i1 %51, label %67, label %52, !dbg !510

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %9, align 4, !dbg !511
  %54 = load i32, i32* %12, align 4, !dbg !511
  %55 = add nsw i32 %53, %54, !dbg !511
  %56 = and i32 %55, 1, !dbg !511
  %57 = icmp ne i32 %56, 0, !dbg !511
  %58 = sext i32 %56 to i64, !dbg !512
  %59 = call i1 @iCmpInstHandler(i64 %58, i64 0, i1 %57, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94824593523312, i32 103, i32 10), !dbg !512
  br i1 %59, label %67, label %60, !dbg !512

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %10, align 4, !dbg !513
  %62 = load i32, i32* %11, align 4, !dbg !514
  %63 = add nsw i32 %61, %62, !dbg !515
  %64 = load i32, i32* %12, align 4, !dbg !516
  %65 = add nsw i32 %63, %64, !dbg !517
  %66 = icmp ne i32 %65, 0, !dbg !518
  br label %67, !dbg !519

; <label>:67:                                     ; preds = %60, %52, %44, %36, %28, %20, %6
  %68 = phi i1 [ true, %52 ], [ true, %44 ], [ true, %36 ], [ true, %28 ], [ true, %20 ], [ true, %6 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32, !dbg !520
  ret i32 %69, !dbg !522
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMax3(i32, i32, i32) #3 !dbg !523 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !527, metadata !59), !dbg !528
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !529, metadata !59), !dbg !530
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !531, metadata !59), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %7, metadata !533, metadata !59), !dbg !534
  %8 = load i32, i32* %4, align 4, !dbg !535
  %9 = load i32, i32* %5, align 4, !dbg !535
  %10 = icmp sgt i32 %8, %9, !dbg !535
  %11 = sext i32 %8 to i64, !dbg !535
  %12 = sext i32 %9 to i64, !dbg !535
  %13 = call i1 @iCmpInstHandler(i64 %11, i64 %12, i1 %10, i32 38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94824593539936, i32 36, i32 11), !dbg !535
  br i1 %13, label %14, label %16, !dbg !535

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %4, align 4, !dbg !536
  br label %18, !dbg !536

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !538
  br label %18, !dbg !538

; <label>:18:                                     ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], !dbg !540
  store i32 %19, i32* %7, align 4, !dbg !542
  %20 = load i32, i32* %7, align 4, !dbg !543
  %21 = load i32, i32* %6, align 4, !dbg !543
  %22 = icmp sgt i32 %20, %21, !dbg !543
  %23 = sext i32 %20 to i64, !dbg !543
  %24 = sext i32 %21 to i64, !dbg !543
  %25 = call i1 @iCmpInstHandler(i64 %23, i64 %24, i1 %22, i32 38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94824593547312, i32 37, i32 10), !dbg !543
  br i1 %25, label %26, label %28, !dbg !543

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %7, align 4, !dbg !544
  br label %30, !dbg !544

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %6, align 4, !dbg !545
  br label %30, !dbg !545

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !546
  ret i32 %31, !dbg !547
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMin3(i32, i32, i32) #3 !dbg !548 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !549, metadata !59), !dbg !550
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !551, metadata !59), !dbg !552
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !553, metadata !59), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %7, metadata !555, metadata !59), !dbg !556
  %8 = load i32, i32* %4, align 4, !dbg !557
  %9 = load i32, i32* %5, align 4, !dbg !557
  %10 = icmp slt i32 %8, %9, !dbg !557
  %11 = sext i32 %8 to i64, !dbg !557
  %12 = sext i32 %9 to i64, !dbg !557
  %13 = call i1 @iCmpInstHandler(i64 %11, i64 %12, i1 %10, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94824593560608, i32 44, i32 11), !dbg !557
  br i1 %13, label %14, label %16, !dbg !557

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %4, align 4, !dbg !558
  br label %18, !dbg !558

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !560
  br label %18, !dbg !560

; <label>:18:                                     ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], !dbg !562
  store i32 %19, i32* %7, align 4, !dbg !564
  %20 = load i32, i32* %7, align 4, !dbg !565
  %21 = load i32, i32* %6, align 4, !dbg !565
  %22 = icmp slt i32 %20, %21, !dbg !565
  %23 = sext i32 %20 to i64, !dbg !565
  %24 = sext i32 %21 to i64, !dbg !565
  %25 = call i1 @iCmpInstHandler(i64 %23, i64 %24, i1 %22, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94824593568016, i32 45, i32 10), !dbg !565
  br i1 %25, label %26, label %28, !dbg !565

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %7, align 4, !dbg !566
  br label %30, !dbg !566

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %6, align 4, !dbg !567
  br label %30, !dbg !567

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !568
  ret i32 %31, !dbg !569
}

declare i32 @gsl_sf_lnchoose_e(i32, i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_6j_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !570 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct*, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !571, metadata !59), !dbg !572
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !573, metadata !59), !dbg !574
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !575, metadata !59), !dbg !576
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !577, metadata !59), !dbg !578
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !579, metadata !59), !dbg !580
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !581, metadata !59), !dbg !582
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %15, metadata !583, metadata !59), !dbg !584
  %38 = load i32, i32* %9, align 4, !dbg !585
  %39 = icmp slt i32 %38, 0, !dbg !587
  %40 = sext i32 %38 to i64, !dbg !588
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593587552, i32 218, i32 16), !dbg !588
  br i1 %41, label %67, label %42, !dbg !588

; <label>:42:                                     ; preds = %7
  %43 = load i32, i32* %10, align 4, !dbg !589
  %44 = icmp slt i32 %43, 0, !dbg !591
  %45 = sext i32 %43 to i64, !dbg !592
  %46 = call i1 @iCmpInstHandler(i64 %45, i64 0, i1 %44, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593588912, i32 218, i32 30), !dbg !592
  br i1 %46, label %67, label %47, !dbg !592

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %11, align 4, !dbg !593
  %49 = icmp slt i32 %48, 0, !dbg !595
  %50 = sext i32 %48 to i64, !dbg !596
  %51 = call i1 @iCmpInstHandler(i64 %50, i64 0, i1 %49, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593590128, i32 218, i32 44), !dbg !596
  br i1 %51, label %67, label %52, !dbg !596

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %12, align 4, !dbg !597
  %54 = icmp slt i32 %53, 0, !dbg !598
  %55 = sext i32 %53 to i64, !dbg !599
  %56 = call i1 @iCmpInstHandler(i64 %55, i64 0, i1 %54, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593591344, i32 219, i32 16), !dbg !599
  br i1 %56, label %67, label %57, !dbg !599

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %13, align 4, !dbg !600
  %59 = icmp slt i32 %58, 0, !dbg !601
  %60 = sext i32 %58 to i64, !dbg !602
  %61 = call i1 @iCmpInstHandler(i64 %60, i64 0, i1 %59, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593592656, i32 219, i32 30), !dbg !602
  br i1 %61, label %67, label %62, !dbg !602

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %14, align 4, !dbg !603
  %64 = icmp slt i32 %63, 0, !dbg !605
  %65 = sext i32 %63 to i64, !dbg !606
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593593968, i32 219, i32 44), !dbg !606
  br i1 %66, label %67, label %76, !dbg !606

; <label>:67:                                     ; preds = %62, %57, %52, %47, %42, %7
  br label %68, !dbg !608, !llvm.loop !610

; <label>:68:                                     ; preds = %67
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !611
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !611
  store double 0x7FF8000000000000, double* %70, align 8, !dbg !611
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !611
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !611
  store double 0x7FF8000000000000, double* %72, align 8, !dbg !611
  br label %73, !dbg !611, !llvm.loop !614

; <label>:73:                                     ; preds = %68
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 221, i32 1), !dbg !616
  store i32 1, i32* %8, align 4, !dbg !616
  br label %554, !dbg !616
                                                  ; No predecessors!
  br label %75, !dbg !619

; <label>:75:                                     ; preds = %74
  br label %554, !dbg !621

; <label>:76:                                     ; preds = %62
  %77 = load i32, i32* %9, align 4, !dbg !622
  %78 = load i32, i32* %10, align 4, !dbg !624
  %79 = load i32, i32* %11, align 4, !dbg !625
  %80 = call i32 @triangle_selection_fails(i32 %77, i32 %78, i32 %79), !dbg !626
  %81 = icmp ne i32 %80, 0, !dbg !626
  %82 = sext i32 %80 to i64, !dbg !627
  %83 = call i1 @iCmpInstHandler(i64 %82, i64 0, i1 %81, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593603888, i32 223, i32 14), !dbg !627
  br i1 %83, label %108, label %84, !dbg !627

; <label>:84:                                     ; preds = %76
  %85 = load i32, i32* %9, align 4, !dbg !628
  %86 = load i32, i32* %13, align 4, !dbg !630
  %87 = load i32, i32* %14, align 4, !dbg !631
  %88 = call i32 @triangle_selection_fails(i32 %85, i32 %86, i32 %87), !dbg !632
  %89 = icmp ne i32 %88, 0, !dbg !632
  %90 = sext i32 %88 to i64, !dbg !633
  %91 = call i1 @iCmpInstHandler(i64 %90, i64 0, i1 %89, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593607936, i32 224, i32 14), !dbg !633
  br i1 %91, label %108, label %92, !dbg !633

; <label>:92:                                     ; preds = %84
  %93 = load i32, i32* %10, align 4, !dbg !634
  %94 = load i32, i32* %12, align 4, !dbg !635
  %95 = load i32, i32* %14, align 4, !dbg !636
  %96 = call i32 @triangle_selection_fails(i32 %93, i32 %94, i32 %95), !dbg !637
  %97 = icmp ne i32 %96, 0, !dbg !637
  %98 = sext i32 %96 to i64, !dbg !638
  %99 = call i1 @iCmpInstHandler(i64 %98, i64 0, i1 %97, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593611840, i32 225, i32 14), !dbg !638
  br i1 %99, label %108, label %100, !dbg !638

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %13, align 4, !dbg !639
  %102 = load i32, i32* %12, align 4, !dbg !640
  %103 = load i32, i32* %11, align 4, !dbg !641
  %104 = call i32 @triangle_selection_fails(i32 %101, i32 %102, i32 %103), !dbg !642
  %105 = icmp ne i32 %104, 0, !dbg !642
  %106 = sext i32 %104 to i64, !dbg !643
  %107 = call i1 @iCmpInstHandler(i64 %106, i64 0, i1 %105, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593615744, i32 226, i32 14), !dbg !643
  br i1 %107, label %108, label %113, !dbg !643

; <label>:108:                                    ; preds = %100, %92, %84, %76
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !644
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !646
  store double 0.000000e+00, double* %110, align 8, !dbg !647
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !648
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !649
  store double 0.000000e+00, double* %112, align 8, !dbg !650
  store i32 0, i32* %8, align 4, !dbg !651
  br label %554, !dbg !651

; <label>:113:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !652, metadata !59), !dbg !654
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !655, metadata !59), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !657, metadata !59), !dbg !658
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !659, metadata !59), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !661, metadata !59), !dbg !662
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !663, metadata !59), !dbg !664
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !665, metadata !59), !dbg !666
  call void @llvm.dbg.declare(metadata double* %23, metadata !667, metadata !59), !dbg !668
  call void @llvm.dbg.declare(metadata i32* %24, metadata !669, metadata !59), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %25, metadata !671, metadata !59), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %26, metadata !673, metadata !59), !dbg !674
  call void @llvm.dbg.declare(metadata double* %27, metadata !675, metadata !59), !dbg !676
  call void @llvm.dbg.declare(metadata double* %28, metadata !677, metadata !59), !dbg !678
  store double 0.000000e+00, double* %28, align 8, !dbg !678
  call void @llvm.dbg.declare(metadata double* %29, metadata !679, metadata !59), !dbg !680
  store double 0.000000e+00, double* %29, align 8, !dbg !680
  call void @llvm.dbg.declare(metadata double* %30, metadata !681, metadata !59), !dbg !682
  store double 0.000000e+00, double* %30, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata i32* %31, metadata !683, metadata !59), !dbg !684
  store i32 0, i32* %31, align 4, !dbg !684
  %114 = load i32, i32* %9, align 4, !dbg !685
  %115 = load i32, i32* %10, align 4, !dbg !686
  %116 = load i32, i32* %11, align 4, !dbg !687
  %117 = call i32 @delta(i32 %114, i32 %115, i32 %116, %struct.gsl_sf_result_struct* %17), !dbg !688
  %118 = load i32, i32* %31, align 4, !dbg !689
  %119 = add nsw i32 %118, %117, !dbg !689
  store i32 %119, i32* %31, align 4, !dbg !689
  %120 = load i32, i32* %9, align 4, !dbg !690
  %121 = load i32, i32* %13, align 4, !dbg !691
  %122 = load i32, i32* %14, align 4, !dbg !692
  %123 = call i32 @delta(i32 %120, i32 %121, i32 %122, %struct.gsl_sf_result_struct* %18), !dbg !693
  %124 = load i32, i32* %31, align 4, !dbg !694
  %125 = add nsw i32 %124, %123, !dbg !694
  store i32 %125, i32* %31, align 4, !dbg !694
  %126 = load i32, i32* %10, align 4, !dbg !695
  %127 = load i32, i32* %12, align 4, !dbg !696
  %128 = load i32, i32* %14, align 4, !dbg !697
  %129 = call i32 @delta(i32 %126, i32 %127, i32 %128, %struct.gsl_sf_result_struct* %19), !dbg !698
  %130 = load i32, i32* %31, align 4, !dbg !699
  %131 = add nsw i32 %130, %129, !dbg !699
  store i32 %131, i32* %31, align 4, !dbg !699
  %132 = load i32, i32* %13, align 4, !dbg !700
  %133 = load i32, i32* %12, align 4, !dbg !701
  %134 = load i32, i32* %11, align 4, !dbg !702
  %135 = call i32 @delta(i32 %132, i32 %133, i32 %134, %struct.gsl_sf_result_struct* %20), !dbg !703
  %136 = load i32, i32* %31, align 4, !dbg !704
  %137 = add nsw i32 %136, %135, !dbg !704
  store i32 %137, i32* %31, align 4, !dbg !704
  %138 = load i32, i32* %31, align 4, !dbg !705
  %139 = icmp ne i32 %138, 0, !dbg !707
  %140 = sext i32 %138 to i64, !dbg !708
  %141 = call i1 @iCmpInstHandler(i64 %140, i64 0, i1 %139, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593662896, i32 246, i32 15), !dbg !708
  br i1 %141, label %142, label %151, !dbg !708

; <label>:142:                                    ; preds = %113
  br label %143, !dbg !709, !llvm.loop !711

; <label>:143:                                    ; preds = %142
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !712
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !712
  store double 0x7FF0000000000000, double* %145, align 8, !dbg !712
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !712
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !712
  store double 0x7FF0000000000000, double* %147, align 8, !dbg !712
  br label %148, !dbg !712, !llvm.loop !715

; <label>:148:                                    ; preds = %143
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 247, i32 16), !dbg !717
  store i32 16, i32* %8, align 4, !dbg !717
  br label %554, !dbg !717
                                                  ; No predecessors!
  br label %150, !dbg !720

; <label>:150:                                    ; preds = %149
  br label %151, !dbg !722

; <label>:151:                                    ; preds = %150, %113
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !723
  %153 = load double, double* %152, align 8, !dbg !723
  %154 = call double @sqrt(double %153) #6, !dbg !724
  call void @callOneArgHandler(i32 14, double %153, double %154, i64 94824593673560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593675568, i32 249, i32 12), !dbg !725
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !725
  %156 = load double, double* %155, align 8, !dbg !725
  %157 = call double @sqrt(double %156) #6, !dbg !726
  call void @callOneArgHandler(i32 14, double %156, double %157, i64 94824593676504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593678240, i32 249, i32 27), !dbg !728
  %158 = fmul double %154, %157, !dbg !728
  call void @fMulHandler(double %154, double %157, double %158, i64 94824593675568, i64 94824593678240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593678720, i32 249, i32 25), !dbg !729
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !729
  %160 = load double, double* %159, align 8, !dbg !729
  %161 = call double @sqrt(double %160) #6, !dbg !730
  call void @callOneArgHandler(i32 14, double %160, double %161, i64 94824593679560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593681296, i32 249, i32 42), !dbg !732
  %162 = fmul double %158, %161, !dbg !732
  call void @fMulHandler(double %158, double %161, double %162, i64 94824593678720, i64 94824593681296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593681776, i32 249, i32 40), !dbg !733
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !733
  %164 = load double, double* %163, align 8, !dbg !733
  %165 = call double @sqrt(double %164) #6, !dbg !734
  call void @callOneArgHandler(i32 14, double %164, double %165, i64 94824593682616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593684352, i32 249, i32 57), !dbg !736
  %166 = fmul double %162, %165, !dbg !736
  call void @fMulHandler(double %162, double %165, double %166, i64 94824593681776, i64 94824593684352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593684832, i32 249, i32 55), !dbg !737
  store double %166, double* %23, align 8, !dbg !737
  %167 = load i32, i32* %9, align 4, !dbg !738
  %168 = load i32, i32* %12, align 4, !dbg !739
  %169 = add nsw i32 %167, %168, !dbg !740
  %170 = load i32, i32* %11, align 4, !dbg !741
  %171 = sub nsw i32 %169, %170, !dbg !742
  %172 = load i32, i32* %14, align 4, !dbg !743
  %173 = sub nsw i32 %171, %172, !dbg !744
  %174 = load i32, i32* %10, align 4, !dbg !745
  %175 = load i32, i32* %13, align 4, !dbg !746
  %176 = add nsw i32 %174, %175, !dbg !747
  %177 = load i32, i32* %11, align 4, !dbg !748
  %178 = sub nsw i32 %176, %177, !dbg !749
  %179 = load i32, i32* %14, align 4, !dbg !750
  %180 = sub nsw i32 %178, %179, !dbg !751
  %181 = call i32 @locMax3(i32 0, i32 %173, i32 %180), !dbg !752
  store i32 %181, i32* %25, align 4, !dbg !753
  %182 = load i32, i32* %9, align 4, !dbg !754
  %183 = load i32, i32* %10, align 4, !dbg !755
  %184 = add nsw i32 %182, %183, !dbg !756
  %185 = load i32, i32* %13, align 4, !dbg !757
  %186 = add nsw i32 %184, %185, !dbg !758
  %187 = load i32, i32* %12, align 4, !dbg !759
  %188 = add nsw i32 %186, %187, !dbg !760
  %189 = add nsw i32 %188, 2, !dbg !761
  %190 = load i32, i32* %9, align 4, !dbg !762
  %191 = load i32, i32* %10, align 4, !dbg !763
  %192 = add nsw i32 %190, %191, !dbg !764
  %193 = load i32, i32* %11, align 4, !dbg !765
  %194 = sub nsw i32 %192, %193, !dbg !766
  %195 = load i32, i32* %13, align 4, !dbg !767
  %196 = load i32, i32* %12, align 4, !dbg !768
  %197 = add nsw i32 %195, %196, !dbg !769
  %198 = load i32, i32* %11, align 4, !dbg !770
  %199 = sub nsw i32 %197, %198, !dbg !771
  %200 = load i32, i32* %9, align 4, !dbg !772
  %201 = load i32, i32* %13, align 4, !dbg !773
  %202 = add nsw i32 %200, %201, !dbg !774
  %203 = load i32, i32* %14, align 4, !dbg !775
  %204 = sub nsw i32 %202, %203, !dbg !776
  %205 = load i32, i32* %10, align 4, !dbg !777
  %206 = load i32, i32* %12, align 4, !dbg !778
  %207 = add nsw i32 %205, %206, !dbg !779
  %208 = load i32, i32* %14, align 4, !dbg !780
  %209 = sub nsw i32 %207, %208, !dbg !781
  %210 = call i32 @locMin5(i32 %189, i32 %194, i32 %199, i32 %204, i32 %209), !dbg !782
  store i32 %210, i32* %26, align 4, !dbg !783
  %211 = load i32, i32* %9, align 4, !dbg !784
  %212 = load i32, i32* %10, align 4, !dbg !784
  %213 = add nsw i32 %211, %212, !dbg !784
  %214 = load i32, i32* %13, align 4, !dbg !784
  %215 = add nsw i32 %213, %214, !dbg !784
  %216 = load i32, i32* %12, align 4, !dbg !784
  %217 = add nsw i32 %215, %216, !dbg !784
  %218 = load i32, i32* %25, align 4, !dbg !784
  %219 = add nsw i32 %217, %218, !dbg !784
  %220 = sdiv i32 %219, 2, !dbg !784
  %221 = and i32 %220, 1, !dbg !784
  %222 = icmp ne i32 %221, 0, !dbg !784
  %223 = sext i32 %221 to i64, !dbg !784
  %224 = call i1 @iCmpInstHandler(i64 %223, i64 0, i1 %222, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593707808, i32 261, i32 13), !dbg !784
  %225 = select i1 %224, double -1.000000e+00, double 1.000000e+00, !dbg !784
  store double %225, double* %27, align 8, !dbg !785
  %226 = load i32, i32* %25, align 4, !dbg !786
  store i32 %226, i32* %24, align 4, !dbg !788
  br label %227, !dbg !789

; <label>:227:                                    ; preds = %511, %151
  %228 = load i32, i32* %24, align 4, !dbg !790
  %229 = load i32, i32* %26, align 4, !dbg !793
  %230 = icmp sle i32 %228, %229, !dbg !794
  %231 = sext i32 %228 to i64, !dbg !795
  %232 = sext i32 %229 to i64, !dbg !795
  %233 = call i1 @iCmpInstHandler(i64 %231, i64 %232, i1 %230, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593710592, i32 265, i32 21), !dbg !795
  br i1 %233, label %234, label %514, !dbg !795

; <label>:234:                                    ; preds = %227
  call void @llvm.dbg.declare(metadata double* %32, metadata !796, metadata !59), !dbg !798
  call void @llvm.dbg.declare(metadata double* %33, metadata !799, metadata !59), !dbg !800
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !801, metadata !59), !dbg !802
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !803, metadata !59), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !805, metadata !59), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !807, metadata !59), !dbg !808
  store i32 0, i32* %31, align 4, !dbg !809
  %235 = load i32, i32* %9, align 4, !dbg !810
  %236 = load i32, i32* %10, align 4, !dbg !811
  %237 = add nsw i32 %235, %236, !dbg !812
  %238 = load i32, i32* %13, align 4, !dbg !813
  %239 = add nsw i32 %237, %238, !dbg !814
  %240 = load i32, i32* %12, align 4, !dbg !815
  %241 = add nsw i32 %239, %240, !dbg !816
  %242 = load i32, i32* %24, align 4, !dbg !817
  %243 = sub nsw i32 %241, %242, !dbg !818
  %244 = sdiv i32 %243, 2, !dbg !819
  %245 = add nsw i32 %244, 1, !dbg !820
  %246 = call i32 @gsl_sf_fact_e(i32 %245, %struct.gsl_sf_result_struct* %16), !dbg !821
  %247 = load i32, i32* %31, align 4, !dbg !822
  %248 = add nsw i32 %247, %246, !dbg !822
  store i32 %248, i32* %31, align 4, !dbg !822
  %249 = load i32, i32* %24, align 4, !dbg !823
  %250 = sdiv i32 %249, 2, !dbg !824
  %251 = call i32 @gsl_sf_fact_e(i32 %250, %struct.gsl_sf_result_struct* %36), !dbg !825
  %252 = load i32, i32* %31, align 4, !dbg !826
  %253 = add nsw i32 %252, %251, !dbg !826
  store i32 %253, i32* %31, align 4, !dbg !826
  %254 = load i32, i32* %11, align 4, !dbg !827
  %255 = load i32, i32* %14, align 4, !dbg !828
  %256 = add nsw i32 %254, %255, !dbg !829
  %257 = load i32, i32* %9, align 4, !dbg !830
  %258 = sub nsw i32 %256, %257, !dbg !831
  %259 = load i32, i32* %12, align 4, !dbg !832
  %260 = sub nsw i32 %258, %259, !dbg !833
  %261 = load i32, i32* %24, align 4, !dbg !834
  %262 = add nsw i32 %260, %261, !dbg !835
  %263 = sdiv i32 %262, 2, !dbg !836
  %264 = call i32 @gsl_sf_fact_e(i32 %263, %struct.gsl_sf_result_struct* %37), !dbg !837
  %265 = load i32, i32* %31, align 4, !dbg !838
  %266 = add nsw i32 %265, %264, !dbg !838
  store i32 %266, i32* %31, align 4, !dbg !838
  %267 = load i32, i32* %11, align 4, !dbg !839
  %268 = load i32, i32* %14, align 4, !dbg !840
  %269 = add nsw i32 %267, %268, !dbg !841
  %270 = load i32, i32* %10, align 4, !dbg !842
  %271 = sub nsw i32 %269, %270, !dbg !843
  %272 = load i32, i32* %13, align 4, !dbg !844
  %273 = sub nsw i32 %271, %272, !dbg !845
  %274 = load i32, i32* %24, align 4, !dbg !846
  %275 = add nsw i32 %273, %274, !dbg !847
  %276 = sdiv i32 %275, 2, !dbg !848
  %277 = call i32 @gsl_sf_fact_e(i32 %276, %struct.gsl_sf_result_struct* %18), !dbg !849
  %278 = load i32, i32* %31, align 4, !dbg !850
  %279 = add nsw i32 %278, %277, !dbg !850
  store i32 %279, i32* %31, align 4, !dbg !850
  %280 = load i32, i32* %9, align 4, !dbg !851
  %281 = load i32, i32* %10, align 4, !dbg !852
  %282 = add nsw i32 %280, %281, !dbg !853
  %283 = load i32, i32* %11, align 4, !dbg !854
  %284 = sub nsw i32 %282, %283, !dbg !855
  %285 = load i32, i32* %24, align 4, !dbg !856
  %286 = sub nsw i32 %284, %285, !dbg !857
  %287 = sdiv i32 %286, 2, !dbg !858
  %288 = call i32 @gsl_sf_fact_e(i32 %287, %struct.gsl_sf_result_struct* %19), !dbg !859
  %289 = load i32, i32* %31, align 4, !dbg !860
  %290 = add nsw i32 %289, %288, !dbg !860
  store i32 %290, i32* %31, align 4, !dbg !860
  %291 = load i32, i32* %13, align 4, !dbg !861
  %292 = load i32, i32* %12, align 4, !dbg !862
  %293 = add nsw i32 %291, %292, !dbg !863
  %294 = load i32, i32* %11, align 4, !dbg !864
  %295 = sub nsw i32 %293, %294, !dbg !865
  %296 = load i32, i32* %24, align 4, !dbg !866
  %297 = sub nsw i32 %295, %296, !dbg !867
  %298 = sdiv i32 %297, 2, !dbg !868
  %299 = call i32 @gsl_sf_fact_e(i32 %298, %struct.gsl_sf_result_struct* %20), !dbg !869
  %300 = load i32, i32* %31, align 4, !dbg !870
  %301 = add nsw i32 %300, %299, !dbg !870
  store i32 %301, i32* %31, align 4, !dbg !870
  %302 = load i32, i32* %9, align 4, !dbg !871
  %303 = load i32, i32* %13, align 4, !dbg !872
  %304 = add nsw i32 %302, %303, !dbg !873
  %305 = load i32, i32* %14, align 4, !dbg !874
  %306 = sub nsw i32 %304, %305, !dbg !875
  %307 = load i32, i32* %24, align 4, !dbg !876
  %308 = sub nsw i32 %306, %307, !dbg !877
  %309 = sdiv i32 %308, 2, !dbg !878
  %310 = call i32 @gsl_sf_fact_e(i32 %309, %struct.gsl_sf_result_struct* %21), !dbg !879
  %311 = load i32, i32* %31, align 4, !dbg !880
  %312 = add nsw i32 %311, %310, !dbg !880
  store i32 %312, i32* %31, align 4, !dbg !880
  %313 = load i32, i32* %10, align 4, !dbg !881
  %314 = load i32, i32* %12, align 4, !dbg !882
  %315 = add nsw i32 %313, %314, !dbg !883
  %316 = load i32, i32* %14, align 4, !dbg !884
  %317 = sub nsw i32 %315, %316, !dbg !885
  %318 = load i32, i32* %24, align 4, !dbg !886
  %319 = sub nsw i32 %317, %318, !dbg !887
  %320 = sdiv i32 %319, 2, !dbg !888
  %321 = call i32 @gsl_sf_fact_e(i32 %320, %struct.gsl_sf_result_struct* %22), !dbg !889
  %322 = load i32, i32* %31, align 4, !dbg !890
  %323 = add nsw i32 %322, %321, !dbg !890
  store i32 %323, i32* %31, align 4, !dbg !890
  %324 = load i32, i32* %31, align 4, !dbg !891
  %325 = icmp ne i32 %324, 0, !dbg !893
  %326 = sext i32 %324 to i64, !dbg !894
  %327 = call i1 @iCmpInstHandler(i64 %326, i64 0, i1 %325, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593769184, i32 281, i32 17), !dbg !894
  br i1 %327, label %328, label %337, !dbg !894

; <label>:328:                                    ; preds = %234
  br label %329, !dbg !895, !llvm.loop !897

; <label>:329:                                    ; preds = %328
  %330 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !898
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %330, i32 0, i32 0, !dbg !898
  store double 0x7FF0000000000000, double* %331, align 8, !dbg !898
  %332 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !898
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %332, i32 0, i32 1, !dbg !898
  store double 0x7FF0000000000000, double* %333, align 8, !dbg !898
  br label %334, !dbg !898, !llvm.loop !901

; <label>:334:                                    ; preds = %329
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 282, i32 16), !dbg !903
  store i32 16, i32* %8, align 4, !dbg !903
  br label %554, !dbg !903
                                                  ; No predecessors!
  br label %336, !dbg !906

; <label>:336:                                    ; preds = %335
  br label %337, !dbg !908

; <label>:337:                                    ; preds = %336, %234
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !909
  %339 = load double, double* %338, align 8, !dbg !909
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !910
  %341 = load double, double* %340, align 8, !dbg !910
  %342 = fmul double %339, %341, !dbg !911
  call void @fMulHandler(double %339, double %341, double %342, i64 94824593777832, i64 94824593779928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593781600, i32 285, i32 25), !dbg !912
  %343 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !912
  store double %342, double* %343, align 8, !dbg !913
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !914
  %345 = load double, double* %344, align 8, !dbg !914
  %346 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !915
  %347 = load double, double* %346, align 8, !dbg !915
  %348 = call double @fabs(double %347) #1, !dbg !916
  %349 = fmul double %345, %348, !dbg !917
  call void @fMulHandler(double %345, double %348, double %349, i64 94824593783304, i64 94824593787136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593787616, i32 286, i32 25), !dbg !918
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !918
  %351 = load double, double* %350, align 8, !dbg !918
  %352 = call double @fabs(double %351) #1, !dbg !919
  %353 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !921
  %354 = load double, double* %353, align 8, !dbg !921
  %355 = fmul double %352, %354, !dbg !922
  call void @fMulHandler(double %352, double %354, double %355, i64 94824593790192, i64 94824593791096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593792768, i32 286, i32 59), !dbg !923
  %356 = fadd double %349, %355, !dbg !923
  call void @fAddHandler(double %349, double %355, double %356, i64 94824593787616, i64 94824593792768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593793184, i32 286, i32 42), !dbg !924
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !924
  store double %356, double* %357, align 8, !dbg !925
  %358 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !926
  %359 = load double, double* %358, align 8, !dbg !926
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !927
  %361 = load double, double* %360, align 8, !dbg !927
  %362 = fmul double %359, %361, !dbg !928
  call void @fMulHandler(double %359, double %361, double %362, i64 94824593794888, i64 94824593796984, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593798656, i32 288, i32 26), !dbg !929
  %363 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !929
  %364 = load double, double* %363, align 8, !dbg !929
  %365 = fmul double %362, %364, !dbg !930
  call void @fMulHandler(double %362, double %364, double %365, i64 94824593798656, i64 94824593799496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593801168, i32 288, i32 33), !dbg !931
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !931
  store double %365, double* %366, align 8, !dbg !932
  %367 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !933
  %368 = load double, double* %367, align 8, !dbg !933
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !934
  %370 = load double, double* %369, align 8, !dbg !934
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !935
  %372 = load double, double* %371, align 8, !dbg !935
  %373 = fmul double %370, %372, !dbg !936
  call void @fMulHandler(double %370, double %372, double %373, i64 94824593804968, i64 94824593807064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593808736, i32 289, i32 40), !dbg !937
  %374 = call double @fabs(double %373) #1, !dbg !937
  %375 = fmul double %368, %374, !dbg !938
  call void @fMulHandler(double %368, double %374, double %375, i64 94824593802872, i64 94824593809216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593809696, i32 289, i32 27), !dbg !939
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !939
  store double %375, double* %376, align 8, !dbg !940
  %377 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !941
  %378 = load double, double* %377, align 8, !dbg !941
  %379 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !942
  %380 = load double, double* %379, align 8, !dbg !942
  %381 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !943
  %382 = load double, double* %381, align 8, !dbg !943
  %383 = fmul double %380, %382, !dbg !944
  call void @fMulHandler(double %380, double %382, double %383, i64 94824593813496, i64 94824593815592, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593817264, i32 290, i32 40), !dbg !945
  %384 = call double @fabs(double %383) #1, !dbg !945
  %385 = fmul double %378, %384, !dbg !946
  call void @fMulHandler(double %378, double %384, double %385, i64 94824593811400, i64 94824593817744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593818224, i32 290, i32 27), !dbg !947
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !947
  %387 = load double, double* %386, align 8, !dbg !948
  %388 = fadd double %387, %385, !dbg !948
  call void @fAddHandler(double %387, double %385, double %388, i64 94824593819064, i64 94824593818224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593819472, i32 290, i32 17), !dbg !948
  store double %388, double* %386, align 8, !dbg !948
  %389 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !949
  %390 = load double, double* %389, align 8, !dbg !949
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !950
  %392 = load double, double* %391, align 8, !dbg !950
  %393 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !951
  %394 = load double, double* %393, align 8, !dbg !951
  %395 = fmul double %392, %394, !dbg !952
  call void @fMulHandler(double %392, double %394, double %395, i64 94824593823800, i64 94824593825896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593827568, i32 291, i32 40), !dbg !953
  %396 = call double @fabs(double %395) #1, !dbg !953
  %397 = fmul double %390, %396, !dbg !954
  call void @fMulHandler(double %390, double %396, double %397, i64 94824593821704, i64 94824593828048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593828528, i32 291, i32 27), !dbg !955
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !955
  %399 = load double, double* %398, align 8, !dbg !956
  %400 = fadd double %399, %397, !dbg !956
  call void @fAddHandler(double %399, double %397, double %400, i64 94824593829368, i64 94824593828528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593829776, i32 291, i32 17), !dbg !956
  store double %400, double* %398, align 8, !dbg !956
  %401 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !957
  %402 = load double, double* %401, align 8, !dbg !957
  %403 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !958
  %404 = load double, double* %403, align 8, !dbg !958
  %405 = fmul double %402, %404, !dbg !959
  call void @fMulHandler(double %402, double %404, double %405, i64 94824593832008, i64 94824593834104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593835776, i32 293, i32 26), !dbg !960
  %406 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !960
  %407 = load double, double* %406, align 8, !dbg !960
  %408 = fmul double %405, %407, !dbg !961
  call void @fMulHandler(double %405, double %407, double %408, i64 94824593835776, i64 94824593836616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593838288, i32 293, i32 33), !dbg !962
  %409 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !962
  store double %408, double* %409, align 8, !dbg !963
  %410 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !964
  %411 = load double, double* %410, align 8, !dbg !964
  %412 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !965
  %413 = load double, double* %412, align 8, !dbg !965
  %414 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !966
  %415 = load double, double* %414, align 8, !dbg !966
  %416 = fmul double %413, %415, !dbg !967
  call void @fMulHandler(double %413, double %415, double %416, i64 94824593842088, i64 94824593844184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593845856, i32 294, i32 40), !dbg !968
  %417 = call double @fabs(double %416) #1, !dbg !968
  %418 = fmul double %411, %417, !dbg !969
  call void @fMulHandler(double %411, double %417, double %418, i64 94824593839992, i64 94824593846336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593846816, i32 294, i32 27), !dbg !970
  %419 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !970
  store double %418, double* %419, align 8, !dbg !971
  %420 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !972
  %421 = load double, double* %420, align 8, !dbg !972
  %422 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !973
  %423 = load double, double* %422, align 8, !dbg !973
  %424 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !974
  %425 = load double, double* %424, align 8, !dbg !974
  %426 = fmul double %423, %425, !dbg !975
  call void @fMulHandler(double %423, double %425, double %426, i64 94824593850616, i64 94824593852712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593854384, i32 295, i32 40), !dbg !976
  %427 = call double @fabs(double %426) #1, !dbg !976
  %428 = fmul double %421, %427, !dbg !977
  call void @fMulHandler(double %421, double %427, double %428, i64 94824593848520, i64 94824593854864, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593855344, i32 295, i32 27), !dbg !978
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !978
  %430 = load double, double* %429, align 8, !dbg !979
  %431 = fadd double %430, %428, !dbg !979
  call void @fAddHandler(double %430, double %428, double %431, i64 94824593856184, i64 94824593855344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593856592, i32 295, i32 17), !dbg !979
  store double %431, double* %429, align 8, !dbg !979
  %432 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !980
  %433 = load double, double* %432, align 8, !dbg !980
  %434 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !981
  %435 = load double, double* %434, align 8, !dbg !981
  %436 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !982
  %437 = load double, double* %436, align 8, !dbg !982
  %438 = fmul double %435, %437, !dbg !983
  call void @fMulHandler(double %435, double %437, double %438, i64 94824593860920, i64 94824593863016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593864688, i32 296, i32 40), !dbg !984
  %439 = call double @fabs(double %438) #1, !dbg !984
  %440 = fmul double %433, %439, !dbg !985
  call void @fMulHandler(double %433, double %439, double %440, i64 94824593858824, i64 94824593865168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593865648, i32 296, i32 27), !dbg !986
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !986
  %442 = load double, double* %441, align 8, !dbg !987
  %443 = fadd double %442, %440, !dbg !987
  call void @fAddHandler(double %442, double %440, double %443, i64 94824593866488, i64 94824593865648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593866896, i32 296, i32 17), !dbg !987
  store double %443, double* %441, align 8, !dbg !987
  %444 = load double, double* %27, align 8, !dbg !988
  %445 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !989
  %446 = load double, double* %445, align 8, !dbg !989
  %447 = fmul double %444, %446, !dbg !990
  call void @fMulHandler(double %444, double %446, double %447, i64 94824593868680, i64 94824593869512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593871184, i32 298, i32 21), !dbg !991
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !991
  %449 = load double, double* %448, align 8, !dbg !991
  %450 = fdiv double %447, %449, !dbg !992
  call void @fDivHandler(double %447, double %449, double %450, i64 94824593871184, i64 94824593872024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593873696, i32 298, i32 30), !dbg !993
  %451 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !993
  %452 = load double, double* %451, align 8, !dbg !993
  %453 = fdiv double %450, %452, !dbg !994
  call void @fDivHandler(double %450, double %452, double %453, i64 94824593873696, i64 94824593874536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593876208, i32 298, i32 42), !dbg !995
  store double %453, double* %32, align 8, !dbg !995
  %454 = load double, double* %27, align 8, !dbg !996
  %455 = fsub double -0.000000e+00, %454, !dbg !997
  call void @fSubHandler(double -0.000000e+00, double %454, double %455, i64 0, i64 94824593877016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593877488, i32 299, i32 15), !dbg !998
  store double %455, double* %27, align 8, !dbg !998
  %456 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !999
  %457 = load double, double* %456, align 8, !dbg !999
  %458 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1000
  %459 = load double, double* %458, align 8, !dbg !1000
  %460 = call double @fabs(double %459) #1, !dbg !1001
  %461 = fdiv double %457, %460, !dbg !1002
  call void @fDivHandler(double %457, double %460, double %461, i64 94824593878744, i64 94824593882576, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593883056, i32 300, i32 26), !dbg !1003
  %462 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1003
  %463 = load double, double* %462, align 8, !dbg !1003
  %464 = call double @fabs(double %463) #1, !dbg !1004
  %465 = fdiv double %461, %464, !dbg !1005
  call void @fDivHandler(double %461, double %464, double %465, i64 94824593883056, i64 94824593885632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593886112, i32 300, i32 44), !dbg !1006
  store double %465, double* %33, align 8, !dbg !1006
  %466 = load double, double* %32, align 8, !dbg !1007
  %467 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1008
  %468 = load double, double* %467, align 8, !dbg !1008
  %469 = fdiv double %466, %468, !dbg !1009
  call void @fDivHandler(double %466, double %468, double %469, i64 94824593886920, i64 94824593887752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593889424, i32 301, i32 29), !dbg !1010
  %470 = call double @fabs(double %469) #1, !dbg !1010
  %471 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !1011
  %472 = load double, double* %471, align 8, !dbg !1011
  %473 = fmul double %470, %472, !dbg !1012
  call void @fMulHandler(double %470, double %472, double %473, i64 94824593889904, i64 94824593890808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593892480, i32 301, i32 42), !dbg !1013
  %474 = load double, double* %33, align 8, !dbg !1013
  %475 = fadd double %474, %473, !dbg !1013
  call void @fAddHandler(double %474, double %473, double %475, i64 94824593892872, i64 94824593892480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593893280, i32 301, i32 16), !dbg !1013
  store double %475, double* %33, align 8, !dbg !1013
  %476 = load double, double* %32, align 8, !dbg !1014
  %477 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1015
  %478 = load double, double* %477, align 8, !dbg !1015
  %479 = fdiv double %476, %478, !dbg !1016
  call void @fDivHandler(double %476, double %478, double %479, i64 94824593895064, i64 94824593895896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593897568, i32 302, i32 29), !dbg !1017
  %480 = call double @fabs(double %479) #1, !dbg !1017
  %481 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !1018
  %482 = load double, double* %481, align 8, !dbg !1018
  %483 = fmul double %480, %482, !dbg !1019
  call void @fMulHandler(double %480, double %482, double %483, i64 94824593898048, i64 94824593898952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593900624, i32 302, i32 42), !dbg !1020
  %484 = load double, double* %33, align 8, !dbg !1020
  %485 = fadd double %484, %483, !dbg !1020
  call void @fAddHandler(double %484, double %483, double %485, i64 94824593901016, i64 94824593900624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593901424, i32 302, i32 16), !dbg !1020
  store double %485, double* %33, align 8, !dbg !1020
  %486 = load double, double* %32, align 8, !dbg !1021
  %487 = fcmp oge double %486, 0.000000e+00, !dbg !1023
  %488 = call i1 @fCmpInstHandler(double %486, double 0.000000e+00, i1 %487, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593903616, i32 304, i32 15), !dbg !1024
  br i1 %488, label %489, label %495, !dbg !1024

; <label>:489:                                    ; preds = %337
  %490 = load double, double* %23, align 8, !dbg !1025
  %491 = load double, double* %32, align 8, !dbg !1027
  %492 = fmul double %490, %491, !dbg !1028
  call void @fMulHandler(double %490, double %491, double %492, i64 94824593904728, i64 94824593905048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593905456, i32 305, i32 24), !dbg !1029
  %493 = load double, double* %28, align 8, !dbg !1029
  %494 = fadd double %493, %492, !dbg !1029
  call void @fAddHandler(double %493, double %492, double %494, i64 94824593905848, i64 94824593905456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593906256, i32 305, i32 17), !dbg !1029
  store double %494, double* %28, align 8, !dbg !1029
  br label %501, !dbg !1030

; <label>:495:                                    ; preds = %337
  %496 = load double, double* %23, align 8, !dbg !1031
  %497 = load double, double* %32, align 8, !dbg !1033
  %498 = fmul double %496, %497, !dbg !1034
  call void @fMulHandler(double %496, double %497, double %498, i64 94824593908568, i64 94824593908888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593909296, i32 308, i32 24), !dbg !1035
  %499 = load double, double* %29, align 8, !dbg !1035
  %500 = fsub double %499, %498, !dbg !1035
  call void @fSubHandler(double %499, double %498, double %500, i64 94824593909688, i64 94824593909296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593910096, i32 308, i32 17), !dbg !1035
  store double %500, double* %29, align 8, !dbg !1035
  br label %501

; <label>:501:                                    ; preds = %495, %489
  %502 = load double, double* %23, align 8, !dbg !1036
  %503 = load double, double* %23, align 8, !dbg !1037
  %504 = fmul double %502, %503, !dbg !1038
  call void @fMulHandler(double %502, double %503, double %504, i64 94824593911976, i64 94824593912296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593912704, i32 311, i32 24), !dbg !1039
  %505 = load double, double* %33, align 8, !dbg !1039
  %506 = fmul double %504, %505, !dbg !1040
  call void @fMulHandler(double %504, double %505, double %506, i64 94824593912704, i64 94824593913096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593913504, i32 311, i32 30), !dbg !1041
  %507 = load double, double* %33, align 8, !dbg !1041
  %508 = fmul double %506, %507, !dbg !1042
  call void @fMulHandler(double %506, double %507, double %508, i64 94824593913504, i64 94824593913896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593914304, i32 311, i32 40), !dbg !1043
  %509 = load double, double* %30, align 8, !dbg !1043
  %510 = fadd double %509, %508, !dbg !1043
  call void @fAddHandler(double %509, double %508, double %510, i64 94824593914696, i64 94824593914304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593915104, i32 311, i32 17), !dbg !1043
  store double %510, double* %30, align 8, !dbg !1043
  br label %511, !dbg !1044

; <label>:511:                                    ; preds = %501
  %512 = load i32, i32* %24, align 4, !dbg !1045
  %513 = add nsw i32 %512, 2, !dbg !1045
  store i32 %513, i32* %24, align 4, !dbg !1045
  br label %227, !dbg !1047, !llvm.loop !1048

; <label>:514:                                    ; preds = %227
  %515 = load double, double* %28, align 8, !dbg !1050
  %516 = load double, double* %29, align 8, !dbg !1051
  %517 = fsub double %515, %516, !dbg !1052
  call void @fSubHandler(double %515, double %516, double %517, i64 94824593920216, i64 94824593920536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593920944, i32 314, i32 28), !dbg !1053
  %518 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1053
  %519 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %518, i32 0, i32 0, !dbg !1054
  store double %517, double* %519, align 8, !dbg !1055
  %520 = load double, double* %28, align 8, !dbg !1056
  %521 = load double, double* %29, align 8, !dbg !1057
  %522 = fadd double %520, %521, !dbg !1058
  call void @fAddHandler(double %520, double %521, double %522, i64 94824593922584, i64 94824593922968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593923376, i32 315, i32 53), !dbg !1059
  %523 = fmul double 0x3CC0000000000000, %522, !dbg !1059
  call void @fMulHandler(double 0x3CC0000000000000, double %522, double %523, i64 0, i64 94824593923376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593923792, i32 315, i32 42), !dbg !1060
  %524 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1060
  %525 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %524, i32 0, i32 1, !dbg !1061
  store double %523, double* %525, align 8, !dbg !1062
  %526 = load double, double* %30, align 8, !dbg !1063
  %527 = load i32, i32* %26, align 4, !dbg !1064
  %528 = load i32, i32* %25, align 4, !dbg !1065
  %529 = sub nsw i32 %527, %528, !dbg !1066
  %530 = sitofp i32 %529 to double, !dbg !1067
  %531 = fmul double 5.000000e-01, %530, !dbg !1068
  call void @fMulHandler(double 5.000000e-01, double %530, double %531, i64 0, i64 94824593927000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593927440, i32 316, i32 41), !dbg !1069
  %532 = fadd double %531, 1.000000e+00, !dbg !1069
  call void @fAddHandler(double %531, double 1.000000e+00, double %532, i64 94824593927440, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593927856, i32 316, i32 55), !dbg !1070
  %533 = fdiv double %526, %532, !dbg !1070
  call void @fDivHandler(double %526, double %532, double %533, i64 94824593925432, i64 94824593927856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593928240, i32 316, i32 35), !dbg !1071
  %534 = call double @sqrt(double %533) #6, !dbg !1071
  call void @callOneArgHandler(i32 14, double %533, double %534, i64 94824593928240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593928720, i32 316, i32 20), !dbg !1072
  %535 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1072
  %536 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %535, i32 0, i32 1, !dbg !1073
  %537 = load double, double* %536, align 8, !dbg !1074
  %538 = fadd double %537, %534, !dbg !1074
  call void @fAddHandler(double %537, double %534, double %538, i64 94824593930008, i64 94824593928720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593930416, i32 316, i32 17), !dbg !1074
  store double %538, double* %536, align 8, !dbg !1074
  %539 = load i32, i32* %26, align 4, !dbg !1075
  %540 = load i32, i32* %25, align 4, !dbg !1076
  %541 = sub nsw i32 %539, %540, !dbg !1077
  %542 = sitofp i32 %541 to double, !dbg !1075
  %543 = fadd double %542, 2.000000e+00, !dbg !1078
  call void @fAddHandler(double %542, double 2.000000e+00, double %543, i64 94824593933384, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593744736, i32 317, i32 59), !dbg !1079
  %544 = fmul double 0x3CC0000000000000, %543, !dbg !1079
  call void @fMulHandler(double 0x3CC0000000000000, double %543, double %544, i64 0, i64 94824593744736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593745120, i32 317, i32 42), !dbg !1080
  %545 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1080
  %546 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %545, i32 0, i32 0, !dbg !1081
  %547 = load double, double* %546, align 8, !dbg !1081
  %548 = call double @fabs(double %547) #1, !dbg !1082
  %549 = fmul double %544, %548, !dbg !1083
  call void @fMulHandler(double %544, double %548, double %549, i64 94824593745120, i64 94824593748080, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593748560, i32 317, i32 66), !dbg !1084
  %550 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1084
  %551 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %550, i32 0, i32 1, !dbg !1085
  %552 = load double, double* %551, align 8, !dbg !1086
  %553 = fadd double %552, %549, !dbg !1086
  call void @fAddHandler(double %552, double %549, double %553, i64 94824593944296, i64 94824593748560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94824593944704, i32 317, i32 17), !dbg !1086
  store double %553, double* %551, align 8, !dbg !1086
  store i32 0, i32* %8, align 4, !dbg !1087
  br label %554, !dbg !1087

; <label>:554:                                    ; preds = %514, %334, %148, %108, %75, %73
  %555 = load i32, i32* %8, align 4, !dbg !1088
  ret i32 %555, !dbg !1088
}

; Function Attrs: nounwind uwtable
define internal i32 @delta(i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1089 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1092, metadata !59), !dbg !1093
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1094, metadata !59), !dbg !1095
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1096, metadata !59), !dbg !1097
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1098, metadata !59), !dbg !1099
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1100, metadata !59), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1102, metadata !59), !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1104, metadata !59), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1106, metadata !59), !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1108, metadata !59), !dbg !1109
  store i32 0, i32* %14, align 4, !dbg !1109
  %15 = load i32, i32* %6, align 4, !dbg !1110
  %16 = load i32, i32* %7, align 4, !dbg !1111
  %17 = add nsw i32 %15, %16, !dbg !1112
  %18 = load i32, i32* %8, align 4, !dbg !1113
  %19 = sub nsw i32 %17, %18, !dbg !1114
  %20 = sdiv i32 %19, 2, !dbg !1115
  %21 = call i32 @gsl_sf_fact_e(i32 %20, %struct.gsl_sf_result_struct* %10), !dbg !1116
  %22 = load i32, i32* %14, align 4, !dbg !1117
  %23 = add nsw i32 %22, %21, !dbg !1117
  store i32 %23, i32* %14, align 4, !dbg !1117
  %24 = load i32, i32* %6, align 4, !dbg !1118
  %25 = load i32, i32* %8, align 4, !dbg !1119
  %26 = add nsw i32 %24, %25, !dbg !1120
  %27 = load i32, i32* %7, align 4, !dbg !1121
  %28 = sub nsw i32 %26, %27, !dbg !1122
  %29 = sdiv i32 %28, 2, !dbg !1123
  %30 = call i32 @gsl_sf_fact_e(i32 %29, %struct.gsl_sf_result_struct* %11), !dbg !1124
  %31 = load i32, i32* %14, align 4, !dbg !1125
  %32 = add nsw i32 %31, %30, !dbg !1125
  store i32 %32, i32* %14, align 4, !dbg !1125
  %33 = load i32, i32* %7, align 4, !dbg !1126
  %34 = load i32, i32* %8, align 4, !dbg !1127
  %35 = add nsw i32 %33, %34, !dbg !1128
  %36 = load i32, i32* %6, align 4, !dbg !1129
  %37 = sub nsw i32 %35, %36, !dbg !1130
  %38 = sdiv i32 %37, 2, !dbg !1131
  %39 = call i32 @gsl_sf_fact_e(i32 %38, %struct.gsl_sf_result_struct* %12), !dbg !1132
  %40 = load i32, i32* %14, align 4, !dbg !1133
  %41 = add nsw i32 %40, %39, !dbg !1133
  store i32 %41, i32* %14, align 4, !dbg !1133
  %42 = load i32, i32* %6, align 4, !dbg !1134
  %43 = load i32, i32* %7, align 4, !dbg !1135
  %44 = add nsw i32 %42, %43, !dbg !1136
  %45 = load i32, i32* %8, align 4, !dbg !1137
  %46 = add nsw i32 %44, %45, !dbg !1138
  %47 = sdiv i32 %46, 2, !dbg !1139
  %48 = add nsw i32 %47, 1, !dbg !1140
  %49 = call i32 @gsl_sf_fact_e(i32 %48, %struct.gsl_sf_result_struct* %13), !dbg !1141
  %50 = load i32, i32* %14, align 4, !dbg !1142
  %51 = add nsw i32 %50, %49, !dbg !1142
  store i32 %51, i32* %14, align 4, !dbg !1142
  %52 = load i32, i32* %14, align 4, !dbg !1143
  %53 = icmp ne i32 %52, 0, !dbg !1145
  %54 = sext i32 %52 to i64, !dbg !1146
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 0, i1 %53, i32 33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94824593977552, i32 71, i32 13), !dbg !1146
  br i1 %55, label %56, label %65, !dbg !1146

; <label>:56:                                     ; preds = %4
  br label %57, !dbg !1147, !llvm.loop !1149

; <label>:57:                                     ; preds = %56
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !1150
  store double 0x7FF0000000000000, double* %59, align 8, !dbg !1150
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !1150
  store double 0x7FF0000000000000, double* %61, align 8, !dbg !1150
  br label %62, !dbg !1150, !llvm.loop !1153

; <label>:62:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 72, i32 16), !dbg !1155
  store i32 16, i32* %5, align 4, !dbg !1155
  br label %86, !dbg !1155
                                                  ; No predecessors!
  br label %64, !dbg !1158

; <label>:64:                                     ; preds = %63
  br label %65, !dbg !1160

; <label>:65:                                     ; preds = %64, %4
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1161
  %67 = load double, double* %66, align 8, !dbg !1161
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1162
  %69 = load double, double* %68, align 8, !dbg !1162
  %70 = fmul double %67, %69, !dbg !1163
  call void @fMulHandler(double %67, double %69, double %70, i64 94824593986152, i64 94824593988248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94824593989920, i32 74, i32 19), !dbg !1164
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1164
  %72 = load double, double* %71, align 8, !dbg !1164
  %73 = fmul double %70, %72, !dbg !1165
  call void @fMulHandler(double %70, double %72, double %73, i64 94824593989920, i64 94824593990760, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94824593992432, i32 74, i32 28), !dbg !1166
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1166
  %75 = load double, double* %74, align 8, !dbg !1166
  %76 = fdiv double %73, %75, !dbg !1167
  call void @fDivHandler(double %73, double %75, double %76, i64 94824593992432, i64 94824593993272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94824593994944, i32 74, i32 37), !dbg !1168
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1168
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !1169
  store double %76, double* %78, align 8, !dbg !1170
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1171
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1172
  %81 = load double, double* %80, align 8, !dbg !1172
  %82 = call double @fabs(double %81) #1, !dbg !1173
  %83 = fmul double 0x3CD0000000000000, %82, !dbg !1174
  call void @fMulHandler(double 0x3CD0000000000000, double %82, double %83, i64 0, i64 94824593999152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94824593999696, i32 75, i32 34), !dbg !1175
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1175
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !1176
  store double %83, double* %85, align 8, !dbg !1177
  store i32 0, i32* %5, align 4, !dbg !1178
  br label %86, !dbg !1178

; <label>:86:                                     ; preds = %65, %62
  %87 = load i32, i32* %5, align 4, !dbg !1179
  ret i32 %87, !dbg !1179
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMin5(i32, i32, i32, i32, i32) #3 !dbg !1180 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1183, metadata !59), !dbg !1184
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1185, metadata !59), !dbg !1186
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1187, metadata !59), !dbg !1188
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1189, metadata !59), !dbg !1190
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1191, metadata !59), !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1193, metadata !59), !dbg !1194
  %14 = load i32, i32* %6, align 4, !dbg !1195
  %15 = load i32, i32* %7, align 4, !dbg !1195
  %16 = icmp slt i32 %14, %15, !dbg !1195
  %17 = sext i32 %14 to i64, !dbg !1195
  %18 = sext i32 %15 to i64, !dbg !1195
  %19 = call i1 @iCmpInstHandler(i64 %17, i64 %18, i1 %16, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94824593535712, i32 52, i32 11), !dbg !1195
  br i1 %19, label %20, label %22, !dbg !1195

; <label>:20:                                     ; preds = %5
  %21 = load i32, i32* %6, align 4, !dbg !1196
  br label %24, !dbg !1196

; <label>:22:                                     ; preds = %5
  %23 = load i32, i32* %7, align 4, !dbg !1198
  br label %24, !dbg !1198

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], !dbg !1200
  store i32 %25, i32* %11, align 4, !dbg !1202
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1203, metadata !59), !dbg !1204
  %26 = load i32, i32* %8, align 4, !dbg !1205
  %27 = load i32, i32* %9, align 4, !dbg !1205
  %28 = icmp slt i32 %26, %27, !dbg !1205
  %29 = sext i32 %26 to i64, !dbg !1205
  %30 = sext i32 %27 to i64, !dbg !1205
  %31 = call i1 @iCmpInstHandler(i64 %29, i64 %30, i1 %28, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94824594031008, i32 53, i32 11), !dbg !1205
  br i1 %31, label %32, label %34, !dbg !1205

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %8, align 4, !dbg !1206
  br label %36, !dbg !1206

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %9, align 4, !dbg !1207
  br label %36, !dbg !1207

; <label>:36:                                     ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ], !dbg !1208
  store i32 %37, i32* %12, align 4, !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1210, metadata !59), !dbg !1211
  %38 = load i32, i32* %11, align 4, !dbg !1212
  %39 = load i32, i32* %12, align 4, !dbg !1212
  %40 = icmp slt i32 %38, %39, !dbg !1212
  %41 = sext i32 %38 to i64, !dbg !1212
  %42 = sext i32 %39 to i64, !dbg !1212
  %43 = call i1 @iCmpInstHandler(i64 %41, i64 %42, i1 %40, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94824594039584, i32 54, i32 11), !dbg !1212
  br i1 %43, label %44, label %46, !dbg !1212

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %11, align 4, !dbg !1213
  br label %48, !dbg !1213

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %12, align 4, !dbg !1214
  br label %48, !dbg !1214

; <label>:48:                                     ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ], !dbg !1215
  store i32 %49, i32* %13, align 4, !dbg !1216
  %50 = load i32, i32* %10, align 4, !dbg !1217
  %51 = load i32, i32* %13, align 4, !dbg !1217
  %52 = icmp slt i32 %50, %51, !dbg !1217
  %53 = sext i32 %50 to i64, !dbg !1217
  %54 = sext i32 %51 to i64, !dbg !1217
  %55 = call i1 @iCmpInstHandler(i64 %53, i64 %54, i1 %52, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94824594047072, i32 55, i32 10), !dbg !1217
  br i1 %55, label %56, label %58, !dbg !1217

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %10, align 4, !dbg !1218
  br label %60, !dbg !1218

; <label>:58:                                     ; preds = %48
  %59 = load i32, i32* %13, align 4, !dbg !1219
  br label %60, !dbg !1219

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ], !dbg !1220
  ret i32 %61, !dbg !1221
}

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_RacahW_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1222 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1223, metadata !59), !dbg !1224
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1225, metadata !59), !dbg !1226
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1227, metadata !59), !dbg !1228
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1229, metadata !59), !dbg !1230
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1231, metadata !59), !dbg !1232
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1233, metadata !59), !dbg !1234
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %14, metadata !1235, metadata !59), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1237, metadata !59), !dbg !1238
  %17 = load i32, i32* %8, align 4, !dbg !1239
  %18 = load i32, i32* %9, align 4, !dbg !1240
  %19 = load i32, i32* %12, align 4, !dbg !1241
  %20 = load i32, i32* %11, align 4, !dbg !1242
  %21 = load i32, i32* %10, align 4, !dbg !1243
  %22 = load i32, i32* %13, align 4, !dbg !1244
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %14, align 8, !dbg !1245
  %24 = call i32 @gsl_sf_coupling_6j_e(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, %struct.gsl_sf_result_struct* %23), !dbg !1246
  store i32 %24, i32* %15, align 4, !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1247, metadata !59), !dbg !1248
  %25 = load i32, i32* %8, align 4, !dbg !1249
  %26 = load i32, i32* %9, align 4, !dbg !1250
  %27 = add nsw i32 %25, %26, !dbg !1251
  %28 = load i32, i32* %10, align 4, !dbg !1252
  %29 = add nsw i32 %27, %28, !dbg !1253
  %30 = load i32, i32* %11, align 4, !dbg !1254
  %31 = add nsw i32 %29, %30, !dbg !1255
  %32 = sdiv i32 %31, 2, !dbg !1256
  store i32 %32, i32* %16, align 4, !dbg !1248
  %33 = load i32, i32* %16, align 4, !dbg !1257
  %34 = and i32 %33, 1, !dbg !1257
  %35 = icmp ne i32 %34, 0, !dbg !1257
  %36 = sext i32 %34 to i64, !dbg !1257
  %37 = call i1 @iCmpInstHandler(i64 %36, i64 0, i1 %35, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94824594078320, i32 331, i32 20), !dbg !1257
  %38 = select i1 %37, double -1.000000e+00, double 1.000000e+00, !dbg !1257
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %14, align 8, !dbg !1258
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !1259
  %41 = load double, double* %40, align 8, !dbg !1260
  %42 = fmul double %41, %38, !dbg !1260
  call void @fMulHandler(double %41, double %38, double %42, i64 94824594079400, i64 94824594078504, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94824594079808, i32 331, i32 15), !dbg !1260
  store double %42, double* %40, align 8, !dbg !1260
  %43 = load i32, i32* %15, align 4, !dbg !1261
  ret i32 %43, !dbg !1262
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_9j_e(i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1263 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.gsl_sf_result_struct*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1266, metadata !59), !dbg !1267
  store i32 %1, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1268, metadata !59), !dbg !1269
  store i32 %2, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1270, metadata !59), !dbg !1271
  store i32 %3, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1272, metadata !59), !dbg !1273
  store i32 %4, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1274, metadata !59), !dbg !1275
  store i32 %5, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1276, metadata !59), !dbg !1277
  store i32 %6, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1278, metadata !59), !dbg !1279
  store i32 %7, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1280, metadata !59), !dbg !1281
  store i32 %8, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1282, metadata !59), !dbg !1283
  store %struct.gsl_sf_result_struct* %9, %struct.gsl_sf_result_struct** %21, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %21, metadata !1284, metadata !59), !dbg !1285
  %35 = load i32, i32* %12, align 4, !dbg !1286
  %36 = icmp slt i32 %35, 0, !dbg !1288
  %37 = sext i32 %35 to i64, !dbg !1289
  %38 = call i1 @iCmpInstHandler(i64 %37, i64 0, i1 %36, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594099920, i32 344, i32 16), !dbg !1289
  br i1 %38, label %79, label %39, !dbg !1289

; <label>:39:                                     ; preds = %10
  %40 = load i32, i32* %13, align 4, !dbg !1290
  %41 = icmp slt i32 %40, 0, !dbg !1292
  %42 = sext i32 %40 to i64, !dbg !1293
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594101376, i32 344, i32 30), !dbg !1293
  br i1 %43, label %79, label %44, !dbg !1293

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %14, align 4, !dbg !1294
  %46 = icmp slt i32 %45, 0, !dbg !1296
  %47 = sext i32 %45 to i64, !dbg !1297
  %48 = call i1 @iCmpInstHandler(i64 %47, i64 0, i1 %46, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594102688, i32 344, i32 44), !dbg !1297
  br i1 %48, label %79, label %49, !dbg !1297

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %15, align 4, !dbg !1298
  %51 = icmp slt i32 %50, 0, !dbg !1299
  %52 = sext i32 %50 to i64, !dbg !1300
  %53 = call i1 @iCmpInstHandler(i64 %52, i64 0, i1 %51, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594104000, i32 345, i32 16), !dbg !1300
  br i1 %53, label %79, label %54, !dbg !1300

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %16, align 4, !dbg !1301
  %56 = icmp slt i32 %55, 0, !dbg !1302
  %57 = sext i32 %55 to i64, !dbg !1303
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594105312, i32 345, i32 30), !dbg !1303
  br i1 %58, label %79, label %59, !dbg !1303

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %17, align 4, !dbg !1304
  %61 = icmp slt i32 %60, 0, !dbg !1306
  %62 = sext i32 %60 to i64, !dbg !1307
  %63 = call i1 @iCmpInstHandler(i64 %62, i64 0, i1 %61, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594106624, i32 345, i32 44), !dbg !1307
  br i1 %63, label %79, label %64, !dbg !1307

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* %18, align 4, !dbg !1308
  %66 = icmp slt i32 %65, 0, !dbg !1309
  %67 = sext i32 %65 to i64, !dbg !1310
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594107936, i32 346, i32 16), !dbg !1310
  br i1 %68, label %79, label %69, !dbg !1310

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %19, align 4, !dbg !1311
  %71 = icmp slt i32 %70, 0, !dbg !1312
  %72 = sext i32 %70 to i64, !dbg !1313
  %73 = call i1 @iCmpInstHandler(i64 %72, i64 0, i1 %71, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594109248, i32 346, i32 30), !dbg !1313
  br i1 %73, label %79, label %74, !dbg !1313

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %20, align 4, !dbg !1314
  %76 = icmp slt i32 %75, 0, !dbg !1315
  %77 = sext i32 %75 to i64, !dbg !1316
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 0, i1 %76, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594110560, i32 346, i32 44), !dbg !1316
  br i1 %78, label %79, label %88, !dbg !1316

; <label>:79:                                     ; preds = %74, %69, %64, %59, %54, %49, %44, %39, %10
  br label %80, !dbg !1318, !llvm.loop !1320

; <label>:80:                                     ; preds = %79
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1321
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !1321
  store double 0x7FF8000000000000, double* %82, align 8, !dbg !1321
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1321
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !1321
  store double 0x7FF8000000000000, double* %84, align 8, !dbg !1321
  br label %85, !dbg !1321, !llvm.loop !1324

; <label>:85:                                     ; preds = %80
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 348, i32 1), !dbg !1326
  store i32 1, i32* %11, align 4, !dbg !1326
  br label %338, !dbg !1326
                                                  ; No predecessors!
  br label %87, !dbg !1329

; <label>:87:                                     ; preds = %86
  br label %338, !dbg !1331

; <label>:88:                                     ; preds = %74
  %89 = load i32, i32* %12, align 4, !dbg !1332
  %90 = load i32, i32* %13, align 4, !dbg !1334
  %91 = load i32, i32* %14, align 4, !dbg !1335
  %92 = call i32 @triangle_selection_fails(i32 %89, i32 %90, i32 %91), !dbg !1336
  %93 = icmp ne i32 %92, 0, !dbg !1336
  %94 = sext i32 %92 to i64, !dbg !1337
  %95 = call i1 @iCmpInstHandler(i64 %94, i64 0, i1 %93, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594120480, i32 350, i32 14), !dbg !1337
  br i1 %95, label %136, label %96, !dbg !1337

; <label>:96:                                     ; preds = %88
  %97 = load i32, i32* %15, align 4, !dbg !1338
  %98 = load i32, i32* %16, align 4, !dbg !1340
  %99 = load i32, i32* %17, align 4, !dbg !1341
  %100 = call i32 @triangle_selection_fails(i32 %97, i32 %98, i32 %99), !dbg !1342
  %101 = icmp ne i32 %100, 0, !dbg !1342
  %102 = sext i32 %100 to i64, !dbg !1343
  %103 = call i1 @iCmpInstHandler(i64 %102, i64 0, i1 %101, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594124528, i32 351, i32 14), !dbg !1343
  br i1 %103, label %136, label %104, !dbg !1343

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %18, align 4, !dbg !1344
  %106 = load i32, i32* %19, align 4, !dbg !1345
  %107 = load i32, i32* %20, align 4, !dbg !1346
  %108 = call i32 @triangle_selection_fails(i32 %105, i32 %106, i32 %107), !dbg !1347
  %109 = icmp ne i32 %108, 0, !dbg !1347
  %110 = sext i32 %108 to i64, !dbg !1348
  %111 = call i1 @iCmpInstHandler(i64 %110, i64 0, i1 %109, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594128432, i32 352, i32 14), !dbg !1348
  br i1 %111, label %136, label %112, !dbg !1348

; <label>:112:                                    ; preds = %104
  %113 = load i32, i32* %12, align 4, !dbg !1349
  %114 = load i32, i32* %15, align 4, !dbg !1350
  %115 = load i32, i32* %18, align 4, !dbg !1351
  %116 = call i32 @triangle_selection_fails(i32 %113, i32 %114, i32 %115), !dbg !1352
  %117 = icmp ne i32 %116, 0, !dbg !1352
  %118 = sext i32 %116 to i64, !dbg !1353
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 0, i1 %117, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594132336, i32 353, i32 14), !dbg !1353
  br i1 %119, label %136, label %120, !dbg !1353

; <label>:120:                                    ; preds = %112
  %121 = load i32, i32* %13, align 4, !dbg !1354
  %122 = load i32, i32* %16, align 4, !dbg !1355
  %123 = load i32, i32* %19, align 4, !dbg !1356
  %124 = call i32 @triangle_selection_fails(i32 %121, i32 %122, i32 %123), !dbg !1357
  %125 = icmp ne i32 %124, 0, !dbg !1357
  %126 = sext i32 %124 to i64, !dbg !1358
  %127 = call i1 @iCmpInstHandler(i64 %126, i64 0, i1 %125, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594136240, i32 354, i32 14), !dbg !1358
  br i1 %127, label %136, label %128, !dbg !1358

; <label>:128:                                    ; preds = %120
  %129 = load i32, i32* %14, align 4, !dbg !1359
  %130 = load i32, i32* %17, align 4, !dbg !1360
  %131 = load i32, i32* %20, align 4, !dbg !1361
  %132 = call i32 @triangle_selection_fails(i32 %129, i32 %130, i32 %131), !dbg !1362
  %133 = icmp ne i32 %132, 0, !dbg !1362
  %134 = sext i32 %132 to i64, !dbg !1363
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 0, i1 %133, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594140144, i32 355, i32 14), !dbg !1363
  br i1 %135, label %136, label %141, !dbg !1363

; <label>:136:                                    ; preds = %128, %120, %112, %104, %96, %88
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1364
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !1366
  store double 0.000000e+00, double* %138, align 8, !dbg !1367
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1368
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !1369
  store double 0.000000e+00, double* %140, align 8, !dbg !1370
  store i32 0, i32* %11, align 4, !dbg !1371
  br label %338, !dbg !1371

; <label>:141:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1372, metadata !59), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1375, metadata !59), !dbg !1376
  %142 = load i32, i32* %12, align 4, !dbg !1377
  %143 = load i32, i32* %20, align 4, !dbg !1378
  %144 = sub nsw i32 %142, %143, !dbg !1379
  %145 = call i32 @abs(i32 %144) #1, !dbg !1380
  %146 = load i32, i32* %19, align 4, !dbg !1381
  %147 = load i32, i32* %15, align 4, !dbg !1382
  %148 = sub nsw i32 %146, %147, !dbg !1383
  %149 = call i32 @abs(i32 %148) #1, !dbg !1384
  %150 = load i32, i32* %13, align 4, !dbg !1386
  %151 = load i32, i32* %17, align 4, !dbg !1387
  %152 = sub nsw i32 %150, %151, !dbg !1388
  %153 = call i32 @abs(i32 %152) #1, !dbg !1389
  %154 = call i32 @locMax3(i32 %145, i32 %149, i32 %153), !dbg !1391
  store i32 %154, i32* %23, align 4, !dbg !1376
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1393, metadata !59), !dbg !1394
  %155 = load i32, i32* %12, align 4, !dbg !1395
  %156 = load i32, i32* %20, align 4, !dbg !1396
  %157 = add nsw i32 %155, %156, !dbg !1397
  %158 = load i32, i32* %19, align 4, !dbg !1398
  %159 = load i32, i32* %15, align 4, !dbg !1399
  %160 = add nsw i32 %158, %159, !dbg !1400
  %161 = load i32, i32* %13, align 4, !dbg !1401
  %162 = load i32, i32* %17, align 4, !dbg !1402
  %163 = add nsw i32 %161, %162, !dbg !1403
  %164 = call i32 @locMin3(i32 %157, i32 %160, i32 %163), !dbg !1404
  store i32 %164, i32* %24, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata double* %25, metadata !1405, metadata !59), !dbg !1406
  store double 0.000000e+00, double* %25, align 8, !dbg !1406
  call void @llvm.dbg.declare(metadata double* %26, metadata !1407, metadata !59), !dbg !1408
  store double 0.000000e+00, double* %26, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata double* %27, metadata !1409, metadata !59), !dbg !1410
  store double 0.000000e+00, double* %27, align 8, !dbg !1410
  call void @llvm.dbg.declare(metadata double* %28, metadata !1411, metadata !59), !dbg !1412
  %165 = load i32, i32* %23, align 4, !dbg !1413
  store i32 %165, i32* %22, align 4, !dbg !1415
  br label %166, !dbg !1416

; <label>:166:                                    ; preds = %287, %141
  %167 = load i32, i32* %22, align 4, !dbg !1417
  %168 = load i32, i32* %24, align 4, !dbg !1420
  %169 = icmp sle i32 %167, %168, !dbg !1421
  %170 = sext i32 %167 to i64, !dbg !1422
  %171 = sext i32 %168 to i64, !dbg !1422
  %172 = call i1 @iCmpInstHandler(i64 %170, i64 %171, i1 %169, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594176768, i32 369, i32 21), !dbg !1422
  br i1 %172, label %173, label %290, !dbg !1422

; <label>:173:                                    ; preds = %166
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !1423, metadata !59), !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1426, metadata !59), !dbg !1427
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1428, metadata !59), !dbg !1429
  call void @llvm.dbg.declare(metadata double* %32, metadata !1430, metadata !59), !dbg !1431
  call void @llvm.dbg.declare(metadata double* %33, metadata !1432, metadata !59), !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1434, metadata !59), !dbg !1435
  store i32 0, i32* %34, align 4, !dbg !1435
  %174 = load i32, i32* %12, align 4, !dbg !1436
  %175 = load i32, i32* %20, align 4, !dbg !1437
  %176 = load i32, i32* %22, align 4, !dbg !1438
  %177 = load i32, i32* %19, align 4, !dbg !1439
  %178 = load i32, i32* %15, align 4, !dbg !1440
  %179 = load i32, i32* %18, align 4, !dbg !1441
  %180 = call i32 @gsl_sf_coupling_6j_e(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, %struct.gsl_sf_result_struct* %29), !dbg !1442
  %181 = load i32, i32* %34, align 4, !dbg !1443
  %182 = add nsw i32 %181, %180, !dbg !1443
  store i32 %182, i32* %34, align 4, !dbg !1443
  %183 = load i32, i32* %13, align 4, !dbg !1444
  %184 = load i32, i32* %17, align 4, !dbg !1445
  %185 = load i32, i32* %22, align 4, !dbg !1446
  %186 = load i32, i32* %15, align 4, !dbg !1447
  %187 = load i32, i32* %19, align 4, !dbg !1448
  %188 = load i32, i32* %16, align 4, !dbg !1449
  %189 = call i32 @gsl_sf_coupling_6j_e(i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, %struct.gsl_sf_result_struct* %30), !dbg !1450
  %190 = load i32, i32* %34, align 4, !dbg !1451
  %191 = add nsw i32 %190, %189, !dbg !1451
  store i32 %191, i32* %34, align 4, !dbg !1451
  %192 = load i32, i32* %12, align 4, !dbg !1452
  %193 = load i32, i32* %20, align 4, !dbg !1453
  %194 = load i32, i32* %22, align 4, !dbg !1454
  %195 = load i32, i32* %17, align 4, !dbg !1455
  %196 = load i32, i32* %13, align 4, !dbg !1456
  %197 = load i32, i32* %14, align 4, !dbg !1457
  %198 = call i32 @gsl_sf_coupling_6j_e(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, %struct.gsl_sf_result_struct* %31), !dbg !1458
  %199 = load i32, i32* %34, align 4, !dbg !1459
  %200 = add nsw i32 %199, %198, !dbg !1459
  store i32 %200, i32* %34, align 4, !dbg !1459
  %201 = load i32, i32* %34, align 4, !dbg !1460
  %202 = icmp ne i32 %201, 0, !dbg !1462
  %203 = sext i32 %201 to i64, !dbg !1463
  %204 = call i1 @iCmpInstHandler(i64 %203, i64 0, i1 %202, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594201888, i32 379, i32 17), !dbg !1463
  br i1 %204, label %205, label %214, !dbg !1463

; <label>:205:                                    ; preds = %173
  br label %206, !dbg !1464, !llvm.loop !1466

; <label>:206:                                    ; preds = %205
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1467
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 0, !dbg !1467
  store double 0x7FF0000000000000, double* %208, align 8, !dbg !1467
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1467
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 1, !dbg !1467
  store double 0x7FF0000000000000, double* %210, align 8, !dbg !1467
  br label %211, !dbg !1467, !llvm.loop !1470

; <label>:211:                                    ; preds = %206
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 380, i32 16), !dbg !1472
  store i32 16, i32* %11, align 4, !dbg !1472
  br label %338, !dbg !1472
                                                  ; No predecessors!
  br label %213, !dbg !1475

; <label>:213:                                    ; preds = %212
  br label %214, !dbg !1477

; <label>:214:                                    ; preds = %213, %173
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1478
  %216 = load double, double* %215, align 8, !dbg !1478
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1479
  %218 = load double, double* %217, align 8, !dbg !1479
  %219 = fmul double %216, %218, !dbg !1480
  call void @fMulHandler(double %216, double %218, double %219, i64 94824594210488, i64 94824594212584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594214256, i32 382, i32 21), !dbg !1481
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1481
  %221 = load double, double* %220, align 8, !dbg !1481
  %222 = fmul double %219, %221, !dbg !1482
  call void @fMulHandler(double %219, double %221, double %222, i64 94824594214256, i64 94824594215096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594216768, i32 382, i32 30), !dbg !1483
  store double %222, double* %32, align 8, !dbg !1483
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1484
  %224 = load double, double* %223, align 8, !dbg !1484
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1485
  %226 = load double, double* %225, align 8, !dbg !1485
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1486
  %228 = load double, double* %227, align 8, !dbg !1486
  %229 = fmul double %226, %228, !dbg !1487
  call void @fMulHandler(double %226, double %228, double %229, i64 94824594220120, i64 94824594222216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594223888, i32 383, i32 39), !dbg !1488
  %230 = call double @fabs(double %229) #1, !dbg !1488
  %231 = fmul double %224, %230, !dbg !1489
  call void @fMulHandler(double %224, double %230, double %231, i64 94824594218024, i64 94824594224368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594224848, i32 383, i32 26), !dbg !1490
  store double %231, double* %33, align 8, !dbg !1490
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1491
  %233 = load double, double* %232, align 8, !dbg !1491
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1492
  %235 = load double, double* %234, align 8, !dbg !1492
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1493
  %237 = load double, double* %236, align 8, !dbg !1493
  %238 = fmul double %235, %237, !dbg !1494
  call void @fMulHandler(double %235, double %237, double %238, i64 94824594228200, i64 94824594230296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594231968, i32 384, i32 39), !dbg !1495
  %239 = call double @fabs(double %238) #1, !dbg !1495
  %240 = fmul double %233, %239, !dbg !1496
  call void @fMulHandler(double %233, double %239, double %240, i64 94824594226104, i64 94824594232448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594232928, i32 384, i32 26), !dbg !1497
  %241 = load double, double* %33, align 8, !dbg !1497
  %242 = fadd double %241, %240, !dbg !1497
  call void @fAddHandler(double %241, double %240, double %242, i64 94824594233320, i64 94824594232928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594233728, i32 384, i32 16), !dbg !1497
  store double %242, double* %33, align 8, !dbg !1497
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1498
  %244 = load double, double* %243, align 8, !dbg !1498
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1499
  %246 = load double, double* %245, align 8, !dbg !1499
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1500
  %248 = load double, double* %247, align 8, !dbg !1500
  %249 = fmul double %246, %248, !dbg !1501
  call void @fMulHandler(double %246, double %248, double %249, i64 94824594238056, i64 94824594240152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594241824, i32 385, i32 39), !dbg !1502
  %250 = call double @fabs(double %249) #1, !dbg !1502
  %251 = fmul double %244, %250, !dbg !1503
  call void @fMulHandler(double %244, double %250, double %251, i64 94824594235960, i64 94824594242304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594242784, i32 385, i32 26), !dbg !1504
  %252 = load double, double* %33, align 8, !dbg !1504
  %253 = fadd double %252, %251, !dbg !1504
  call void @fAddHandler(double %252, double %251, double %253, i64 94824594243176, i64 94824594242784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594243584, i32 385, i32 16), !dbg !1504
  store double %253, double* %33, align 8, !dbg !1504
  %254 = load double, double* %32, align 8, !dbg !1505
  %255 = fcmp oge double %254, 0.000000e+00, !dbg !1507
  %256 = call i1 @fCmpInstHandler(double %254, double 0.000000e+00, i1 %255, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594245776, i32 387, i32 15), !dbg !1508
  br i1 %256, label %257, label %265, !dbg !1508

; <label>:257:                                    ; preds = %214
  %258 = load i32, i32* %22, align 4, !dbg !1509
  %259 = add nsw i32 %258, 1, !dbg !1511
  %260 = sitofp i32 %259 to double, !dbg !1512
  %261 = load double, double* %32, align 8, !dbg !1513
  %262 = fmul double %260, %261, !dbg !1514
  call void @fMulHandler(double %260, double %261, double %262, i64 94824594247624, i64 94824594248008, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594248416, i32 388, i32 29), !dbg !1515
  %263 = load double, double* %25, align 8, !dbg !1515
  %264 = fadd double %263, %262, !dbg !1515
  call void @fAddHandler(double %263, double %262, double %264, i64 94824594248808, i64 94824594248416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594249216, i32 388, i32 17), !dbg !1515
  store double %264, double* %25, align 8, !dbg !1515
  br label %273, !dbg !1516

; <label>:265:                                    ; preds = %214
  %266 = load i32, i32* %22, align 4, !dbg !1517
  %267 = add nsw i32 %266, 1, !dbg !1519
  %268 = sitofp i32 %267 to double, !dbg !1520
  %269 = load double, double* %32, align 8, !dbg !1521
  %270 = fmul double %268, %269, !dbg !1522
  call void @fMulHandler(double %268, double %269, double %270, i64 94824594252264, i64 94824594252648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594253056, i32 391, i32 29), !dbg !1523
  %271 = load double, double* %26, align 8, !dbg !1523
  %272 = fsub double %271, %270, !dbg !1523
  call void @fSubHandler(double %271, double %270, double %272, i64 94824594253448, i64 94824594253056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594253856, i32 391, i32 17), !dbg !1523
  store double %272, double* %26, align 8, !dbg !1523
  br label %273

; <label>:273:                                    ; preds = %265, %257
  %274 = load i32, i32* %22, align 4, !dbg !1524
  %275 = add nsw i32 %274, 1, !dbg !1525
  %276 = sitofp i32 %275 to double, !dbg !1526
  %277 = load double, double* %33, align 8, !dbg !1527
  %278 = fmul double %276, %277, !dbg !1528
  call void @fMulHandler(double %276, double %277, double %278, i64 94824594256472, i64 94824594256856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594257264, i32 394, i32 28), !dbg !1529
  %279 = load i32, i32* %22, align 4, !dbg !1529
  %280 = add nsw i32 %279, 1, !dbg !1530
  %281 = sitofp i32 %280 to double, !dbg !1531
  %282 = load double, double* %33, align 8, !dbg !1532
  %283 = fmul double %281, %282, !dbg !1533
  call void @fMulHandler(double %281, double %282, double %283, i64 94824594258456, i64 94824594258840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594259248, i32 394, i32 50), !dbg !1534
  %284 = fmul double %278, %283, !dbg !1534
  call void @fMulHandler(double %278, double %283, double %284, i64 94824594257264, i64 94824594259248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594259664, i32 394, i32 40), !dbg !1535
  %285 = load double, double* %27, align 8, !dbg !1535
  %286 = fadd double %285, %284, !dbg !1535
  call void @fAddHandler(double %285, double %284, double %286, i64 94824594260056, i64 94824594259664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594260464, i32 394, i32 17), !dbg !1535
  store double %286, double* %27, align 8, !dbg !1535
  br label %287, !dbg !1536

; <label>:287:                                    ; preds = %273
  %288 = load i32, i32* %22, align 4, !dbg !1537
  %289 = add nsw i32 %288, 2, !dbg !1537
  store i32 %289, i32* %22, align 4, !dbg !1537
  br label %166, !dbg !1539, !llvm.loop !1540

; <label>:290:                                    ; preds = %166
  %291 = load i32, i32* %23, align 4, !dbg !1542
  %292 = and i32 %291, 1, !dbg !1542
  %293 = icmp ne i32 %292, 0, !dbg !1542
  %294 = sext i32 %292 to i64, !dbg !1542
  %295 = call i1 @iCmpInstHandler(i64 %294, i64 0, i1 %293, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594159056, i32 397, i32 13), !dbg !1542
  %296 = select i1 %295, double -1.000000e+00, double 1.000000e+00, !dbg !1542
  store double %296, double* %28, align 8, !dbg !1543
  %297 = load double, double* %28, align 8, !dbg !1544
  %298 = load double, double* %25, align 8, !dbg !1545
  %299 = load double, double* %26, align 8, !dbg !1546
  %300 = fsub double %298, %299, !dbg !1547
  call void @fSubHandler(double %298, double %299, double %300, i64 94824594160104, i64 94824594160488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594160896, i32 399, i32 37), !dbg !1548
  %301 = fmul double %297, %300, !dbg !1548
  call void @fMulHandler(double %297, double %300, double %301, i64 94824594159720, i64 94824594160896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594271904, i32 399, i32 26), !dbg !1549
  %302 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1549
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %302, i32 0, i32 0, !dbg !1550
  store double %301, double* %303, align 8, !dbg !1551
  %304 = load double, double* %25, align 8, !dbg !1552
  %305 = load double, double* %26, align 8, !dbg !1553
  %306 = fadd double %304, %305, !dbg !1554
  call void @fAddHandler(double %304, double %305, double %306, i64 94824594273544, i64 94824594273928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594274336, i32 400, i32 53), !dbg !1555
  %307 = fmul double 0x3CC0000000000000, %306, !dbg !1555
  call void @fMulHandler(double 0x3CC0000000000000, double %306, double %307, i64 0, i64 94824594274336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594274752, i32 400, i32 42), !dbg !1556
  %308 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1556
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %308, i32 0, i32 1, !dbg !1557
  store double %307, double* %309, align 8, !dbg !1558
  %310 = load double, double* %27, align 8, !dbg !1559
  %311 = load i32, i32* %24, align 4, !dbg !1560
  %312 = load i32, i32* %23, align 4, !dbg !1561
  %313 = sub nsw i32 %311, %312, !dbg !1562
  %314 = sitofp i32 %313 to double, !dbg !1563
  %315 = fmul double 5.000000e-01, %314, !dbg !1564
  call void @fMulHandler(double 5.000000e-01, double %314, double %315, i64 0, i64 94824594277960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594278400, i32 401, i32 41), !dbg !1565
  %316 = fadd double %315, 1.000000e+00, !dbg !1565
  call void @fAddHandler(double %315, double 1.000000e+00, double %316, i64 94824594278400, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594278816, i32 401, i32 55), !dbg !1566
  %317 = fdiv double %310, %316, !dbg !1566
  call void @fDivHandler(double %310, double %316, double %317, i64 94824594276392, i64 94824594278816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594279200, i32 401, i32 35), !dbg !1567
  %318 = call double @sqrt(double %317) #6, !dbg !1567
  call void @callOneArgHandler(i32 14, double %317, double %318, i64 94824594279200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594279680, i32 401, i32 20), !dbg !1568
  %319 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1568
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %319, i32 0, i32 1, !dbg !1569
  %321 = load double, double* %320, align 8, !dbg !1570
  %322 = fadd double %321, %318, !dbg !1570
  call void @fAddHandler(double %321, double %318, double %322, i64 94824594280968, i64 94824594279680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594281376, i32 401, i32 17), !dbg !1570
  store double %322, double* %320, align 8, !dbg !1570
  %323 = load i32, i32* %24, align 4, !dbg !1571
  %324 = load i32, i32* %23, align 4, !dbg !1572
  %325 = sub nsw i32 %323, %324, !dbg !1573
  %326 = sitofp i32 %325 to double, !dbg !1571
  %327 = fadd double %326, 2.000000e+00, !dbg !1574
  call void @fAddHandler(double %326, double 2.000000e+00, double %327, i64 94824594284344, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594286048, i32 402, i32 57), !dbg !1575
  %328 = fmul double 0x3CC0000000000000, %327, !dbg !1575
  call void @fMulHandler(double 0x3CC0000000000000, double %327, double %328, i64 0, i64 94824594286048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594286432, i32 402, i32 42), !dbg !1576
  %329 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1576
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %329, i32 0, i32 0, !dbg !1577
  %331 = load double, double* %330, align 8, !dbg !1577
  %332 = call double @fabs(double %331) #1, !dbg !1578
  %333 = fmul double %328, %332, !dbg !1579
  call void @fMulHandler(double %328, double %332, double %333, i64 94824594286432, i64 94824594289392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594289872, i32 402, i32 64), !dbg !1580
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1580
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 1, !dbg !1581
  %336 = load double, double* %335, align 8, !dbg !1582
  %337 = fadd double %336, %333, !dbg !1582
  call void @fAddHandler(double %336, double %333, double %337, i64 94824594291096, i64 94824594289872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94824594291504, i32 402, i32 17), !dbg !1582
  store double %337, double* %335, align 8, !dbg !1582
  store i32 0, i32* %11, align 4, !dbg !1583
  br label %338, !dbg !1583

; <label>:338:                                    ; preds = %290, %211, %136, %87, %85
  %339 = load i32, i32* %11, align 4, !dbg !1584
  ret i32 %339, !dbg !1584
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_3j(i32, i32, i32, i32, i32, i32) #0 !dbg !1585 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1588, metadata !59), !dbg !1589
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1590, metadata !59), !dbg !1591
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1592, metadata !59), !dbg !1593
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1594, metadata !59), !dbg !1595
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1596, metadata !59), !dbg !1597
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1598, metadata !59), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1600, metadata !59), !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1602, metadata !59), !dbg !1601
  %16 = load i32, i32* %8, align 4, !dbg !1601
  %17 = load i32, i32* %9, align 4, !dbg !1601
  %18 = load i32, i32* %10, align 4, !dbg !1601
  %19 = load i32, i32* %11, align 4, !dbg !1601
  %20 = load i32, i32* %12, align 4, !dbg !1601
  %21 = load i32, i32* %13, align 4, !dbg !1601
  %22 = call i32 @gsl_sf_coupling_3j_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1601
  store i32 %22, i32* %15, align 4, !dbg !1601
  %23 = load i32, i32* %15, align 4, !dbg !1603
  %24 = icmp ne i32 %23, 0, !dbg !1603
  %25 = sext i32 %23 to i64, !dbg !1601
  %26 = call i1 @iCmpInstHandler(i64 %25, i64 0, i1 %24, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @21, i32 0, i32 0), i64 94824594307824, i32 416, i32 3), !dbg !1601
  br i1 %26, label %27, label %33, !dbg !1601

; <label>:27:                                     ; preds = %6
  br label %28, !dbg !1605, !llvm.loop !1608

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %15, align 4, !dbg !1610
  call void @gsl_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 418, i32 %29), !dbg !1610
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1610
  %31 = load double, double* %30, align 8, !dbg !1610
  store double %31, double* %7, align 8, !dbg !1610
  br label %36, !dbg !1610
                                                  ; No predecessors!
  br label %33, !dbg !1613

; <label>:33:                                     ; preds = %32, %6
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1615
  %35 = load double, double* %34, align 8, !dbg !1615
  store double %35, double* %7, align 8, !dbg !1615
  br label %36, !dbg !1615

; <label>:36:                                     ; preds = %33, %28
  %37 = load double, double* %7, align 8, !dbg !1617
  ret double %37, !dbg !1617
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_6j(i32, i32, i32, i32, i32, i32) #0 !dbg !1618 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1619, metadata !59), !dbg !1620
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1621, metadata !59), !dbg !1622
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1623, metadata !59), !dbg !1624
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1625, metadata !59), !dbg !1626
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1627, metadata !59), !dbg !1628
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1629, metadata !59), !dbg !1630
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1631, metadata !59), !dbg !1632
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1633, metadata !59), !dbg !1632
  %16 = load i32, i32* %8, align 4, !dbg !1632
  %17 = load i32, i32* %9, align 4, !dbg !1632
  %18 = load i32, i32* %10, align 4, !dbg !1632
  %19 = load i32, i32* %11, align 4, !dbg !1632
  %20 = load i32, i32* %12, align 4, !dbg !1632
  %21 = load i32, i32* %13, align 4, !dbg !1632
  %22 = call i32 @gsl_sf_coupling_6j_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1632
  store i32 %22, i32* %15, align 4, !dbg !1632
  %23 = load i32, i32* %15, align 4, !dbg !1634
  %24 = icmp ne i32 %23, 0, !dbg !1634
  %25 = sext i32 %23 to i64, !dbg !1632
  %26 = call i1 @iCmpInstHandler(i64 %25, i64 0, i1 %24, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @23, i32 0, i32 0), i64 94824594332688, i32 437, i32 3), !dbg !1632
  br i1 %26, label %27, label %33, !dbg !1632

; <label>:27:                                     ; preds = %6
  br label %28, !dbg !1636, !llvm.loop !1639

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %15, align 4, !dbg !1641
  call void @gsl_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 439, i32 %29), !dbg !1641
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1641
  %31 = load double, double* %30, align 8, !dbg !1641
  store double %31, double* %7, align 8, !dbg !1641
  br label %36, !dbg !1641
                                                  ; No predecessors!
  br label %33, !dbg !1644

; <label>:33:                                     ; preds = %32, %6
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1646
  %35 = load double, double* %34, align 8, !dbg !1646
  store double %35, double* %7, align 8, !dbg !1646
  br label %36, !dbg !1646

; <label>:36:                                     ; preds = %33, %28
  %37 = load double, double* %7, align 8, !dbg !1648
  ret double %37, !dbg !1648
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_RacahW(i32, i32, i32, i32, i32, i32) #0 !dbg !1649 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1650, metadata !59), !dbg !1651
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1652, metadata !59), !dbg !1653
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1654, metadata !59), !dbg !1655
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1656, metadata !59), !dbg !1657
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1658, metadata !59), !dbg !1659
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1660, metadata !59), !dbg !1661
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1662, metadata !59), !dbg !1663
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1664, metadata !59), !dbg !1663
  %16 = load i32, i32* %8, align 4, !dbg !1663
  %17 = load i32, i32* %9, align 4, !dbg !1663
  %18 = load i32, i32* %10, align 4, !dbg !1663
  %19 = load i32, i32* %11, align 4, !dbg !1663
  %20 = load i32, i32* %12, align 4, !dbg !1663
  %21 = load i32, i32* %13, align 4, !dbg !1663
  %22 = call i32 @gsl_sf_coupling_RacahW_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1663
  store i32 %22, i32* %15, align 4, !dbg !1663
  %23 = load i32, i32* %15, align 4, !dbg !1665
  %24 = icmp ne i32 %23, 0, !dbg !1665
  %25 = sext i32 %23 to i64, !dbg !1663
  %26 = call i1 @iCmpInstHandler(i64 %25, i64 0, i1 %24, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @25, i32 0, i32 0), i64 94824594357552, i32 446, i32 3), !dbg !1663
  br i1 %26, label %27, label %33, !dbg !1663

; <label>:27:                                     ; preds = %6
  br label %28, !dbg !1667, !llvm.loop !1670

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %15, align 4, !dbg !1672
  call void @gsl_error(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 448, i32 %29), !dbg !1672
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1672
  %31 = load double, double* %30, align 8, !dbg !1672
  store double %31, double* %7, align 8, !dbg !1672
  br label %36, !dbg !1672
                                                  ; No predecessors!
  br label %33, !dbg !1675

; <label>:33:                                     ; preds = %32, %6
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1677
  %35 = load double, double* %34, align 8, !dbg !1677
  store double %35, double* %7, align 8, !dbg !1677
  br label %36, !dbg !1677

; <label>:36:                                     ; preds = %33, %28
  %37 = load double, double* %7, align 8, !dbg !1679
  ret double %37, !dbg !1679
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_9j(i32, i32, i32, i32, i32, i32, i32, i32, i32) #0 !dbg !1680 {
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1683, metadata !59), !dbg !1684
  store i32 %1, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1685, metadata !59), !dbg !1686
  store i32 %2, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1687, metadata !59), !dbg !1688
  store i32 %3, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1689, metadata !59), !dbg !1690
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1691, metadata !59), !dbg !1692
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1693, metadata !59), !dbg !1694
  store i32 %6, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1695, metadata !59), !dbg !1696
  store i32 %7, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1697, metadata !59), !dbg !1698
  store i32 %8, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1699, metadata !59), !dbg !1700
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1701, metadata !59), !dbg !1702
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1703, metadata !59), !dbg !1702
  %22 = load i32, i32* %11, align 4, !dbg !1702
  %23 = load i32, i32* %12, align 4, !dbg !1702
  %24 = load i32, i32* %13, align 4, !dbg !1702
  %25 = load i32, i32* %14, align 4, !dbg !1702
  %26 = load i32, i32* %15, align 4, !dbg !1702
  %27 = load i32, i32* %16, align 4, !dbg !1702
  %28 = load i32, i32* %17, align 4, !dbg !1702
  %29 = load i32, i32* %18, align 4, !dbg !1702
  %30 = load i32, i32* %19, align 4, !dbg !1702
  %31 = call i32 @gsl_sf_coupling_9j_e(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.gsl_sf_result_struct* %20), !dbg !1702
  store i32 %31, i32* %21, align 4, !dbg !1702
  %32 = load i32, i32* %21, align 4, !dbg !1704
  %33 = icmp ne i32 %32, 0, !dbg !1704
  %34 = sext i32 %32 to i64, !dbg !1702
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 0, i1 %33, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @27, i32 0, i32 0), i64 94824594386944, i32 456, i32 3), !dbg !1702
  br i1 %35, label %36, label %42, !dbg !1702

; <label>:36:                                     ; preds = %9
  br label %37, !dbg !1706, !llvm.loop !1709

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %21, align 4, !dbg !1711
  call void @gsl_error(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 459, i32 %38), !dbg !1711
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1711
  %40 = load double, double* %39, align 8, !dbg !1711
  store double %40, double* %10, align 8, !dbg !1711
  br label %45, !dbg !1711
                                                  ; No predecessors!
  br label %42, !dbg !1714

; <label>:42:                                     ; preds = %41, %9
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1716
  %44 = load double, double* %43, align 8, !dbg !1716
  store double %44, double* %10, align 8, !dbg !1716
  br label %45, !dbg !1716

; <label>:45:                                     ; preds = %42, %37
  %46 = load double, double* %10, align 8, !dbg !1718
  ret double %46, !dbg !1718
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
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "coupling.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_coupling_3j_e", scope: !1, file: !1, line: 113, type: !46, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !48, !48, !48, !48, !48, !48, !49}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !51, line: 41, baseType: !52)
!51 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !51, line: 37, size: 128, align: 64, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !51, line: 38, baseType: !55, size: 64, align: 64)
!55 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !52, file: !51, line: 39, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "two_ja", arg: 1, scope: !45, file: !1, line: 113, type: !48)
!59 = !DIExpression()
!60 = !DILocation(line: 113, column: 27, scope: !45)
!61 = !DILocalVariable(name: "two_jb", arg: 2, scope: !45, file: !1, line: 113, type: !48)
!62 = !DILocation(line: 113, column: 39, scope: !45)
!63 = !DILocalVariable(name: "two_jc", arg: 3, scope: !45, file: !1, line: 113, type: !48)
!64 = !DILocation(line: 113, column: 51, scope: !45)
!65 = !DILocalVariable(name: "two_ma", arg: 4, scope: !45, file: !1, line: 114, type: !48)
!66 = !DILocation(line: 114, column: 27, scope: !45)
!67 = !DILocalVariable(name: "two_mb", arg: 5, scope: !45, file: !1, line: 114, type: !48)
!68 = !DILocation(line: 114, column: 39, scope: !45)
!69 = !DILocalVariable(name: "two_mc", arg: 6, scope: !45, file: !1, line: 114, type: !48)
!70 = !DILocation(line: 114, column: 51, scope: !45)
!71 = !DILocalVariable(name: "result", arg: 7, scope: !45, file: !1, line: 115, type: !49)
!72 = !DILocation(line: 115, column: 39, scope: !45)
!73 = !DILocation(line: 119, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !45, file: !1, line: 119, column: 6)
!75 = !DILocation(line: 119, column: 13, scope: !74)
!76 = !DILocation(line: 119, column: 17, scope: !74)
!77 = !DILocation(line: 119, column: 20, scope: !78)
!78 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 1)
!79 = !DILocation(line: 119, column: 27, scope: !78)
!80 = !DILocation(line: 119, column: 31, scope: !78)
!81 = !DILocation(line: 119, column: 34, scope: !82)
!82 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 2)
!83 = !DILocation(line: 119, column: 41, scope: !82)
!84 = !DILocation(line: 119, column: 6, scope: !82)
!85 = !DILocation(line: 120, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !74, file: !1, line: 119, column: 46)
!87 = distinct !{!87, !85}
!88 = !DILocation(line: 120, column: 5, scope: !89)
!89 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 1)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 120, column: 5)
!91 = distinct !{!91, !92}
!92 = !DILocation(line: 120, column: 5, scope: !90)
!93 = !DILocation(line: 120, column: 5, scope: !94)
!94 = !DILexicalBlockFile(scope: !95, file: !1, discriminator: 2)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 120, column: 5)
!96 = !DILocation(line: 120, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 3)
!98 = !DILocation(line: 121, column: 3, scope: !86)
!99 = !DILocation(line: 122, column: 40, scope: !100)
!100 = distinct !DILexicalBlock(scope: !74, file: !1, line: 122, column: 15)
!101 = !DILocation(line: 122, column: 48, scope: !100)
!102 = !DILocation(line: 122, column: 56, scope: !100)
!103 = !DILocation(line: 122, column: 15, scope: !100)
!104 = !DILocation(line: 123, column: 12, scope: !100)
!105 = !DILocation(line: 123, column: 33, scope: !106)
!106 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 1)
!107 = !DILocation(line: 123, column: 41, scope: !106)
!108 = !DILocation(line: 123, column: 49, scope: !106)
!109 = !DILocation(line: 123, column: 57, scope: !106)
!110 = !DILocation(line: 123, column: 65, scope: !106)
!111 = !DILocation(line: 123, column: 73, scope: !106)
!112 = !DILocation(line: 123, column: 15, scope: !106)
!113 = !DILocation(line: 122, column: 15, scope: !78)
!114 = !DILocation(line: 125, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !100, file: !1, line: 124, column: 8)
!116 = !DILocation(line: 125, column: 13, scope: !115)
!117 = !DILocation(line: 125, column: 17, scope: !115)
!118 = !DILocation(line: 126, column: 5, scope: !115)
!119 = !DILocation(line: 126, column: 13, scope: !115)
!120 = !DILocation(line: 126, column: 17, scope: !115)
!121 = !DILocation(line: 127, column: 5, scope: !115)
!122 = !DILocation(line: 129, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !100, file: !1, line: 129, column: 13)
!124 = !DILocation(line: 129, column: 20, scope: !123)
!125 = !DILocation(line: 129, column: 25, scope: !123)
!126 = !DILocation(line: 129, column: 28, scope: !127)
!127 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 1)
!128 = !DILocation(line: 129, column: 35, scope: !127)
!129 = !DILocation(line: 129, column: 40, scope: !127)
!130 = !DILocation(line: 129, column: 43, scope: !131)
!131 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 2)
!132 = !DILocation(line: 129, column: 50, scope: !131)
!133 = !DILocation(line: 130, column: 13, scope: !123)
!134 = !DILocation(line: 130, column: 18, scope: !127)
!135 = !DILocation(line: 130, column: 27, scope: !127)
!136 = !DILocation(line: 130, column: 25, scope: !127)
!137 = !DILocation(line: 130, column: 36, scope: !127)
!138 = !DILocation(line: 130, column: 34, scope: !127)
!139 = !DILocation(line: 130, column: 44, scope: !127)
!140 = !DILocation(line: 130, column: 48, scope: !127)
!141 = !DILocation(line: 129, column: 13, scope: !142)
!142 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 3)
!143 = !DILocation(line: 132, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !123, file: !1, line: 130, column: 56)
!145 = !DILocation(line: 132, column: 13, scope: !144)
!146 = !DILocation(line: 132, column: 17, scope: !144)
!147 = !DILocation(line: 133, column: 5, scope: !144)
!148 = !DILocation(line: 133, column: 13, scope: !144)
!149 = !DILocation(line: 133, column: 17, scope: !144)
!150 = !DILocation(line: 134, column: 5, scope: !144)
!151 = !DILocalVariable(name: "jca", scope: !152, file: !1, line: 137, type: !48)
!152 = distinct !DILexicalBlock(scope: !123, file: !1, line: 136, column: 8)
!153 = !DILocation(line: 137, column: 9, scope: !152)
!154 = !DILocation(line: 137, column: 18, scope: !152)
!155 = !DILocation(line: 137, column: 17, scope: !152)
!156 = !DILocation(line: 137, column: 27, scope: !152)
!157 = !DILocation(line: 137, column: 25, scope: !152)
!158 = !DILocation(line: 137, column: 36, scope: !152)
!159 = !DILocation(line: 137, column: 34, scope: !152)
!160 = !DILocation(line: 137, column: 44, scope: !152)
!161 = !DILocalVariable(name: "jcb", scope: !152, file: !1, line: 138, type: !48)
!162 = !DILocation(line: 138, column: 9, scope: !152)
!163 = !DILocation(line: 138, column: 18, scope: !152)
!164 = !DILocation(line: 138, column: 27, scope: !152)
!165 = !DILocation(line: 138, column: 25, scope: !152)
!166 = !DILocation(line: 138, column: 36, scope: !152)
!167 = !DILocation(line: 138, column: 34, scope: !152)
!168 = !DILocation(line: 138, column: 44, scope: !152)
!169 = !DILocalVariable(name: "jcc", scope: !152, file: !1, line: 139, type: !48)
!170 = !DILocation(line: 139, column: 9, scope: !152)
!171 = !DILocation(line: 139, column: 18, scope: !152)
!172 = !DILocation(line: 139, column: 27, scope: !152)
!173 = !DILocation(line: 139, column: 25, scope: !152)
!174 = !DILocation(line: 139, column: 36, scope: !152)
!175 = !DILocation(line: 139, column: 34, scope: !152)
!176 = !DILocation(line: 139, column: 44, scope: !152)
!177 = !DILocalVariable(name: "jmma", scope: !152, file: !1, line: 140, type: !48)
!178 = !DILocation(line: 140, column: 9, scope: !152)
!179 = !DILocation(line: 140, column: 18, scope: !152)
!180 = !DILocation(line: 140, column: 27, scope: !152)
!181 = !DILocation(line: 140, column: 25, scope: !152)
!182 = !DILocation(line: 140, column: 35, scope: !152)
!183 = !DILocalVariable(name: "jmmb", scope: !152, file: !1, line: 141, type: !48)
!184 = !DILocation(line: 141, column: 9, scope: !152)
!185 = !DILocation(line: 141, column: 18, scope: !152)
!186 = !DILocation(line: 141, column: 27, scope: !152)
!187 = !DILocation(line: 141, column: 25, scope: !152)
!188 = !DILocation(line: 141, column: 35, scope: !152)
!189 = !DILocalVariable(name: "jmmc", scope: !152, file: !1, line: 142, type: !48)
!190 = !DILocation(line: 142, column: 9, scope: !152)
!191 = !DILocation(line: 142, column: 18, scope: !152)
!192 = !DILocation(line: 142, column: 27, scope: !152)
!193 = !DILocation(line: 142, column: 25, scope: !152)
!194 = !DILocation(line: 142, column: 35, scope: !152)
!195 = !DILocalVariable(name: "jpma", scope: !152, file: !1, line: 143, type: !48)
!196 = !DILocation(line: 143, column: 9, scope: !152)
!197 = !DILocation(line: 143, column: 18, scope: !152)
!198 = !DILocation(line: 143, column: 27, scope: !152)
!199 = !DILocation(line: 143, column: 25, scope: !152)
!200 = !DILocation(line: 143, column: 35, scope: !152)
!201 = !DILocalVariable(name: "jpmb", scope: !152, file: !1, line: 144, type: !48)
!202 = !DILocation(line: 144, column: 9, scope: !152)
!203 = !DILocation(line: 144, column: 18, scope: !152)
!204 = !DILocation(line: 144, column: 27, scope: !152)
!205 = !DILocation(line: 144, column: 25, scope: !152)
!206 = !DILocation(line: 144, column: 35, scope: !152)
!207 = !DILocalVariable(name: "jpmc", scope: !152, file: !1, line: 145, type: !48)
!208 = !DILocation(line: 145, column: 9, scope: !152)
!209 = !DILocation(line: 145, column: 18, scope: !152)
!210 = !DILocation(line: 145, column: 27, scope: !152)
!211 = !DILocation(line: 145, column: 25, scope: !152)
!212 = !DILocation(line: 145, column: 35, scope: !152)
!213 = !DILocalVariable(name: "jsum", scope: !152, file: !1, line: 146, type: !48)
!214 = !DILocation(line: 146, column: 9, scope: !152)
!215 = !DILocation(line: 146, column: 18, scope: !152)
!216 = !DILocation(line: 146, column: 27, scope: !152)
!217 = !DILocation(line: 146, column: 25, scope: !152)
!218 = !DILocation(line: 146, column: 36, scope: !152)
!219 = !DILocation(line: 146, column: 34, scope: !152)
!220 = !DILocation(line: 146, column: 44, scope: !152)
!221 = !DILocalVariable(name: "kmin", scope: !152, file: !1, line: 147, type: !48)
!222 = !DILocation(line: 147, column: 9, scope: !152)
!223 = !DILocation(line: 147, column: 28, scope: !152)
!224 = !DILocation(line: 147, column: 35, scope: !152)
!225 = !DILocation(line: 147, column: 33, scope: !152)
!226 = !DILocation(line: 147, column: 41, scope: !152)
!227 = !DILocation(line: 147, column: 48, scope: !152)
!228 = !DILocation(line: 147, column: 46, scope: !152)
!229 = !DILocation(line: 147, column: 16, scope: !152)
!230 = !DILocalVariable(name: "kmax", scope: !152, file: !1, line: 148, type: !48)
!231 = !DILocation(line: 148, column: 9, scope: !152)
!232 = !DILocation(line: 148, column: 25, scope: !152)
!233 = !DILocation(line: 148, column: 30, scope: !152)
!234 = !DILocation(line: 148, column: 36, scope: !152)
!235 = !DILocation(line: 148, column: 16, scope: !152)
!236 = !DILocalVariable(name: "k", scope: !152, file: !1, line: 149, type: !48)
!237 = !DILocation(line: 149, column: 9, scope: !152)
!238 = !DILocalVariable(name: "sign", scope: !152, file: !1, line: 149, type: !48)
!239 = !DILocation(line: 149, column: 12, scope: !152)
!240 = !DILocation(line: 149, column: 19, scope: !152)
!241 = !DILocalVariable(name: "status", scope: !152, file: !1, line: 150, type: !48)
!242 = !DILocation(line: 150, column: 9, scope: !152)
!243 = !DILocalVariable(name: "sum_pos", scope: !152, file: !1, line: 151, type: !55)
!244 = !DILocation(line: 151, column: 12, scope: !152)
!245 = !DILocalVariable(name: "sum_neg", scope: !152, file: !1, line: 151, type: !55)
!246 = !DILocation(line: 151, column: 27, scope: !152)
!247 = !DILocalVariable(name: "sum_err", scope: !152, file: !1, line: 151, type: !55)
!248 = !DILocation(line: 151, column: 42, scope: !152)
!249 = !DILocalVariable(name: "bc1", scope: !152, file: !1, line: 152, type: !50)
!250 = !DILocation(line: 152, column: 19, scope: !152)
!251 = !DILocalVariable(name: "bc2", scope: !152, file: !1, line: 152, type: !50)
!252 = !DILocation(line: 152, column: 24, scope: !152)
!253 = !DILocalVariable(name: "bc3", scope: !152, file: !1, line: 152, type: !50)
!254 = !DILocation(line: 152, column: 29, scope: !152)
!255 = !DILocalVariable(name: "bcn1", scope: !152, file: !1, line: 152, type: !50)
!256 = !DILocation(line: 152, column: 34, scope: !152)
!257 = !DILocalVariable(name: "bcn2", scope: !152, file: !1, line: 152, type: !50)
!258 = !DILocation(line: 152, column: 40, scope: !152)
!259 = !DILocalVariable(name: "bcd1", scope: !152, file: !1, line: 152, type: !50)
!260 = !DILocation(line: 152, column: 46, scope: !152)
!261 = !DILocalVariable(name: "bcd2", scope: !152, file: !1, line: 152, type: !50)
!262 = !DILocation(line: 152, column: 52, scope: !152)
!263 = !DILocalVariable(name: "bcd3", scope: !152, file: !1, line: 152, type: !50)
!264 = !DILocation(line: 152, column: 58, scope: !152)
!265 = !DILocalVariable(name: "bcd4", scope: !152, file: !1, line: 152, type: !50)
!266 = !DILocation(line: 152, column: 64, scope: !152)
!267 = !DILocalVariable(name: "term", scope: !152, file: !1, line: 152, type: !50)
!268 = !DILocation(line: 152, column: 70, scope: !152)
!269 = !DILocalVariable(name: "lnorm", scope: !152, file: !1, line: 152, type: !50)
!270 = !DILocation(line: 152, column: 76, scope: !152)
!271 = !DILocation(line: 154, column: 34, scope: !152)
!272 = !DILocation(line: 154, column: 42, scope: !152)
!273 = !DILocation(line: 154, column: 15, scope: !152)
!274 = !DILocation(line: 154, column: 12, scope: !152)
!275 = !DILocation(line: 155, column: 34, scope: !152)
!276 = !DILocation(line: 155, column: 42, scope: !152)
!277 = !DILocation(line: 155, column: 15, scope: !152)
!278 = !DILocation(line: 155, column: 12, scope: !152)
!279 = !DILocation(line: 156, column: 34, scope: !152)
!280 = !DILocation(line: 156, column: 38, scope: !152)
!281 = !DILocation(line: 156, column: 42, scope: !152)
!282 = !DILocation(line: 156, column: 15, scope: !152)
!283 = !DILocation(line: 156, column: 12, scope: !152)
!284 = !DILocation(line: 157, column: 34, scope: !152)
!285 = !DILocation(line: 157, column: 42, scope: !152)
!286 = !DILocation(line: 157, column: 15, scope: !152)
!287 = !DILocation(line: 157, column: 12, scope: !152)
!288 = !DILocation(line: 158, column: 34, scope: !152)
!289 = !DILocation(line: 158, column: 42, scope: !152)
!290 = !DILocation(line: 158, column: 15, scope: !152)
!291 = !DILocation(line: 158, column: 12, scope: !152)
!292 = !DILocation(line: 159, column: 34, scope: !152)
!293 = !DILocation(line: 159, column: 42, scope: !152)
!294 = !DILocation(line: 159, column: 15, scope: !152)
!295 = !DILocation(line: 159, column: 12, scope: !152)
!296 = !DILocation(line: 161, column: 29, scope: !152)
!297 = !DILocation(line: 161, column: 40, scope: !152)
!298 = !DILocation(line: 161, column: 33, scope: !152)
!299 = !DILocation(line: 161, column: 51, scope: !152)
!300 = !DILocation(line: 161, column: 44, scope: !152)
!301 = !DILocation(line: 161, column: 62, scope: !152)
!302 = !DILocation(line: 161, column: 55, scope: !152)
!303 = !DILocation(line: 161, column: 73, scope: !152)
!304 = !DILocation(line: 161, column: 66, scope: !152)
!305 = !DILocation(line: 162, column: 31, scope: !152)
!306 = !DILocation(line: 162, column: 24, scope: !152)
!307 = !DILocation(line: 162, column: 41, scope: !152)
!308 = !DILocation(line: 162, column: 48, scope: !152)
!309 = !DILocation(line: 162, column: 37, scope: !152)
!310 = !DILocation(line: 162, column: 35, scope: !152)
!311 = !DILocation(line: 161, column: 21, scope: !152)
!312 = !DILocation(line: 161, column: 11, scope: !152)
!313 = !DILocation(line: 161, column: 15, scope: !152)
!314 = !DILocation(line: 163, column: 29, scope: !152)
!315 = !DILocation(line: 163, column: 40, scope: !152)
!316 = !DILocation(line: 163, column: 33, scope: !152)
!317 = !DILocation(line: 163, column: 51, scope: !152)
!318 = !DILocation(line: 163, column: 44, scope: !152)
!319 = !DILocation(line: 163, column: 62, scope: !152)
!320 = !DILocation(line: 163, column: 55, scope: !152)
!321 = !DILocation(line: 163, column: 73, scope: !152)
!322 = !DILocation(line: 163, column: 66, scope: !152)
!323 = !DILocation(line: 164, column: 31, scope: !152)
!324 = !DILocation(line: 164, column: 24, scope: !152)
!325 = !DILocation(line: 164, column: 59, scope: !152)
!326 = !DILocation(line: 164, column: 66, scope: !152)
!327 = !DILocation(line: 164, column: 55, scope: !152)
!328 = !DILocation(line: 164, column: 53, scope: !152)
!329 = !DILocation(line: 164, column: 35, scope: !152)
!330 = !DILocation(line: 163, column: 21, scope: !152)
!331 = !DILocation(line: 163, column: 11, scope: !152)
!332 = !DILocation(line: 163, column: 15, scope: !152)
!333 = !DILocation(line: 166, column: 14, scope: !334)
!334 = distinct !DILexicalBlock(scope: !152, file: !1, line: 166, column: 5)
!335 = !DILocation(line: 166, column: 12, scope: !334)
!336 = !DILocation(line: 166, column: 10, scope: !334)
!337 = !DILocation(line: 166, column: 20, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 1)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 166, column: 5)
!340 = !DILocation(line: 166, column: 25, scope: !338)
!341 = !DILocation(line: 166, column: 22, scope: !338)
!342 = !DILocation(line: 166, column: 5, scope: !338)
!343 = !DILocation(line: 167, column: 36, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !1, line: 166, column: 36)
!345 = !DILocation(line: 167, column: 41, scope: !344)
!346 = !DILocation(line: 167, column: 17, scope: !344)
!347 = !DILocation(line: 167, column: 14, scope: !344)
!348 = !DILocation(line: 168, column: 36, scope: !344)
!349 = !DILocation(line: 168, column: 41, scope: !344)
!350 = !DILocation(line: 168, column: 48, scope: !344)
!351 = !DILocation(line: 168, column: 46, scope: !344)
!352 = !DILocation(line: 168, column: 17, scope: !344)
!353 = !DILocation(line: 168, column: 14, scope: !344)
!354 = !DILocation(line: 169, column: 36, scope: !344)
!355 = !DILocation(line: 169, column: 41, scope: !344)
!356 = !DILocation(line: 169, column: 48, scope: !344)
!357 = !DILocation(line: 169, column: 46, scope: !344)
!358 = !DILocation(line: 169, column: 17, scope: !344)
!359 = !DILocation(line: 169, column: 14, scope: !344)
!360 = !DILocation(line: 170, column: 38, scope: !344)
!361 = !DILocation(line: 170, column: 48, scope: !344)
!362 = !DILocation(line: 170, column: 42, scope: !344)
!363 = !DILocation(line: 170, column: 58, scope: !344)
!364 = !DILocation(line: 170, column: 52, scope: !344)
!365 = !DILocation(line: 170, column: 70, scope: !344)
!366 = !DILocation(line: 170, column: 62, scope: !344)
!367 = !DILocation(line: 171, column: 38, scope: !344)
!368 = !DILocation(line: 171, column: 48, scope: !344)
!369 = !DILocation(line: 171, column: 42, scope: !344)
!370 = !DILocation(line: 171, column: 58, scope: !344)
!371 = !DILocation(line: 171, column: 52, scope: !344)
!372 = !DILocation(line: 171, column: 70, scope: !344)
!373 = !DILocation(line: 171, column: 62, scope: !344)
!374 = !DILocation(line: 170, column: 17, scope: !344)
!375 = !DILocation(line: 170, column: 14, scope: !344)
!376 = !DILocation(line: 174, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !344, file: !1, line: 174, column: 11)
!378 = !DILocation(line: 174, column: 18, scope: !377)
!379 = !DILocation(line: 174, column: 11, scope: !344)
!380 = !DILocation(line: 175, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 174, column: 24)
!382 = distinct !{!382, !380}
!383 = !DILocation(line: 175, column: 9, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 175, column: 9)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 175, column: 9, scope: !385)
!388 = !DILocation(line: 175, column: 9, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 2)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 175, column: 9)
!391 = !DILocation(line: 175, column: 9, scope: !392)
!392 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 3)
!393 = !DILocation(line: 176, column: 7, scope: !381)
!394 = !DILocation(line: 178, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !344, file: !1, line: 178, column: 11)
!396 = !DILocation(line: 178, column: 16, scope: !395)
!397 = !DILocation(line: 178, column: 11, scope: !344)
!398 = !DILocation(line: 179, column: 25, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 178, column: 21)
!400 = !DILocation(line: 179, column: 17, scope: !399)
!401 = !DILocation(line: 180, column: 7, scope: !399)
!402 = !DILocation(line: 181, column: 25, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 180, column: 14)
!404 = !DILocation(line: 181, column: 17, scope: !403)
!405 = !DILocation(line: 184, column: 23, scope: !344)
!406 = !DILocation(line: 184, column: 15, scope: !344)
!407 = !DILocation(line: 186, column: 15, scope: !344)
!408 = !DILocation(line: 186, column: 14, scope: !344)
!409 = !DILocation(line: 186, column: 12, scope: !344)
!410 = !DILocation(line: 187, column: 5, scope: !344)
!411 = !DILocation(line: 166, column: 32, scope: !412)
!412 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 2)
!413 = !DILocation(line: 166, column: 5, scope: !412)
!414 = distinct !{!414, !415}
!415 = !DILocation(line: 166, column: 5, scope: !152)
!416 = !DILocation(line: 189, column: 20, scope: !152)
!417 = !DILocation(line: 189, column: 30, scope: !152)
!418 = !DILocation(line: 189, column: 28, scope: !152)
!419 = !DILocation(line: 189, column: 5, scope: !152)
!420 = !DILocation(line: 189, column: 13, scope: !152)
!421 = !DILocation(line: 189, column: 18, scope: !152)
!422 = !DILocation(line: 190, column: 20, scope: !152)
!423 = !DILocation(line: 190, column: 5, scope: !152)
!424 = !DILocation(line: 190, column: 13, scope: !152)
!425 = !DILocation(line: 190, column: 18, scope: !152)
!426 = !DILocation(line: 191, column: 45, scope: !152)
!427 = !DILocation(line: 191, column: 55, scope: !152)
!428 = !DILocation(line: 191, column: 53, scope: !152)
!429 = !DILocation(line: 191, column: 42, scope: !152)
!430 = !DILocation(line: 191, column: 5, scope: !152)
!431 = !DILocation(line: 191, column: 13, scope: !152)
!432 = !DILocation(line: 191, column: 17, scope: !152)
!433 = !DILocation(line: 192, column: 45, scope: !152)
!434 = !DILocation(line: 192, column: 52, scope: !152)
!435 = !DILocation(line: 192, column: 50, scope: !152)
!436 = !DILocation(line: 192, column: 44, scope: !152)
!437 = !DILocation(line: 192, column: 42, scope: !152)
!438 = !DILocation(line: 192, column: 65, scope: !152)
!439 = !DILocation(line: 192, column: 73, scope: !152)
!440 = !DILocation(line: 192, column: 60, scope: !152)
!441 = !DILocation(line: 192, column: 58, scope: !152)
!442 = !DILocation(line: 192, column: 5, scope: !152)
!443 = !DILocation(line: 192, column: 13, scope: !152)
!444 = !DILocation(line: 192, column: 17, scope: !152)
!445 = !DILocation(line: 194, column: 5, scope: !152)
!446 = !DILocation(line: 196, column: 1, scope: !45)
!447 = distinct !DISubprogram(name: "triangle_selection_fails", scope: !1, file: !1, line: 82, type: !448, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!448 = !DISubroutineType(types: !449)
!449 = !{!48, !48, !48, !48}
!450 = !DILocalVariable(name: "two_ja", arg: 1, scope: !447, file: !1, line: 82, type: !48)
!451 = !DILocation(line: 82, column: 30, scope: !447)
!452 = !DILocalVariable(name: "two_jb", arg: 2, scope: !447, file: !1, line: 82, type: !48)
!453 = !DILocation(line: 82, column: 42, scope: !447)
!454 = !DILocalVariable(name: "two_jc", arg: 3, scope: !447, file: !1, line: 82, type: !48)
!455 = !DILocation(line: 82, column: 54, scope: !447)
!456 = !DILocation(line: 87, column: 13, scope: !447)
!457 = !DILocation(line: 87, column: 26, scope: !447)
!458 = !DILocation(line: 87, column: 35, scope: !447)
!459 = !DILocation(line: 87, column: 33, scope: !447)
!460 = !DILocation(line: 87, column: 22, scope: !447)
!461 = !DILocation(line: 87, column: 20, scope: !447)
!462 = !DILocation(line: 87, column: 44, scope: !447)
!463 = !DILocation(line: 87, column: 48, scope: !464)
!464 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!465 = !DILocation(line: 87, column: 57, scope: !464)
!466 = !DILocation(line: 87, column: 66, scope: !464)
!467 = !DILocation(line: 87, column: 64, scope: !464)
!468 = !DILocation(line: 87, column: 55, scope: !464)
!469 = !DILocation(line: 87, column: 74, scope: !464)
!470 = !DILocation(line: 88, column: 12, scope: !447)
!471 = !DILocation(line: 87, column: 74, scope: !472)
!472 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 2)
!473 = !DILocation(line: 87, column: 74, scope: !474)
!474 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 3)
!475 = !DILocation(line: 87, column: 3, scope: !474)
!476 = distinct !DISubprogram(name: "m_selection_fails", scope: !1, file: !1, line: 94, type: !477, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!477 = !DISubroutineType(types: !478)
!478 = !{!48, !48, !48, !48, !48, !48, !48}
!479 = !DILocalVariable(name: "two_ja", arg: 1, scope: !476, file: !1, line: 94, type: !48)
!480 = !DILocation(line: 94, column: 23, scope: !476)
!481 = !DILocalVariable(name: "two_jb", arg: 2, scope: !476, file: !1, line: 94, type: !48)
!482 = !DILocation(line: 94, column: 35, scope: !476)
!483 = !DILocalVariable(name: "two_jc", arg: 3, scope: !476, file: !1, line: 94, type: !48)
!484 = !DILocation(line: 94, column: 47, scope: !476)
!485 = !DILocalVariable(name: "two_ma", arg: 4, scope: !476, file: !1, line: 95, type: !48)
!486 = !DILocation(line: 95, column: 23, scope: !476)
!487 = !DILocalVariable(name: "two_mb", arg: 5, scope: !476, file: !1, line: 95, type: !48)
!488 = !DILocation(line: 95, column: 35, scope: !476)
!489 = !DILocalVariable(name: "two_mc", arg: 6, scope: !476, file: !1, line: 95, type: !48)
!490 = !DILocation(line: 95, column: 47, scope: !476)
!491 = !DILocation(line: 98, column: 14, scope: !476)
!492 = !DILocation(line: 98, column: 10, scope: !476)
!493 = !DILocation(line: 98, column: 24, scope: !476)
!494 = !DILocation(line: 98, column: 22, scope: !476)
!495 = !DILocation(line: 99, column: 7, scope: !476)
!496 = !DILocation(line: 99, column: 14, scope: !497)
!497 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!498 = !DILocation(line: 99, column: 10, scope: !497)
!499 = !DILocation(line: 99, column: 24, scope: !497)
!500 = !DILocation(line: 99, column: 22, scope: !497)
!501 = !DILocation(line: 100, column: 7, scope: !476)
!502 = !DILocation(line: 100, column: 14, scope: !497)
!503 = !DILocation(line: 100, column: 10, scope: !497)
!504 = !DILocation(line: 100, column: 24, scope: !497)
!505 = !DILocation(line: 100, column: 22, scope: !497)
!506 = !DILocation(line: 101, column: 7, scope: !476)
!507 = !DILocation(line: 101, column: 10, scope: !497)
!508 = !DILocation(line: 102, column: 7, scope: !476)
!509 = !DILocation(line: 102, column: 10, scope: !497)
!510 = !DILocation(line: 103, column: 7, scope: !476)
!511 = !DILocation(line: 103, column: 10, scope: !497)
!512 = !DILocation(line: 104, column: 7, scope: !476)
!513 = !DILocation(line: 104, column: 11, scope: !497)
!514 = !DILocation(line: 104, column: 20, scope: !497)
!515 = !DILocation(line: 104, column: 18, scope: !497)
!516 = !DILocation(line: 104, column: 29, scope: !497)
!517 = !DILocation(line: 104, column: 27, scope: !497)
!518 = !DILocation(line: 104, column: 37, scope: !497)
!519 = !DILocation(line: 104, column: 7, scope: !497)
!520 = !DILocation(line: 104, column: 7, scope: !521)
!521 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 2)
!522 = !DILocation(line: 97, column: 3, scope: !476)
!523 = distinct !DISubprogram(name: "locMax3", scope: !1, file: !1, line: 34, type: !524, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!524 = !DISubroutineType(types: !525)
!525 = !{!48, !526, !526, !526}
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!527 = !DILocalVariable(name: "a", arg: 1, scope: !523, file: !1, line: 34, type: !526)
!528 = !DILocation(line: 34, column: 23, scope: !523)
!529 = !DILocalVariable(name: "b", arg: 2, scope: !523, file: !1, line: 34, type: !526)
!530 = !DILocation(line: 34, column: 36, scope: !523)
!531 = !DILocalVariable(name: "c", arg: 3, scope: !523, file: !1, line: 34, type: !526)
!532 = !DILocation(line: 34, column: 49, scope: !523)
!533 = !DILocalVariable(name: "d", scope: !523, file: !1, line: 36, type: !48)
!534 = !DILocation(line: 36, column: 7, scope: !523)
!535 = !DILocation(line: 36, column: 11, scope: !523)
!536 = !DILocation(line: 36, column: 11, scope: !537)
!537 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 1)
!538 = !DILocation(line: 36, column: 11, scope: !539)
!539 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!540 = !DILocation(line: 36, column: 11, scope: !541)
!541 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 3)
!542 = !DILocation(line: 36, column: 7, scope: !541)
!543 = !DILocation(line: 37, column: 10, scope: !523)
!544 = !DILocation(line: 37, column: 10, scope: !537)
!545 = !DILocation(line: 37, column: 10, scope: !539)
!546 = !DILocation(line: 37, column: 10, scope: !541)
!547 = !DILocation(line: 37, column: 3, scope: !541)
!548 = distinct !DISubprogram(name: "locMin3", scope: !1, file: !1, line: 42, type: !524, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!549 = !DILocalVariable(name: "a", arg: 1, scope: !548, file: !1, line: 42, type: !526)
!550 = !DILocation(line: 42, column: 23, scope: !548)
!551 = !DILocalVariable(name: "b", arg: 2, scope: !548, file: !1, line: 42, type: !526)
!552 = !DILocation(line: 42, column: 36, scope: !548)
!553 = !DILocalVariable(name: "c", arg: 3, scope: !548, file: !1, line: 42, type: !526)
!554 = !DILocation(line: 42, column: 49, scope: !548)
!555 = !DILocalVariable(name: "d", scope: !548, file: !1, line: 44, type: !48)
!556 = !DILocation(line: 44, column: 7, scope: !548)
!557 = !DILocation(line: 44, column: 11, scope: !548)
!558 = !DILocation(line: 44, column: 11, scope: !559)
!559 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!560 = !DILocation(line: 44, column: 11, scope: !561)
!561 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 2)
!562 = !DILocation(line: 44, column: 11, scope: !563)
!563 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 3)
!564 = !DILocation(line: 44, column: 7, scope: !563)
!565 = !DILocation(line: 45, column: 10, scope: !548)
!566 = !DILocation(line: 45, column: 10, scope: !559)
!567 = !DILocation(line: 45, column: 10, scope: !561)
!568 = !DILocation(line: 45, column: 10, scope: !563)
!569 = !DILocation(line: 45, column: 3, scope: !563)
!570 = distinct !DISubprogram(name: "gsl_sf_coupling_6j_e", scope: !1, file: !1, line: 212, type: !46, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!571 = !DILocalVariable(name: "two_ja", arg: 1, scope: !570, file: !1, line: 212, type: !48)
!572 = !DILocation(line: 212, column: 26, scope: !570)
!573 = !DILocalVariable(name: "two_jb", arg: 2, scope: !570, file: !1, line: 212, type: !48)
!574 = !DILocation(line: 212, column: 38, scope: !570)
!575 = !DILocalVariable(name: "two_jc", arg: 3, scope: !570, file: !1, line: 212, type: !48)
!576 = !DILocation(line: 212, column: 50, scope: !570)
!577 = !DILocalVariable(name: "two_jd", arg: 4, scope: !570, file: !1, line: 213, type: !48)
!578 = !DILocation(line: 213, column: 26, scope: !570)
!579 = !DILocalVariable(name: "two_je", arg: 5, scope: !570, file: !1, line: 213, type: !48)
!580 = !DILocation(line: 213, column: 38, scope: !570)
!581 = !DILocalVariable(name: "two_jf", arg: 6, scope: !570, file: !1, line: 213, type: !48)
!582 = !DILocation(line: 213, column: 50, scope: !570)
!583 = !DILocalVariable(name: "result", arg: 7, scope: !570, file: !1, line: 214, type: !49)
!584 = !DILocation(line: 214, column: 38, scope: !570)
!585 = !DILocation(line: 218, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !570, file: !1, line: 218, column: 9)
!587 = !DILocation(line: 218, column: 16, scope: !586)
!588 = !DILocation(line: 218, column: 20, scope: !586)
!589 = !DILocation(line: 218, column: 23, scope: !590)
!590 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!591 = !DILocation(line: 218, column: 30, scope: !590)
!592 = !DILocation(line: 218, column: 34, scope: !590)
!593 = !DILocation(line: 218, column: 37, scope: !594)
!594 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 2)
!595 = !DILocation(line: 218, column: 44, scope: !594)
!596 = !DILocation(line: 219, column: 6, scope: !586)
!597 = !DILocation(line: 219, column: 9, scope: !590)
!598 = !DILocation(line: 219, column: 16, scope: !590)
!599 = !DILocation(line: 219, column: 20, scope: !590)
!600 = !DILocation(line: 219, column: 23, scope: !594)
!601 = !DILocation(line: 219, column: 30, scope: !594)
!602 = !DILocation(line: 219, column: 34, scope: !594)
!603 = !DILocation(line: 219, column: 37, scope: !604)
!604 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 3)
!605 = !DILocation(line: 219, column: 44, scope: !604)
!606 = !DILocation(line: 218, column: 9, scope: !607)
!607 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 3)
!608 = !DILocation(line: 221, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !586, file: !1, line: 220, column: 8)
!610 = distinct !{!610, !608}
!611 = !DILocation(line: 221, column: 5, scope: !612)
!612 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 221, column: 5)
!614 = distinct !{!614, !615}
!615 = !DILocation(line: 221, column: 5, scope: !613)
!616 = !DILocation(line: 221, column: 5, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!618 = distinct !DILexicalBlock(scope: !613, file: !1, line: 221, column: 5)
!619 = !DILocation(line: 221, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 3)
!621 = !DILocation(line: 222, column: 3, scope: !609)
!622 = !DILocation(line: 223, column: 39, scope: !623)
!623 = distinct !DILexicalBlock(scope: !586, file: !1, line: 223, column: 14)
!624 = !DILocation(line: 223, column: 47, scope: !623)
!625 = !DILocation(line: 223, column: 55, scope: !623)
!626 = !DILocation(line: 223, column: 14, scope: !623)
!627 = !DILocation(line: 224, column: 11, scope: !623)
!628 = !DILocation(line: 224, column: 39, scope: !629)
!629 = !DILexicalBlockFile(scope: !623, file: !1, discriminator: 1)
!630 = !DILocation(line: 224, column: 47, scope: !629)
!631 = !DILocation(line: 224, column: 55, scope: !629)
!632 = !DILocation(line: 224, column: 14, scope: !629)
!633 = !DILocation(line: 225, column: 11, scope: !623)
!634 = !DILocation(line: 225, column: 39, scope: !629)
!635 = !DILocation(line: 225, column: 47, scope: !629)
!636 = !DILocation(line: 225, column: 55, scope: !629)
!637 = !DILocation(line: 225, column: 14, scope: !629)
!638 = !DILocation(line: 226, column: 11, scope: !623)
!639 = !DILocation(line: 226, column: 39, scope: !629)
!640 = !DILocation(line: 226, column: 47, scope: !629)
!641 = !DILocation(line: 226, column: 55, scope: !629)
!642 = !DILocation(line: 226, column: 14, scope: !629)
!643 = !DILocation(line: 223, column: 14, scope: !590)
!644 = !DILocation(line: 228, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !623, file: !1, line: 227, column: 8)
!646 = !DILocation(line: 228, column: 13, scope: !645)
!647 = !DILocation(line: 228, column: 17, scope: !645)
!648 = !DILocation(line: 229, column: 5, scope: !645)
!649 = !DILocation(line: 229, column: 13, scope: !645)
!650 = !DILocation(line: 229, column: 17, scope: !645)
!651 = !DILocation(line: 230, column: 5, scope: !645)
!652 = !DILocalVariable(name: "n1", scope: !653, file: !1, line: 233, type: !50)
!653 = distinct !DILexicalBlock(scope: !623, file: !1, line: 232, column: 8)
!654 = !DILocation(line: 233, column: 19, scope: !653)
!655 = !DILocalVariable(name: "d1", scope: !653, file: !1, line: 234, type: !50)
!656 = !DILocation(line: 234, column: 19, scope: !653)
!657 = !DILocalVariable(name: "d2", scope: !653, file: !1, line: 234, type: !50)
!658 = !DILocation(line: 234, column: 23, scope: !653)
!659 = !DILocalVariable(name: "d3", scope: !653, file: !1, line: 234, type: !50)
!660 = !DILocation(line: 234, column: 27, scope: !653)
!661 = !DILocalVariable(name: "d4", scope: !653, file: !1, line: 234, type: !50)
!662 = !DILocation(line: 234, column: 31, scope: !653)
!663 = !DILocalVariable(name: "d5", scope: !653, file: !1, line: 234, type: !50)
!664 = !DILocation(line: 234, column: 35, scope: !653)
!665 = !DILocalVariable(name: "d6", scope: !653, file: !1, line: 234, type: !50)
!666 = !DILocation(line: 234, column: 39, scope: !653)
!667 = !DILocalVariable(name: "norm", scope: !653, file: !1, line: 235, type: !55)
!668 = !DILocation(line: 235, column: 12, scope: !653)
!669 = !DILocalVariable(name: "tk", scope: !653, file: !1, line: 236, type: !48)
!670 = !DILocation(line: 236, column: 9, scope: !653)
!671 = !DILocalVariable(name: "tkmin", scope: !653, file: !1, line: 236, type: !48)
!672 = !DILocation(line: 236, column: 13, scope: !653)
!673 = !DILocalVariable(name: "tkmax", scope: !653, file: !1, line: 236, type: !48)
!674 = !DILocation(line: 236, column: 20, scope: !653)
!675 = !DILocalVariable(name: "phase", scope: !653, file: !1, line: 237, type: !55)
!676 = !DILocation(line: 237, column: 12, scope: !653)
!677 = !DILocalVariable(name: "sum_pos", scope: !653, file: !1, line: 238, type: !55)
!678 = !DILocation(line: 238, column: 12, scope: !653)
!679 = !DILocalVariable(name: "sum_neg", scope: !653, file: !1, line: 239, type: !55)
!680 = !DILocation(line: 239, column: 12, scope: !653)
!681 = !DILocalVariable(name: "sumsq_err", scope: !653, file: !1, line: 240, type: !55)
!682 = !DILocation(line: 240, column: 12, scope: !653)
!683 = !DILocalVariable(name: "status", scope: !653, file: !1, line: 241, type: !48)
!684 = !DILocation(line: 241, column: 9, scope: !653)
!685 = !DILocation(line: 242, column: 21, scope: !653)
!686 = !DILocation(line: 242, column: 29, scope: !653)
!687 = !DILocation(line: 242, column: 37, scope: !653)
!688 = !DILocation(line: 242, column: 15, scope: !653)
!689 = !DILocation(line: 242, column: 12, scope: !653)
!690 = !DILocation(line: 243, column: 21, scope: !653)
!691 = !DILocation(line: 243, column: 29, scope: !653)
!692 = !DILocation(line: 243, column: 37, scope: !653)
!693 = !DILocation(line: 243, column: 15, scope: !653)
!694 = !DILocation(line: 243, column: 12, scope: !653)
!695 = !DILocation(line: 244, column: 21, scope: !653)
!696 = !DILocation(line: 244, column: 29, scope: !653)
!697 = !DILocation(line: 244, column: 37, scope: !653)
!698 = !DILocation(line: 244, column: 15, scope: !653)
!699 = !DILocation(line: 244, column: 12, scope: !653)
!700 = !DILocation(line: 245, column: 21, scope: !653)
!701 = !DILocation(line: 245, column: 29, scope: !653)
!702 = !DILocation(line: 245, column: 37, scope: !653)
!703 = !DILocation(line: 245, column: 15, scope: !653)
!704 = !DILocation(line: 245, column: 12, scope: !653)
!705 = !DILocation(line: 246, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !653, file: !1, line: 246, column: 8)
!707 = !DILocation(line: 246, column: 15, scope: !706)
!708 = !DILocation(line: 246, column: 8, scope: !653)
!709 = !DILocation(line: 247, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !1, line: 246, column: 31)
!711 = distinct !{!711, !709}
!712 = !DILocation(line: 247, column: 7, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !710, file: !1, line: 247, column: 7)
!715 = distinct !{!715, !716}
!716 = !DILocation(line: 247, column: 7, scope: !714)
!717 = !DILocation(line: 247, column: 7, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !1, discriminator: 2)
!719 = distinct !DILexicalBlock(scope: !714, file: !1, line: 247, column: 7)
!720 = !DILocation(line: 247, column: 7, scope: !721)
!721 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 3)
!722 = !DILocation(line: 248, column: 5, scope: !710)
!723 = !DILocation(line: 249, column: 20, scope: !653)
!724 = !DILocation(line: 249, column: 12, scope: !653)
!725 = !DILocation(line: 249, column: 35, scope: !653)
!726 = !DILocation(line: 249, column: 27, scope: !727)
!727 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!728 = !DILocation(line: 249, column: 25, scope: !653)
!729 = !DILocation(line: 249, column: 50, scope: !653)
!730 = !DILocation(line: 249, column: 42, scope: !731)
!731 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 2)
!732 = !DILocation(line: 249, column: 40, scope: !653)
!733 = !DILocation(line: 249, column: 65, scope: !653)
!734 = !DILocation(line: 249, column: 57, scope: !735)
!735 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 3)
!736 = !DILocation(line: 249, column: 55, scope: !653)
!737 = !DILocation(line: 249, column: 10, scope: !653)
!738 = !DILocation(line: 252, column: 20, scope: !653)
!739 = !DILocation(line: 252, column: 29, scope: !653)
!740 = !DILocation(line: 252, column: 27, scope: !653)
!741 = !DILocation(line: 252, column: 38, scope: !653)
!742 = !DILocation(line: 252, column: 36, scope: !653)
!743 = !DILocation(line: 252, column: 47, scope: !653)
!744 = !DILocation(line: 252, column: 45, scope: !653)
!745 = !DILocation(line: 253, column: 20, scope: !653)
!746 = !DILocation(line: 253, column: 29, scope: !653)
!747 = !DILocation(line: 253, column: 27, scope: !653)
!748 = !DILocation(line: 253, column: 38, scope: !653)
!749 = !DILocation(line: 253, column: 36, scope: !653)
!750 = !DILocation(line: 253, column: 47, scope: !653)
!751 = !DILocation(line: 253, column: 45, scope: !653)
!752 = !DILocation(line: 251, column: 13, scope: !653)
!753 = !DILocation(line: 251, column: 11, scope: !653)
!754 = !DILocation(line: 255, column: 21, scope: !653)
!755 = !DILocation(line: 255, column: 30, scope: !653)
!756 = !DILocation(line: 255, column: 28, scope: !653)
!757 = !DILocation(line: 255, column: 39, scope: !653)
!758 = !DILocation(line: 255, column: 37, scope: !653)
!759 = !DILocation(line: 255, column: 48, scope: !653)
!760 = !DILocation(line: 255, column: 46, scope: !653)
!761 = !DILocation(line: 255, column: 55, scope: !653)
!762 = !DILocation(line: 256, column: 21, scope: !653)
!763 = !DILocation(line: 256, column: 30, scope: !653)
!764 = !DILocation(line: 256, column: 28, scope: !653)
!765 = !DILocation(line: 256, column: 39, scope: !653)
!766 = !DILocation(line: 256, column: 37, scope: !653)
!767 = !DILocation(line: 257, column: 21, scope: !653)
!768 = !DILocation(line: 257, column: 30, scope: !653)
!769 = !DILocation(line: 257, column: 28, scope: !653)
!770 = !DILocation(line: 257, column: 39, scope: !653)
!771 = !DILocation(line: 257, column: 37, scope: !653)
!772 = !DILocation(line: 258, column: 21, scope: !653)
!773 = !DILocation(line: 258, column: 30, scope: !653)
!774 = !DILocation(line: 258, column: 28, scope: !653)
!775 = !DILocation(line: 258, column: 39, scope: !653)
!776 = !DILocation(line: 258, column: 37, scope: !653)
!777 = !DILocation(line: 259, column: 21, scope: !653)
!778 = !DILocation(line: 259, column: 30, scope: !653)
!779 = !DILocation(line: 259, column: 28, scope: !653)
!780 = !DILocation(line: 259, column: 39, scope: !653)
!781 = !DILocation(line: 259, column: 37, scope: !653)
!782 = !DILocation(line: 255, column: 13, scope: !653)
!783 = !DILocation(line: 255, column: 11, scope: !653)
!784 = !DILocation(line: 261, column: 13, scope: !653)
!785 = !DILocation(line: 261, column: 11, scope: !653)
!786 = !DILocation(line: 265, column: 12, scope: !787)
!787 = distinct !DILexicalBlock(scope: !653, file: !1, line: 265, column: 5)
!788 = !DILocation(line: 265, column: 11, scope: !787)
!789 = !DILocation(line: 265, column: 9, scope: !787)
!790 = !DILocation(line: 265, column: 19, scope: !791)
!791 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!792 = distinct !DILexicalBlock(scope: !787, file: !1, line: 265, column: 5)
!793 = !DILocation(line: 265, column: 23, scope: !791)
!794 = !DILocation(line: 265, column: 21, scope: !791)
!795 = !DILocation(line: 265, column: 5, scope: !791)
!796 = !DILocalVariable(name: "term", scope: !797, file: !1, line: 266, type: !55)
!797 = distinct !DILexicalBlock(scope: !792, file: !1, line: 265, column: 39)
!798 = !DILocation(line: 266, column: 14, scope: !797)
!799 = !DILocalVariable(name: "term_err", scope: !797, file: !1, line: 267, type: !55)
!800 = !DILocation(line: 267, column: 14, scope: !797)
!801 = !DILocalVariable(name: "den_1", scope: !797, file: !1, line: 268, type: !50)
!802 = !DILocation(line: 268, column: 21, scope: !797)
!803 = !DILocalVariable(name: "den_2", scope: !797, file: !1, line: 268, type: !50)
!804 = !DILocation(line: 268, column: 28, scope: !797)
!805 = !DILocalVariable(name: "d1_a", scope: !797, file: !1, line: 269, type: !50)
!806 = !DILocation(line: 269, column: 21, scope: !797)
!807 = !DILocalVariable(name: "d1_b", scope: !797, file: !1, line: 269, type: !50)
!808 = !DILocation(line: 269, column: 27, scope: !797)
!809 = !DILocation(line: 270, column: 14, scope: !797)
!810 = !DILocation(line: 272, column: 32, scope: !797)
!811 = !DILocation(line: 272, column: 41, scope: !797)
!812 = !DILocation(line: 272, column: 39, scope: !797)
!813 = !DILocation(line: 272, column: 50, scope: !797)
!814 = !DILocation(line: 272, column: 48, scope: !797)
!815 = !DILocation(line: 272, column: 59, scope: !797)
!816 = !DILocation(line: 272, column: 57, scope: !797)
!817 = !DILocation(line: 272, column: 68, scope: !797)
!818 = !DILocation(line: 272, column: 66, scope: !797)
!819 = !DILocation(line: 272, column: 71, scope: !797)
!820 = !DILocation(line: 272, column: 74, scope: !797)
!821 = !DILocation(line: 272, column: 17, scope: !797)
!822 = !DILocation(line: 272, column: 14, scope: !797)
!823 = !DILocation(line: 273, column: 31, scope: !797)
!824 = !DILocation(line: 273, column: 33, scope: !797)
!825 = !DILocation(line: 273, column: 17, scope: !797)
!826 = !DILocation(line: 273, column: 14, scope: !797)
!827 = !DILocation(line: 274, column: 32, scope: !797)
!828 = !DILocation(line: 274, column: 41, scope: !797)
!829 = !DILocation(line: 274, column: 39, scope: !797)
!830 = !DILocation(line: 274, column: 50, scope: !797)
!831 = !DILocation(line: 274, column: 48, scope: !797)
!832 = !DILocation(line: 274, column: 59, scope: !797)
!833 = !DILocation(line: 274, column: 57, scope: !797)
!834 = !DILocation(line: 274, column: 68, scope: !797)
!835 = !DILocation(line: 274, column: 66, scope: !797)
!836 = !DILocation(line: 274, column: 71, scope: !797)
!837 = !DILocation(line: 274, column: 17, scope: !797)
!838 = !DILocation(line: 274, column: 14, scope: !797)
!839 = !DILocation(line: 275, column: 32, scope: !797)
!840 = !DILocation(line: 275, column: 41, scope: !797)
!841 = !DILocation(line: 275, column: 39, scope: !797)
!842 = !DILocation(line: 275, column: 50, scope: !797)
!843 = !DILocation(line: 275, column: 48, scope: !797)
!844 = !DILocation(line: 275, column: 59, scope: !797)
!845 = !DILocation(line: 275, column: 57, scope: !797)
!846 = !DILocation(line: 275, column: 68, scope: !797)
!847 = !DILocation(line: 275, column: 66, scope: !797)
!848 = !DILocation(line: 275, column: 71, scope: !797)
!849 = !DILocation(line: 275, column: 17, scope: !797)
!850 = !DILocation(line: 275, column: 14, scope: !797)
!851 = !DILocation(line: 276, column: 32, scope: !797)
!852 = !DILocation(line: 276, column: 41, scope: !797)
!853 = !DILocation(line: 276, column: 39, scope: !797)
!854 = !DILocation(line: 276, column: 50, scope: !797)
!855 = !DILocation(line: 276, column: 48, scope: !797)
!856 = !DILocation(line: 276, column: 59, scope: !797)
!857 = !DILocation(line: 276, column: 57, scope: !797)
!858 = !DILocation(line: 276, column: 62, scope: !797)
!859 = !DILocation(line: 276, column: 17, scope: !797)
!860 = !DILocation(line: 276, column: 14, scope: !797)
!861 = !DILocation(line: 277, column: 32, scope: !797)
!862 = !DILocation(line: 277, column: 41, scope: !797)
!863 = !DILocation(line: 277, column: 39, scope: !797)
!864 = !DILocation(line: 277, column: 50, scope: !797)
!865 = !DILocation(line: 277, column: 48, scope: !797)
!866 = !DILocation(line: 277, column: 59, scope: !797)
!867 = !DILocation(line: 277, column: 57, scope: !797)
!868 = !DILocation(line: 277, column: 62, scope: !797)
!869 = !DILocation(line: 277, column: 17, scope: !797)
!870 = !DILocation(line: 277, column: 14, scope: !797)
!871 = !DILocation(line: 278, column: 32, scope: !797)
!872 = !DILocation(line: 278, column: 41, scope: !797)
!873 = !DILocation(line: 278, column: 39, scope: !797)
!874 = !DILocation(line: 278, column: 50, scope: !797)
!875 = !DILocation(line: 278, column: 48, scope: !797)
!876 = !DILocation(line: 278, column: 59, scope: !797)
!877 = !DILocation(line: 278, column: 57, scope: !797)
!878 = !DILocation(line: 278, column: 62, scope: !797)
!879 = !DILocation(line: 278, column: 17, scope: !797)
!880 = !DILocation(line: 278, column: 14, scope: !797)
!881 = !DILocation(line: 279, column: 32, scope: !797)
!882 = !DILocation(line: 279, column: 41, scope: !797)
!883 = !DILocation(line: 279, column: 39, scope: !797)
!884 = !DILocation(line: 279, column: 50, scope: !797)
!885 = !DILocation(line: 279, column: 48, scope: !797)
!886 = !DILocation(line: 279, column: 59, scope: !797)
!887 = !DILocation(line: 279, column: 57, scope: !797)
!888 = !DILocation(line: 279, column: 62, scope: !797)
!889 = !DILocation(line: 279, column: 17, scope: !797)
!890 = !DILocation(line: 279, column: 14, scope: !797)
!891 = !DILocation(line: 281, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !797, file: !1, line: 281, column: 10)
!893 = !DILocation(line: 281, column: 17, scope: !892)
!894 = !DILocation(line: 281, column: 10, scope: !797)
!895 = !DILocation(line: 282, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !1, line: 281, column: 33)
!897 = distinct !{!897, !895}
!898 = !DILocation(line: 282, column: 9, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!900 = distinct !DILexicalBlock(scope: !896, file: !1, line: 282, column: 9)
!901 = distinct !{!901, !902}
!902 = !DILocation(line: 282, column: 9, scope: !900)
!903 = !DILocation(line: 282, column: 9, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !1, discriminator: 2)
!905 = distinct !DILexicalBlock(scope: !900, file: !1, line: 282, column: 9)
!906 = !DILocation(line: 282, column: 9, scope: !907)
!907 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 3)
!908 = !DILocation(line: 283, column: 7, scope: !896)
!909 = !DILocation(line: 285, column: 21, scope: !797)
!910 = !DILocation(line: 285, column: 32, scope: !797)
!911 = !DILocation(line: 285, column: 25, scope: !797)
!912 = !DILocation(line: 285, column: 10, scope: !797)
!913 = !DILocation(line: 285, column: 14, scope: !797)
!914 = !DILocation(line: 286, column: 21, scope: !797)
!915 = !DILocation(line: 286, column: 37, scope: !797)
!916 = !DILocation(line: 286, column: 27, scope: !797)
!917 = !DILocation(line: 286, column: 25, scope: !797)
!918 = !DILocation(line: 286, column: 54, scope: !797)
!919 = !DILocation(line: 286, column: 44, scope: !920)
!920 = !DILexicalBlockFile(scope: !797, file: !1, discriminator: 1)
!921 = !DILocation(line: 286, column: 66, scope: !797)
!922 = !DILocation(line: 286, column: 59, scope: !797)
!923 = !DILocation(line: 286, column: 42, scope: !797)
!924 = !DILocation(line: 286, column: 10, scope: !797)
!925 = !DILocation(line: 286, column: 14, scope: !797)
!926 = !DILocation(line: 288, column: 23, scope: !797)
!927 = !DILocation(line: 288, column: 30, scope: !797)
!928 = !DILocation(line: 288, column: 26, scope: !797)
!929 = !DILocation(line: 288, column: 37, scope: !797)
!930 = !DILocation(line: 288, column: 33, scope: !797)
!931 = !DILocation(line: 288, column: 13, scope: !797)
!932 = !DILocation(line: 288, column: 18, scope: !797)
!933 = !DILocation(line: 289, column: 23, scope: !797)
!934 = !DILocation(line: 289, column: 37, scope: !797)
!935 = !DILocation(line: 289, column: 44, scope: !797)
!936 = !DILocation(line: 289, column: 40, scope: !797)
!937 = !DILocation(line: 289, column: 29, scope: !797)
!938 = !DILocation(line: 289, column: 27, scope: !797)
!939 = !DILocation(line: 289, column: 13, scope: !797)
!940 = !DILocation(line: 289, column: 18, scope: !797)
!941 = !DILocation(line: 290, column: 23, scope: !797)
!942 = !DILocation(line: 290, column: 37, scope: !797)
!943 = !DILocation(line: 290, column: 44, scope: !797)
!944 = !DILocation(line: 290, column: 40, scope: !797)
!945 = !DILocation(line: 290, column: 29, scope: !797)
!946 = !DILocation(line: 290, column: 27, scope: !797)
!947 = !DILocation(line: 290, column: 13, scope: !797)
!948 = !DILocation(line: 290, column: 17, scope: !797)
!949 = !DILocation(line: 291, column: 23, scope: !797)
!950 = !DILocation(line: 291, column: 37, scope: !797)
!951 = !DILocation(line: 291, column: 44, scope: !797)
!952 = !DILocation(line: 291, column: 40, scope: !797)
!953 = !DILocation(line: 291, column: 29, scope: !797)
!954 = !DILocation(line: 291, column: 27, scope: !797)
!955 = !DILocation(line: 291, column: 13, scope: !797)
!956 = !DILocation(line: 291, column: 17, scope: !797)
!957 = !DILocation(line: 293, column: 23, scope: !797)
!958 = !DILocation(line: 293, column: 30, scope: !797)
!959 = !DILocation(line: 293, column: 26, scope: !797)
!960 = !DILocation(line: 293, column: 37, scope: !797)
!961 = !DILocation(line: 293, column: 33, scope: !797)
!962 = !DILocation(line: 293, column: 13, scope: !797)
!963 = !DILocation(line: 293, column: 18, scope: !797)
!964 = !DILocation(line: 294, column: 23, scope: !797)
!965 = !DILocation(line: 294, column: 37, scope: !797)
!966 = !DILocation(line: 294, column: 44, scope: !797)
!967 = !DILocation(line: 294, column: 40, scope: !797)
!968 = !DILocation(line: 294, column: 29, scope: !797)
!969 = !DILocation(line: 294, column: 27, scope: !797)
!970 = !DILocation(line: 294, column: 13, scope: !797)
!971 = !DILocation(line: 294, column: 18, scope: !797)
!972 = !DILocation(line: 295, column: 23, scope: !797)
!973 = !DILocation(line: 295, column: 37, scope: !797)
!974 = !DILocation(line: 295, column: 44, scope: !797)
!975 = !DILocation(line: 295, column: 40, scope: !797)
!976 = !DILocation(line: 295, column: 29, scope: !797)
!977 = !DILocation(line: 295, column: 27, scope: !797)
!978 = !DILocation(line: 295, column: 13, scope: !797)
!979 = !DILocation(line: 295, column: 17, scope: !797)
!980 = !DILocation(line: 296, column: 23, scope: !797)
!981 = !DILocation(line: 296, column: 37, scope: !797)
!982 = !DILocation(line: 296, column: 44, scope: !797)
!983 = !DILocation(line: 296, column: 40, scope: !797)
!984 = !DILocation(line: 296, column: 29, scope: !797)
!985 = !DILocation(line: 296, column: 27, scope: !797)
!986 = !DILocation(line: 296, column: 13, scope: !797)
!987 = !DILocation(line: 296, column: 17, scope: !797)
!988 = !DILocation(line: 298, column: 15, scope: !797)
!989 = !DILocation(line: 298, column: 26, scope: !797)
!990 = !DILocation(line: 298, column: 21, scope: !797)
!991 = !DILocation(line: 298, column: 38, scope: !797)
!992 = !DILocation(line: 298, column: 30, scope: !797)
!993 = !DILocation(line: 298, column: 50, scope: !797)
!994 = !DILocation(line: 298, column: 42, scope: !797)
!995 = !DILocation(line: 298, column: 13, scope: !797)
!996 = !DILocation(line: 299, column: 16, scope: !797)
!997 = !DILocation(line: 299, column: 15, scope: !797)
!998 = !DILocation(line: 299, column: 13, scope: !797)
!999 = !DILocation(line: 300, column: 22, scope: !797)
!1000 = !DILocation(line: 300, column: 39, scope: !797)
!1001 = !DILocation(line: 300, column: 28, scope: !797)
!1002 = !DILocation(line: 300, column: 26, scope: !797)
!1003 = !DILocation(line: 300, column: 57, scope: !797)
!1004 = !DILocation(line: 300, column: 46, scope: !920)
!1005 = !DILocation(line: 300, column: 44, scope: !797)
!1006 = !DILocation(line: 300, column: 17, scope: !797)
!1007 = !DILocation(line: 301, column: 24, scope: !797)
!1008 = !DILocation(line: 301, column: 37, scope: !797)
!1009 = !DILocation(line: 301, column: 29, scope: !797)
!1010 = !DILocation(line: 301, column: 19, scope: !797)
!1011 = !DILocation(line: 301, column: 50, scope: !797)
!1012 = !DILocation(line: 301, column: 42, scope: !797)
!1013 = !DILocation(line: 301, column: 16, scope: !797)
!1014 = !DILocation(line: 302, column: 24, scope: !797)
!1015 = !DILocation(line: 302, column: 37, scope: !797)
!1016 = !DILocation(line: 302, column: 29, scope: !797)
!1017 = !DILocation(line: 302, column: 19, scope: !797)
!1018 = !DILocation(line: 302, column: 50, scope: !797)
!1019 = !DILocation(line: 302, column: 42, scope: !797)
!1020 = !DILocation(line: 302, column: 16, scope: !797)
!1021 = !DILocation(line: 304, column: 10, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !797, file: !1, line: 304, column: 10)
!1023 = !DILocation(line: 304, column: 15, scope: !1022)
!1024 = !DILocation(line: 304, column: 10, scope: !797)
!1025 = !DILocation(line: 305, column: 20, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 304, column: 23)
!1027 = !DILocation(line: 305, column: 25, scope: !1026)
!1028 = !DILocation(line: 305, column: 24, scope: !1026)
!1029 = !DILocation(line: 305, column: 17, scope: !1026)
!1030 = !DILocation(line: 306, column: 7, scope: !1026)
!1031 = !DILocation(line: 308, column: 20, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 307, column: 12)
!1033 = !DILocation(line: 308, column: 25, scope: !1032)
!1034 = !DILocation(line: 308, column: 24, scope: !1032)
!1035 = !DILocation(line: 308, column: 17, scope: !1032)
!1036 = !DILocation(line: 311, column: 20, scope: !797)
!1037 = !DILocation(line: 311, column: 25, scope: !797)
!1038 = !DILocation(line: 311, column: 24, scope: !797)
!1039 = !DILocation(line: 311, column: 32, scope: !797)
!1040 = !DILocation(line: 311, column: 30, scope: !797)
!1041 = !DILocation(line: 311, column: 41, scope: !797)
!1042 = !DILocation(line: 311, column: 40, scope: !797)
!1043 = !DILocation(line: 311, column: 17, scope: !797)
!1044 = !DILocation(line: 312, column: 5, scope: !797)
!1045 = !DILocation(line: 265, column: 33, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 2)
!1047 = !DILocation(line: 265, column: 5, scope: !1046)
!1048 = distinct !{!1048, !1049}
!1049 = !DILocation(line: 265, column: 5, scope: !653)
!1050 = !DILocation(line: 314, column: 20, scope: !653)
!1051 = !DILocation(line: 314, column: 30, scope: !653)
!1052 = !DILocation(line: 314, column: 28, scope: !653)
!1053 = !DILocation(line: 314, column: 5, scope: !653)
!1054 = !DILocation(line: 314, column: 13, scope: !653)
!1055 = !DILocation(line: 314, column: 18, scope: !653)
!1056 = !DILocation(line: 315, column: 45, scope: !653)
!1057 = !DILocation(line: 315, column: 55, scope: !653)
!1058 = !DILocation(line: 315, column: 53, scope: !653)
!1059 = !DILocation(line: 315, column: 42, scope: !653)
!1060 = !DILocation(line: 315, column: 5, scope: !653)
!1061 = !DILocation(line: 315, column: 13, scope: !653)
!1062 = !DILocation(line: 315, column: 18, scope: !653)
!1063 = !DILocation(line: 316, column: 25, scope: !653)
!1064 = !DILocation(line: 316, column: 43, scope: !653)
!1065 = !DILocation(line: 316, column: 49, scope: !653)
!1066 = !DILocation(line: 316, column: 48, scope: !653)
!1067 = !DILocation(line: 316, column: 42, scope: !653)
!1068 = !DILocation(line: 316, column: 41, scope: !653)
!1069 = !DILocation(line: 316, column: 55, scope: !653)
!1070 = !DILocation(line: 316, column: 35, scope: !653)
!1071 = !DILocation(line: 316, column: 20, scope: !653)
!1072 = !DILocation(line: 316, column: 5, scope: !653)
!1073 = !DILocation(line: 316, column: 13, scope: !653)
!1074 = !DILocation(line: 316, column: 17, scope: !653)
!1075 = !DILocation(line: 317, column: 45, scope: !653)
!1076 = !DILocation(line: 317, column: 53, scope: !653)
!1077 = !DILocation(line: 317, column: 51, scope: !653)
!1078 = !DILocation(line: 317, column: 59, scope: !653)
!1079 = !DILocation(line: 317, column: 42, scope: !653)
!1080 = !DILocation(line: 317, column: 73, scope: !653)
!1081 = !DILocation(line: 317, column: 81, scope: !653)
!1082 = !DILocation(line: 317, column: 68, scope: !653)
!1083 = !DILocation(line: 317, column: 66, scope: !653)
!1084 = !DILocation(line: 317, column: 5, scope: !653)
!1085 = !DILocation(line: 317, column: 13, scope: !653)
!1086 = !DILocation(line: 317, column: 17, scope: !653)
!1087 = !DILocation(line: 319, column: 5, scope: !653)
!1088 = !DILocation(line: 321, column: 1, scope: !570)
!1089 = distinct !DISubprogram(name: "delta", scope: !1, file: !1, line: 63, type: !1090, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!48, !48, !48, !48, !49}
!1092 = !DILocalVariable(name: "ta", arg: 1, scope: !1089, file: !1, line: 63, type: !48)
!1093 = !DILocation(line: 63, column: 11, scope: !1089)
!1094 = !DILocalVariable(name: "tb", arg: 2, scope: !1089, file: !1, line: 63, type: !48)
!1095 = !DILocation(line: 63, column: 19, scope: !1089)
!1096 = !DILocalVariable(name: "tc", arg: 3, scope: !1089, file: !1, line: 63, type: !48)
!1097 = !DILocation(line: 63, column: 27, scope: !1089)
!1098 = !DILocalVariable(name: "d", arg: 4, scope: !1089, file: !1, line: 63, type: !49)
!1099 = !DILocation(line: 63, column: 47, scope: !1089)
!1100 = !DILocalVariable(name: "f1", scope: !1089, file: !1, line: 65, type: !50)
!1101 = !DILocation(line: 65, column: 17, scope: !1089)
!1102 = !DILocalVariable(name: "f2", scope: !1089, file: !1, line: 65, type: !50)
!1103 = !DILocation(line: 65, column: 21, scope: !1089)
!1104 = !DILocalVariable(name: "f3", scope: !1089, file: !1, line: 65, type: !50)
!1105 = !DILocation(line: 65, column: 25, scope: !1089)
!1106 = !DILocalVariable(name: "f4", scope: !1089, file: !1, line: 65, type: !50)
!1107 = !DILocation(line: 65, column: 29, scope: !1089)
!1108 = !DILocalVariable(name: "status", scope: !1089, file: !1, line: 66, type: !48)
!1109 = !DILocation(line: 66, column: 7, scope: !1089)
!1110 = !DILocation(line: 67, column: 28, scope: !1089)
!1111 = !DILocation(line: 67, column: 33, scope: !1089)
!1112 = !DILocation(line: 67, column: 31, scope: !1089)
!1113 = !DILocation(line: 67, column: 38, scope: !1089)
!1114 = !DILocation(line: 67, column: 36, scope: !1089)
!1115 = !DILocation(line: 67, column: 41, scope: !1089)
!1116 = !DILocation(line: 67, column: 13, scope: !1089)
!1117 = !DILocation(line: 67, column: 10, scope: !1089)
!1118 = !DILocation(line: 68, column: 28, scope: !1089)
!1119 = !DILocation(line: 68, column: 33, scope: !1089)
!1120 = !DILocation(line: 68, column: 31, scope: !1089)
!1121 = !DILocation(line: 68, column: 38, scope: !1089)
!1122 = !DILocation(line: 68, column: 36, scope: !1089)
!1123 = !DILocation(line: 68, column: 41, scope: !1089)
!1124 = !DILocation(line: 68, column: 13, scope: !1089)
!1125 = !DILocation(line: 68, column: 10, scope: !1089)
!1126 = !DILocation(line: 69, column: 28, scope: !1089)
!1127 = !DILocation(line: 69, column: 33, scope: !1089)
!1128 = !DILocation(line: 69, column: 31, scope: !1089)
!1129 = !DILocation(line: 69, column: 38, scope: !1089)
!1130 = !DILocation(line: 69, column: 36, scope: !1089)
!1131 = !DILocation(line: 69, column: 41, scope: !1089)
!1132 = !DILocation(line: 69, column: 13, scope: !1089)
!1133 = !DILocation(line: 69, column: 10, scope: !1089)
!1134 = !DILocation(line: 70, column: 28, scope: !1089)
!1135 = !DILocation(line: 70, column: 33, scope: !1089)
!1136 = !DILocation(line: 70, column: 31, scope: !1089)
!1137 = !DILocation(line: 70, column: 38, scope: !1089)
!1138 = !DILocation(line: 70, column: 36, scope: !1089)
!1139 = !DILocation(line: 70, column: 41, scope: !1089)
!1140 = !DILocation(line: 70, column: 44, scope: !1089)
!1141 = !DILocation(line: 70, column: 13, scope: !1089)
!1142 = !DILocation(line: 70, column: 10, scope: !1089)
!1143 = !DILocation(line: 71, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 71, column: 6)
!1145 = !DILocation(line: 71, column: 13, scope: !1144)
!1146 = !DILocation(line: 71, column: 6, scope: !1089)
!1147 = !DILocation(line: 72, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 71, column: 19)
!1149 = distinct !{!1149, !1147}
!1150 = !DILocation(line: 72, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 72, column: 5)
!1153 = distinct !{!1153, !1154}
!1154 = !DILocation(line: 72, column: 5, scope: !1152)
!1155 = !DILocation(line: 72, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 2)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 72, column: 5)
!1158 = !DILocation(line: 72, column: 5, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 3)
!1160 = !DILocation(line: 73, column: 3, scope: !1148)
!1161 = !DILocation(line: 74, column: 15, scope: !1089)
!1162 = !DILocation(line: 74, column: 24, scope: !1089)
!1163 = !DILocation(line: 74, column: 19, scope: !1089)
!1164 = !DILocation(line: 74, column: 33, scope: !1089)
!1165 = !DILocation(line: 74, column: 28, scope: !1089)
!1166 = !DILocation(line: 74, column: 42, scope: !1089)
!1167 = !DILocation(line: 74, column: 37, scope: !1089)
!1168 = !DILocation(line: 74, column: 3, scope: !1089)
!1169 = !DILocation(line: 74, column: 6, scope: !1089)
!1170 = !DILocation(line: 74, column: 10, scope: !1089)
!1171 = !DILocation(line: 75, column: 41, scope: !1089)
!1172 = !DILocation(line: 75, column: 44, scope: !1089)
!1173 = !DILocation(line: 75, column: 36, scope: !1089)
!1174 = !DILocation(line: 75, column: 34, scope: !1089)
!1175 = !DILocation(line: 75, column: 3, scope: !1089)
!1176 = !DILocation(line: 75, column: 6, scope: !1089)
!1177 = !DILocation(line: 75, column: 10, scope: !1089)
!1178 = !DILocation(line: 76, column: 3, scope: !1089)
!1179 = !DILocation(line: 77, column: 1, scope: !1089)
!1180 = distinct !DISubprogram(name: "locMin5", scope: !1, file: !1, line: 50, type: !1181, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!48, !526, !526, !526, !526, !526}
!1183 = !DILocalVariable(name: "a", arg: 1, scope: !1180, file: !1, line: 50, type: !526)
!1184 = !DILocation(line: 50, column: 23, scope: !1180)
!1185 = !DILocalVariable(name: "b", arg: 2, scope: !1180, file: !1, line: 50, type: !526)
!1186 = !DILocation(line: 50, column: 36, scope: !1180)
!1187 = !DILocalVariable(name: "c", arg: 3, scope: !1180, file: !1, line: 50, type: !526)
!1188 = !DILocation(line: 50, column: 49, scope: !1180)
!1189 = !DILocalVariable(name: "d", arg: 4, scope: !1180, file: !1, line: 50, type: !526)
!1190 = !DILocation(line: 50, column: 62, scope: !1180)
!1191 = !DILocalVariable(name: "e", arg: 5, scope: !1180, file: !1, line: 50, type: !526)
!1192 = !DILocation(line: 50, column: 75, scope: !1180)
!1193 = !DILocalVariable(name: "f", scope: !1180, file: !1, line: 52, type: !48)
!1194 = !DILocation(line: 52, column: 7, scope: !1180)
!1195 = !DILocation(line: 52, column: 11, scope: !1180)
!1196 = !DILocation(line: 52, column: 11, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 1)
!1198 = !DILocation(line: 52, column: 11, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 2)
!1200 = !DILocation(line: 52, column: 11, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 3)
!1202 = !DILocation(line: 52, column: 7, scope: !1201)
!1203 = !DILocalVariable(name: "g", scope: !1180, file: !1, line: 53, type: !48)
!1204 = !DILocation(line: 53, column: 7, scope: !1180)
!1205 = !DILocation(line: 53, column: 11, scope: !1180)
!1206 = !DILocation(line: 53, column: 11, scope: !1197)
!1207 = !DILocation(line: 53, column: 11, scope: !1199)
!1208 = !DILocation(line: 53, column: 11, scope: !1201)
!1209 = !DILocation(line: 53, column: 7, scope: !1201)
!1210 = !DILocalVariable(name: "h", scope: !1180, file: !1, line: 54, type: !48)
!1211 = !DILocation(line: 54, column: 7, scope: !1180)
!1212 = !DILocation(line: 54, column: 11, scope: !1180)
!1213 = !DILocation(line: 54, column: 11, scope: !1197)
!1214 = !DILocation(line: 54, column: 11, scope: !1199)
!1215 = !DILocation(line: 54, column: 11, scope: !1201)
!1216 = !DILocation(line: 54, column: 7, scope: !1201)
!1217 = !DILocation(line: 55, column: 10, scope: !1180)
!1218 = !DILocation(line: 55, column: 10, scope: !1197)
!1219 = !DILocation(line: 55, column: 10, scope: !1199)
!1220 = !DILocation(line: 55, column: 10, scope: !1201)
!1221 = !DILocation(line: 55, column: 3, scope: !1201)
!1222 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW_e", scope: !1, file: !1, line: 325, type: !46, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1223 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1222, file: !1, line: 325, type: !48)
!1224 = !DILocation(line: 325, column: 30, scope: !1222)
!1225 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1222, file: !1, line: 325, type: !48)
!1226 = !DILocation(line: 325, column: 42, scope: !1222)
!1227 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1222, file: !1, line: 325, type: !48)
!1228 = !DILocation(line: 325, column: 54, scope: !1222)
!1229 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1222, file: !1, line: 326, type: !48)
!1230 = !DILocation(line: 326, column: 30, scope: !1222)
!1231 = !DILocalVariable(name: "two_je", arg: 5, scope: !1222, file: !1, line: 326, type: !48)
!1232 = !DILocation(line: 326, column: 42, scope: !1222)
!1233 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1222, file: !1, line: 326, type: !48)
!1234 = !DILocation(line: 326, column: 54, scope: !1222)
!1235 = !DILocalVariable(name: "result", arg: 7, scope: !1222, file: !1, line: 327, type: !49)
!1236 = !DILocation(line: 327, column: 42, scope: !1222)
!1237 = !DILocalVariable(name: "status", scope: !1222, file: !1, line: 329, type: !48)
!1238 = !DILocation(line: 329, column: 7, scope: !1222)
!1239 = !DILocation(line: 329, column: 37, scope: !1222)
!1240 = !DILocation(line: 329, column: 45, scope: !1222)
!1241 = !DILocation(line: 329, column: 53, scope: !1222)
!1242 = !DILocation(line: 329, column: 61, scope: !1222)
!1243 = !DILocation(line: 329, column: 69, scope: !1222)
!1244 = !DILocation(line: 329, column: 77, scope: !1222)
!1245 = !DILocation(line: 329, column: 85, scope: !1222)
!1246 = !DILocation(line: 329, column: 16, scope: !1222)
!1247 = !DILocalVariable(name: "phase_sum", scope: !1222, file: !1, line: 330, type: !48)
!1248 = !DILocation(line: 330, column: 7, scope: !1222)
!1249 = !DILocation(line: 330, column: 20, scope: !1222)
!1250 = !DILocation(line: 330, column: 29, scope: !1222)
!1251 = !DILocation(line: 330, column: 27, scope: !1222)
!1252 = !DILocation(line: 330, column: 38, scope: !1222)
!1253 = !DILocation(line: 330, column: 36, scope: !1222)
!1254 = !DILocation(line: 330, column: 47, scope: !1222)
!1255 = !DILocation(line: 330, column: 45, scope: !1222)
!1256 = !DILocation(line: 330, column: 54, scope: !1222)
!1257 = !DILocation(line: 331, column: 20, scope: !1222)
!1258 = !DILocation(line: 331, column: 3, scope: !1222)
!1259 = !DILocation(line: 331, column: 11, scope: !1222)
!1260 = !DILocation(line: 331, column: 15, scope: !1222)
!1261 = !DILocation(line: 332, column: 10, scope: !1222)
!1262 = !DILocation(line: 332, column: 3, scope: !1222)
!1263 = distinct !DISubprogram(name: "gsl_sf_coupling_9j_e", scope: !1, file: !1, line: 337, type: !1264, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!48, !48, !48, !48, !48, !48, !48, !48, !48, !48, !49}
!1266 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1263, file: !1, line: 337, type: !48)
!1267 = !DILocation(line: 337, column: 26, scope: !1263)
!1268 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1263, file: !1, line: 337, type: !48)
!1269 = !DILocation(line: 337, column: 38, scope: !1263)
!1270 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1263, file: !1, line: 337, type: !48)
!1271 = !DILocation(line: 337, column: 50, scope: !1263)
!1272 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1263, file: !1, line: 338, type: !48)
!1273 = !DILocation(line: 338, column: 26, scope: !1263)
!1274 = !DILocalVariable(name: "two_je", arg: 5, scope: !1263, file: !1, line: 338, type: !48)
!1275 = !DILocation(line: 338, column: 38, scope: !1263)
!1276 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1263, file: !1, line: 338, type: !48)
!1277 = !DILocation(line: 338, column: 50, scope: !1263)
!1278 = !DILocalVariable(name: "two_jg", arg: 7, scope: !1263, file: !1, line: 339, type: !48)
!1279 = !DILocation(line: 339, column: 26, scope: !1263)
!1280 = !DILocalVariable(name: "two_jh", arg: 8, scope: !1263, file: !1, line: 339, type: !48)
!1281 = !DILocation(line: 339, column: 38, scope: !1263)
!1282 = !DILocalVariable(name: "two_ji", arg: 9, scope: !1263, file: !1, line: 339, type: !48)
!1283 = !DILocation(line: 339, column: 50, scope: !1263)
!1284 = !DILocalVariable(name: "result", arg: 10, scope: !1263, file: !1, line: 340, type: !49)
!1285 = !DILocation(line: 340, column: 38, scope: !1263)
!1286 = !DILocation(line: 344, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 344, column: 9)
!1288 = !DILocation(line: 344, column: 16, scope: !1287)
!1289 = !DILocation(line: 344, column: 20, scope: !1287)
!1290 = !DILocation(line: 344, column: 23, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 1)
!1292 = !DILocation(line: 344, column: 30, scope: !1291)
!1293 = !DILocation(line: 344, column: 34, scope: !1291)
!1294 = !DILocation(line: 344, column: 37, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 2)
!1296 = !DILocation(line: 344, column: 44, scope: !1295)
!1297 = !DILocation(line: 345, column: 6, scope: !1287)
!1298 = !DILocation(line: 345, column: 9, scope: !1291)
!1299 = !DILocation(line: 345, column: 16, scope: !1291)
!1300 = !DILocation(line: 345, column: 20, scope: !1291)
!1301 = !DILocation(line: 345, column: 23, scope: !1295)
!1302 = !DILocation(line: 345, column: 30, scope: !1295)
!1303 = !DILocation(line: 345, column: 34, scope: !1295)
!1304 = !DILocation(line: 345, column: 37, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 3)
!1306 = !DILocation(line: 345, column: 44, scope: !1305)
!1307 = !DILocation(line: 346, column: 6, scope: !1287)
!1308 = !DILocation(line: 346, column: 9, scope: !1291)
!1309 = !DILocation(line: 346, column: 16, scope: !1291)
!1310 = !DILocation(line: 346, column: 20, scope: !1291)
!1311 = !DILocation(line: 346, column: 23, scope: !1295)
!1312 = !DILocation(line: 346, column: 30, scope: !1295)
!1313 = !DILocation(line: 346, column: 34, scope: !1295)
!1314 = !DILocation(line: 346, column: 37, scope: !1305)
!1315 = !DILocation(line: 346, column: 44, scope: !1305)
!1316 = !DILocation(line: 344, column: 9, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 3)
!1318 = !DILocation(line: 348, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 347, column: 8)
!1320 = distinct !{!1320, !1318}
!1321 = !DILocation(line: 348, column: 5, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 348, column: 5)
!1324 = distinct !{!1324, !1325}
!1325 = !DILocation(line: 348, column: 5, scope: !1323)
!1326 = !DILocation(line: 348, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 2)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 348, column: 5)
!1329 = !DILocation(line: 348, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 3)
!1331 = !DILocation(line: 349, column: 3, scope: !1319)
!1332 = !DILocation(line: 350, column: 39, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 350, column: 14)
!1334 = !DILocation(line: 350, column: 47, scope: !1333)
!1335 = !DILocation(line: 350, column: 55, scope: !1333)
!1336 = !DILocation(line: 350, column: 14, scope: !1333)
!1337 = !DILocation(line: 351, column: 11, scope: !1333)
!1338 = !DILocation(line: 351, column: 39, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 1)
!1340 = !DILocation(line: 351, column: 47, scope: !1339)
!1341 = !DILocation(line: 351, column: 55, scope: !1339)
!1342 = !DILocation(line: 351, column: 14, scope: !1339)
!1343 = !DILocation(line: 352, column: 11, scope: !1333)
!1344 = !DILocation(line: 352, column: 39, scope: !1339)
!1345 = !DILocation(line: 352, column: 47, scope: !1339)
!1346 = !DILocation(line: 352, column: 55, scope: !1339)
!1347 = !DILocation(line: 352, column: 14, scope: !1339)
!1348 = !DILocation(line: 353, column: 11, scope: !1333)
!1349 = !DILocation(line: 353, column: 39, scope: !1339)
!1350 = !DILocation(line: 353, column: 47, scope: !1339)
!1351 = !DILocation(line: 353, column: 55, scope: !1339)
!1352 = !DILocation(line: 353, column: 14, scope: !1339)
!1353 = !DILocation(line: 354, column: 11, scope: !1333)
!1354 = !DILocation(line: 354, column: 39, scope: !1339)
!1355 = !DILocation(line: 354, column: 47, scope: !1339)
!1356 = !DILocation(line: 354, column: 55, scope: !1339)
!1357 = !DILocation(line: 354, column: 14, scope: !1339)
!1358 = !DILocation(line: 355, column: 11, scope: !1333)
!1359 = !DILocation(line: 355, column: 39, scope: !1339)
!1360 = !DILocation(line: 355, column: 47, scope: !1339)
!1361 = !DILocation(line: 355, column: 55, scope: !1339)
!1362 = !DILocation(line: 355, column: 14, scope: !1339)
!1363 = !DILocation(line: 350, column: 14, scope: !1291)
!1364 = !DILocation(line: 357, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 356, column: 8)
!1366 = !DILocation(line: 357, column: 13, scope: !1365)
!1367 = !DILocation(line: 357, column: 17, scope: !1365)
!1368 = !DILocation(line: 358, column: 5, scope: !1365)
!1369 = !DILocation(line: 358, column: 13, scope: !1365)
!1370 = !DILocation(line: 358, column: 17, scope: !1365)
!1371 = !DILocation(line: 359, column: 5, scope: !1365)
!1372 = !DILocalVariable(name: "tk", scope: !1373, file: !1, line: 362, type: !48)
!1373 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 361, column: 8)
!1374 = !DILocation(line: 362, column: 9, scope: !1373)
!1375 = !DILocalVariable(name: "tkmin", scope: !1373, file: !1, line: 363, type: !48)
!1376 = !DILocation(line: 363, column: 9, scope: !1373)
!1377 = !DILocation(line: 363, column: 29, scope: !1373)
!1378 = !DILocation(line: 363, column: 36, scope: !1373)
!1379 = !DILocation(line: 363, column: 35, scope: !1373)
!1380 = !DILocation(line: 363, column: 25, scope: !1373)
!1381 = !DILocation(line: 363, column: 49, scope: !1373)
!1382 = !DILocation(line: 363, column: 56, scope: !1373)
!1383 = !DILocation(line: 363, column: 55, scope: !1373)
!1384 = !DILocation(line: 363, column: 45, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 1)
!1386 = !DILocation(line: 363, column: 69, scope: !1373)
!1387 = !DILocation(line: 363, column: 76, scope: !1373)
!1388 = !DILocation(line: 363, column: 75, scope: !1373)
!1389 = !DILocation(line: 363, column: 65, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 2)
!1391 = !DILocation(line: 363, column: 17, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 3)
!1393 = !DILocalVariable(name: "tkmax", scope: !1373, file: !1, line: 364, type: !48)
!1394 = !DILocation(line: 364, column: 9, scope: !1373)
!1395 = !DILocation(line: 364, column: 25, scope: !1373)
!1396 = !DILocation(line: 364, column: 34, scope: !1373)
!1397 = !DILocation(line: 364, column: 32, scope: !1373)
!1398 = !DILocation(line: 364, column: 42, scope: !1373)
!1399 = !DILocation(line: 364, column: 51, scope: !1373)
!1400 = !DILocation(line: 364, column: 49, scope: !1373)
!1401 = !DILocation(line: 364, column: 59, scope: !1373)
!1402 = !DILocation(line: 364, column: 68, scope: !1373)
!1403 = !DILocation(line: 364, column: 66, scope: !1373)
!1404 = !DILocation(line: 364, column: 17, scope: !1373)
!1405 = !DILocalVariable(name: "sum_pos", scope: !1373, file: !1, line: 365, type: !55)
!1406 = !DILocation(line: 365, column: 12, scope: !1373)
!1407 = !DILocalVariable(name: "sum_neg", scope: !1373, file: !1, line: 366, type: !55)
!1408 = !DILocation(line: 366, column: 12, scope: !1373)
!1409 = !DILocalVariable(name: "sumsq_err", scope: !1373, file: !1, line: 367, type: !55)
!1410 = !DILocation(line: 367, column: 12, scope: !1373)
!1411 = !DILocalVariable(name: "phase", scope: !1373, file: !1, line: 368, type: !55)
!1412 = !DILocation(line: 368, column: 12, scope: !1373)
!1413 = !DILocation(line: 369, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 369, column: 5)
!1415 = !DILocation(line: 369, column: 11, scope: !1414)
!1416 = !DILocation(line: 369, column: 9, scope: !1414)
!1417 = !DILocation(line: 369, column: 19, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 1)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 369, column: 5)
!1420 = !DILocation(line: 369, column: 23, scope: !1418)
!1421 = !DILocation(line: 369, column: 21, scope: !1418)
!1422 = !DILocation(line: 369, column: 5, scope: !1418)
!1423 = !DILocalVariable(name: "s1", scope: !1424, file: !1, line: 370, type: !50)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 369, column: 39)
!1425 = !DILocation(line: 370, column: 21, scope: !1424)
!1426 = !DILocalVariable(name: "s2", scope: !1424, file: !1, line: 370, type: !50)
!1427 = !DILocation(line: 370, column: 25, scope: !1424)
!1428 = !DILocalVariable(name: "s3", scope: !1424, file: !1, line: 370, type: !50)
!1429 = !DILocation(line: 370, column: 29, scope: !1424)
!1430 = !DILocalVariable(name: "term", scope: !1424, file: !1, line: 371, type: !55)
!1431 = !DILocation(line: 371, column: 14, scope: !1424)
!1432 = !DILocalVariable(name: "term_err", scope: !1424, file: !1, line: 372, type: !55)
!1433 = !DILocation(line: 372, column: 14, scope: !1424)
!1434 = !DILocalVariable(name: "status", scope: !1424, file: !1, line: 373, type: !48)
!1435 = !DILocation(line: 373, column: 11, scope: !1424)
!1436 = !DILocation(line: 375, column: 38, scope: !1424)
!1437 = !DILocation(line: 375, column: 46, scope: !1424)
!1438 = !DILocation(line: 375, column: 54, scope: !1424)
!1439 = !DILocation(line: 375, column: 59, scope: !1424)
!1440 = !DILocation(line: 375, column: 67, scope: !1424)
!1441 = !DILocation(line: 375, column: 75, scope: !1424)
!1442 = !DILocation(line: 375, column: 17, scope: !1424)
!1443 = !DILocation(line: 375, column: 14, scope: !1424)
!1444 = !DILocation(line: 376, column: 38, scope: !1424)
!1445 = !DILocation(line: 376, column: 46, scope: !1424)
!1446 = !DILocation(line: 376, column: 54, scope: !1424)
!1447 = !DILocation(line: 376, column: 59, scope: !1424)
!1448 = !DILocation(line: 376, column: 67, scope: !1424)
!1449 = !DILocation(line: 376, column: 75, scope: !1424)
!1450 = !DILocation(line: 376, column: 17, scope: !1424)
!1451 = !DILocation(line: 376, column: 14, scope: !1424)
!1452 = !DILocation(line: 377, column: 38, scope: !1424)
!1453 = !DILocation(line: 377, column: 46, scope: !1424)
!1454 = !DILocation(line: 377, column: 54, scope: !1424)
!1455 = !DILocation(line: 377, column: 59, scope: !1424)
!1456 = !DILocation(line: 377, column: 67, scope: !1424)
!1457 = !DILocation(line: 377, column: 75, scope: !1424)
!1458 = !DILocation(line: 377, column: 17, scope: !1424)
!1459 = !DILocation(line: 377, column: 14, scope: !1424)
!1460 = !DILocation(line: 379, column: 10, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 379, column: 10)
!1462 = !DILocation(line: 379, column: 17, scope: !1461)
!1463 = !DILocation(line: 379, column: 10, scope: !1424)
!1464 = !DILocation(line: 380, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 379, column: 33)
!1466 = distinct !{!1466, !1464}
!1467 = !DILocation(line: 380, column: 9, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 1)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 380, column: 9)
!1470 = distinct !{!1470, !1471}
!1471 = !DILocation(line: 380, column: 9, scope: !1469)
!1472 = !DILocation(line: 380, column: 9, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1474, file: !1, discriminator: 2)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 380, column: 9)
!1475 = !DILocation(line: 380, column: 9, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 3)
!1477 = !DILocation(line: 381, column: 7, scope: !1465)
!1478 = !DILocation(line: 382, column: 17, scope: !1424)
!1479 = !DILocation(line: 382, column: 26, scope: !1424)
!1480 = !DILocation(line: 382, column: 21, scope: !1424)
!1481 = !DILocation(line: 382, column: 35, scope: !1424)
!1482 = !DILocation(line: 382, column: 30, scope: !1424)
!1483 = !DILocation(line: 382, column: 12, scope: !1424)
!1484 = !DILocation(line: 383, column: 22, scope: !1424)
!1485 = !DILocation(line: 383, column: 36, scope: !1424)
!1486 = !DILocation(line: 383, column: 43, scope: !1424)
!1487 = !DILocation(line: 383, column: 39, scope: !1424)
!1488 = !DILocation(line: 383, column: 28, scope: !1424)
!1489 = !DILocation(line: 383, column: 26, scope: !1424)
!1490 = !DILocation(line: 383, column: 17, scope: !1424)
!1491 = !DILocation(line: 384, column: 22, scope: !1424)
!1492 = !DILocation(line: 384, column: 36, scope: !1424)
!1493 = !DILocation(line: 384, column: 43, scope: !1424)
!1494 = !DILocation(line: 384, column: 39, scope: !1424)
!1495 = !DILocation(line: 384, column: 28, scope: !1424)
!1496 = !DILocation(line: 384, column: 26, scope: !1424)
!1497 = !DILocation(line: 384, column: 16, scope: !1424)
!1498 = !DILocation(line: 385, column: 22, scope: !1424)
!1499 = !DILocation(line: 385, column: 36, scope: !1424)
!1500 = !DILocation(line: 385, column: 43, scope: !1424)
!1501 = !DILocation(line: 385, column: 39, scope: !1424)
!1502 = !DILocation(line: 385, column: 28, scope: !1424)
!1503 = !DILocation(line: 385, column: 26, scope: !1424)
!1504 = !DILocation(line: 385, column: 16, scope: !1424)
!1505 = !DILocation(line: 387, column: 10, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 387, column: 10)
!1507 = !DILocation(line: 387, column: 15, scope: !1506)
!1508 = !DILocation(line: 387, column: 10, scope: !1424)
!1509 = !DILocation(line: 388, column: 21, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 387, column: 23)
!1511 = !DILocation(line: 388, column: 24, scope: !1510)
!1512 = !DILocation(line: 388, column: 20, scope: !1510)
!1513 = !DILocation(line: 388, column: 31, scope: !1510)
!1514 = !DILocation(line: 388, column: 29, scope: !1510)
!1515 = !DILocation(line: 388, column: 17, scope: !1510)
!1516 = !DILocation(line: 389, column: 7, scope: !1510)
!1517 = !DILocation(line: 391, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 390, column: 12)
!1519 = !DILocation(line: 391, column: 24, scope: !1518)
!1520 = !DILocation(line: 391, column: 20, scope: !1518)
!1521 = !DILocation(line: 391, column: 31, scope: !1518)
!1522 = !DILocation(line: 391, column: 29, scope: !1518)
!1523 = !DILocation(line: 391, column: 17, scope: !1518)
!1524 = !DILocation(line: 394, column: 22, scope: !1424)
!1525 = !DILocation(line: 394, column: 24, scope: !1424)
!1526 = !DILocation(line: 394, column: 21, scope: !1424)
!1527 = !DILocation(line: 394, column: 30, scope: !1424)
!1528 = !DILocation(line: 394, column: 28, scope: !1424)
!1529 = !DILocation(line: 394, column: 44, scope: !1424)
!1530 = !DILocation(line: 394, column: 46, scope: !1424)
!1531 = !DILocation(line: 394, column: 43, scope: !1424)
!1532 = !DILocation(line: 394, column: 52, scope: !1424)
!1533 = !DILocation(line: 394, column: 50, scope: !1424)
!1534 = !DILocation(line: 394, column: 40, scope: !1424)
!1535 = !DILocation(line: 394, column: 17, scope: !1424)
!1536 = !DILocation(line: 395, column: 5, scope: !1424)
!1537 = !DILocation(line: 369, column: 33, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 2)
!1539 = !DILocation(line: 369, column: 5, scope: !1538)
!1540 = distinct !{!1540, !1541}
!1541 = !DILocation(line: 369, column: 5, scope: !1373)
!1542 = !DILocation(line: 397, column: 13, scope: !1373)
!1543 = !DILocation(line: 397, column: 11, scope: !1373)
!1544 = !DILocation(line: 399, column: 20, scope: !1373)
!1545 = !DILocation(line: 399, column: 29, scope: !1373)
!1546 = !DILocation(line: 399, column: 39, scope: !1373)
!1547 = !DILocation(line: 399, column: 37, scope: !1373)
!1548 = !DILocation(line: 399, column: 26, scope: !1373)
!1549 = !DILocation(line: 399, column: 5, scope: !1373)
!1550 = !DILocation(line: 399, column: 13, scope: !1373)
!1551 = !DILocation(line: 399, column: 18, scope: !1373)
!1552 = !DILocation(line: 400, column: 45, scope: !1373)
!1553 = !DILocation(line: 400, column: 55, scope: !1373)
!1554 = !DILocation(line: 400, column: 53, scope: !1373)
!1555 = !DILocation(line: 400, column: 42, scope: !1373)
!1556 = !DILocation(line: 400, column: 5, scope: !1373)
!1557 = !DILocation(line: 400, column: 13, scope: !1373)
!1558 = !DILocation(line: 400, column: 18, scope: !1373)
!1559 = !DILocation(line: 401, column: 25, scope: !1373)
!1560 = !DILocation(line: 401, column: 43, scope: !1373)
!1561 = !DILocation(line: 401, column: 49, scope: !1373)
!1562 = !DILocation(line: 401, column: 48, scope: !1373)
!1563 = !DILocation(line: 401, column: 42, scope: !1373)
!1564 = !DILocation(line: 401, column: 41, scope: !1373)
!1565 = !DILocation(line: 401, column: 55, scope: !1373)
!1566 = !DILocation(line: 401, column: 35, scope: !1373)
!1567 = !DILocation(line: 401, column: 20, scope: !1373)
!1568 = !DILocation(line: 401, column: 5, scope: !1373)
!1569 = !DILocation(line: 401, column: 13, scope: !1373)
!1570 = !DILocation(line: 401, column: 17, scope: !1373)
!1571 = !DILocation(line: 402, column: 45, scope: !1373)
!1572 = !DILocation(line: 402, column: 51, scope: !1373)
!1573 = !DILocation(line: 402, column: 50, scope: !1373)
!1574 = !DILocation(line: 402, column: 57, scope: !1373)
!1575 = !DILocation(line: 402, column: 42, scope: !1373)
!1576 = !DILocation(line: 402, column: 71, scope: !1373)
!1577 = !DILocation(line: 402, column: 79, scope: !1373)
!1578 = !DILocation(line: 402, column: 66, scope: !1373)
!1579 = !DILocation(line: 402, column: 64, scope: !1373)
!1580 = !DILocation(line: 402, column: 5, scope: !1373)
!1581 = !DILocation(line: 402, column: 13, scope: !1373)
!1582 = !DILocation(line: 402, column: 17, scope: !1373)
!1583 = !DILocation(line: 404, column: 5, scope: !1373)
!1584 = !DILocation(line: 406, column: 1, scope: !1263)
!1585 = distinct !DISubprogram(name: "gsl_sf_coupling_3j", scope: !1, file: !1, line: 413, type: !1586, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!55, !48, !48, !48, !48, !48, !48}
!1588 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1585, file: !1, line: 413, type: !48)
!1589 = !DILocation(line: 413, column: 31, scope: !1585)
!1590 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1585, file: !1, line: 413, type: !48)
!1591 = !DILocation(line: 413, column: 43, scope: !1585)
!1592 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1585, file: !1, line: 413, type: !48)
!1593 = !DILocation(line: 413, column: 55, scope: !1585)
!1594 = !DILocalVariable(name: "two_ma", arg: 4, scope: !1585, file: !1, line: 414, type: !48)
!1595 = !DILocation(line: 414, column: 31, scope: !1585)
!1596 = !DILocalVariable(name: "two_mb", arg: 5, scope: !1585, file: !1, line: 414, type: !48)
!1597 = !DILocation(line: 414, column: 43, scope: !1585)
!1598 = !DILocalVariable(name: "two_mc", arg: 6, scope: !1585, file: !1, line: 414, type: !48)
!1599 = !DILocation(line: 414, column: 55, scope: !1585)
!1600 = !DILocalVariable(name: "result", scope: !1585, file: !1, line: 416, type: !50)
!1601 = !DILocation(line: 416, column: 3, scope: !1585)
!1602 = !DILocalVariable(name: "status", scope: !1585, file: !1, line: 416, type: !48)
!1603 = !DILocation(line: 416, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 416, column: 3)
!1605 = !DILocation(line: 416, column: 3, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !1, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 416, column: 3)
!1608 = distinct !{!1608, !1609}
!1609 = !DILocation(line: 416, column: 3, scope: !1607)
!1610 = !DILocation(line: 416, column: 3, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !1, discriminator: 2)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 416, column: 3)
!1613 = !DILocation(line: 416, column: 3, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1607, file: !1, discriminator: 3)
!1615 = !DILocation(line: 416, column: 3, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1585, file: !1, discriminator: 4)
!1617 = !DILocation(line: 419, column: 1, scope: !1585)
!1618 = distinct !DISubprogram(name: "gsl_sf_coupling_6j", scope: !1, file: !1, line: 434, type: !1586, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1619 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1618, file: !1, line: 434, type: !48)
!1620 = !DILocation(line: 434, column: 31, scope: !1618)
!1621 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1618, file: !1, line: 434, type: !48)
!1622 = !DILocation(line: 434, column: 43, scope: !1618)
!1623 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1618, file: !1, line: 434, type: !48)
!1624 = !DILocation(line: 434, column: 55, scope: !1618)
!1625 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1618, file: !1, line: 435, type: !48)
!1626 = !DILocation(line: 435, column: 31, scope: !1618)
!1627 = !DILocalVariable(name: "two_je", arg: 5, scope: !1618, file: !1, line: 435, type: !48)
!1628 = !DILocation(line: 435, column: 43, scope: !1618)
!1629 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1618, file: !1, line: 435, type: !48)
!1630 = !DILocation(line: 435, column: 55, scope: !1618)
!1631 = !DILocalVariable(name: "result", scope: !1618, file: !1, line: 437, type: !50)
!1632 = !DILocation(line: 437, column: 3, scope: !1618)
!1633 = !DILocalVariable(name: "status", scope: !1618, file: !1, line: 437, type: !48)
!1634 = !DILocation(line: 437, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 437, column: 3)
!1636 = !DILocation(line: 437, column: 3, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !1, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 437, column: 3)
!1639 = distinct !{!1639, !1640}
!1640 = !DILocation(line: 437, column: 3, scope: !1638)
!1641 = !DILocation(line: 437, column: 3, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 2)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 437, column: 3)
!1644 = !DILocation(line: 437, column: 3, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1638, file: !1, discriminator: 3)
!1646 = !DILocation(line: 437, column: 3, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1618, file: !1, discriminator: 4)
!1648 = !DILocation(line: 440, column: 1, scope: !1618)
!1649 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW", scope: !1, file: !1, line: 443, type: !1586, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1650 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1649, file: !1, line: 443, type: !48)
!1651 = !DILocation(line: 443, column: 35, scope: !1649)
!1652 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1649, file: !1, line: 443, type: !48)
!1653 = !DILocation(line: 443, column: 47, scope: !1649)
!1654 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1649, file: !1, line: 443, type: !48)
!1655 = !DILocation(line: 443, column: 59, scope: !1649)
!1656 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1649, file: !1, line: 444, type: !48)
!1657 = !DILocation(line: 444, column: 31, scope: !1649)
!1658 = !DILocalVariable(name: "two_je", arg: 5, scope: !1649, file: !1, line: 444, type: !48)
!1659 = !DILocation(line: 444, column: 43, scope: !1649)
!1660 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1649, file: !1, line: 444, type: !48)
!1661 = !DILocation(line: 444, column: 55, scope: !1649)
!1662 = !DILocalVariable(name: "result", scope: !1649, file: !1, line: 446, type: !50)
!1663 = !DILocation(line: 446, column: 3, scope: !1649)
!1664 = !DILocalVariable(name: "status", scope: !1649, file: !1, line: 446, type: !48)
!1665 = !DILocation(line: 446, column: 3, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 446, column: 3)
!1667 = !DILocation(line: 446, column: 3, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !1, discriminator: 1)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 446, column: 3)
!1670 = distinct !{!1670, !1671}
!1671 = !DILocation(line: 446, column: 3, scope: !1669)
!1672 = !DILocation(line: 446, column: 3, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !1, discriminator: 2)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 446, column: 3)
!1675 = !DILocation(line: 446, column: 3, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1669, file: !1, discriminator: 3)
!1677 = !DILocation(line: 446, column: 3, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 4)
!1679 = !DILocation(line: 449, column: 1, scope: !1649)
!1680 = distinct !DISubprogram(name: "gsl_sf_coupling_9j", scope: !1, file: !1, line: 452, type: !1681, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!55, !48, !48, !48, !48, !48, !48, !48, !48, !48}
!1683 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1680, file: !1, line: 452, type: !48)
!1684 = !DILocation(line: 452, column: 31, scope: !1680)
!1685 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1680, file: !1, line: 452, type: !48)
!1686 = !DILocation(line: 452, column: 43, scope: !1680)
!1687 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1680, file: !1, line: 452, type: !48)
!1688 = !DILocation(line: 452, column: 55, scope: !1680)
!1689 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1680, file: !1, line: 453, type: !48)
!1690 = !DILocation(line: 453, column: 31, scope: !1680)
!1691 = !DILocalVariable(name: "two_je", arg: 5, scope: !1680, file: !1, line: 453, type: !48)
!1692 = !DILocation(line: 453, column: 43, scope: !1680)
!1693 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1680, file: !1, line: 453, type: !48)
!1694 = !DILocation(line: 453, column: 55, scope: !1680)
!1695 = !DILocalVariable(name: "two_jg", arg: 7, scope: !1680, file: !1, line: 454, type: !48)
!1696 = !DILocation(line: 454, column: 31, scope: !1680)
!1697 = !DILocalVariable(name: "two_jh", arg: 8, scope: !1680, file: !1, line: 454, type: !48)
!1698 = !DILocation(line: 454, column: 43, scope: !1680)
!1699 = !DILocalVariable(name: "two_ji", arg: 9, scope: !1680, file: !1, line: 454, type: !48)
!1700 = !DILocation(line: 454, column: 55, scope: !1680)
!1701 = !DILocalVariable(name: "result", scope: !1680, file: !1, line: 456, type: !50)
!1702 = !DILocation(line: 456, column: 3, scope: !1680)
!1703 = !DILocalVariable(name: "status", scope: !1680, file: !1, line: 456, type: !48)
!1704 = !DILocation(line: 456, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 456, column: 3)
!1706 = !DILocation(line: 456, column: 3, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 1)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 456, column: 3)
!1709 = distinct !{!1709, !1710}
!1710 = !DILocation(line: 456, column: 3, scope: !1708)
!1711 = !DILocation(line: 456, column: 3, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !1, discriminator: 2)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !1, line: 456, column: 3)
!1714 = !DILocation(line: 456, column: 3, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 3)
!1716 = !DILocation(line: 456, column: 3, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1680, file: !1, discriminator: 4)
!1718 = !DILocation(line: 460, column: 1, scope: !1680)
