source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_601ff8 = local_unnamed_addr global i64 0
@global_var_6020f4 = external local_unnamed_addr global i64
@global_var_601e20 = local_unnamed_addr global i64 0
@global_var_6020e0 = global i64 4406821761206336782
@global_var_400c73 = constant [3 x i8] c"rb\00"
@global_var_400c76 = constant [12 x i8] c"/tmp/secret\00"
@global_var_400c60 = constant [19 x i8] c"VerySuperSeKretKey\00"
@global_var_6020b0 = local_unnamed_addr global [19 x i8]* @global_var_400c60
@global_var_400c82 = constant [3 x i8] c"%x\00"
@global_var_400c88 = constant [36 x i8] c"Are you sure it's the right one? ..\00"
@global_var_6020b8 = local_unnamed_addr global i64 88
@global_var_400cac = constant [14 x i8] c"--hit any key\00"
@global_var_400cba = constant [3 x i8] c"%c\00"
@global_var_601e10 = global i64 4196560
@global_var_601e18 = global i64 4196528
@0 = external global i32
@1 = internal constant [25 x i8] c"#<=;7<=*\07+,=>967ii`\07yy\07%\00"
@global_var_6020c0 = global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1, i64 0, i64 0)

define i64 @function_4006d8() local_unnamed_addr {
dec_label_pc_4006d8:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* @global_var_601ff8, align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_4006ed, label %dec_label_pc_4006e8, !insn.addr !3

dec_label_pc_4006e8:                              ; preds = %dec_label_pc_4006d8
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_4006ed, !insn.addr !4

dec_label_pc_4006ed:                              ; preds = %dec_label_pc_4006e8, %dec_label_pc_4006d8
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define i32 @function_400710(i32 %c) local_unnamed_addr {
dec_label_pc_400710:
  %0 = call i32 @putchar(i32 %c), !insn.addr !6
  ret i32 %0, !insn.addr !6
}

define i32 @function_400720(i8* %s) local_unnamed_addr {
dec_label_pc_400720:
  %0 = call i32 @puts(i8* %s), !insn.addr !7
  ret i32 %0, !insn.addr !7
}

define i32 @function_400730(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_400730:
  %0 = call i32 @fread(i64* %ptr, i32 %size, i32 %n, %_IO_FILE* %stream), !insn.addr !8
  ret i32 %0, !insn.addr !8
}

define i32 @function_400740(i8* %format, ...) local_unnamed_addr {
dec_label_pc_400740:
  %0 = call i32 (i8*, ...) @printf(i8* %format), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define i64* @function_400750(i64* %s, i32 %c, i32 %n) local_unnamed_addr {
dec_label_pc_400750:
  %0 = call i64* @memset(i64* %s, i32 %c, i32 %n), !insn.addr !10
  ret i64* %0, !insn.addr !10
}

define i32 @function_400760(i64 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini) local_unnamed_addr {
dec_label_pc_400760:
  %0 = call i32 @__libc_start_main(i64 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini), !insn.addr !11
  ret i32 %0, !insn.addr !11
}

define void @function_400770(i32 %seed) local_unnamed_addr {
dec_label_pc_400770:
  call void @srand(i32 %seed), !insn.addr !12
  ret void, !insn.addr !12
}

define i32 @function_400780(i8* %s1, i8* %s2) local_unnamed_addr {
dec_label_pc_400780:
  %0 = call i32 @strcmp(i8* %s1, i8* %s2), !insn.addr !13
  ret i32 %0, !insn.addr !13
}

define void @function_400790() local_unnamed_addr {
dec_label_pc_400790:
  call void @__gmon_start__(), !insn.addr !14
  ret void, !insn.addr !14
}

define i32 @function_4007a0(i32* %timer) local_unnamed_addr {
dec_label_pc_4007a0:
  %0 = call i32 @time(i32* %timer), !insn.addr !15
  ret i32 %0, !insn.addr !15
}

define i32 @function_4007b0(i64 %request, ...) local_unnamed_addr {
dec_label_pc_4007b0:
  %0 = call i32 (i64, ...) @ptrace(i64 %request), !insn.addr !16
  ret i32 %0, !insn.addr !16
}

define %_IO_FILE* @function_4007c0(i8* %filename, i8* %modes) local_unnamed_addr {
dec_label_pc_4007c0:
  %0 = call %_IO_FILE* @fopen(i8* %filename, i8* %modes), !insn.addr !17
  ret %_IO_FILE* %0, !insn.addr !17
}

define i32 @function_4007d0(i8* %nptr) local_unnamed_addr {
dec_label_pc_4007d0:
  %0 = call i32 @atoi(i8* %nptr), !insn.addr !18
  ret i32 %0, !insn.addr !18
}

define i32 @function_4007e0(i8* %format, ...) local_unnamed_addr {
dec_label_pc_4007e0:
  %0 = call i32 (i8*, ...) @scanf(i8* %format), !insn.addr !19
  ret i32 %0, !insn.addr !19
}

define void @function_4007f0(i32 %status) local_unnamed_addr {
dec_label_pc_4007f0:
  call void @exit(i32 %status), !insn.addr !20
  ret void, !insn.addr !20
}

define i32 @function_400800() local_unnamed_addr {
dec_label_pc_400800:
  %0 = call i32 @rand(), !insn.addr !21
  ret i32 %0, !insn.addr !21
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_400810:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !22
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !22
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !22
  %3 = call i32 @__libc_start_main(i64 4196605, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 4197328 to void ()*), void ()* inttoptr (i64 4197440 to void ()*), void ()* %2), !insn.addr !22
  %4 = call i64 @__asm_hlt(), !insn.addr !23
  unreachable, !insn.addr !23
}

define i64 @function_400840() local_unnamed_addr {
dec_label_pc_400840:
  ret i64 7, !insn.addr !24
}

define i64 @function_400870(i64* %arg1) local_unnamed_addr {
dec_label_pc_400870:
  ret i64 0, !insn.addr !25
}

define i64 @function_4008b0() local_unnamed_addr {
dec_label_pc_4008b0:
  %rax.0.reg2mem = alloca i64, !insn.addr !26
  %0 = load i8, i8* inttoptr (i64 6299892 to i8*), align 4, !insn.addr !26
  %1 = icmp eq i8 %0, 0, !insn.addr !26
  %2 = icmp eq i1 %1, false, !insn.addr !27
  br i1 %2, label %dec_label_pc_4008ca, label %dec_label_pc_4008b9, !insn.addr !27

dec_label_pc_4008b9:                              ; preds = %dec_label_pc_4008b0
  %3 = call i64 @function_400840(), !insn.addr !28
  store i8 1, i8* bitcast (i64* @global_var_6020f4 to i8*), align 8, !insn.addr !29
  store i64 %3, i64* %rax.0.reg2mem, !insn.addr !29
  br label %dec_label_pc_4008ca, !insn.addr !29

dec_label_pc_4008ca:                              ; preds = %dec_label_pc_4008b9, %dec_label_pc_4008b0
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !30
}

define i64 @function_4008d0() local_unnamed_addr {
dec_label_pc_4008d0:
  %0 = call i64 @__decompiler_undefined_function_0()
  %1 = inttoptr i64 %0 to i64*, !insn.addr !31
  %2 = call i64 @function_400870(i64* %1), !insn.addr !31
  ret i64 %2, !insn.addr !31
}

define i64 @function_4008fd(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_4008fd:
  %rax.0.reg2mem = alloca i64, !insn.addr !32
  %stack_var_-9.0.reg2mem = alloca i32, !insn.addr !32
  %0 = trunc i64 %arg1 to i32, !insn.addr !33
  %1 = call i32 @time(i32* null), !insn.addr !34
  call void @srand(i32 %1), !insn.addr !35
  %2 = call i32 @rand(), !insn.addr !36
  %3 = sext i32 %2 to i64, !insn.addr !37
  %4 = mul nsw i64 %3, -2113396605, !insn.addr !37
  %5 = udiv i64 %4, 4294967296, !insn.addr !37
  %6 = trunc i64 %5 to i32
  %7 = add i32 %2, %6, !insn.addr !38
  %8 = sdiv i32 %7, 64, !insn.addr !39
  %9 = ashr i32 %2, 31, !insn.addr !40
  %10 = sub nsw i32 %8, %9, !insn.addr !41
  %11 = mul i32 %10, -126
  %12 = add i32 %11, %2, !insn.addr !42
  %13 = trunc i32 %12 to i16
  %14 = add i16 %13, 1, !insn.addr !43
  %15 = icmp slt i32 %0, 2, !insn.addr !44
  br i1 %15, label %dec_label_pc_400983, label %dec_label_pc_400958, !insn.addr !44

dec_label_pc_400958:                              ; preds = %dec_label_pc_4008fd
  %16 = add i64 %arg2, 8, !insn.addr !45
  %17 = inttoptr i64 %16 to i64*, !insn.addr !46
  %18 = load i64, i64* %17, align 8, !insn.addr !46
  %19 = inttoptr i64 %18 to i8*, !insn.addr !47
  %20 = call i32 @atoi(i8* %19), !insn.addr !47
  %21 = trunc i32 %20 to i8, !insn.addr !48
  %22 = icmp slt i8 %21, 0, !insn.addr !49
  br i1 %22, label %dec_label_pc_40097a, label %dec_label_pc_400974, !insn.addr !50

dec_label_pc_400974:                              ; preds = %dec_label_pc_400958
  %sext = mul i32 %20, 16777216
  %23 = sdiv i32 %sext, 16777216, !insn.addr !48
  %24 = trunc i32 %23 to i8, !insn.addr !51
  %25 = icmp eq i8 %24, 127, !insn.addr !51
  %26 = icmp eq i1 %25, false, !insn.addr !52
  store i32 %23, i32* %stack_var_-9.0.reg2mem, !insn.addr !52
  br i1 %26, label %dec_label_pc_40098a, label %dec_label_pc_40097a, !insn.addr !52

dec_label_pc_40097a:                              ; preds = %dec_label_pc_400974, %dec_label_pc_400958
  %27 = zext i16 %14 to i32, !insn.addr !53
  %sext2 = mul i32 %27, 16777216
  %28 = sdiv i32 %sext2, 16777216, !insn.addr !53
  store i32 %28, i32* %stack_var_-9.0.reg2mem, !insn.addr !54
  br label %dec_label_pc_40098a, !insn.addr !54

dec_label_pc_400983:                              ; preds = %dec_label_pc_4008fd
  %29 = zext i16 %14 to i32, !insn.addr !55
  %sext4 = mul i32 %29, 16777216
  %30 = sdiv i32 %sext4, 16777216, !insn.addr !55
  store i32 %30, i32* %stack_var_-9.0.reg2mem, !insn.addr !55
  br label %dec_label_pc_40098a, !insn.addr !55

dec_label_pc_40098a:                              ; preds = %dec_label_pc_400983, %dec_label_pc_40097a, %dec_label_pc_400974
  %31 = call i64 @function_4009aa(), !insn.addr !56
  %32 = trunc i64 %31 to i32, !insn.addr !57
  %33 = icmp eq i32 %32, 0, !insn.addr !57
  store i64 %31, i64* %rax.0.reg2mem, !insn.addr !58
  br i1 %33, label %dec_label_pc_4009a8, label %dec_label_pc_400998, !insn.addr !58

dec_label_pc_400998:                              ; preds = %dec_label_pc_40098a
  %stack_var_-9.0.reload = load i32, i32* %stack_var_-9.0.reg2mem
  %34 = zext i32 %stack_var_-9.0.reload to i64, !insn.addr !59
  %35 = call i64 @function_400a5b(i64* nonnull @global_var_6020e0, i64 %34), !insn.addr !60
  store i64 %35, i64* %rax.0.reg2mem, !insn.addr !60
  br label %dec_label_pc_4009a8, !insn.addr !60

dec_label_pc_4009a8:                              ; preds = %dec_label_pc_400998, %dec_label_pc_40098a
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !61
}

define i64 @function_4009aa() local_unnamed_addr {
dec_label_pc_4009aa:
  %0 = call i8 @__decompiler_undefined_function_2()
  %1 = call i8 @__decompiler_undefined_function_2()
  %2 = call i8 @__decompiler_undefined_function_2()
  %stack_var_-120 = alloca i64, align 8
  %3 = call %_IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_400c76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400c73, i64 0, i64 0)), !insn.addr !62
  %4 = icmp eq %_IO_FILE* %3, null, !insn.addr !63
  %5 = icmp eq i1 %4, false, !insn.addr !64
  br i1 %5, label %dec_label_pc_4009d6, label %dec_label_pc_4009cc, !insn.addr !64

