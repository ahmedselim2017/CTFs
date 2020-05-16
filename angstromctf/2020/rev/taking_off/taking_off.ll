source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_601ff8 = local_unnamed_addr global i64 0
@global_var_400c6a = constant [9 x i8] c"flag.txt\00"
@global_var_400c73 = constant [23 x i8] c"Cannot read flag file.\00"
@global_var_400c8a = constant [3 x i8] c"%s\00"
@global_var_400c8d = constant [3 x i8] c"%d\00"
@global_var_400c90 = constant [68 x i8] c"So you figured out how to provide input and command line arguments.\00"
@global_var_400cd8 = constant [46 x i8] c"But can you figure out what input to provide?\00"
@global_var_400d08 = constant [65 x i8] c"Make sure you have the correct amount of command line arguments!\00"
@global_var_400d49 = constant [8 x i8] c"chicken\00"
@global_var_400d58 = constant [49 x i8] c"Don't try to guess the arguments, it won't work.\00"
@global_var_400d90 = constant [56 x i8] c"Well, you found the arguments, but what's the password?\00"
@global_var_602090 = constant [18 x i8] c"ZFOKYO\0AMC\5CO\0ALFKM*\00"
@global_var_400dc8 = constant [38 x i8] c"I'm sure it's just a typo. Try again.\00"
@global_var_400df0 = constant [60 x i8] c"Good job! You're ready to move on to bigger and badder rev!\00"
@global_var_601e10 = local_unnamed_addr global i64 4196464
@global_var_601e18 = local_unnamed_addr global i64 4196416
@0 = external global i32
@global_var_6020b8 = local_unnamed_addr global i8 0
@1 = internal constant [2 x i8] c"r\00"
@2 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i64 0, i64 0)
@global_var_6020b0 = local_unnamed_addr global %_IO_FILE* null
@global_var_400c68 = constant [2 x i8] c"r\00"

define i64 @print_flag() local_unnamed_addr {
dec_label_pc_400877:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %stack_var_-152 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !1
  %1 = call i32 @getegid(), !insn.addr !2
  %2 = call i32 @setresgid(i32 %1, i32 %1, i32 %1), !insn.addr !3
  %3 = call %_IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_400c6a, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_400c68, i64 0, i64 0)), !insn.addr !4
  %4 = icmp eq %_IO_FILE* %3, null, !insn.addr !5
  %5 = icmp eq i1 %4, false, !insn.addr !6
  br i1 %5, label %dec_label_pc_4008f1, label %dec_label_pc_4008db, !insn.addr !6

dec_label_pc_4008db:                              ; preds = %dec_label_pc_400877
  %6 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_400c73, i64 0, i64 0)), !insn.addr !7
  call void @exit(i32 1), !insn.addr !8
  unreachable, !insn.addr !8

dec_label_pc_4008f1:                              ; preds = %dec_label_pc_400877
  %7 = bitcast i64* %stack_var_-152 to i8*, !insn.addr !9
  %8 = call i8* @fgets(i8* nonnull %7, i32 128, %_IO_FILE* %3), !insn.addr !9
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400c8a, i64 0, i64 0), i64* nonnull %stack_var_-152), !insn.addr !10
  %10 = call i64 @__readfsqword(i64 40), !insn.addr !11
  %11 = icmp eq i64 %0, %10, !insn.addr !11
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !12
  br i1 %11, label %dec_label_pc_40093c, label %dec_label_pc_400937, !insn.addr !12

dec_label_pc_400937:                              ; preds = %dec_label_pc_4008f1
  call void @__stack_chk_fail(), !insn.addr !13
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !13
  br label %dec_label_pc_40093c, !insn.addr !13

dec_label_pc_40093c:                              ; preds = %dec_label_pc_400937, %dec_label_pc_4008f1
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !14
}

