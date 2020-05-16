source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_600ff8 = local_unnamed_addr global i64 0
@global_var_400aba = constant [9 x i8] c"flag.txt\00"
@global_var_400ac3 = constant [23 x i8] c"Cannot read flag file.\00"
@global_var_400ada = constant [3 x i8] c"%s\00"
@global_var_400ae0 = constant [39 x i8] c"Congratulations on running the binary!\00"
@global_var_400b08 = constant [44 x i8] c"Now there are a few more things to tend to.\00"
@global_var_400b38 = constant [46 x i8] c"Please type \22give flag\22 (without the quotes).\00"
@global_var_400b66 = constant [10 x i8] c"give flag\00"
@global_var_400b70 = constant [54 x i8] c"You entered \22%s\22, not \22give flag\22. Please try again.\0A\00"
@global_var_400ba6 = constant [10 x i8] c"Good job!\00"
@global_var_400bb0 = constant [81 x i8] c"Now run the program with a command line argument of \22banana\22 and you'll be done!\00"
@global_var_400c01 = constant [7 x i8] c"banana\00"
@global_var_400c08 = constant [52 x i8] c"You provided \22%s\22, not \22banana\22. Please try again.\0A\00"
@global_var_400c40 = constant [47 x i8] c"Well I think it's about time you got the flag!\00"
@global_var_600e10 = local_unnamed_addr global i64 4196320
@global_var_600e18 = local_unnamed_addr global i64 4196272
@0 = external global i32
@global_var_601088 = local_unnamed_addr global i8 0
@1 = internal constant [2 x i8] c"r\00"
@2 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i64 0, i64 0)
@global_var_601080 = local_unnamed_addr global %_IO_FILE* null
@global_var_400ab8 = constant [2 x i8] c"r\00"

define i64 @print_flag() local_unnamed_addr {
dec_label_pc_4007e7:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %stack_var_-152 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !1
  %1 = call i32 @getegid(), !insn.addr !2
  %2 = call i32 @setresgid(i32 %1, i32 %1, i32 %1), !insn.addr !3
  %3 = call %_IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_400aba, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_400ab8, i64 0, i64 0)), !insn.addr !4
  %4 = icmp eq %_IO_FILE* %3, null, !insn.addr !5
  %5 = icmp eq i1 %4, false, !insn.addr !6
  br i1 %5, label %dec_label_pc_400861, label %dec_label_pc_40084b, !insn.addr !6

dec_label_pc_40084b:                              ; preds = %dec_label_pc_4007e7
  %6 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_400ac3, i64 0, i64 0)), !insn.addr !7
  call void @exit(i32 1), !insn.addr !8
  unreachable, !insn.addr !8

dec_label_pc_400861:                              ; preds = %dec_label_pc_4007e7
  %7 = bitcast i64* %stack_var_-152 to i8*, !insn.addr !9
  %8 = call i8* @fgets(i8* nonnull %7, i32 128, %_IO_FILE* %3), !insn.addr !9
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_400ada, i64 0, i64 0), i64* nonnull %stack_var_-152), !insn.addr !10
  %10 = call i64 @__readfsqword(i64 40), !insn.addr !11
  %11 = icmp eq i64 %0, %10, !insn.addr !11
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !12
  br i1 %11, label %dec_label_pc_4008ac, label %dec_label_pc_4008a7, !insn.addr !12

dec_label_pc_4008a7:                              ; preds = %dec_label_pc_400861
  call void @__stack_chk_fail(), !insn.addr !13
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !13
  br label %dec_label_pc_4008ac, !insn.addr !13

dec_label_pc_4008ac:                              ; preds = %dec_label_pc_4008a7, %dec_label_pc_400861
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !14
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_4008ae:
  %rax.1.reg2mem = alloca i64, !insn.addr !15
  %rax.0.reg2mem = alloca i64, !insn.addr !15
  %stack_var_-152 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !16
  %1 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_var_400ae0, i64 0, i64 0)), !insn.addr !17
  %2 = call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @global_var_400b08, i64 0, i64 0)), !insn.addr !18
  %3 = call i32 @puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @global_var_400b38, i64 0, i64 0)), !insn.addr !19
  %4 = load %_IO_FILE*, %_IO_FILE** @global_var_601080, align 8, !insn.addr !20
  %5 = bitcast i64* %stack_var_-152 to i8*, !insn.addr !21
  %6 = call i8* @fgets(i8* nonnull %5, i32 128, %_IO_FILE* %4), !insn.addr !21
  %7 = call i8* @strchr(i8* nonnull %5, i32 10), !insn.addr !22
  %8 = icmp eq i8* %7, null, !insn.addr !23
  br i1 %8, label %dec_label_pc_400943, label %dec_label_pc_400939, !insn.addr !24

dec_label_pc_400939:                              ; preds = %dec_label_pc_4008ae
  store i8 0, i8* %7, align 1, !insn.addr !25
  br label %dec_label_pc_400943, !insn.addr !25

dec_label_pc_400943:                              ; preds = %dec_label_pc_400939, %dec_label_pc_4008ae
  %9 = call i32 @strcmp(i8* nonnull %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_400b66, i64 0, i64 0)), !insn.addr !26
  %10 = icmp eq i32 %9, 0, !insn.addr !27
  br i1 %10, label %dec_label_pc_400982, label %dec_label_pc_40095d, !insn.addr !28