dec_label_pc_4009cc:                              ; preds = %dec_label_pc_4009aa
  call void @exit(i32 -2), !insn.addr !65
  unreachable, !insn.addr !65

dec_label_pc_4009d6:                              ; preds = %dec_label_pc_4009aa
  %6 = call i64* @memset(i64* nonnull %stack_var_-120, i32 0, i32 100), !insn.addr !66
  %7 = call i32 @fread(i64* nonnull %stack_var_-120, i32 1, i32 100, %_IO_FILE* %3), !insn.addr !67
  %8 = load [19 x i8]*, [19 x i8]** @global_var_6020b0, align 8, !insn.addr !68
  %9 = bitcast i64* %stack_var_-120 to i8*, !insn.addr !69
  %10 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i64 0, i64 0, !insn.addr !69
  %11 = call i32 @strcmp(i8* nonnull %9, i8* %10), !insn.addr !69
  %12 = icmp eq i32 %11, 0, !insn.addr !70
  %13 = icmp eq i1 %12, false, !insn.addr !71
  br i1 %13, label %dec_label_pc_400a2d, label %dec_label_pc_400a23, !insn.addr !71

dec_label_pc_400a23:                              ; preds = %dec_label_pc_4009d6
  call void @exit(i32 1), !insn.addr !72
  unreachable, !insn.addr !72