define i64 @string_to_int(i64 %arg1, i64* %arg2) local_unnamed_addr {
dec_label_pc_40093e:
  %0 = inttoptr i64 %arg1 to i8*, !insn.addr !15
  %1 = call i32 (i8*, i8*, ...) @sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400c8d, i64 0, i64 0), i64* %arg2), !insn.addr !15
  %2 = sext i32 %1 to i64, !insn.addr !15
  ret i64 %2, !insn.addr !16
}

define i64 @is_invalid(i64 %arg1) local_unnamed_addr {
dec_label_pc_40096d:
  %0 = trunc i64 %arg1 to i32, !insn.addr !17
  %1 = icmp slt i32 %0, 0, !insn.addr !18
  br i1 %1, label %dec_label_pc_40098c, label %dec_label_pc_40097a, !insn.addr !19

dec_label_pc_40097a:                              ; preds = %dec_label_pc_40096d
  %2 = icmp sgt i32 %0, 9, !insn.addr !20
  %spec.select = zext i1 %2 to i64
  ret i64 %spec.select

dec_label_pc_40098c:                              ; preds = %dec_label_pc_40096d
  ret i64 1, !insn.addr !21
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_40098e:
  %rax.1.reg2mem = alloca i64, !insn.addr !22
  %rax.0.reg2mem = alloca i64, !insn.addr !22
  %storemerge6.reg2mem = alloca i32, !insn.addr !22
  %stack_var_-152 = alloca i64, align 8
  %stack_var_-172 = alloca i32, align 4
  %stack_var_-176 = alloca i32, align 4
  %stack_var_-180 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = trunc i64 %argc to i32, !insn.addr !23
  %1 = call i64 @__readfsqword(i64 40), !insn.addr !24
  %2 = call i32 @puts(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @global_var_400c90, i64 0, i64 0)), !insn.addr !25
  %3 = call i32 @puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @global_var_400cd8, i64 0, i64 0)), !insn.addr !26
  %4 = icmp eq i32 %0, 5, !insn.addr !27
  br i1 %4, label %dec_label_pc_4009ec, label %dec_label_pc_4009d6, !insn.addr !28

dec_label_pc_4009d6:                              ; preds = %dec_label_pc_40098e
  %5 = call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_var_400d08, i64 0, i64 0)), !insn.addr !29
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !30
  br label %dec_label_pc_400bc7, !insn.addr !30

dec_label_pc_4009ec:                              ; preds = %dec_label_pc_40098e
  %6 = ptrtoint i8** %argv to i64, !insn.addr !31
  %7 = add i64 %6, 8, !insn.addr !32
  %8 = inttoptr i64 %7 to i64*, !insn.addr !33
  %9 = load i64, i64* %8, align 8, !insn.addr !33
  %10 = bitcast i32* %stack_var_-180 to i64*, !insn.addr !34
  %11 = call i64 @string_to_int(i64 %9, i64* nonnull %10), !insn.addr !34
  %12 = add i64 %6, 16, !insn.addr !35
  %13 = inttoptr i64 %12 to i64*, !insn.addr !36
  %14 = load i64, i64* %13, align 8, !insn.addr !36
  %15 = bitcast i32* %stack_var_-176 to i64*, !insn.addr !37
  %16 = call i64 @string_to_int(i64 %14, i64* nonnull %15), !insn.addr !37
  %17 = add i64 %6, 24, !insn.addr !38
  %18 = inttoptr i64 %17 to i64*, !insn.addr !39
  %19 = load i64, i64* %18, align 8, !insn.addr !39
  %20 = bitcast i32* %stack_var_-172 to i64*, !insn.addr !40
  %21 = call i64 @string_to_int(i64 %19, i64* nonnull %20), !insn.addr !40
  %22 = load i32, i32* %stack_var_-180, align 4, !insn.addr !41
  %23 = zext i32 %22 to i64, !insn.addr !42
  %24 = call i64 @is_invalid(i64 %23), !insn.addr !43
  %25 = trunc i64 %24 to i32, !insn.addr !44
  %26 = icmp eq i32 %25, 0, !insn.addr !44
  %27 = icmp eq i1 %26, false, !insn.addr !45
  br i1 %27, label %dec_label_pc_400aca, label %dec_label_pc_400a5d, !insn.addr !45