dec_label_pc_40095d:                              ; preds = %dec_label_pc_400943
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @global_var_400b70, i64 0, i64 0), i64* nonnull %stack_var_-152), !insn.addr !29
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !30
  br label %dec_label_pc_400a0f, !insn.addr !30

dec_label_pc_400982:                              ; preds = %dec_label_pc_400943
  %12 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_400ba6, i64 0, i64 0)), !insn.addr !31
  %13 = trunc i64 %argc to i32, !insn.addr !32
  %14 = icmp sgt i32 %13, 1, !insn.addr !33
  br i1 %14, label %dec_label_pc_4009aa, label %dec_label_pc_400997, !insn.addr !33

dec_label_pc_400997:                              ; preds = %dec_label_pc_400982
  %15 = call i32 @puts(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @global_var_400bb0, i64 0, i64 0)), !insn.addr !34
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !35
  br label %dec_label_pc_400a0f, !insn.addr !35

dec_label_pc_4009aa:                              ; preds = %dec_label_pc_400982
  %16 = ptrtoint i8** %argv to i64, !insn.addr !36
  %17 = add i64 %16, 8, !insn.addr !37
  %18 = inttoptr i64 %17 to i64*, !insn.addr !38
  %19 = load i64, i64* %18, align 8, !insn.addr !38
  %20 = inttoptr i64 %19 to i8*, !insn.addr !39
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_400c01, i64 0, i64 0)), !insn.addr !39
  %22 = icmp eq i32 %21, 0, !insn.addr !40
  br i1 %22, label %dec_label_pc_4009f4, label %dec_label_pc_4009cb, !insn.addr !41

dec_label_pc_4009cb:                              ; preds = %dec_label_pc_4009aa
  %23 = load i64, i64* %18, align 8, !insn.addr !42
  %24 = inttoptr i64 %23 to i8*, !insn.addr !43
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global_var_400c08, i64 0, i64 0), i8* %24), !insn.addr !43
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !44
  br label %dec_label_pc_400a0f, !insn.addr !44

dec_label_pc_4009f4:                              ; preds = %dec_label_pc_4009aa
  %26 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @global_var_400c40, i64 0, i64 0)), !insn.addr !45
  %27 = call i64 @print_flag(), !insn.addr !46
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !47
  br label %dec_label_pc_400a0f, !insn.addr !47

dec_label_pc_400a0f:                              ; preds = %dec_label_pc_4009f4, %dec_label_pc_4009cb, %dec_label_pc_400997, %dec_label_pc_40095d
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %28 = call i64 @__readfsqword(i64 40), !insn.addr !48
  %29 = icmp eq i64 %0, %28, !insn.addr !48
  store i64 %rax.0.reload, i64* %rax.1.reg2mem, !insn.addr !49
  br i1 %29, label %dec_label_pc_400a23, label %dec_label_pc_400a1e, !insn.addr !49

dec_label_pc_400a1e:                              ; preds = %dec_label_pc_400a0f
  call void @__stack_chk_fail(), !insn.addr !50
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.1.reg2mem, !insn.addr !50
  br label %dec_label_pc_400a23, !insn.addr !50

dec_label_pc_400a23:                              ; preds = %dec_label_pc_400a1e, %dec_label_pc_400a0f
  %rax.1.reload = load i64, i64* %rax.1.reg2mem
  ret i64 %rax.1.reload, !insn.addr !51
}

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @setresgid(i32, i32, i32) local_unnamed_addr

declare i8* @strchr(i8*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i8* @fgets(i8*, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @getegid() local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4196327}
!1 = !{i64 4196338}
!2 = !{i64 4196353}
!3 = !{i64 4196386}
!4 = !{i64 4196405}
!5 = !{i64 4196417}
!6 = !{i64 4196425}
!7 = !{i64 4196434}
!8 = !{i64 4196444}
!9 = !{i64 4196471}
!10 = !{i64 4196498}
!11 = !{i64 4196508}
!12 = !{i64 4196517}
!13 = !{i64 4196519}
!14 = !{i64 4196525}
!15 = !{i64 4196526}
!16 = !{i64 4196550}
!17 = !{i64 4196572}
!18 = !{i64 4196584}
!19 = !{i64 4196596}
!20 = !{i64 4196601}
!21 = !{i64 4196623}
!22 = !{i64 4196643}
!23 = !{i64 4196655}
!24 = !{i64 4196663}
!25 = !{i64 4196672}
!26 = !{i64 4196692}
!27 = !{i64 4196697}
!28 = !{i64 4196699}
!29 = !{i64 4196723}
!30 = !{i64 4196733}
!31 = !{i64 4196745}
!32 = !{i64 4196750}
!33 = !{i64 4196757}
!34 = !{i64 4196766}
!35 = !{i64 4196776}
!36 = !{i64 4196778}
!37 = !{i64 4196785}
!38 = !{i64 4196789}
!39 = !{i64 4196802}
!40 = !{i64 4196807}
!41 = !{i64 4196809}
!42 = !{i64 4196822}
!43 = !{i64 4196840}
!44 = !{i64 4196850}
!45 = !{i64 4196859}
!46 = !{i64 4196869}
!47 = !{i64 4196874}
!48 = !{i64 4196883}
!49 = !{i64 4196892}
!50 = !{i64 4196894}
!51 = !{i64 4196900}