dec_label_pc_400a2d:                              ; preds = %dec_label_pc_4009d6
  %14 = load i64, i64* %stack_var_-120, align 8, !insn.addr !73
  %15 = trunc i64 %14 to i8, !insn.addr !73
  %16 = icmp eq i8 %15, -34, !insn.addr !74
  %17 = icmp eq i8 %2, -83, !insn.addr !75
  %18 = icmp eq i1 %17, %16
  %19 = icmp eq i8 %1, -66, !insn.addr !76
  %20 = icmp eq i8 %0, -17, !insn.addr !77
  %21 = icmp eq i1 %20, %19
  %not. = icmp eq i1 %21, %18
  %storemerge = zext i1 %not. to i64
  ret i64 %storemerge, !insn.addr !78
}

define i64 @function_400a5b(i64* %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_400a5b:
  %stack_var_-16.02.reg2mem = alloca i64, !insn.addr !79
  %stack_var_-20.03.reg2mem = alloca i32, !insn.addr !79
  %.reg2mem = alloca i8, !insn.addr !79
  %0 = bitcast i64* %arg1 to i8*, !insn.addr !80
  %1 = load i8, i8* %0, align 1, !insn.addr !80
  %2 = trunc i64 %arg2 to i8, !insn.addr !81
  %3 = icmp eq i8 %1, %2, !insn.addr !81
  br i1 %3, label %dec_label_pc_400aba, label %dec_label_pc_400a7d.lr.ph, !insn.addr !82

dec_label_pc_400a7d.lr.ph:                        ; preds = %dec_label_pc_400a5b
  %4 = ptrtoint i64* %arg1 to i64
  store i8 %1, i8* %.reg2mem
  store i32 0, i32* %stack_var_-20.03.reg2mem
  store i64 %4, i64* %stack_var_-16.02.reg2mem
  br label %dec_label_pc_400a7d

dec_label_pc_400a7d:                              ; preds = %dec_label_pc_400a7d.lr.ph, %dec_label_pc_400a7d
  %stack_var_-16.02.reload = load i64, i64* %stack_var_-16.02.reg2mem
  %stack_var_-20.03.reload = load i32, i32* %stack_var_-20.03.reg2mem
  %.reload = load i8, i8* %.reg2mem
  %5 = add nuw nsw i32 %stack_var_-20.03.reload, 1, !insn.addr !83
  %6 = xor i8 %.reload, %2, !insn.addr !84
  %7 = sext i8 %6 to i32, !insn.addr !85
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400c82, i64 0, i64 0), i32 %7), !insn.addr !86
  %9 = add i64 %stack_var_-16.02.reload, 1, !insn.addr !87
  %10 = inttoptr i64 %9 to i8*, !insn.addr !80
  %11 = load i8, i8* %10, align 1, !insn.addr !80
  %12 = icmp ne i8 %11, %2, !insn.addr !81
  %13 = icmp ult i32 %5, 18, !insn.addr !88
  %or.cond = icmp eq i1 %13, %12
  store i8 %11, i8* %.reg2mem, !insn.addr !82
  store i32 %5, i32* %stack_var_-20.03.reg2mem, !insn.addr !82
  store i64 %9, i64* %stack_var_-16.02.reg2mem, !insn.addr !82
  br i1 %or.cond, label %dec_label_pc_400a7d, label %dec_label_pc_400aba, !insn.addr !82