dec_label_pc_400a5d:                              ; preds = %dec_label_pc_4009ec
  %28 = load i32, i32* %stack_var_-176, align 4, !insn.addr !46
  %29 = zext i32 %28 to i64, !insn.addr !47
  %30 = call i64 @is_invalid(i64 %29), !insn.addr !48
  %31 = trunc i64 %30 to i32, !insn.addr !49
  %32 = icmp eq i32 %31, 0, !insn.addr !49
  %33 = icmp eq i1 %32, false, !insn.addr !50
  br i1 %33, label %dec_label_pc_400aca, label %dec_label_pc_400a6e, !insn.addr !50

dec_label_pc_400a6e:                              ; preds = %dec_label_pc_400a5d
  %34 = load i32, i32* %stack_var_-172, align 4, !insn.addr !51
  %35 = zext i32 %34 to i64, !insn.addr !52
  %36 = call i64 @is_invalid(i64 %35), !insn.addr !53
  %37 = trunc i64 %36 to i32, !insn.addr !54
  %38 = icmp eq i32 %37, 0, !insn.addr !54
  %39 = icmp eq i1 %38, false, !insn.addr !55
  br i1 %39, label %dec_label_pc_400aca, label %dec_label_pc_400a7f, !insn.addr !55

dec_label_pc_400a7f:                              ; preds = %dec_label_pc_400a6e
  %40 = load i32, i32* %stack_var_-176, align 4, !insn.addr !56
  %41 = mul i32 %40, 100, !insn.addr !57
  %42 = load i32, i32* %stack_var_-180, align 4, !insn.addr !58
  %43 = mul i32 %42, 10, !insn.addr !59
  %44 = add i32 %43, %41, !insn.addr !60
  %45 = load i32, i32* %stack_var_-172, align 4, !insn.addr !61
  %46 = add i32 %44, %45, !insn.addr !62
  %47 = icmp eq i32 %46, 932, !insn.addr !63
  %48 = icmp eq i1 %47, false, !insn.addr !64
  br i1 %48, label %dec_label_pc_400aca, label %dec_label_pc_400aa9, !insn.addr !64

dec_label_pc_400aa9:                              ; preds = %dec_label_pc_400a7f
  %49 = add i64 %6, 32, !insn.addr !65
  %50 = inttoptr i64 %49 to i64*, !insn.addr !66
  %51 = load i64, i64* %50, align 8, !insn.addr !66
  %52 = inttoptr i64 %51 to i8*, !insn.addr !67
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_400d49, i64 0, i64 0)), !insn.addr !67
  %54 = icmp eq i32 %53, 0, !insn.addr !68
  br i1 %54, label %dec_label_pc_400ae0, label %dec_label_pc_400aca, !insn.addr !69

dec_label_pc_400aca:                              ; preds = %dec_label_pc_400aa9, %dec_label_pc_400a7f, %dec_label_pc_400a6e, %dec_label_pc_400a5d, %dec_label_pc_4009ec
  %55 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @global_var_400d58, i64 0, i64 0)), !insn.addr !70
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !71
  br label %dec_label_pc_400bc7, !insn.addr !71

dec_label_pc_400ae0:                              ; preds = %dec_label_pc_400aa9
  %56 = call i32 @puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @global_var_400d90, i64 0, i64 0)), !insn.addr !72
  %57 = load %_IO_FILE*, %_IO_FILE** @global_var_6020b0, align 8, !insn.addr !73
  %58 = bitcast i64* %stack_var_-152 to i8*, !insn.addr !74
  %59 = call i8* @fgets(i8* nonnull %58, i32 128, %_IO_FILE* %57), !insn.addr !74
  %60 = call i8* @strchr(i8* nonnull %58, i32 10), !insn.addr !75
  %61 = icmp eq i8* %60, null, !insn.addr !76
  br i1 %61, label %dec_label_pc_400b36, label %dec_label_pc_400b2c, !insn.addr !77

dec_label_pc_400b2c:                              ; preds = %dec_label_pc_400ae0
  store i8 0, i8* %60, align 1, !insn.addr !78
  br label %dec_label_pc_400b36, !insn.addr !78

dec_label_pc_400b36:                              ; preds = %dec_label_pc_400b2c, %dec_label_pc_400ae0
  %62 = call i32 @strlen(i8* nonnull %58), !insn.addr !79
  %63 = icmp slt i32 %62, 0, !insn.addr !80
  br i1 %63, label %dec_label_pc_400bac, label %dec_label_pc_400b57.lr.ph, !insn.addr !80

dec_label_pc_400b57.lr.ph:                        ; preds = %dec_label_pc_400b36
  %64 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !81
  %65 = add i64 %64, -144, !insn.addr !82
  store i32 0, i32* %storemerge6.reg2mem
  br label %dec_label_pc_400b57

dec_label_pc_400b57:                              ; preds = %dec_label_pc_400b57.lr.ph, %dec_label_pc_400b9e
  %storemerge6.reload = load i32, i32* %storemerge6.reg2mem
  %66 = sext i32 %storemerge6.reload to i64, !insn.addr !83
  %67 = add i64 %65, %66, !insn.addr !82
  %68 = inttoptr i64 %67 to i8*, !insn.addr !82
  %69 = load i8, i8* %68, align 1, !insn.addr !82
  %70 = xor i8 %69, 42
  %71 = add i64 %66, ptrtoint ([18 x i8]* @global_var_602090 to i64), !insn.addr !84
  %72 = inttoptr i64 %71 to i8*, !insn.addr !84
  %73 = load i8, i8* %72, align 1, !insn.addr !84
  %74 = icmp eq i8 %70, %73, !insn.addr !85
  br i1 %74, label %dec_label_pc_400b9e, label %dec_label_pc_400b84, !insn.addr !86

dec_label_pc_400b84:                              ; preds = %dec_label_pc_400b57
  %75 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_var_400dc8, i64 0, i64 0)), !insn.addr !87
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !88
  br label %dec_label_pc_400bc7, !insn.addr !88

dec_label_pc_400b9e:                              ; preds = %dec_label_pc_400b57
  %76 = add i32 %storemerge6.reload, 1, !insn.addr !89
  %77 = icmp sgt i32 %76, %62, !insn.addr !80
  store i32 %76, i32* %storemerge6.reg2mem, !insn.addr !80
  br i1 %77, label %dec_label_pc_400bac, label %dec_label_pc_400b57, !insn.addr !80

dec_label_pc_400bac:                              ; preds = %dec_label_pc_400b9e, %dec_label_pc_400b36
  %78 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @global_var_400df0, i64 0, i64 0)), !insn.addr !90
  %79 = call i64 @print_flag(), !insn.addr !91
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !92
  br label %dec_label_pc_400bc7, !insn.addr !92

dec_label_pc_400bc7:                              ; preds = %dec_label_pc_400b84, %dec_label_pc_400bac, %dec_label_pc_400aca, %dec_label_pc_4009d6
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %80 = call i64 @__readfsqword(i64 40), !insn.addr !93
  %81 = icmp eq i64 %1, %80, !insn.addr !93
  store i64 %rax.0.reload, i64* %rax.1.reg2mem, !insn.addr !94
  br i1 %81, label %dec_label_pc_400bdb, label %dec_label_pc_400bd6, !insn.addr !94

dec_label_pc_400bd6:                              ; preds = %dec_label_pc_400bc7
  call void @__stack_chk_fail(), !insn.addr !95
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.1.reg2mem, !insn.addr !95
  br label %dec_label_pc_400bdb, !insn.addr !95