dec_label_pc_400aba:                              ; preds = %dec_label_pc_400a7d, %dec_label_pc_400a5b
  %14 = call i32 (i64, ...) @ptrace(i64 0), !insn.addr !89
  %15 = icmp eq i32 %14, -1, !insn.addr !90
  %16 = icmp eq i1 %15, false, !insn.addr !91
  br i1 %16, label %dec_label_pc_400ae8, label %dec_label_pc_400ade, !insn.addr !91

dec_label_pc_400ade:                              ; preds = %dec_label_pc_400aba
  call void @exit(i32 1), !insn.addr !92
  unreachable, !insn.addr !92

dec_label_pc_400ae8:                              ; preds = %dec_label_pc_400aba
  %17 = call i32 @putchar(i32 10), !insn.addr !93
  %18 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_var_400c88, i64 0, i64 0)), !insn.addr !94
  %19 = sext i32 %18 to i64, !insn.addr !94
  ret i64 %19, !insn.addr !95
}

define i64 @function_400afe(i64 %arg1) local_unnamed_addr {
dec_label_pc_400afe:
  %stack_var_-16.034.reg2mem = alloca i8*, !insn.addr !96
  %.reg2mem = alloca i8, !insn.addr !96
  %stack_var_-20 = alloca i8, align 1
  store i8 0, i8* %stack_var_-20, align 1, !insn.addr !97
  %0 = call i32 (i64, ...) @ptrace(i64 0), !insn.addr !98
  %1 = icmp eq i32 %0, -1, !insn.addr !99
  %2 = icmp eq i1 %1, false, !insn.addr !100
  br i1 %2, label %dec_label_pc_400b7b.preheader, label %dec_label_pc_400b4c, !insn.addr !100

dec_label_pc_400b7b.preheader:                    ; preds = %dec_label_pc_400afe
  %3 = load i8, i8* bitcast (i8** @global_var_6020c0 to i8*), align 8, !insn.addr !101
  %4 = trunc i64 %arg1 to i8, !insn.addr !102
  %5 = icmp eq i8 %3, %4, !insn.addr !102
  br i1 %5, label %dec_label_pc_400b95, label %dec_label_pc_400b87.preheader, !insn.addr !103

dec_label_pc_400b87.preheader:                    ; preds = %dec_label_pc_400b7b.preheader
  store i8 1, i8* %stack_var_-20, align 1, !insn.addr !104
  store i8 %3, i8* %.reg2mem
  store i8* bitcast (i8** @global_var_6020c0 to i8*), i8** %stack_var_-16.034.reg2mem
  br label %dec_label_pc_400b58

dec_label_pc_400b4c:                              ; preds = %dec_label_pc_400afe
  call void @exit(i32 1), !insn.addr !105
  unreachable, !insn.addr !105

dec_label_pc_400b58:                              ; preds = %dec_label_pc_400b58.dec_label_pc_400b87_crit_edge.dec_label_pc_400b58_crit_edge, %dec_label_pc_400b87.preheader
  %stack_var_-16.034.reload = load i8*, i8** %stack_var_-16.034.reg2mem
  %.reload = load i8, i8* %.reg2mem, !insn.addr !106
  %6 = xor i8 %.reload, %4, !insn.addr !107
  %7 = sext i8 %6 to i32, !insn.addr !108
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400c82, i64 0, i64 0), i32 %7), !insn.addr !109
  %9 = ptrtoint i8* %stack_var_-16.034.reload to i64, !insn.addr !110
  %10 = add i64 %9, 1, !insn.addr !110
  %11 = inttoptr i64 %10 to i8*, !insn.addr !110
  %12 = load i8, i8* %11, align 1, !insn.addr !101
  %13 = icmp eq i8 %12, %4, !insn.addr !102
  br i1 %13, label %dec_label_pc_400b95, label %dec_label_pc_400b58.dec_label_pc_400b87_crit_edge, !insn.addr !103

dec_label_pc_400b58.dec_label_pc_400b87_crit_edge: ; preds = %dec_label_pc_400b58
  %.pre = load i8, i8* %stack_var_-20, align 1
  %14 = add i8 %.pre, 1, !insn.addr !111
  store i8 %14, i8* %stack_var_-20, align 1, !insn.addr !104
  %15 = icmp slt i8 %.pre, 24, !insn.addr !112
  br i1 %15, label %dec_label_pc_400b58.dec_label_pc_400b87_crit_edge.dec_label_pc_400b58_crit_edge, label %dec_label_pc_400b95, !insn.addr !112

dec_label_pc_400b58.dec_label_pc_400b87_crit_edge.dec_label_pc_400b58_crit_edge: ; preds = %dec_label_pc_400b58.dec_label_pc_400b87_crit_edge
  %.pre5 = load i8, i8* %11, align 1
  store i8 %.pre5, i8* %.reg2mem
  store i8* %11, i8** %stack_var_-16.034.reg2mem
  br label %dec_label_pc_400b58

dec_label_pc_400b95:                              ; preds = %dec_label_pc_400b58, %dec_label_pc_400b58.dec_label_pc_400b87_crit_edge, %dec_label_pc_400b7b.preheader
  %16 = call i32 @putchar(i32 10), !insn.addr !113
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_var_400cac, i64 0, i64 0)), !insn.addr !114
  %18 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400cba, i64 0, i64 0), i8* nonnull %stack_var_-20), !insn.addr !115
  %19 = sext i32 %18 to i64, !insn.addr !115
  ret i64 %19, !insn.addr !116
}