dec_label_pc_400bdb:                              ; preds = %dec_label_pc_400bd6, %dec_label_pc_400bc7
  %rax.1.reload = load i64, i64* %rax.1.reg2mem
  ret i64 %rax.1.reload, !insn.addr !96
}

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @strlen(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @setresgid(i32, i32, i32) local_unnamed_addr

declare i8* @strchr(i8*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i8* @fgets(i8*, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @sscanf(i8*, i8*, ...) local_unnamed_addr

declare i32 @getegid() local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4196471}
!1 = !{i64 4196482}
!2 = !{i64 4196497}
!3 = !{i64 4196530}
!4 = !{i64 4196549}
!5 = !{i64 4196561}
!6 = !{i64 4196569}
!7 = !{i64 4196578}
!8 = !{i64 4196588}
!9 = !{i64 4196615}
!10 = !{i64 4196642}
!11 = !{i64 4196652}
!12 = !{i64 4196661}
!13 = !{i64 4196663}
!14 = !{i64 4196669}
!15 = !{i64 4196709}
!16 = !{i64 4196716}
!17 = !{i64 4196721}
!18 = !{i64 4196724}
!19 = !{i64 4196728}
!20 = !{i64 4196734}
!21 = !{i64 4196749}
!22 = !{i64 4196750}
!23 = !{i64 4196761}
!24 = !{i64 4196774}
!25 = !{i64 4196796}
!26 = !{i64 4196808}
!27 = !{i64 4196813}
!28 = !{i64 4196820}
!29 = !{i64 4196829}
!30 = !{i64 4196839}
!31 = !{i64 4196844}
!32 = !{i64 4196851}
!33 = !{i64 4196855}
!34 = !{i64 4196871}
!35 = !{i64 4196883}
!36 = !{i64 4196887}
!37 = !{i64 4196903}
!38 = !{i64 4196915}
!39 = !{i64 4196919}
!40 = !{i64 4196935}
!41 = !{i64 4196940}
!42 = !{i64 4196946}
!43 = !{i64 4196948}
!44 = !{i64 4196953}
!45 = !{i64 4196955}
!46 = !{i64 4196957}
!47 = !{i64 4196963}
!48 = !{i64 4196965}
!49 = !{i64 4196970}
!50 = !{i64 4196972}
!51 = !{i64 4196974}
!52 = !{i64 4196980}
!53 = !{i64 4196982}
!54 = !{i64 4196987}
!55 = !{i64 4196989}
!56 = !{i64 4196991}
!57 = !{i64 4196997}
!58 = !{i64 4197000}
!59 = !{i64 4197013}
!60 = !{i64 4197015}
!61 = !{i64 4197018}
!62 = !{i64 4197024}
!63 = !{i64 4197026}
!64 = !{i64 4197031}
!65 = !{i64 4197040}
!66 = !{i64 4197044}
!67 = !{i64 4197057}
!68 = !{i64 4197062}
!69 = !{i64 4197064}
!70 = !{i64 4197073}
!71 = !{i64 4197083}
!72 = !{i64 4197095}
!73 = !{i64 4197100}
!74 = !{i64 4197122}
!75 = !{i64 4197142}
!76 = !{i64 4197154}
!77 = !{i64 4197162}
!78 = !{i64 4197171}
!79 = !{i64 4197184}
!80 = !{i64 4197290}
!81 = !{i64 4196751}
!82 = !{i64 4197215}
!83 = !{i64 4197213}
!84 = !{i64 4197244}
!85 = !{i64 4197248}
!86 = !{i64 4197250}
!87 = !{i64 4197259}
!88 = !{i64 4197269}
!89 = !{i64 4197271}
!90 = !{i64 4197299}
!91 = !{i64 4197309}
!92 = !{i64 4197314}
!93 = !{i64 4197323}
!94 = !{i64 4197332}
!95 = !{i64 4197334}
!96 = !{i64 4197340}