define i64 @function_400bd0(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_400bd0:
  %rbx.0.reg2mem = alloca i64, !insn.addr !117
  %0 = call i64 @function_4006d8(), !insn.addr !118
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !119
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_601e18 to i64), i64 ptrtoint (i64* @global_var_601e10 to i64)), i64 3), i64 0), label %dec_label_pc_400c26, label %dec_label_pc_400c10, !insn.addr !119

dec_label_pc_400c10:                              ; preds = %dec_label_pc_400bd0, %dec_label_pc_400c10
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !120
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_601e18 to i64), i64 ptrtoint (i64* @global_var_601e10 to i64)), i64 3), !insn.addr !121
  %3 = icmp eq i1 %2, false, !insn.addr !122
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !122
  br i1 %3, label %dec_label_pc_400c10, label %dec_label_pc_400c26, !insn.addr !122

dec_label_pc_400c26:                              ; preds = %dec_label_pc_400c10, %dec_label_pc_400bd0
  ret i64 %0, !insn.addr !123
}

define i64 @function_400c40() local_unnamed_addr {
dec_label_pc_400c40:
  %0 = call i64 @__decompiler_undefined_function_0()
  ret i64 %0, !insn.addr !124
}

define i64 @function_400c44() local_unnamed_addr {
dec_label_pc_400c44:
  %0 = call i64 @__decompiler_undefined_function_0()
  ret i64 %0, !insn.addr !125
}

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @fread(i64*, i32, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @memset(i64*, i32, i32) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare i32 @time(i32*) local_unnamed_addr

declare i32 @ptrace(i64, ...) local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare i32 @atoi(i8*) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__decompiler_undefined_function_0() local_unnamed_addr

declare i8 @__decompiler_undefined_function_2() local_unnamed_addr

!0 = !{i64 4196056}
!1 = !{i64 4196060}
!2 = !{i64 4196067}
!3 = !{i64 4196070}
!4 = !{i64 4196072}
!5 = !{i64 4196081}
!6 = !{i64 4196112}
!7 = !{i64 4196128}
!8 = !{i64 4196144}
!9 = !{i64 4196160}
!10 = !{i64 4196176}
!11 = !{i64 4196192}
!12 = !{i64 4196208}
!13 = !{i64 4196224}
!14 = !{i64 4196240}
!15 = !{i64 4196256}
!16 = !{i64 4196272}
!17 = !{i64 4196288}
!18 = !{i64 4196304}
!19 = !{i64 4196320}
!20 = !{i64 4196336}
!21 = !{i64 4196352}
!22 = !{i64 4196404}
!23 = !{i64 4196409}
!24 = !{i64 4196438}
!25 = !{i64 4196499}
!26 = !{i64 4196528}
!27 = !{i64 4196535}
!28 = !{i64 4196541}
!29 = !{i64 4196547}
!30 = !{i64 4196554}
!31 = !{i64 4196600}
!32 = !{i64 4196605}
!33 = !{i64 4196613}
!34 = !{i64 4196625}
!35 = !{i64 4196632}
!36 = !{i64 4196637}
!37 = !{i64 4196651}
!38 = !{i64 4196653}
!39 = !{i64 4196656}
!40 = !{i64 4196663}
!41 = !{i64 4196666}
!42 = !{i64 4196681}
!43 = !{i64 4196686}
!44 = !{i64 4196694}
!45 = !{i64 4196700}
!46 = !{i64 4196704}
!47 = !{i64 4196710}
!48 = !{i64 4196715}
!49 = !{i64 4196718}
!50 = !{i64 4196722}
!51 = !{i64 4196724}
!52 = !{i64 4196728}
!53 = !{i64 4196734}
!54 = !{i64 4196737}
!55 = !{i64 4196743}
!56 = !{i64 4196751}
!57 = !{i64 4196756}
!58 = !{i64 4196758}
!59 = !{i64 4196764}
!60 = !{i64 4196771}
!61 = !{i64 4196777}
!62 = !{i64 4196796}
!63 = !{i64 4196805}
!64 = !{i64 4196810}
!65 = !{i64 4196817}
!66 = !{i64 4196839}
!67 = !{i64 4196868}
!68 = !{i64 4196873}
!69 = !{i64 4196890}
!70 = !{i64 4196895}
!71 = !{i64 4196897}
!72 = !{i64 4196904}
!73 = !{i64 4196909}
!74 = !{i64 4196913}
!75 = !{i64 4196921}
!76 = !{i64 4196929}
!77 = !{i64 4196937}
!78 = !{i64 4196954}
!79 = !{i64 4196955}
!80 = !{i64 4197028}
!81 = !{i64 4197031}
!82 = !{i64 4197034}
!83 = !{i64 4197039}
!84 = !{i64 4196996}
!85 = !{i64 4197002}
!86 = !{i64 4197014}
!87 = !{i64 4197019}
!88 = !{i64 4197048}
!89 = !{i64 4197075}
!90 = !{i64 4197080}
!91 = !{i64 4197084}
!92 = !{i64 4197091}
!93 = !{i64 4197101}
!94 = !{i64 4197111}
!95 = !{i64 4197117}
!96 = !{i64 4197118}
!97 = !{i64 4197153}
!98 = !{i64 4197185}
!99 = !{i64 4197190}
!100 = !{i64 4197194}
!101 = !{i64 4197247}
!102 = !{i64 4197250}
!103 = !{i64 4197253}
!104 = !{i64 4197261}
!105 = !{i64 4197201}
!106 = !{i64 4197212}
!107 = !{i64 4197215}
!108 = !{i64 4197221}
!109 = !{i64 4197233}
!110 = !{i64 4197238}
!111 = !{i64 4197258}
!112 = !{i64 4197267}
!113 = !{i64 4197274}
!114 = !{i64 4197289}
!115 = !{i64 4197311}
!116 = !{i64 4197317}
!117 = !{i64 4197328}
!118 = !{i64 4197374}
!119 = !{i64 4197382}
!120 = !{i64 4197405}
!121 = !{i64 4197409}
!122 = !{i64 4197412}
!123 = !{i64 4197428}
!124 = !{i64 4197440}
!125 = !{i64 4197452}
