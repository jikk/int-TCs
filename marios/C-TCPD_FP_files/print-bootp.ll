; ModuleID = '../src/print-bootp.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.netdissect_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.sa_list*, %struct.sa_list*, i8*, %struct.esp_algorithm*, i8*, i32, i8*, i32, i32, i8*, i8*, i32, void (%struct.netdissect_options*, i8*, i32)*, void (%struct.netdissect_options*, i32)*, i32 (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)* }
%struct.sa_list = type opaque
%struct.esp_algorithm = type opaque
%struct.tok = type { i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@bootp_print.vm_cmu = internal constant [4 x i8] c"CMU\00", align 1
@bootp_print.vm_rfc1048 = internal constant [4 x i8] c"c\82Sc", align 1
@gndo = external global %struct.netdissect_options*
@.str = private unnamed_addr constant [15 x i8] c"BOOTP/DHCP, %s\00", align 1
@bootp_op_values = internal constant [3 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([8 x i8]* @.str90, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([6 x i8]* @.str204, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str1 = private unnamed_addr constant [17 x i8] c"unknown (0x%02x)\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c" from %s\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c", length %u\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c", htype %d\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c", hlen %d\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c", hops %d\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c", xid 0x%x\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c", secs %d\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c", Flags [%s]\00", align 1
@bootp_flag_values = internal constant [2 x %struct.tok] [%struct.tok { i32 32768, i8* getelementptr inbounds ([10 x i8]* @.str203, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c" (0x%04x)\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"\0A\09  Client-IP %s\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"\0A\09  Your-IP %s\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"\0A\09  Server-IP %s\00", align 1
@.str15 = private unnamed_addr constant [18 x i8] c"\0A\09  Gateway-IP %s\00", align 1
@.str16 = private unnamed_addr constant [31 x i8] c"\0A\09  Client-Ethernet-Address %s\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"\0A\09  sname \22\00", align 1
@tstr = internal global [10 x i8] c" [|bootp]\00", align 1
@stdout = external global %struct._IO_FILE*
@.str18 = private unnamed_addr constant [11 x i8] c"\0A\09  file \22\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"\0A\09  Vendor-#0x%x\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c" vend-cmu\00", align 1
@0 = internal unnamed_addr constant [4 x i8] c"int\00"
@1 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str21 = private unnamed_addr constant [8 x i8] c" F:0x%x\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"SM*\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"NS1\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"NS2\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"IEN1\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"IEN2\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"TS1\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"TS2\00", align 1
@.str32 = private unnamed_addr constant [30 x i8] c"\0A\09  Vendor-rfc1048 Extensions\00", align 1
@.str33 = private unnamed_addr constant [26 x i8] c"\0A\09    Magic Cookie 0x%08x\00", align 1
@xtag2str = internal global [1 x %struct.tok] zeroinitializer, align 4
@.str34 = private unnamed_addr constant [6 x i8] c"?xT%u\00", align 1
@tag2str = internal global [108 x %struct.tok] [%struct.tok { i32 0, i8* getelementptr inbounds ([5 x i8]* @.str96, i32 0, i32 0) }, %struct.tok { i32 1, i8* getelementptr inbounds ([13 x i8]* @.str97, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0) }, %struct.tok { i32 3, i8* getelementptr inbounds ([17 x i8]* @.str99, i32 0, i32 0) }, %struct.tok { i32 4, i8* getelementptr inbounds ([13 x i8]* @.str100, i32 0, i32 0) }, %struct.tok { i32 5, i8* getelementptr inbounds ([17 x i8]* @.str101, i32 0, i32 0) }, %struct.tok { i32 6, i8* getelementptr inbounds ([20 x i8]* @.str102, i32 0, i32 0) }, %struct.tok { i32 7, i8* getelementptr inbounds ([5 x i8]* @.str103, i32 0, i32 0) }, %struct.tok { i32 8, i8* getelementptr inbounds ([4 x i8]* @.str104, i32 0, i32 0) }, %struct.tok { i32 9, i8* getelementptr inbounds ([12 x i8]* @.str105, i32 0, i32 0) }, %struct.tok { i32 10, i8* getelementptr inbounds ([4 x i8]* @.str106, i32 0, i32 0) }, %struct.tok { i32 11, i8* getelementptr inbounds ([4 x i8]* @.str107, i32 0, i32 0) }, %struct.tok { i32 12, i8* getelementptr inbounds ([10 x i8]* @.str108, i32 0, i32 0) }, %struct.tok { i32 13, i8* getelementptr inbounds ([4 x i8]* @.str109, i32 0, i32 0) }, %struct.tok { i32 255, i8* getelementptr inbounds ([5 x i8]* @.str110, i32 0, i32 0) }, %struct.tok { i32 14, i8* getelementptr inbounds ([4 x i8]* @.str111, i32 0, i32 0) }, %struct.tok { i32 15, i8* getelementptr inbounds ([13 x i8]* @.str112, i32 0, i32 0) }, %struct.tok { i32 16, i8* getelementptr inbounds ([4 x i8]* @.str113, i32 0, i32 0) }, %struct.tok { i32 17, i8* getelementptr inbounds ([4 x i8]* @.str114, i32 0, i32 0) }, %struct.tok { i32 18, i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0) }, %struct.tok { i32 19, i8* getelementptr inbounds ([5 x i8]* @.str116, i32 0, i32 0) }, %struct.tok { i32 20, i8* getelementptr inbounds ([5 x i8]* @.str117, i32 0, i32 0) }, %struct.tok { i32 21, i8* getelementptr inbounds ([4 x i8]* @.str118, i32 0, i32 0) }, %struct.tok { i32 22, i8* getelementptr inbounds ([5 x i8]* @.str119, i32 0, i32 0) }, %struct.tok { i32 23, i8* getelementptr inbounds ([5 x i8]* @.str120, i32 0, i32 0) }, %struct.tok { i32 24, i8* getelementptr inbounds ([13 x i8]* @.str121, i32 0, i32 0) }, %struct.tok { i32 25, i8* getelementptr inbounds ([11 x i8]* @.str122, i32 0, i32 0) }, %struct.tok { i32 26, i8* getelementptr inbounds ([5 x i8]* @.str123, i32 0, i32 0) }, %struct.tok { i32 27, i8* getelementptr inbounds ([5 x i8]* @.str124, i32 0, i32 0) }, %struct.tok { i32 28, i8* getelementptr inbounds ([4 x i8]* @.str125, i32 0, i32 0) }, %struct.tok { i32 29, i8* getelementptr inbounds ([4 x i8]* @.str126, i32 0, i32 0) }, %struct.tok { i32 30, i8* getelementptr inbounds ([4 x i8]* @.str127, i32 0, i32 0) }, %struct.tok { i32 31, i8* getelementptr inbounds ([18 x i8]* @.str128, i32 0, i32 0) }, %struct.tok { i32 32, i8* getelementptr inbounds ([5 x i8]* @.str129, i32 0, i32 0) }, %struct.tok { i32 33, i8* getelementptr inbounds ([14 x i8]* @.str130, i32 0, i32 0) }, %struct.tok { i32 34, i8* getelementptr inbounds ([4 x i8]* @.str131, i32 0, i32 0) }, %struct.tok { i32 35, i8* getelementptr inbounds ([4 x i8]* @.str132, i32 0, i32 0) }, %struct.tok { i32 36, i8* getelementptr inbounds ([4 x i8]* @.str133, i32 0, i32 0) }, %struct.tok { i32 37, i8* getelementptr inbounds ([4 x i8]* @.str134, i32 0, i32 0) }, %struct.tok { i32 38, i8* getelementptr inbounds ([4 x i8]* @.str135, i32 0, i32 0) }, %struct.tok { i32 39, i8* getelementptr inbounds ([4 x i8]* @.str136, i32 0, i32 0) }, %struct.tok { i32 40, i8* getelementptr inbounds ([4 x i8]* @.str137, i32 0, i32 0) }, %struct.tok { i32 41, i8* getelementptr inbounds ([4 x i8]* @.str138, i32 0, i32 0) }, %struct.tok { i32 42, i8* getelementptr inbounds ([5 x i8]* @.str139, i32 0, i32 0) }, %struct.tok { i32 43, i8* getelementptr inbounds ([15 x i8]* @.str140, i32 0, i32 0) }, %struct.tok { i32 44, i8* getelementptr inbounds ([21 x i8]* @.str141, i32 0, i32 0) }, %struct.tok { i32 45, i8* getelementptr inbounds ([5 x i8]* @.str142, i32 0, i32 0) }, %struct.tok { i32 46, i8* getelementptr inbounds ([14 x i8]* @.str143, i32 0, i32 0) }, %struct.tok { i32 47, i8* getelementptr inbounds ([15 x i8]* @.str144, i32 0, i32 0) }, %struct.tok { i32 48, i8* getelementptr inbounds ([5 x i8]* @.str145, i32 0, i32 0) }, %struct.tok { i32 49, i8* getelementptr inbounds ([5 x i8]* @.str146, i32 0, i32 0) }, %struct.tok { i32 64, i8* getelementptr inbounds ([5 x i8]* @.str147, i32 0, i32 0) }, %struct.tok { i32 65, i8* getelementptr inbounds ([5 x i8]* @.str148, i32 0, i32 0) }, %struct.tok { i32 68, i8* getelementptr inbounds ([4 x i8]* @.str149, i32 0, i32 0) }, %struct.tok { i32 69, i8* getelementptr inbounds ([6 x i8]* @.str150, i32 0, i32 0) }, %struct.tok { i32 70, i8* getelementptr inbounds ([6 x i8]* @.str151, i32 0, i32 0) }, %struct.tok { i32 71, i8* getelementptr inbounds ([6 x i8]* @.str152, i32 0, i32 0) }, %struct.tok { i32 72, i8* getelementptr inbounds ([5 x i8]* @.str153, i32 0, i32 0) }, %struct.tok { i32 73, i8* getelementptr inbounds ([4 x i8]* @.str154, i32 0, i32 0) }, %struct.tok { i32 74, i8* getelementptr inbounds ([5 x i8]* @.str155, i32 0, i32 0) }, %struct.tok { i32 75, i8* getelementptr inbounds ([5 x i8]* @.str156, i32 0, i32 0) }, %struct.tok { i32 76, i8* getelementptr inbounds ([6 x i8]* @.str157, i32 0, i32 0) }, %struct.tok { i32 50, i8* getelementptr inbounds ([14 x i8]* @.str158, i32 0, i32 0) }, %struct.tok { i32 51, i8* getelementptr inbounds ([12 x i8]* @.str159, i32 0, i32 0) }, %struct.tok { i32 52, i8* getelementptr inbounds ([4 x i8]* @.str160, i32 0, i32 0) }, %struct.tok { i32 66, i8* getelementptr inbounds ([6 x i8]* @.str161, i32 0, i32 0) }, %struct.tok { i32 67, i8* getelementptr inbounds ([4 x i8]* @.str162, i32 0, i32 0) }, %struct.tok { i32 53, i8* getelementptr inbounds ([14 x i8]* @.str163, i32 0, i32 0) }, %struct.tok { i32 54, i8* getelementptr inbounds ([11 x i8]* @.str164, i32 0, i32 0) }, %struct.tok { i32 55, i8* getelementptr inbounds ([19 x i8]* @.str165, i32 0, i32 0) }, %struct.tok { i32 56, i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0) }, %struct.tok { i32 57, i8* getelementptr inbounds ([5 x i8]* @.str167, i32 0, i32 0) }, %struct.tok { i32 58, i8* getelementptr inbounds ([4 x i8]* @.str168, i32 0, i32 0) }, %struct.tok { i32 59, i8* getelementptr inbounds ([4 x i8]* @.str169, i32 0, i32 0) }, %struct.tok { i32 60, i8* getelementptr inbounds ([14 x i8]* @.str170, i32 0, i32 0) }, %struct.tok { i32 61, i8* getelementptr inbounds ([11 x i8]* @.str171, i32 0, i32 0) }, %struct.tok { i32 98, i8* getelementptr inbounds ([5 x i8]* @.str172, i32 0, i32 0) }, %struct.tok { i32 116, i8* getelementptr inbounds ([8 x i8]* @.str173, i32 0, i32 0) }, %struct.tok { i32 78, i8* getelementptr inbounds ([8 x i8]* @.str174, i32 0, i32 0) }, %struct.tok { i32 79, i8* getelementptr inbounds ([11 x i8]* @.str175, i32 0, i32 0) }, %struct.tok { i32 117, i8* getelementptr inbounds ([10 x i8]* @.str176, i32 0, i32 0) }, %struct.tok { i32 118, i8* getelementptr inbounds ([8 x i8]* @.str177, i32 0, i32 0) }, %struct.tok { i32 121, i8* getelementptr inbounds ([24 x i8]* @.str178, i32 0, i32 0) }, %struct.tok { i32 249, i8* getelementptr inbounds ([34 x i8]* @.str179, i32 0, i32 0) }, %struct.tok { i32 77, i8* getelementptr inbounds ([7 x i8]* @.str180, i32 0, i32 0) }, %struct.tok { i32 80, i8* getelementptr inbounds ([8 x i8]* @.str181, i32 0, i32 0) }, %struct.tok { i32 81, i8* getelementptr inbounds ([6 x i8]* @.str182, i32 0, i32 0) }, %struct.tok { i32 82, i8* getelementptr inbounds ([19 x i8]* @.str183, i32 0, i32 0) }, %struct.tok { i32 83, i8* getelementptr inbounds ([6 x i8]* @.str184, i32 0, i32 0) }, %struct.tok { i32 84, i8* getelementptr inbounds ([6 x i8]* @.str185, i32 0, i32 0) }, %struct.tok { i32 88, i8* getelementptr inbounds ([7 x i8]* @.str186, i32 0, i32 0) }, %struct.tok { i32 89, i8* getelementptr inbounds ([7 x i8]* @.str187, i32 0, i32 0) }, %struct.tok { i32 90, i8* getelementptr inbounds ([6 x i8]* @.str188, i32 0, i32 0) }, %struct.tok { i32 91, i8* getelementptr inbounds ([7 x i8]* @.str189, i32 0, i32 0) }, %struct.tok { i32 92, i8* getelementptr inbounds ([6 x i8]* @.str190, i32 0, i32 0) }, %struct.tok { i32 93, i8* getelementptr inbounds ([6 x i8]* @.str191, i32 0, i32 0) }, %struct.tok { i32 94, i8* getelementptr inbounds ([5 x i8]* @.str192, i32 0, i32 0) }, %struct.tok { i32 97, i8* getelementptr inbounds ([6 x i8]* @.str193, i32 0, i32 0) }, %struct.tok { i32 95, i8* getelementptr inbounds ([6 x i8]* @.str194, i32 0, i32 0) }, %struct.tok { i32 96, i8* getelementptr inbounds ([5 x i8]* @.str195, i32 0, i32 0) }, %struct.tok { i32 100, i8* getelementptr inbounds ([6 x i8]* @.str196, i32 0, i32 0) }, %struct.tok { i32 101, i8* getelementptr inbounds ([7 x i8]* @.str197, i32 0, i32 0) }, %struct.tok { i32 110, i8* getelementptr inbounds ([5 x i8]* @.str198, i32 0, i32 0) }, %struct.tok { i32 112, i8* getelementptr inbounds ([4 x i8]* @.str199, i32 0, i32 0) }, %struct.tok { i32 113, i8* getelementptr inbounds ([7 x i8]* @.str200, i32 0, i32 0) }, %struct.tok { i32 114, i8* getelementptr inbounds ([5 x i8]* @.str201, i32 0, i32 0) }, %struct.tok { i32 115, i8* getelementptr inbounds ([6 x i8]* @.str202, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str35 = private unnamed_addr constant [5 x i8] c"?T%u\00", align 1
@.str36 = private unnamed_addr constant [32 x i8] c"\0A\09    %s Option %u, length %u%s\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str39 = private unnamed_addr constant [12 x i8] c", occurs %u\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"[|rfc1048 %u]\00", align 1
@.str41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dhcp_msg_values = internal global [9 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([9 x i8]* @.str88, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([6 x i8]* @.str89, i32 0, i32 0) }, %struct.tok { i32 3, i8* getelementptr inbounds ([8 x i8]* @.str90, i32 0, i32 0) }, %struct.tok { i32 4, i8* getelementptr inbounds ([8 x i8]* @.str91, i32 0, i32 0) }, %struct.tok { i32 5, i8* getelementptr inbounds ([4 x i8]* @.str92, i32 0, i32 0) }, %struct.tok { i32 6, i8* getelementptr inbounds ([5 x i8]* @.str93, i32 0, i32 0) }, %struct.tok { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str94, i32 0, i32 0) }, %struct.tok { i32 8, i8* getelementptr inbounds ([7 x i8]* @.str95, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str42 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"?Option %u\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"\0A\09      \00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"(%s:\00", align 1
@.str49 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"%u?\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str52 = private unnamed_addr constant [34 x i8] c"ERROR: option %u len %u < 1 bytes\00", align 1
@nbo2str = internal global [5 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([7 x i8]* @.str84, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([7 x i8]* @.str85, i32 0, i32 0) }, %struct.tok { i32 4, i8* getelementptr inbounds ([7 x i8]* @.str86, i32 0, i32 0) }, %struct.tok { i32 8, i8* getelementptr inbounds ([7 x i8]* @.str87, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@oo2str = internal global [4 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([5 x i8]* @.str81, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([6 x i8]* @.str82, i32 0, i32 0) }, %struct.tok { i32 3, i8* getelementptr inbounds ([11 x i8]* @.str83, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str53 = private unnamed_addr constant [34 x i8] c"ERROR: option %u len %u < 3 bytes\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"%u/%u \00", align 1
@2 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str56 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@arp2str = internal global [7 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([6 x i8]* @.str75, i32 0, i32 0) }, %struct.tok { i32 6, i8* getelementptr inbounds ([8 x i8]* @.str76, i32 0, i32 0) }, %struct.tok { i32 7, i8* getelementptr inbounds ([7 x i8]* @.str77, i32 0, i32 0) }, %struct.tok { i32 15, i8* getelementptr inbounds ([7 x i8]* @.str78, i32 0, i32 0) }, %struct.tok { i32 23, i8* getelementptr inbounds ([6 x i8]* @.str79, i32 0, i32 0) }, %struct.tok { i32 24, i8* getelementptr inbounds ([9 x i8]* @.str80, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str57 = private unnamed_addr constant [18 x i8] c"hardware-type %u,\00", align 1
@.str58 = private unnamed_addr constant [67 x i8] c"\0A\09      %s SubOption %u, length %u: length goes past end of option\00", align 1
@agent_suboption_values = internal global [4 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([11 x i8]* @.str72, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([10 x i8]* @.str73, i32 0, i32 0) }, %struct.tok { i32 6, i8* getelementptr inbounds ([14 x i8]* @.str74, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str59 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str60 = private unnamed_addr constant [37 x i8] c"\0A\09      %s SubOption %u, length %u: \00", align 1
@.str61 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str62 = private unnamed_addr constant [34 x i8] c"ERROR: option %u len %u < 5 bytes\00", align 1
@3 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str63 = private unnamed_addr constant [30 x i8] c"[ERROR: Mask width (%d) > 32]\00", align 1
@.str64 = private unnamed_addr constant [42 x i8] c"[ERROR: Remaining length (%u) < %u bytes]\00", align 1
@.str65 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str66 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str67 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c":%s)\00", align 1
@4 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str69 = private unnamed_addr constant [34 x i8] c"[unknown special tag %u, size %u]\00", align 1
@.str70 = private unnamed_addr constant [28 x i8] c"\0A\09  trailing data length %u\00", align 1
@.str71 = private unnamed_addr constant [11 x i8] c"|[rfc1048]\00", align 1
@.str72 = private unnamed_addr constant [11 x i8] c"Circuit-ID\00", align 1
@.str73 = private unnamed_addr constant [10 x i8] c"Remote-ID\00", align 1
@.str74 = private unnamed_addr constant [14 x i8] c"Subscriber-ID\00", align 1
@.str75 = private unnamed_addr constant [6 x i8] c"ether\00", align 1
@.str76 = private unnamed_addr constant [8 x i8] c"ieee802\00", align 1
@.str77 = private unnamed_addr constant [7 x i8] c"arcnet\00", align 1
@.str78 = private unnamed_addr constant [7 x i8] c"frelay\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str80 = private unnamed_addr constant [9 x i8] c"ieee1394\00", align 1
@client_fqdn_flags.buf = internal global [9 x i8] zeroinitializer, align 1
@5 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@6 = internal unnamed_addr constant [21 x i8] c"../src/print-bootp.c\00"
@.str81 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str82 = private unnamed_addr constant [6 x i8] c"sname\00", align 1
@.str83 = private unnamed_addr constant [11 x i8] c"file+sname\00", align 1
@.str84 = private unnamed_addr constant [7 x i8] c"b-node\00", align 1
@.str85 = private unnamed_addr constant [7 x i8] c"p-node\00", align 1
@.str86 = private unnamed_addr constant [7 x i8] c"m-node\00", align 1
@.str87 = private unnamed_addr constant [7 x i8] c"h-node\00", align 1
@.str88 = private unnamed_addr constant [9 x i8] c"Discover\00", align 1
@.str89 = private unnamed_addr constant [6 x i8] c"Offer\00", align 1
@.str90 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str91 = private unnamed_addr constant [8 x i8] c"Decline\00", align 1
@.str92 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"NACK\00", align 1
@.str94 = private unnamed_addr constant [8 x i8] c"Release\00", align 1
@.str95 = private unnamed_addr constant [7 x i8] c"Inform\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c" PAD\00", align 1
@.str97 = private unnamed_addr constant [13 x i8] c"iSubnet-Mask\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c"LTime-Zone\00", align 1
@.str99 = private unnamed_addr constant [17 x i8] c"iDefault-Gateway\00", align 1
@.str100 = private unnamed_addr constant [13 x i8] c"iTime-Server\00", align 1
@.str101 = private unnamed_addr constant [17 x i8] c"iIEN-Name-Server\00", align 1
@.str102 = private unnamed_addr constant [20 x i8] c"iDomain-Name-Server\00", align 1
@.str103 = private unnamed_addr constant [5 x i8] c"iLOG\00", align 1
@.str104 = private unnamed_addr constant [4 x i8] c"iCS\00", align 1
@.str105 = private unnamed_addr constant [12 x i8] c"iLPR-Server\00", align 1
@.str106 = private unnamed_addr constant [4 x i8] c"iIM\00", align 1
@.str107 = private unnamed_addr constant [4 x i8] c"iRL\00", align 1
@.str108 = private unnamed_addr constant [10 x i8] c"aHostname\00", align 1
@.str109 = private unnamed_addr constant [4 x i8] c"sBS\00", align 1
@.str110 = private unnamed_addr constant [5 x i8] c" END\00", align 1
@.str111 = private unnamed_addr constant [4 x i8] c"aDP\00", align 1
@.str112 = private unnamed_addr constant [13 x i8] c"aDomain-Name\00", align 1
@.str113 = private unnamed_addr constant [4 x i8] c"iSS\00", align 1
@.str114 = private unnamed_addr constant [4 x i8] c"aRP\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c"aEP\00", align 1
@.str116 = private unnamed_addr constant [5 x i8] c"BIPF\00", align 1
@.str117 = private unnamed_addr constant [5 x i8] c"BSRT\00", align 1
@.str118 = private unnamed_addr constant [4 x i8] c"pPF\00", align 1
@.str119 = private unnamed_addr constant [5 x i8] c"sRSZ\00", align 1
@.str120 = private unnamed_addr constant [5 x i8] c"bTTL\00", align 1
@.str121 = private unnamed_addr constant [13 x i8] c"lMTU-Timeout\00", align 1
@.str122 = private unnamed_addr constant [11 x i8] c"sMTU-Table\00", align 1
@.str123 = private unnamed_addr constant [5 x i8] c"sMTU\00", align 1
@.str124 = private unnamed_addr constant [5 x i8] c"BLSN\00", align 1
@.str125 = private unnamed_addr constant [4 x i8] c"iBR\00", align 1
@.str126 = private unnamed_addr constant [4 x i8] c"BMD\00", align 1
@.str127 = private unnamed_addr constant [4 x i8] c"BMS\00", align 1
@.str128 = private unnamed_addr constant [18 x i8] c"BRouter-Discovery\00", align 1
@.str129 = private unnamed_addr constant [5 x i8] c"iRSA\00", align 1
@.str130 = private unnamed_addr constant [14 x i8] c"pStatic-Route\00", align 1
@.str131 = private unnamed_addr constant [4 x i8] c"BUT\00", align 1
@.str132 = private unnamed_addr constant [4 x i8] c"lAT\00", align 1
@.str133 = private unnamed_addr constant [4 x i8] c"BIE\00", align 1
@.str134 = private unnamed_addr constant [4 x i8] c"bTT\00", align 1
@.str135 = private unnamed_addr constant [4 x i8] c"lKI\00", align 1
@.str136 = private unnamed_addr constant [4 x i8] c"BKG\00", align 1
@.str137 = private unnamed_addr constant [4 x i8] c"aYD\00", align 1
@.str138 = private unnamed_addr constant [4 x i8] c"iYS\00", align 1
@.str139 = private unnamed_addr constant [5 x i8] c"iNTP\00", align 1
@.str140 = private unnamed_addr constant [15 x i8] c"bVendor-Option\00", align 1
@.str141 = private unnamed_addr constant [21 x i8] c"iNetbios-Name-Server\00", align 1
@.str142 = private unnamed_addr constant [5 x i8] c"iWDD\00", align 1
@.str143 = private unnamed_addr constant [14 x i8] c"$Netbios-Node\00", align 1
@.str144 = private unnamed_addr constant [15 x i8] c"aNetbios-Scope\00", align 1
@.str145 = private unnamed_addr constant [5 x i8] c"iXFS\00", align 1
@.str146 = private unnamed_addr constant [5 x i8] c"iXDM\00", align 1
@.str147 = private unnamed_addr constant [5 x i8] c"sN+D\00", align 1
@.str148 = private unnamed_addr constant [5 x i8] c"iN+S\00", align 1
@.str149 = private unnamed_addr constant [4 x i8] c"iMH\00", align 1
@.str150 = private unnamed_addr constant [6 x i8] c"iSMTP\00", align 1
@.str151 = private unnamed_addr constant [6 x i8] c"iPOP3\00", align 1
@.str152 = private unnamed_addr constant [6 x i8] c"iNNTP\00", align 1
@.str153 = private unnamed_addr constant [5 x i8] c"iWWW\00", align 1
@.str154 = private unnamed_addr constant [4 x i8] c"iFG\00", align 1
@.str155 = private unnamed_addr constant [5 x i8] c"iIRC\00", align 1
@.str156 = private unnamed_addr constant [5 x i8] c"iSTS\00", align 1
@.str157 = private unnamed_addr constant [6 x i8] c"iSTDA\00", align 1
@.str158 = private unnamed_addr constant [14 x i8] c"iRequested-IP\00", align 1
@.str159 = private unnamed_addr constant [12 x i8] c"lLease-Time\00", align 1
@.str160 = private unnamed_addr constant [4 x i8] c"$OO\00", align 1
@.str161 = private unnamed_addr constant [6 x i8] c"aTFTP\00", align 1
@.str162 = private unnamed_addr constant [4 x i8] c"aBF\00", align 1
@.str163 = private unnamed_addr constant [14 x i8] c" DHCP-Message\00", align 1
@.str164 = private unnamed_addr constant [11 x i8] c"iServer-ID\00", align 1
@.str165 = private unnamed_addr constant [19 x i8] c"bParameter-Request\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"aMSG\00", align 1
@.str167 = private unnamed_addr constant [5 x i8] c"sMSZ\00", align 1
@.str168 = private unnamed_addr constant [4 x i8] c"lRN\00", align 1
@.str169 = private unnamed_addr constant [4 x i8] c"lRB\00", align 1
@.str170 = private unnamed_addr constant [14 x i8] c"aVendor-Class\00", align 1
@.str171 = private unnamed_addr constant [11 x i8] c"$Client-ID\00", align 1
@.str172 = private unnamed_addr constant [5 x i8] c"aUAP\00", align 1
@.str173 = private unnamed_addr constant [8 x i8] c"BNOAUTO\00", align 1
@.str174 = private unnamed_addr constant [8 x i8] c"bSLP-DA\00", align 1
@.str175 = private unnamed_addr constant [11 x i8] c"bSLP-SCOPE\00", align 1
@.str176 = private unnamed_addr constant [10 x i8] c"sNSSEARCH\00", align 1
@.str177 = private unnamed_addr constant [8 x i8] c"iSUBNET\00", align 1
@.str178 = private unnamed_addr constant [24 x i8] c"$Classless-Static-Route\00", align 1
@.str179 = private unnamed_addr constant [34 x i8] c"$Classless-Static-Route-Microsoft\00", align 1
@.str180 = private unnamed_addr constant [7 x i8] c"aCLASS\00", align 1
@.str181 = private unnamed_addr constant [8 x i8] c"aSLP-NA\00", align 1
@.str182 = private unnamed_addr constant [6 x i8] c"$FQDN\00", align 1
@.str183 = private unnamed_addr constant [19 x i8] c"$Agent-Information\00", align 1
@.str184 = private unnamed_addr constant [6 x i8] c"bARMT\00", align 1
@.str185 = private unnamed_addr constant [6 x i8] c"bAMSK\00", align 1
@.str186 = private unnamed_addr constant [7 x i8] c"aTZSTR\00", align 1
@.str187 = private unnamed_addr constant [7 x i8] c"bFQDNS\00", align 1
@.str188 = private unnamed_addr constant [6 x i8] c"bAUTH\00", align 1
@.str189 = private unnamed_addr constant [7 x i8] c"iVINES\00", align 1
@.str190 = private unnamed_addr constant [6 x i8] c"sRANK\00", align 1
@.str191 = private unnamed_addr constant [6 x i8] c"sARCH\00", align 1
@.str192 = private unnamed_addr constant [5 x i8] c"bNDI\00", align 1
@.str193 = private unnamed_addr constant [6 x i8] c"bGUID\00", align 1
@.str194 = private unnamed_addr constant [6 x i8] c"aLDAP\00", align 1
@.str195 = private unnamed_addr constant [5 x i8] c"i6o4\00", align 1
@.str196 = private unnamed_addr constant [6 x i8] c"aPRTR\00", align 1
@.str197 = private unnamed_addr constant [7 x i8] c"bMDHCP\00", align 1
@.str198 = private unnamed_addr constant [5 x i8] c"bIPX\00", align 1
@.str199 = private unnamed_addr constant [4 x i8] c"iNI\00", align 1
@.str200 = private unnamed_addr constant [7 x i8] c"aNITAG\00", align 1
@.str201 = private unnamed_addr constant [5 x i8] c"aURL\00", align 1
@.str202 = private unnamed_addr constant [6 x i8] c"bFAIL\00", align 1
@.str203 = private unnamed_addr constant [10 x i8] c"Broadcast\00", align 1
@.str204 = private unnamed_addr constant [6 x i8] c"Reply\00", align 1

define void @bootp_print(i8* %cp, i32 %length) nounwind {
entry:
  %ul.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !19), !dbg !203
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !20), !dbg !203
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !204, !tbaa !205
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !204
  %1 = load i8** %ndo_snapend, align 4, !dbg !204, !tbaa !205
  %add.ptr = getelementptr inbounds i8* %1, i32 -1, !dbg !204
  %cmp4 = icmp ult i8* %add.ptr, %cp, !dbg !204
  br i1 %cmp4, label %trunc, label %if.end, !dbg !204

if.end:                                           ; preds = %entry
  %2 = load i8* %cp, align 1, !dbg !208, !tbaa !206
  %conv = zext i8 %2 to i32, !dbg !208
  %call = call i8* @tok2str(%struct.tok* getelementptr inbounds ([3 x %struct.tok]* @bootp_op_values, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 %conv) nounwind, !dbg !208
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i8* %call) nounwind, !dbg !208
  %3 = getelementptr inbounds i8* %cp, i32 1, !dbg !209
  %4 = load i8* %3, align 1, !dbg !209, !tbaa !206
  %cmp8 = icmp eq i8 %4, 1, !dbg !209
  br i1 %cmp8, label %land.lhs.true10, label %if.end35, !dbg !209

land.lhs.true10:                                  ; preds = %if.end
  %5 = getelementptr inbounds i8* %cp, i32 2, !dbg !209
  %6 = load i8* %5, align 1, !dbg !209, !tbaa !206
  %cmp12 = icmp eq i8 %6, 6, !dbg !209
  br i1 %cmp12, label %land.lhs.true14, label %if.end35, !dbg !209

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %7 = load i8* %cp, align 1, !dbg !209, !tbaa !206
  %cmp17 = icmp eq i8 %7, 1, !dbg !209
  br i1 %cmp17, label %land.lhs.true25, label %if.end35, !dbg !209

land.lhs.true25:                                  ; preds = %land.lhs.true14
  %8 = load %struct.netdissect_options** @gndo, align 4, !dbg !210, !tbaa !205
  %ndo_snapend20 = getelementptr inbounds %struct.netdissect_options* %8, i32 0, i32 45, !dbg !210
  %9 = load i8** %ndo_snapend20, align 4, !dbg !210, !tbaa !205
  %add.ptr21 = getelementptr inbounds i8* %9, i32 -6, !dbg !210
  %bp_chaddr = getelementptr inbounds i8* %cp, i32 28, !dbg !210
  %cmp28 = icmp ugt i8* %bp_chaddr, %add.ptr21, !dbg !210
  br i1 %cmp28, label %trunc, label %if.end31, !dbg !210

if.end31:                                         ; preds = %land.lhs.true25
  %call33 = call i8* @etheraddr_string(i8* %bp_chaddr) nounwind, !dbg !212
  %call34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %call33) nounwind, !dbg !212
  br label %if.end35, !dbg !213

if.end35:                                         ; preds = %if.end31, %land.lhs.true14, %land.lhs.true10, %if.end
  %call36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0), i32 %length) nounwind, !dbg !214
  %10 = load %struct.netdissect_options** @gndo, align 4, !dbg !215, !tbaa !205
  %ndo_vflag = getelementptr inbounds %struct.netdissect_options* %10, i32 0, i32 14, !dbg !215
  %11 = load i32* %ndo_vflag, align 4, !dbg !215, !tbaa !216
  %tobool = icmp eq i32 %11, 0, !dbg !215
  br i1 %tobool, label %return, label %land.lhs.true44, !dbg !215

land.lhs.true44:                                  ; preds = %if.end35
  %ndo_snapend39 = getelementptr inbounds %struct.netdissect_options* %10, i32 0, i32 45, !dbg !217
  %12 = load i8** %ndo_snapend39, align 4, !dbg !217, !tbaa !205
  %add.ptr40 = getelementptr inbounds i8* %12, i32 -2, !dbg !217
  %bp_secs = getelementptr inbounds i8* %cp, i32 8, !dbg !217
  %13 = bitcast i8* %bp_secs to i16*, !dbg !217
  %cmp47 = icmp ugt i8* %bp_secs, %add.ptr40, !dbg !217
  br i1 %cmp47, label %trunc, label %if.end50, !dbg !217

if.end50:                                         ; preds = %land.lhs.true44
  %14 = load i8* %3, align 1, !dbg !218, !tbaa !206
  %cmp53 = icmp eq i8 %14, 1, !dbg !218
  br i1 %cmp53, label %lor.lhs.false, label %if.end59, !dbg !218

if.end59:                                         ; preds = %if.end50
  %conv52 = zext i8 %14 to i32, !dbg !218
  %call58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 %conv52) nounwind, !dbg !219
  %.pr = load i8* %3, align 1, !dbg !220, !tbaa !206
  %cmp62 = icmp eq i8 %.pr, 1, !dbg !220
  br i1 %cmp62, label %lor.lhs.false, label %if.end59.if.then68_crit_edge, !dbg !220

if.end59.if.then68_crit_edge:                     ; preds = %if.end59
  %.phi.trans.insert = getelementptr inbounds i8* %cp, i32 2
  %.pre429 = load i8* %.phi.trans.insert, align 1, !dbg !221, !tbaa !206
  br label %if.then68, !dbg !220

lor.lhs.false:                                    ; preds = %if.end50, %if.end59
  %15 = getelementptr inbounds i8* %cp, i32 2, !dbg !220
  %16 = load i8* %15, align 1, !dbg !220, !tbaa !206
  %cmp66 = icmp eq i8 %16, 6, !dbg !220
  br i1 %cmp66, label %if.end72, label %if.then68, !dbg !220

if.then68:                                        ; preds = %if.end59.if.then68_crit_edge, %lor.lhs.false
  %17 = phi i8 [ %.pre429, %if.end59.if.then68_crit_edge ], [ %16, %lor.lhs.false ]
  %conv70 = zext i8 %17 to i32, !dbg !221
  %call71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0), i32 %conv70) nounwind, !dbg !221
  br label %if.end72, !dbg !221

if.end72:                                         ; preds = %lor.lhs.false, %if.then68
  %18 = getelementptr inbounds i8* %cp, i32 3, !dbg !222
  %19 = load i8* %18, align 1, !dbg !222, !tbaa !206
  %tobool73 = icmp eq i8 %19, 0, !dbg !222
  br i1 %tobool73, label %if.end78, label %if.then74, !dbg !222

if.then74:                                        ; preds = %if.end72
  %conv76 = zext i8 %19 to i32, !dbg !223
  %call77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0), i32 %conv76) nounwind, !dbg !223
  br label %if.end78, !dbg !223

if.end78:                                         ; preds = %if.end72, %if.then74
  %bp_xid = getelementptr inbounds i8* %cp, i32 4, !dbg !224
  %20 = bitcast i8* %bp_xid to i32*, !dbg !224
  %21 = load i32* %20, align 1, !dbg !224, !tbaa !216
  %tobool79 = icmp eq i32 %21, 0, !dbg !224
  br i1 %tobool79, label %if.end84, label %if.then80, !dbg !224

if.then80:                                        ; preds = %if.end78
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !225) nounwind, !dbg !227
  %22 = call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) nounwind, !dbg !228, !srcloc !230
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !225) nounwind, !dbg !228
  %call83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i32 %22) nounwind, !dbg !226
  br label %if.end84, !dbg !226

if.end84:                                         ; preds = %if.end78, %if.then80
  %23 = load i16* %13, align 1, !dbg !231, !tbaa !232
  %tobool86 = icmp eq i16 %23, 0, !dbg !231
  br i1 %tobool86, label %if.end92, label %if.then87, !dbg !231

if.then87:                                        ; preds = %if.end84
  call void @llvm.dbg.value(metadata !{i16 %23}, i64 0, metadata !233) nounwind, !dbg !235
  %24 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %23) nounwind, !dbg !236, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %24}, i64 0, metadata !233) nounwind, !dbg !236
  %conv90 = zext i16 %24 to i32, !dbg !234
  %call91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), i32 %conv90) nounwind, !dbg !234
  br label %if.end92, !dbg !234

if.end92:                                         ; preds = %if.end84, %if.then87
  %bp_flags = getelementptr inbounds i8* %cp, i32 10, !dbg !239
  %25 = bitcast i8* %bp_flags to i16*, !dbg !239
  %26 = load i16* %25, align 2, !dbg !239, !tbaa !232
  call void @llvm.dbg.value(metadata !{i16 %26}, i64 0, metadata !240) nounwind, !dbg !241
  %27 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %26) nounwind, !dbg !242, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %27}, i64 0, metadata !240) nounwind, !dbg !242
  %conv94 = zext i16 %27 to i32, !dbg !239
  %call95 = call i8* @bittok2str(%struct.tok* getelementptr inbounds ([2 x %struct.tok]* @bootp_flag_values, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 %conv94) nounwind, !dbg !239
  %call96 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0), i8* %call95) nounwind, !dbg !239
  %28 = load %struct.netdissect_options** @gndo, align 4, !dbg !243, !tbaa !205
  %ndo_vflag97 = getelementptr inbounds %struct.netdissect_options* %28, i32 0, i32 14, !dbg !243
  %29 = load i32* %ndo_vflag97, align 4, !dbg !243, !tbaa !216
  %cmp98 = icmp sgt i32 %29, 1, !dbg !243
  br i1 %cmp98, label %if.then100, label %land.lhs.true111, !dbg !243

if.then100:                                       ; preds = %if.end92
  %30 = load i16* %25, align 2, !dbg !244, !tbaa !232
  call void @llvm.dbg.value(metadata !{i16 %30}, i64 0, metadata !245) nounwind, !dbg !246
  %31 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %30) nounwind, !dbg !247, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %31}, i64 0, metadata !245) nounwind, !dbg !247
  %conv103 = zext i16 %31 to i32, !dbg !244
  %call104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), i32 %conv103) nounwind, !dbg !244
  %.pre = load %struct.netdissect_options** @gndo, align 4, !dbg !248, !tbaa !205
  br label %land.lhs.true111, !dbg !244

land.lhs.true111:                                 ; preds = %if.end92, %if.then100
  %32 = phi %struct.netdissect_options* [ %28, %if.end92 ], [ %.pre, %if.then100 ]
  %ndo_snapend106 = getelementptr inbounds %struct.netdissect_options* %32, i32 0, i32 45, !dbg !248
  %33 = load i8** %ndo_snapend106, align 4, !dbg !248, !tbaa !205
  %add.ptr107 = getelementptr inbounds i8* %33, i32 -4, !dbg !248
  %bp_ciaddr = getelementptr inbounds i8* %cp, i32 12, !dbg !248
  %cmp114 = icmp ugt i8* %bp_ciaddr, %add.ptr107, !dbg !248
  br i1 %cmp114, label %trunc, label %if.end117, !dbg !248

if.end117:                                        ; preds = %land.lhs.true111
  %s_addr = bitcast i8* %bp_ciaddr to i32*, !dbg !249
  %34 = load i32* %s_addr, align 1, !dbg !249, !tbaa !216
  %tobool119 = icmp eq i32 %34, 0, !dbg !249
  br i1 %tobool119, label %land.lhs.true130, label %if.then120, !dbg !249

if.then120:                                       ; preds = %if.end117
  %call122 = call i8* @getname(i8* %bp_ciaddr) nounwind, !dbg !250
  %call123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str12, i32 0, i32 0), i8* %call122) nounwind, !dbg !250
  %.pre419 = load %struct.netdissect_options** @gndo, align 4, !dbg !251, !tbaa !205
  %ndo_snapend125.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre419, i32 0, i32 45
  %.pre420 = load i8** %ndo_snapend125.phi.trans.insert, align 4, !dbg !251, !tbaa !205
  br label %land.lhs.true130, !dbg !250

land.lhs.true130:                                 ; preds = %if.then120, %if.end117
  %35 = phi i8* [ %.pre420, %if.then120 ], [ %33, %if.end117 ]
  %add.ptr126 = getelementptr inbounds i8* %35, i32 -4, !dbg !251
  %bp_yiaddr = getelementptr inbounds i8* %cp, i32 16, !dbg !251
  %cmp133 = icmp ugt i8* %bp_yiaddr, %add.ptr126, !dbg !251
  br i1 %cmp133, label %trunc, label %if.end136, !dbg !251

if.end136:                                        ; preds = %land.lhs.true130
  %s_addr138 = bitcast i8* %bp_yiaddr to i32*, !dbg !252
  %36 = load i32* %s_addr138, align 1, !dbg !252, !tbaa !216
  %tobool139 = icmp eq i32 %36, 0, !dbg !252
  br i1 %tobool139, label %land.lhs.true150, label %if.then140, !dbg !252

if.then140:                                       ; preds = %if.end136
  %call142 = call i8* @getname(i8* %bp_yiaddr) nounwind, !dbg !253
  %call143 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str13, i32 0, i32 0), i8* %call142) nounwind, !dbg !253
  %.pre421 = load %struct.netdissect_options** @gndo, align 4, !dbg !254, !tbaa !205
  %ndo_snapend145.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre421, i32 0, i32 45
  %.pre422 = load i8** %ndo_snapend145.phi.trans.insert, align 4, !dbg !254, !tbaa !205
  br label %land.lhs.true150, !dbg !253

land.lhs.true150:                                 ; preds = %if.then140, %if.end136
  %37 = phi i8* [ %.pre422, %if.then140 ], [ %35, %if.end136 ]
  %add.ptr146 = getelementptr inbounds i8* %37, i32 -4, !dbg !254
  %bp_siaddr = getelementptr inbounds i8* %cp, i32 20, !dbg !254
  %cmp153 = icmp ugt i8* %bp_siaddr, %add.ptr146, !dbg !254
  br i1 %cmp153, label %trunc, label %if.end156, !dbg !254

if.end156:                                        ; preds = %land.lhs.true150
  %s_addr158 = bitcast i8* %bp_siaddr to i32*, !dbg !255
  %38 = load i32* %s_addr158, align 1, !dbg !255, !tbaa !216
  %tobool159 = icmp eq i32 %38, 0, !dbg !255
  br i1 %tobool159, label %land.lhs.true170, label %if.then160, !dbg !255

if.then160:                                       ; preds = %if.end156
  %call162 = call i8* @getname(i8* %bp_siaddr) nounwind, !dbg !256
  %call163 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str14, i32 0, i32 0), i8* %call162) nounwind, !dbg !256
  %.pre423 = load %struct.netdissect_options** @gndo, align 4, !dbg !257, !tbaa !205
  %ndo_snapend165.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre423, i32 0, i32 45
  %.pre424 = load i8** %ndo_snapend165.phi.trans.insert, align 4, !dbg !257, !tbaa !205
  br label %land.lhs.true170, !dbg !256

land.lhs.true170:                                 ; preds = %if.then160, %if.end156
  %39 = phi i8* [ %.pre424, %if.then160 ], [ %37, %if.end156 ]
  %add.ptr166 = getelementptr inbounds i8* %39, i32 -4, !dbg !257
  %bp_giaddr = getelementptr inbounds i8* %cp, i32 24, !dbg !257
  %cmp173 = icmp ugt i8* %bp_giaddr, %add.ptr166, !dbg !257
  br i1 %cmp173, label %trunc, label %if.end176, !dbg !257

if.end176:                                        ; preds = %land.lhs.true170
  %s_addr178 = bitcast i8* %bp_giaddr to i32*, !dbg !258
  %40 = load i32* %s_addr178, align 1, !dbg !258, !tbaa !216
  %tobool179 = icmp eq i32 %40, 0, !dbg !258
  br i1 %tobool179, label %if.end184, label %if.then180, !dbg !258

if.then180:                                       ; preds = %if.end176
  %call182 = call i8* @getname(i8* %bp_giaddr) nounwind, !dbg !259
  %call183 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str15, i32 0, i32 0), i8* %call182) nounwind, !dbg !259
  br label %if.end184, !dbg !259

if.end184:                                        ; preds = %if.end176, %if.then180
  %41 = load i8* %3, align 1, !dbg !260, !tbaa !206
  %cmp187 = icmp eq i8 %41, 1, !dbg !260
  br i1 %cmp187, label %land.lhs.true189, label %land.lhs.true219, !dbg !260

land.lhs.true189:                                 ; preds = %if.end184
  %42 = getelementptr inbounds i8* %cp, i32 2, !dbg !260
  %43 = load i8* %42, align 1, !dbg !260, !tbaa !206
  %cmp192 = icmp eq i8 %43, 6, !dbg !260
  br i1 %cmp192, label %land.lhs.true200, label %land.lhs.true219, !dbg !260

land.lhs.true200:                                 ; preds = %land.lhs.true189
  %44 = load %struct.netdissect_options** @gndo, align 4, !dbg !261, !tbaa !205
  %ndo_snapend195 = getelementptr inbounds %struct.netdissect_options* %44, i32 0, i32 45, !dbg !261
  %45 = load i8** %ndo_snapend195, align 4, !dbg !261, !tbaa !205
  %add.ptr196 = getelementptr inbounds i8* %45, i32 -6, !dbg !261
  %bp_chaddr201 = getelementptr inbounds i8* %cp, i32 28, !dbg !261
  %cmp205 = icmp ugt i8* %bp_chaddr201, %add.ptr196, !dbg !261
  br i1 %cmp205, label %trunc, label %if.end208, !dbg !261

if.end208:                                        ; preds = %land.lhs.true200
  %call211 = call i8* @etheraddr_string(i8* %bp_chaddr201) nounwind, !dbg !263
  %call212 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str16, i32 0, i32 0), i8* %call211) nounwind, !dbg !263
  br label %land.lhs.true219, !dbg !264

land.lhs.true219:                                 ; preds = %land.lhs.true189, %if.end184, %if.end208
  %46 = load %struct.netdissect_options** @gndo, align 4, !dbg !265, !tbaa !205
  %ndo_snapend214 = getelementptr inbounds %struct.netdissect_options* %46, i32 0, i32 45, !dbg !265
  %47 = load i8** %ndo_snapend214, align 4, !dbg !265, !tbaa !205
  %add.ptr215 = getelementptr inbounds i8* %47, i32 -1, !dbg !265
  %bp_sname = getelementptr inbounds i8* %cp, i32 44, !dbg !265
  %cmp223 = icmp ugt i8* %bp_sname, %add.ptr215, !dbg !265
  br i1 %cmp223, label %trunc, label %if.end226, !dbg !265

if.end226:                                        ; preds = %land.lhs.true219
  %48 = load i8* %bp_sname, align 1, !dbg !266, !tbaa !206
  %tobool229 = icmp eq i8 %48, 0, !dbg !266
  br i1 %tobool229, label %land.lhs.true248, label %if.then230, !dbg !266

if.then230:                                       ; preds = %if.end226
  %call231 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0)) nounwind, !dbg !267
  %49 = load %struct.netdissect_options** @gndo, align 4, !dbg !269, !tbaa !205
  %ndo_snapend234 = getelementptr inbounds %struct.netdissect_options* %49, i32 0, i32 45, !dbg !269
  %50 = load i8** %ndo_snapend234, align 4, !dbg !269, !tbaa !205
  %call235 = call i32 @fn_print(i8* %bp_sname, i8* %50) nounwind, !dbg !269
  %tobool236 = icmp eq i32 %call235, 0, !dbg !269
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !271) nounwind, !dbg !274
  %51 = load %struct._IO_FILE** @stdout, align 4, !dbg !275, !tbaa !205
  %call.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %51) nounwind, !dbg !275
  br i1 %tobool236, label %if.then230.land.lhs.true248_crit_edge, label %if.then237, !dbg !269

if.then230.land.lhs.true248_crit_edge:            ; preds = %if.then230
  %.pre425 = load %struct.netdissect_options** @gndo, align 4, !dbg !277, !tbaa !205
  %ndo_snapend243.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre425, i32 0, i32 45
  %.pre426 = load i8** %ndo_snapend243.phi.trans.insert, align 4, !dbg !277, !tbaa !205
  br label %land.lhs.true248, !dbg !269

if.then237:                                       ; preds = %if.then230
  %52 = load %struct._IO_FILE** @stdout, align 4, !dbg !278, !tbaa !205
  %call239 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8]* @tstr, i32 0, i32 1), %struct._IO_FILE* %52) nounwind, !dbg !278
  br label %return, !dbg !279

land.lhs.true248:                                 ; preds = %if.then230.land.lhs.true248_crit_edge, %if.end226
  %53 = phi i8* [ %.pre426, %if.then230.land.lhs.true248_crit_edge ], [ %47, %if.end226 ]
  %add.ptr244 = getelementptr inbounds i8* %53, i32 -1, !dbg !277
  %bp_file = getelementptr inbounds i8* %cp, i32 108, !dbg !277
  %cmp252 = icmp ugt i8* %bp_file, %add.ptr244, !dbg !277
  br i1 %cmp252, label %trunc, label %if.end255, !dbg !277

if.end255:                                        ; preds = %land.lhs.true248
  %54 = load i8* %bp_file, align 1, !dbg !280, !tbaa !206
  %tobool258 = icmp eq i8 %54, 0, !dbg !280
  br i1 %tobool258, label %land.lhs.true277, label %if.then259, !dbg !280

if.then259:                                       ; preds = %if.end255
  %call260 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !281
  %55 = load %struct.netdissect_options** @gndo, align 4, !dbg !283, !tbaa !205
  %ndo_snapend263 = getelementptr inbounds %struct.netdissect_options* %55, i32 0, i32 45, !dbg !283
  %56 = load i8** %ndo_snapend263, align 4, !dbg !283, !tbaa !205
  %call264 = call i32 @fn_print(i8* %bp_file, i8* %56) nounwind, !dbg !283
  %tobool265 = icmp eq i32 %call264, 0, !dbg !283
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !284) nounwind, !dbg !287
  %57 = load %struct._IO_FILE** @stdout, align 4, !dbg !288, !tbaa !205
  %call.i359 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %57) nounwind, !dbg !288
  br i1 %tobool265, label %if.then259.land.lhs.true277_crit_edge, label %if.then266, !dbg !283

if.then259.land.lhs.true277_crit_edge:            ; preds = %if.then259
  %.pre427 = load %struct.netdissect_options** @gndo, align 4, !dbg !289, !tbaa !205
  %ndo_snapend272.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre427, i32 0, i32 45
  %.pre428 = load i8** %ndo_snapend272.phi.trans.insert, align 4, !dbg !289, !tbaa !205
  br label %land.lhs.true277, !dbg !283

if.then266:                                       ; preds = %if.then259
  %58 = load %struct._IO_FILE** @stdout, align 4, !dbg !290, !tbaa !205
  %call268 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8]* @tstr, i32 0, i32 1), %struct._IO_FILE* %58) nounwind, !dbg !290
  br label %return, !dbg !291

land.lhs.true277:                                 ; preds = %if.then259.land.lhs.true277_crit_edge, %if.end255
  %59 = phi i8* [ %.pre428, %if.then259.land.lhs.true277_crit_edge ], [ %53, %if.end255 ]
  %add.ptr273 = getelementptr inbounds i8* %59, i32 -1, !dbg !289
  %bp_vend = getelementptr inbounds i8* %cp, i32 236, !dbg !289
  %cmp281 = icmp ugt i8* %bp_vend, %add.ptr273, !dbg !289
  br i1 %cmp281, label %trunc, label %if.end284, !dbg !289

if.end284:                                        ; preds = %land.lhs.true277
  %call287 = call i32 @memcmp(i8* %bp_vend, i8* getelementptr inbounds ([4 x i8]* @bootp_print.vm_rfc1048, i32 0, i32 0), i32 4) nounwind readonly, !dbg !292
  %cmp288 = icmp eq i32 %call287, 0, !dbg !292
  br i1 %cmp288, label %if.then290, label %if.else, !dbg !292

if.then290:                                       ; preds = %if.end284
  %60 = bitcast i32* %ul.i to i8*, !dbg !293
  call void @llvm.lifetime.start(i64 -1, i8* %60) nounwind, !dbg !293
  call void @llvm.dbg.value(metadata !{i8* %bp_vend}, i64 0, metadata !295) nounwind, !dbg !293
  call void @llvm.dbg.declare(metadata !{i32* %ul.i}, metadata !108) nounwind, !dbg !296
  %call.i360 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str32, i32 0, i32 0)) nounwind, !dbg !297
  %61 = bitcast i8* %bp_vend to i32*, !dbg !298
  %62 = load i32* %61, align 4, !dbg !298, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !299) nounwind, !dbg !300
  %63 = call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %62) nounwind, !dbg !301, !srcloc !230
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !299) nounwind, !dbg !301
  %call2.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str33, i32 0, i32 0), i32 %63) nounwind, !dbg !298
  %add.ptr.i = getelementptr inbounds i8* %cp, i32 240, !dbg !302
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !295) nounwind, !dbg !302
  %64 = load %struct.netdissect_options** @gndo, align 4, !dbg !303, !tbaa !205
  %ndo_snapend964.i = getelementptr inbounds %struct.netdissect_options* %64, i32 0, i32 45, !dbg !303
  %65 = load i8** %ndo_snapend964.i, align 4, !dbg !303, !tbaa !205
  %add.ptr3965.i = getelementptr inbounds i8* %65, i32 -1, !dbg !303
  %cmp7966.i = icmp ugt i8* %add.ptr.i, %add.ptr3965.i, !dbg !303
  br i1 %cmp7966.i, label %return, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.backedge.i, %if.then290
  %66 = phi i8* [ %65, %if.then290 ], [ %243, %land.rhs.backedge.i ]
  %67 = phi %struct.netdissect_options* [ %64, %if.then290 ], [ %242, %land.rhs.backedge.i ]
  %bp.addr.0967.i = phi i8* [ %add.ptr.i, %if.then290 ], [ %bp.addr.0.be.i, %land.rhs.backedge.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %bp.addr.0967.i, i32 1, !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !295) nounwind, !dbg !304
  %68 = load i8* %bp.addr.0967.i, align 1, !dbg !304, !tbaa !206
  %conv.i = zext i8 %68 to i16, !dbg !304
  call void @llvm.dbg.value(metadata !{i16 %conv.i}, i64 0, metadata !305) nounwind, !dbg !304
  %conv8.i = zext i8 %68 to i32, !dbg !306
  switch i8 %68, label %if.else.i [
    i8 0, label %land.lhs.true.i
    i8 -1, label %land.lhs.true18.i
    i8 127, label %land.lhs.true35.i
  ], !dbg !306

land.lhs.true.i:                                  ; preds = %while.body.i
  %ndo_vflag.i = getelementptr inbounds %struct.netdissect_options* %67, i32 0, i32 14, !dbg !306
  %69 = load i32* %ndo_vflag.i, align 4, !dbg !306, !tbaa !216
  %cmp11.i = icmp slt i32 %69, 3, !dbg !306
  br i1 %cmp11.i, label %land.rhs.backedge.i, label %if.else.i, !dbg !306

land.lhs.true18.i:                                ; preds = %while.body.i
  %ndo_vflag19.i = getelementptr inbounds %struct.netdissect_options* %67, i32 0, i32 14, !dbg !307
  %70 = load i32* %ndo_vflag19.i, align 4, !dbg !307, !tbaa !216
  %cmp20.i = icmp slt i32 %70, 3, !dbg !307
  br i1 %cmp20.i, label %return, label %if.else.i, !dbg !307

land.lhs.true35.i:                                ; preds = %while.body.i
  %add.ptr31.i = getelementptr inbounds i8* %66, i32 -2, !dbg !308
  %add.ptr36.i = getelementptr inbounds i8* %bp.addr.0967.i, i32 2, !dbg !308
  %cmp39.i = icmp ugt i8* %add.ptr36.i, %add.ptr31.i, !dbg !308
  br i1 %cmp39.i, label %trunc.i, label %if.end42.i, !dbg !308

if.end42.i:                                       ; preds = %land.lhs.true35.i
  %71 = bitcast i8* %add.ptr36.i to i16*, !dbg !310
  %72 = load i16* %71, align 2, !dbg !310, !tbaa !232
  call void @llvm.dbg.value(metadata !{i16 %72}, i64 0, metadata !311) nounwind, !dbg !312
  %73 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %72) nounwind, !dbg !313, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %73}, i64 0, metadata !311) nounwind, !dbg !313
  call void @llvm.dbg.value(metadata !{i16 %73}, i64 0, metadata !305) nounwind, !dbg !310
  %conv45.i = zext i16 %73 to i32, !dbg !314
  %call46.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([1 x %struct.tok]* @xtag2str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i32 %conv45.i) nounwind, !dbg !314
  call void @llvm.dbg.value(metadata !{i8* %call46.i}, i64 0, metadata !315) nounwind, !dbg !314
  br label %if.end49.i, !dbg !316

if.else.i:                                        ; preds = %land.lhs.true18.i, %land.lhs.true.i, %while.body.i
  %call48.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([108 x %struct.tok]* @tag2str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), i32 %conv8.i) nounwind, !dbg !317
  call void @llvm.dbg.value(metadata !{i8* %call48.i}, i64 0, metadata !315) nounwind, !dbg !317
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.end42.i
  %cp.0.i = phi i8* [ %call46.i, %if.end42.i ], [ %call48.i, %if.else.i ]
  %tag.0.i = phi i16 [ %73, %if.end42.i ], [ %conv.i, %if.else.i ]
  %incdec.ptr50.i = getelementptr inbounds i8* %cp.0.i, i32 1, !dbg !318
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr50.i}, i64 0, metadata !315) nounwind, !dbg !318
  %74 = load i8* %cp.0.i, align 1, !dbg !318, !tbaa !206
  call void @llvm.dbg.value(metadata !{i8 %74}, i64 0, metadata !319) nounwind, !dbg !318
  %conv51.i = zext i16 %tag.0.i to i32, !dbg !320
  %cmp54.i = icmp eq i16 %tag.0.i, 0, !dbg !320
  switch i16 %tag.0.i, label %land.lhs.true70.i [
    i16 255, label %cont82.i
    i16 0, label %cont82.i
  ], !dbg !320

land.lhs.true70.i:                                ; preds = %if.end49.i
  %75 = load %struct.netdissect_options** @gndo, align 4, !dbg !321, !tbaa !205
  %ndo_snapend65.i = getelementptr inbounds %struct.netdissect_options* %75, i32 0, i32 45, !dbg !321
  %76 = load i8** %ndo_snapend65.i, align 4, !dbg !321, !tbaa !205
  %add.ptr66.i = getelementptr inbounds i8* %76, i32 -1, !dbg !321
  %cmp73.i = icmp ugt i8* %incdec.ptr.i, %add.ptr66.i, !dbg !321
  br i1 %cmp73.i, label %trunc.i, label %if.end76.i, !dbg !321

if.end76.i:                                       ; preds = %land.lhs.true70.i
  %incdec.ptr77.i = getelementptr inbounds i8* %bp.addr.0967.i, i32 2, !dbg !323
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr77.i}, i64 0, metadata !295) nounwind, !dbg !323
  %77 = load i8* %incdec.ptr.i, align 1, !dbg !323, !tbaa !206
  %conv78.i = zext i8 %77 to i32, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %conv78.i}, i64 0, metadata !324) nounwind, !dbg !323
  br label %cont82.i

cont82.i:                                         ; preds = %if.end76.i, %if.end49.i, %if.end49.i
  %len.0.i = phi i32 [ %conv78.i, %if.end76.i ], [ 0, %if.end49.i ], [ 0, %if.end49.i ]
  %bp.addr.1.i = phi i8* [ %incdec.ptr77.i, %if.end76.i ], [ %incdec.ptr.i, %if.end49.i ], [ %incdec.ptr.i, %if.end49.i ]
  %cmp83.i = icmp ne i32 %len.0.i, 0, !dbg !325
  %cond.i = select i1 %cmp83.i, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i32 0, i32 0), !dbg !325
  %call85.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str36, i32 0, i32 0), i8* %incdec.ptr50.i, i32 %conv51.i, i32 %len.0.i, i8* %cond.i) nounwind, !dbg !325
  br i1 %cmp54.i, label %land.lhs.true91.i, label %if.end127.i, !dbg !326

land.lhs.true91.i:                                ; preds = %cont82.i
  %78 = load %struct.netdissect_options** @gndo, align 4, !dbg !326, !tbaa !205
  %ndo_vflag92.i = getelementptr inbounds %struct.netdissect_options* %78, i32 0, i32 14, !dbg !326
  %79 = load i32* %ndo_vflag92.i, align 4, !dbg !326, !tbaa !216
  %cmp93.i = icmp sgt i32 %79, 2, !dbg !326
  br i1 %cmp93.i, label %land.lhs.true104.preheader.i, label %if.end127.i, !dbg !326

land.lhs.true104.preheader.i:                     ; preds = %land.lhs.true91.i
  %ndo_snapend99888.i = getelementptr inbounds %struct.netdissect_options* %78, i32 0, i32 45, !dbg !327
  %80 = load i8** %ndo_snapend99888.i, align 4, !dbg !327, !tbaa !205
  %add.ptr100889.i = getelementptr inbounds i8* %80, i32 -1, !dbg !327
  %cmp107890.i = icmp ugt i8* %bp.addr.1.i, %add.ptr100889.i, !dbg !327
  br i1 %cmp107890.i, label %if.end127.i, label %cont112.i, !dbg !327

cont112.i:                                        ; preds = %land.lhs.true104.preheader.i, %land.lhs.true104.backedge.i
  %81 = phi %struct.netdissect_options* [ %86, %land.lhs.true104.backedge.i ], [ %78, %land.lhs.true104.preheader.i ]
  %bp.addr.2892.i = phi i8* [ %incdec.ptr117.i, %land.lhs.true104.backedge.i ], [ %bp.addr.1.i, %land.lhs.true104.preheader.i ]
  %ntag.0891.i = phi i32 [ %84, %land.lhs.true104.backedge.i ], [ 1, %land.lhs.true104.preheader.i ]
  %82 = load i8* %bp.addr.2892.i, align 1, !dbg !327, !tbaa !206
  %cmp113.i = icmp eq i8 %82, 0, !dbg !327
  br i1 %cmp113.i, label %while.body116.i, label %cont121.i

while.body116.i:                                  ; preds = %cont112.i
  %incdec.ptr117.i = getelementptr inbounds i8* %bp.addr.2892.i, i32 1, !dbg !328
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr117.i}, i64 0, metadata !295) nounwind, !dbg !328
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %ntag.0891.i, i32 1) nounwind, !dbg !330
  %84 = extractvalue { i32, i1 } %83, 0, !dbg !330
  %85 = extractvalue { i32, i1 } %83, 1, !dbg !330
  br i1 %85, label %ioc_bb118.i, label %land.lhs.true104.backedge.i, !dbg !330

land.lhs.true104.backedge.i:                      ; preds = %ioc_bb118.i, %while.body116.i
  %86 = phi %struct.netdissect_options* [ %81, %while.body116.i ], [ %.pre.i, %ioc_bb118.i ], !dbg !327
  %ndo_snapend99.i = getelementptr inbounds %struct.netdissect_options* %86, i32 0, i32 45, !dbg !327
  %87 = load i8** %ndo_snapend99.i, align 4, !dbg !327, !tbaa !205
  %add.ptr100.i = getelementptr inbounds i8* %87, i32 -1, !dbg !327
  %cmp107.i = icmp ugt i8* %incdec.ptr117.i, %add.ptr100.i, !dbg !327
  br i1 %cmp107.i, label %cont121.i, label %cont112.i, !dbg !327

ioc_bb118.i:                                      ; preds = %while.body116.i
  %88 = zext i32 %ntag.0891.i to i64, !dbg !330
  call void @__ioc_report_add_overflow(i32 291, i32 13, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %88, i64 1, i8 5) nounwind, !dbg !330
  %.pre.i = load %struct.netdissect_options** @gndo, align 4, !dbg !327, !tbaa !205
  br label %land.lhs.true104.backedge.i, !dbg !330

cont121.i:                                        ; preds = %land.lhs.true104.backedge.i, %cont112.i
  %bp.addr.2.lcssa.i = phi i8* [ %bp.addr.2892.i, %cont112.i ], [ %incdec.ptr117.i, %land.lhs.true104.backedge.i ]
  %ntag.0.lcssa.i = phi i32 [ %ntag.0891.i, %cont112.i ], [ %84, %land.lhs.true104.backedge.i ]
  %cmp122.i = icmp ugt i32 %ntag.0.lcssa.i, 1, !dbg !331
  br i1 %cmp122.i, label %if.then124.i, label %if.end127.i, !dbg !331

if.then124.i:                                     ; preds = %cont121.i
  %call125.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str39, i32 0, i32 0), i32 %ntag.0.lcssa.i) nounwind, !dbg !332
  br label %if.end127.i, !dbg !332

if.end127.i:                                      ; preds = %if.then124.i, %cont121.i, %land.lhs.true104.preheader.i, %land.lhs.true91.i, %cont82.i
  %bp.addr.3.i = phi i8* [ %bp.addr.2.lcssa.i, %if.then124.i ], [ %bp.addr.2.lcssa.i, %cont121.i ], [ %bp.addr.1.i, %land.lhs.true91.i ], [ %bp.addr.1.i, %cont82.i ], [ %bp.addr.1.i, %land.lhs.true104.preheader.i ]
  %idx.neg.i = sub i32 0, %len.0.i, !dbg !333
  %cmp131.i = icmp slt i32 %idx.neg.i, 1, !dbg !333
  br i1 %cmp131.i, label %land.lhs.true133.i, label %if.then139.i, !dbg !333

land.lhs.true133.i:                               ; preds = %if.end127.i
  %89 = load %struct.netdissect_options** @gndo, align 4, !dbg !333, !tbaa !205
  %ndo_snapend128.i = getelementptr inbounds %struct.netdissect_options* %89, i32 0, i32 45, !dbg !333
  %90 = load i8** %ndo_snapend128.i, align 4, !dbg !333, !tbaa !205
  %add.ptr129.i = getelementptr inbounds i8* %90, i32 %idx.neg.i, !dbg !333
  %cmp137.i = icmp ugt i8* %bp.addr.3.i, %add.ptr129.i, !dbg !333
  br i1 %cmp137.i, label %if.then139.i, label %cont144.i, !dbg !333

if.then139.i:                                     ; preds = %land.lhs.true133.i, %if.end127.i
  %call140.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str40, i32 0, i32 0), i32 %len.0.i) nounwind, !dbg !334
  br label %return, !dbg !336

cont144.i:                                        ; preds = %land.lhs.true133.i
  %cmp145.i = icmp eq i16 %tag.0.i, 53, !dbg !337
  %cmp150.i = icmp eq i32 %len.0.i, 1, !dbg !337
  %or.cond869.i = and i1 %cmp145.i, %cmp150.i, !dbg !337
  br i1 %or.cond869.i, label %if.then152.i, label %cont160.i, !dbg !337

if.then152.i:                                     ; preds = %cont144.i
  %incdec.ptr153.i = getelementptr inbounds i8* %bp.addr.3.i, i32 1, !dbg !338
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr153.i}, i64 0, metadata !295) nounwind, !dbg !338
  %91 = load i8* %bp.addr.3.i, align 1, !dbg !338, !tbaa !206
  call void @llvm.dbg.value(metadata !{i8 %91}, i64 0, metadata !340) nounwind, !dbg !338
  %conv154.i = zext i8 %91 to i32, !dbg !341
  %call155.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([9 x %struct.tok]* @dhcp_msg_values, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), i32 %conv154.i) nounwind, !dbg !341
  %call156.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i8* %call155.i) nounwind, !dbg !341
  br label %land.rhs.backedge.i, !dbg !342

cont160.i:                                        ; preds = %cont144.i
  switch i16 %tag.0.i, label %if.end216.i [
    i16 55, label %while.cond164.i
    i16 126, label %cont198.preheader.i
  ], !dbg !343

cont198.preheader.i:                              ; preds = %cont160.i
  %cmp199894.i = icmp ugt i32 %len.0.i, 1, !dbg !344
  br i1 %cmp199894.i, label %cont203.i, label %land.rhs.backedge.i, !dbg !344

while.cond164.i:                                  ; preds = %ioc_bb186.i, %if.end183.i, %cont160.i
  %idx.0.i = phi i32 [ 0, %cont160.i ], [ %99, %if.end183.i ], [ %99, %ioc_bb186.i ]
  %len.1.i = phi i32 [ %len.0.i, %cont160.i ], [ %93, %if.end183.i ], [ %93, %ioc_bb186.i ]
  %bp.addr.4.i = phi i8* [ %bp.addr.3.i, %cont160.i ], [ %incdec.ptr172.i, %if.end183.i ], [ %incdec.ptr172.i, %ioc_bb186.i ]
  %92 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.1.i, i32 1) nounwind, !dbg !346
  %93 = extractvalue { i32, i1 } %92, 0, !dbg !346
  %94 = extractvalue { i32, i1 } %92, 1, !dbg !346
  br i1 %94, label %ioc_bb165.i, label %cont168.i, !dbg !346

ioc_bb165.i:                                      ; preds = %while.cond164.i
  %95 = zext i32 %len.1.i to i64, !dbg !346
  call void @__ioc_report_sub_overflow(i32 307, i32 16, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %95, i64 1, i8 5) nounwind, !dbg !346
  br label %cont168.i, !dbg !346

cont168.i:                                        ; preds = %ioc_bb165.i, %while.cond164.i
  call void @llvm.dbg.value(metadata !{i32 %93}, i64 0, metadata !324) nounwind, !dbg !346
  %cmp169.i = icmp eq i32 %len.1.i, 0, !dbg !346
  br i1 %cmp169.i, label %land.rhs.backedge.i, label %while.body171.i, !dbg !346

while.body171.i:                                  ; preds = %cont168.i
  %incdec.ptr172.i = getelementptr inbounds i8* %bp.addr.4.i, i32 1, !dbg !348
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr172.i}, i64 0, metadata !295) nounwind, !dbg !348
  %96 = load i8* %bp.addr.4.i, align 1, !dbg !348, !tbaa !206
  call void @llvm.dbg.value(metadata !{i8 %96}, i64 0, metadata !340) nounwind, !dbg !348
  %conv173.i = zext i8 %96 to i32, !dbg !350
  %call174.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([108 x %struct.tok]* @tag2str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str43, i32 0, i32 0), i32 %conv173.i) nounwind, !dbg !350
  call void @llvm.dbg.value(metadata !{i8* %call174.i}, i64 0, metadata !315) nounwind, !dbg !350
  %97 = sext i32 %idx.0.i to i64, !dbg !351
  %rem868.i = and i32 %idx.0.i, 3, !dbg !351
  %cmp177.i = icmp eq i32 %rem868.i, 0, !dbg !351
  br i1 %cmp177.i, label %if.then179.i, label %if.else181.i, !dbg !351

if.then179.i:                                     ; preds = %while.body171.i
  %call180.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0)) nounwind, !dbg !352
  br label %if.end183.i, !dbg !352

if.else181.i:                                     ; preds = %while.body171.i
  %call182.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0)) nounwind, !dbg !353
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else181.i, %if.then179.i
  %add.ptr184.i = getelementptr inbounds i8* %call174.i, i32 1, !dbg !354
  %call185.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i8* %add.ptr184.i) nounwind, !dbg !354
  %98 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %idx.0.i, i32 1) nounwind, !dbg !355
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !355
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !355
  br i1 %100, label %ioc_bb186.i, label %while.cond164.i, !dbg !355

ioc_bb186.i:                                      ; preds = %if.end183.i
  call void @__ioc_report_add_overflow(i32 315, i32 12, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %97, i64 1, i8 13) nounwind, !dbg !355
  br label %while.cond164.i, !dbg !355

cont203.i:                                        ; preds = %cont198.preheader.i, %if.end212.i
  %bp.addr.5897.i = phi i8* [ %add.ptr207.i, %if.end212.i ], [ %bp.addr.3.i, %cont198.preheader.i ]
  %len.2896.i = phi i32 [ %102, %if.end212.i ], [ %len.0.i, %cont198.preheader.i ]
  %first.0895.i = phi i32 [ 0, %if.end212.i ], [ 1, %cont198.preheader.i ]
  %101 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.2896.i, i32 2) nounwind, !dbg !356
  %102 = extractvalue { i32, i1 } %101, 0, !dbg !356
  %103 = extractvalue { i32, i1 } %101, 1, !dbg !356
  br i1 %103, label %ioc_bb204.i, label %cont205.i, !dbg !356

ioc_bb204.i:                                      ; preds = %cont203.i
  %104 = zext i32 %len.2896.i to i64, !dbg !356
  call void @__ioc_report_sub_overflow(i32 322, i32 13, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %104, i64 2, i8 5) nounwind, !dbg !356
  br label %cont205.i, !dbg !356

cont205.i:                                        ; preds = %ioc_bb204.i, %cont203.i
  call void @llvm.dbg.value(metadata !{i32 %102}, i64 0, metadata !324) nounwind, !dbg !356
  %105 = bitcast i8* %bp.addr.5897.i to i16*, !dbg !358
  %106 = load i16* %105, align 2, !dbg !358, !tbaa !232
  call void @llvm.dbg.value(metadata !{i16 %106}, i64 0, metadata !359) nounwind, !dbg !360
  %107 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %106) nounwind, !dbg !361, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %107}, i64 0, metadata !359) nounwind, !dbg !361
  call void @llvm.dbg.value(metadata !{i16 %107}, i64 0, metadata !362) nounwind, !dbg !358
  %add.ptr207.i = getelementptr inbounds i8* %bp.addr.5897.i, i32 2, !dbg !363
  call void @llvm.dbg.value(metadata !{i8* %add.ptr207.i}, i64 0, metadata !295) nounwind, !dbg !363
  %conv208.i = zext i16 %107 to i32, !dbg !364
  %call209.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([1 x %struct.tok]* @xtag2str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i32 %conv208.i) nounwind, !dbg !364
  call void @llvm.dbg.value(metadata !{i8* %call209.i}, i64 0, metadata !315) nounwind, !dbg !364
  %tobool.i = icmp eq i32 %first.0895.i, 0, !dbg !365
  br i1 %tobool.i, label %if.then210.i, label %if.end212.i, !dbg !365

if.then210.i:                                     ; preds = %cont205.i
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !367) nounwind, !dbg !369
  %108 = load %struct._IO_FILE** @stdout, align 4, !dbg !370, !tbaa !205
  %call.i.i = call i32 @_IO_putc(i32 43, %struct._IO_FILE* %108) nounwind, !dbg !370
  br label %if.end212.i, !dbg !368

if.end212.i:                                      ; preds = %if.then210.i, %cont205.i
  %add.ptr213.i = getelementptr inbounds i8* %call209.i, i32 1, !dbg !371
  %call214.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i8* %add.ptr213.i) nounwind, !dbg !371
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !372) nounwind, !dbg !373
  %cmp199.i = icmp ugt i32 %102, 1, !dbg !344
  br i1 %cmp199.i, label %cont203.i, label %land.rhs.backedge.i, !dbg !344

if.end216.i:                                      ; preds = %cont160.i
  %cmp218.i = icmp eq i8 %74, 63, !dbg !374
  br i1 %cmp218.i, label %cont222.i, label %if.end241.i, !dbg !374

cont222.i:                                        ; preds = %if.end216.i
  %and223.i = and i32 %len.0.i, 1, !dbg !375
  %tobool224.i = icmp eq i32 %and223.i, 0, !dbg !375
  br i1 %tobool224.i, label %cont230.i, label %if.end241.i, !dbg !375

cont230.i:                                        ; preds = %cont222.i
  %and231.i = and i32 %len.0.i, 2, !dbg !377
  %tobool232.i = icmp eq i32 %and231.i, 0, !dbg !377
  %..i = select i1 %tobool232.i, i8 108, i8 115, !dbg !377
  br label %if.end241.i, !dbg !377

if.end241.i:                                      ; preds = %cont230.i, %cont222.i, %if.end216.i
  %c.0.i = phi i8 [ %74, %if.end216.i ], [ 98, %cont222.i ], [ %..i, %cont230.i ]
  call void @llvm.dbg.value(metadata !378, i64 0, metadata !372) nounwind, !dbg !379
  %conv242.i = sext i8 %c.0.i to i32, !dbg !380
  switch i32 %conv242.i, label %cont356.preheader.i [
    i32 97, label %sw.bb.i
    i32 105, label %while.cond257.preheader.i
    i32 108, label %while.cond257.preheader.i
    i32 76, label %while.cond257.preheader.i
    i32 112, label %cont292.preheader.i
    i32 115, label %while.cond314.preheader.i
    i32 66, label %cont332.preheader.i
    i32 36, label %sw.bb382.i
  ], !dbg !380

cont356.preheader.i:                              ; preds = %if.end241.i
  %cmp357959.i = icmp eq i32 %len.0.i, 0, !dbg !381
  br i1 %cmp357959.i, label %land.rhs.backedge.i, label %while.body359.lr.ph.i, !dbg !381

while.body359.lr.ph.i:                            ; preds = %cont356.preheader.i
  %cmp363.i = icmp eq i8 %c.0.i, 120, !dbg !383
  %cond365.i = select i1 %cmp363.i, i32 58, i32 46, !dbg !383
  br label %while.body359.i, !dbg !381

while.cond257.preheader.i:                        ; preds = %if.end241.i, %if.end241.i, %if.end241.i
  %cmp258952.i = icmp ugt i32 %len.0.i, 3, !dbg !385
  br i1 %cmp258952.i, label %while.body260.i, label %sw.epilog680.i, !dbg !385

cont292.preheader.i:                              ; preds = %if.end241.i
  %cmp293945.i = icmp ugt i32 %len.0.i, 7, !dbg !387
  br i1 %cmp293945.i, label %while.body295.i, label %sw.epilog680.i, !dbg !387

while.cond314.preheader.i:                        ; preds = %if.end241.i
  %cmp315938.i = icmp ugt i32 %len.0.i, 1, !dbg !389
  br i1 %cmp315938.i, label %while.body317.i, label %sw.epilog680.i, !dbg !389

cont332.preheader.i:                              ; preds = %if.end241.i
  %cmp333932.i = icmp eq i32 %len.0.i, 0, !dbg !391
  br i1 %cmp333932.i, label %land.rhs.backedge.i, label %while.body335.i, !dbg !391

sw.bb.i:                                          ; preds = %if.end241.i
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !393) nounwind, !dbg !396
  %109 = load %struct._IO_FILE** @stdout, align 4, !dbg !397, !tbaa !205
  %call.i870.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %109) nounwind, !dbg !397
  %110 = load %struct.netdissect_options** @gndo, align 4, !dbg !398, !tbaa !205
  %ndo_snapend244.i = getelementptr inbounds %struct.netdissect_options* %110, i32 0, i32 45, !dbg !398
  %111 = load i8** %ndo_snapend244.i, align 4, !dbg !398, !tbaa !205
  %call245.i = call i32 @fn_printn(i8* %bp.addr.3.i, i32 %len.0.i, i8* %111) nounwind, !dbg !398
  %tobool246.i = icmp eq i32 %call245.i, 0, !dbg !398
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !399) nounwind, !dbg !402
  %112 = load %struct._IO_FILE** @stdout, align 4, !dbg !403, !tbaa !205
  %call.i871.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %112) nounwind, !dbg !403
  br i1 %tobool246.i, label %cont253.i, label %trunc.i, !dbg !398

cont253.i:                                        ; preds = %sw.bb.i
  %add.ptr251.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %len.0.i, !dbg !404
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !405
  br label %land.rhs.backedge.i, !dbg !406

while.body260.i:                                  ; preds = %while.cond257.preheader.i, %while.cond257.backedge.i
  %bp.addr.6955.i = phi i8* [ %add.ptr283.i, %while.cond257.backedge.i ], [ %bp.addr.3.i, %while.cond257.preheader.i ]
  %len.3954.i = phi i32 [ %119, %while.cond257.backedge.i ], [ %len.0.i, %while.cond257.preheader.i ]
  %first.1953.i = phi i1 [ true, %while.cond257.backedge.i ], [ false, %while.cond257.preheader.i ]
  br i1 %first.1953.i, label %if.then262.i, label %if.end264.i, !dbg !407

if.then262.i:                                     ; preds = %while.body260.i
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !410) nounwind, !dbg !412
  %113 = load %struct._IO_FILE** @stdout, align 4, !dbg !413, !tbaa !205
  %call.i872.i = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %113) nounwind, !dbg !413
  br label %if.end264.i, !dbg !411

if.end264.i:                                      ; preds = %if.then262.i, %while.body260.i
  %114 = bitcast i8* %bp.addr.6955.i to i32*, !dbg !414
  %115 = load i32* %114, align 4, !dbg !414, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32 %115}, i64 0, metadata !415) nounwind, !dbg !416
  %116 = call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %115) nounwind, !dbg !417, !srcloc !230
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !415) nounwind, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !418) nounwind, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !418) nounwind, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !418) nounwind, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !418) nounwind, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !418) nounwind, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !108), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !108), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !108), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !108), !dbg !414
  store i32 %116, i32* %ul.i, align 4, !dbg !414, !tbaa !216
  switch i8 %c.0.i, label %if.else279.i [
    i8 105, label %if.then269.i
    i8 76, label %if.then277.i
  ], !dbg !419

if.then269.i:                                     ; preds = %if.end264.i
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !420) nounwind, !dbg !423
  %117 = call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %116) nounwind, !dbg !424, !srcloc !230
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !420) nounwind, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !418) nounwind, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !418) nounwind, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !418) nounwind, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !418) nounwind, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !418) nounwind, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !108), !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !108), !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !108), !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !108), !dbg !421
  store i32 %117, i32* %ul.i, align 4, !dbg !421, !tbaa !216
  %call271.i = call i8* @getname(i8* %60) nounwind, !dbg !425
  %call272.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i8* %call271.i) nounwind, !dbg !425
  br label %if.end282.i, !dbg !426

if.then277.i:                                     ; preds = %if.end264.i
  %call278.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %116) nounwind, !dbg !427
  br label %if.end282.i, !dbg !427

if.else279.i:                                     ; preds = %if.end264.i
  %call280.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i32 %116) nounwind, !dbg !428
  br label %if.end282.i

if.end282.i:                                      ; preds = %if.else279.i, %if.then277.i, %if.then269.i
  %add.ptr283.i = getelementptr inbounds i8* %bp.addr.6955.i, i32 4, !dbg !429
  call void @llvm.dbg.value(metadata !{i8* %add.ptr283.i}, i64 0, metadata !295) nounwind, !dbg !429
  %118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.3954.i, i32 4) nounwind, !dbg !430
  %119 = extractvalue { i32, i1 } %118, 0, !dbg !430
  %120 = extractvalue { i32, i1 } %118, 1, !dbg !430
  br i1 %120, label %ioc_bb284.i, label %while.cond257.backedge.i, !dbg !430

while.cond257.backedge.i:                         ; preds = %ioc_bb284.i, %if.end282.i
  %cmp258.i = icmp ugt i32 %119, 3, !dbg !385
  br i1 %cmp258.i, label %while.body260.i, label %sw.epilog680.i, !dbg !385

ioc_bb284.i:                                      ; preds = %if.end282.i
  %121 = zext i32 %len.3954.i to i64, !dbg !430
  call void @__ioc_report_sub_overflow(i32 380, i32 15, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %121, i64 4, i8 5) nounwind, !dbg !430
  br label %while.cond257.backedge.i, !dbg !430

while.body295.i:                                  ; preds = %cont292.preheader.i, %cont292.backedge.i
  %bp.addr.7948.i = phi i8* [ %add.ptr305.i, %cont292.backedge.i ], [ %bp.addr.3.i, %cont292.preheader.i ]
  %len.4947.i = phi i32 [ %128, %cont292.backedge.i ], [ %len.0.i, %cont292.preheader.i ]
  %first.2946.i = phi i1 [ true, %cont292.backedge.i ], [ false, %cont292.preheader.i ]
  br i1 %first.2946.i, label %if.then297.i, label %if.end299.i, !dbg !431

if.then297.i:                                     ; preds = %while.body295.i
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !433) nounwind, !dbg !435
  %122 = load %struct._IO_FILE** @stdout, align 4, !dbg !436, !tbaa !205
  %call.i873.i = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %122) nounwind, !dbg !436
  br label %if.end299.i, !dbg !434

if.end299.i:                                      ; preds = %if.then297.i, %while.body295.i
  %123 = bitcast i8* %bp.addr.7948.i to i32*, !dbg !437
  %124 = load i32* %123, align 1, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !418) nounwind, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !418) nounwind, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !418) nounwind, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !418) nounwind, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !108), !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !108), !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !108), !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !108), !dbg !437
  store i32 %124, i32* %ul.i, align 4, !dbg !437
  %call300.i = call i8* @getname(i8* %60) nounwind, !dbg !438
  %call301.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0), i8* %call300.i) nounwind, !dbg !438
  %add.ptr302.i = getelementptr inbounds i8* %bp.addr.7948.i, i32 4, !dbg !439
  call void @llvm.dbg.value(metadata !{i8* %add.ptr302.i}, i64 0, metadata !295) nounwind, !dbg !439
  %125 = bitcast i8* %add.ptr302.i to i32*, !dbg !440
  %126 = load i32* %125, align 1, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !418) nounwind, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !418) nounwind, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !418) nounwind, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !418) nounwind, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !108), !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !108), !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !108), !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !108), !dbg !440
  store i32 %126, i32* %ul.i, align 4, !dbg !440
  %call303.i = call i8* @getname(i8* %60) nounwind, !dbg !441
  %call304.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str49, i32 0, i32 0), i8* %call303.i) nounwind, !dbg !441
  %add.ptr305.i = getelementptr inbounds i8* %bp.addr.7948.i, i32 8, !dbg !442
  call void @llvm.dbg.value(metadata !{i8* %add.ptr305.i}, i64 0, metadata !295) nounwind, !dbg !442
  %127 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.4947.i, i32 8) nounwind, !dbg !443
  %128 = extractvalue { i32, i1 } %127, 0, !dbg !443
  %129 = extractvalue { i32, i1 } %127, 1, !dbg !443
  br i1 %129, label %ioc_bb310.i, label %cont292.backedge.i, !dbg !443

cont292.backedge.i:                               ; preds = %ioc_bb310.i, %if.end299.i
  %cmp293.i = icmp ugt i32 %128, 7, !dbg !387
  br i1 %cmp293.i, label %while.body295.i, label %sw.epilog680.i, !dbg !387

ioc_bb310.i:                                      ; preds = %if.end299.i
  %130 = zext i32 %len.4947.i to i64, !dbg !443
  call void @__ioc_report_sub_overflow(i32 397, i32 15, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %130, i64 8, i8 5) nounwind, !dbg !443
  br label %cont292.backedge.i, !dbg !443

while.body317.i:                                  ; preds = %while.cond314.preheader.i, %while.cond314.backedge.i
  %bp.addr.8941.i = phi i8* [ %add.ptr325.i, %while.cond314.backedge.i ], [ %bp.addr.3.i, %while.cond314.preheader.i ]
  %len.5940.i = phi i32 [ %136, %while.cond314.backedge.i ], [ %len.0.i, %while.cond314.preheader.i ]
  %first.3939.i = phi i1 [ true, %while.cond314.backedge.i ], [ false, %while.cond314.preheader.i ]
  br i1 %first.3939.i, label %if.then319.i, label %if.end321.i, !dbg !444

if.then319.i:                                     ; preds = %while.body317.i
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !446) nounwind, !dbg !448
  %131 = load %struct._IO_FILE** @stdout, align 4, !dbg !449, !tbaa !205
  %call.i874.i = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %131) nounwind, !dbg !449
  br label %if.end321.i, !dbg !447

if.end321.i:                                      ; preds = %if.then319.i, %while.body317.i
  %132 = bitcast i8* %bp.addr.8941.i to i16*, !dbg !450
  %133 = load i16* %132, align 2, !dbg !450, !tbaa !232
  call void @llvm.dbg.value(metadata !{i16 %133}, i64 0, metadata !451) nounwind, !dbg !452
  %134 = call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %133) nounwind, !dbg !453, !srcloc !238
  call void @llvm.dbg.value(metadata !{i16 %134}, i64 0, metadata !451) nounwind, !dbg !453
  call void @llvm.dbg.value(metadata !{i16 %134}, i64 0, metadata !362) nounwind, !dbg !450
  %conv323.i = zext i16 %134 to i32, !dbg !454
  %call324.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i32 %conv323.i) nounwind, !dbg !454
  %add.ptr325.i = getelementptr inbounds i8* %bp.addr.8941.i, i32 2, !dbg !455
  call void @llvm.dbg.value(metadata !{i8* %add.ptr325.i}, i64 0, metadata !295) nounwind, !dbg !455
  %135 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.5940.i, i32 2) nounwind, !dbg !456
  %136 = extractvalue { i32, i1 } %135, 0, !dbg !456
  %137 = extractvalue { i32, i1 } %135, 1, !dbg !456
  br i1 %137, label %ioc_bb326.i, label %while.cond314.backedge.i, !dbg !456

while.cond314.backedge.i:                         ; preds = %ioc_bb326.i, %if.end321.i
  %cmp315.i = icmp ugt i32 %136, 1, !dbg !389
  br i1 %cmp315.i, label %while.body317.i, label %sw.epilog680.i, !dbg !389

ioc_bb326.i:                                      ; preds = %if.end321.i
  %138 = zext i32 %len.5940.i to i64, !dbg !456
  call void @__ioc_report_sub_overflow(i32 411, i32 15, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %138, i64 2, i8 5) nounwind, !dbg !456
  br label %while.cond314.backedge.i, !dbg !456

while.body335.i:                                  ; preds = %cont332.preheader.i, %cont332.backedge.i
  %bp.addr.9935.i = phi i8* [ %incdec.ptr347.i, %cont332.backedge.i ], [ %bp.addr.3.i, %cont332.preheader.i ]
  %len.6934.i = phi i32 [ %144, %cont332.backedge.i ], [ %len.0.i, %cont332.preheader.i ]
  %first.4933.i = phi i1 [ true, %cont332.backedge.i ], [ false, %cont332.preheader.i ]
  br i1 %first.4933.i, label %if.then337.i, label %if.end339.i, !dbg !457

if.then337.i:                                     ; preds = %while.body335.i
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !459) nounwind, !dbg !461
  %139 = load %struct._IO_FILE** @stdout, align 4, !dbg !462, !tbaa !205
  %call.i875.i = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %139) nounwind, !dbg !462
  br label %if.end339.i, !dbg !460

if.end339.i:                                      ; preds = %while.body335.i, %if.then337.i
  %140 = load i8* %bp.addr.9935.i, align 1, !dbg !463, !tbaa !206
  %conv340.i = zext i8 %140 to i32, !dbg !463
  switch i32 %conv340.i, label %sw.default.i [
    i32 0, label %sw.bb341.i
    i32 1, label %sw.bb343.i
  ], !dbg !463

sw.bb341.i:                                       ; preds = %if.end339.i
  call void @llvm.dbg.value(metadata !464, i64 0, metadata !465) nounwind, !dbg !469
  %141 = load %struct._IO_FILE** @stdout, align 4, !dbg !470, !tbaa !205
  %call.i876.i = call i32 @_IO_putc(i32 78, %struct._IO_FILE* %141) nounwind, !dbg !470
  br label %sw.epilog.i, !dbg !471

sw.bb343.i:                                       ; preds = %if.end339.i
  call void @llvm.dbg.value(metadata !472, i64 0, metadata !473) nounwind, !dbg !476
  %142 = load %struct._IO_FILE** @stdout, align 4, !dbg !477, !tbaa !205
  %call.i877.i = call i32 @_IO_putc(i32 89, %struct._IO_FILE* %142) nounwind, !dbg !477
  br label %sw.epilog.i, !dbg !478

sw.default.i:                                     ; preds = %if.end339.i
  %call346.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str50, i32 0, i32 0), i32 %conv340.i) nounwind, !dbg !479
  br label %sw.epilog.i, !dbg !481

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb343.i, %sw.bb341.i
  %incdec.ptr347.i = getelementptr inbounds i8* %bp.addr.9935.i, i32 1, !dbg !482
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr347.i}, i64 0, metadata !295) nounwind, !dbg !482
  %143 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.6934.i, i32 1) nounwind, !dbg !483
  %144 = extractvalue { i32, i1 } %143, 0, !dbg !483
  %145 = extractvalue { i32, i1 } %143, 1, !dbg !483
  br i1 %145, label %ioc_bb348.i, label %cont332.backedge.i, !dbg !483

cont332.backedge.i:                               ; preds = %ioc_bb348.i, %sw.epilog.i
  %cmp333.i = icmp eq i32 %144, 0, !dbg !391
  br i1 %cmp333.i, label %land.rhs.backedge.i, label %while.body335.i, !dbg !391

ioc_bb348.i:                                      ; preds = %sw.epilog.i
  %146 = zext i32 %len.6934.i to i64, !dbg !483
  call void @__ioc_report_sub_overflow(i32 440, i32 11, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %146, i64 1, i8 5) nounwind, !dbg !483
  br label %cont332.backedge.i, !dbg !483

while.body359.i:                                  ; preds = %cont356.backedge.i, %while.body359.lr.ph.i
  %bp.addr.10962.i = phi i8* [ %bp.addr.3.i, %while.body359.lr.ph.i ], [ %incdec.ptr378.i, %cont356.backedge.i ]
  %len.7961.i = phi i32 [ %len.0.i, %while.body359.lr.ph.i ], [ %150, %cont356.backedge.i ]
  %first.5960.i = phi i1 [ false, %while.body359.lr.ph.i ], [ true, %cont356.backedge.i ]
  br i1 %first.5960.i, label %if.then361.i, label %if.end367.i, !dbg !484

if.then361.i:                                     ; preds = %while.body359.i
  call void @llvm.dbg.value(metadata !{i32 %cond365.i}, i64 0, metadata !485) nounwind, !dbg !486
  %147 = load %struct._IO_FILE** @stdout, align 4, !dbg !487, !tbaa !205
  %call.i878.i = call i32 @_IO_putc(i32 %cond365.i, %struct._IO_FILE* %147) nounwind, !dbg !487
  br label %if.end367.i, !dbg !383

if.end367.i:                                      ; preds = %while.body359.i, %if.then361.i
  %148 = load i8* %bp.addr.10962.i, align 1, !dbg !488, !tbaa !206
  %conv372.i = zext i8 %148 to i32, !dbg !488
  br i1 %cmp363.i, label %if.then371.i, label %if.else374.i, !dbg !489

if.then371.i:                                     ; preds = %if.end367.i
  %call373.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0), i32 %conv372.i) nounwind, !dbg !488
  br label %if.end377.i, !dbg !488

if.else374.i:                                     ; preds = %if.end367.i
  %call376.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i32 %conv372.i) nounwind, !dbg !490
  br label %if.end377.i

if.end377.i:                                      ; preds = %if.else374.i, %if.then371.i
  %incdec.ptr378.i = getelementptr inbounds i8* %bp.addr.10962.i, i32 1, !dbg !491
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr378.i}, i64 0, metadata !295) nounwind, !dbg !491
  %149 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.7961.i, i32 1) nounwind, !dbg !492
  %150 = extractvalue { i32, i1 } %149, 0, !dbg !492
  %151 = extractvalue { i32, i1 } %149, 1, !dbg !492
  br i1 %151, label %ioc_bb379.i, label %cont356.backedge.i, !dbg !492

cont356.backedge.i:                               ; preds = %ioc_bb379.i, %if.end377.i
  %cmp357.i = icmp eq i32 %150, 0, !dbg !381
  br i1 %cmp357.i, label %land.rhs.backedge.i, label %while.body359.i, !dbg !381

ioc_bb379.i:                                      ; preds = %if.end377.i
  %152 = zext i32 %len.7961.i to i64, !dbg !492
  call void @__ioc_report_sub_overflow(i32 462, i32 11, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %152, i64 1, i8 5) nounwind, !dbg !492
  br label %cont356.backedge.i, !dbg !492

sw.bb382.i:                                       ; preds = %if.end241.i
  switch i32 %conv51.i, label %sw.default673.i [
    i32 46, label %cont386.i
    i32 52, label %cont403.i
    i32 81, label %cont420.i
    i32 61, label %cont472.i
    i32 82, label %cont521.preheader.i
    i32 121, label %cont568.i
    i32 249, label %cont568.i
  ], !dbg !493

cont521.preheader.i:                              ; preds = %sw.bb382.i
  %cmp522920.i = icmp ugt i32 %len.0.i, 1, !dbg !494
  br i1 %cmp522920.i, label %while.body524.i, label %sw.epilog680.i, !dbg !494

cont386.i:                                        ; preds = %sw.bb382.i
  %cmp387.i = icmp eq i32 %len.0.i, 0, !dbg !496
  br i1 %cmp387.i, label %cont391.i, label %if.end393.i, !dbg !496

cont391.i:                                        ; preds = %cont386.i
  %call392.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str52, i32 0, i32 0), i32 46, i32 0) nounwind, !dbg !498
  br label %land.rhs.backedge.i, !dbg !500

if.end393.i:                                      ; preds = %cont386.i
  %incdec.ptr394.i = getelementptr inbounds i8* %bp.addr.3.i, i32 1, !dbg !501
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr394.i}, i64 0, metadata !295) nounwind, !dbg !501
  %153 = load i8* %bp.addr.3.i, align 1, !dbg !501, !tbaa !206
  %154 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0.i, i32 1) nounwind, !dbg !502
  %155 = extractvalue { i32, i1 } %154, 0, !dbg !502
  %156 = extractvalue { i32, i1 } %154, 1, !dbg !502
  br i1 %156, label %ioc_bb396.i, label %cont397.i, !dbg !502

ioc_bb396.i:                                      ; preds = %if.end393.i
  %157 = zext i32 %len.0.i to i64, !dbg !502
  call void @__ioc_report_sub_overflow(i32 479, i32 13, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %157, i64 1, i8 5) nounwind, !dbg !502
  br label %cont397.i, !dbg !502

cont397.i:                                        ; preds = %ioc_bb396.i, %if.end393.i
  call void @llvm.dbg.value(metadata !{i32 %155}, i64 0, metadata !324) nounwind, !dbg !502
  %conv398.i = zext i8 %153 to i32, !dbg !503
  %call399.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([5 x %struct.tok]* @nbo2str, i32 0, i32 0), i8* null, i32 %conv398.i) nounwind, !dbg !503
  %158 = load %struct._IO_FILE** @stdout, align 4, !dbg !503, !tbaa !205
  %call400.i = call i32 @fputs(i8* %call399.i, %struct._IO_FILE* %158) nounwind, !dbg !503
  br label %sw.epilog680.i, !dbg !504

cont403.i:                                        ; preds = %sw.bb382.i
  %cmp404.i = icmp eq i32 %len.0.i, 0, !dbg !505
  br i1 %cmp404.i, label %cont408.i, label %if.end410.i, !dbg !505

cont408.i:                                        ; preds = %cont403.i
  %call409.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str52, i32 0, i32 0), i32 52, i32 0) nounwind, !dbg !507
  br label %land.rhs.backedge.i, !dbg !509

if.end410.i:                                      ; preds = %cont403.i
  %incdec.ptr411.i = getelementptr inbounds i8* %bp.addr.3.i, i32 1, !dbg !510
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr411.i}, i64 0, metadata !295) nounwind, !dbg !510
  %159 = load i8* %bp.addr.3.i, align 1, !dbg !510, !tbaa !206
  %160 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0.i, i32 1) nounwind, !dbg !511
  %161 = extractvalue { i32, i1 } %160, 0, !dbg !511
  %162 = extractvalue { i32, i1 } %160, 1, !dbg !511
  br i1 %162, label %ioc_bb413.i, label %cont414.i, !dbg !511

ioc_bb413.i:                                      ; preds = %if.end410.i
  %163 = zext i32 %len.0.i to i64, !dbg !511
  call void @__ioc_report_sub_overflow(i32 491, i32 13, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %163, i64 1, i8 5) nounwind, !dbg !511
  br label %cont414.i, !dbg !511

cont414.i:                                        ; preds = %ioc_bb413.i, %if.end410.i
  call void @llvm.dbg.value(metadata !{i32 %161}, i64 0, metadata !324) nounwind, !dbg !511
  %conv415.i = zext i8 %159 to i32, !dbg !512
  %call416.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([4 x %struct.tok]* @oo2str, i32 0, i32 0), i8* null, i32 %conv415.i) nounwind, !dbg !512
  %164 = load %struct._IO_FILE** @stdout, align 4, !dbg !512, !tbaa !205
  %call417.i = call i32 @fputs(i8* %call416.i, %struct._IO_FILE* %164) nounwind, !dbg !512
  br label %sw.epilog680.i, !dbg !513

cont420.i:                                        ; preds = %sw.bb382.i
  %cmp421.i = icmp ult i32 %len.0.i, 3, !dbg !514
  br i1 %cmp421.i, label %cont425.i, label %if.end430.i, !dbg !514

cont425.i:                                        ; preds = %cont420.i
  %call426.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str53, i32 0, i32 0), i32 81, i32 %len.0.i) nounwind, !dbg !516
  %add.ptr427.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %len.0.i, !dbg !518
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !519
  br label %land.rhs.backedge.i, !dbg !520

if.end430.i:                                      ; preds = %cont420.i
  %165 = load i8* %bp.addr.3.i, align 1, !dbg !521, !tbaa !206
  %tobool431.i = icmp eq i8 %165, 0, !dbg !521
  br i1 %tobool431.i, label %if.end436.i, label %if.then432.i, !dbg !521

if.then432.i:                                     ; preds = %if.end430.i
  %conv433.i = zext i8 %165 to i32, !dbg !522
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !523) nounwind, !dbg !524
  %and.i.i = and i32 %conv433.i, 1, !dbg !525
  %tobool.i.i = icmp eq i32 %and.i.i, 0, !dbg !525
  br i1 %tobool.i.i, label %cont6.i.i, label %cont4.i.i, !dbg !525

cont4.i.i:                                        ; preds = %if.then432.i
  call void @llvm.dbg.value(metadata !378, i64 0, metadata !523) nounwind, !dbg !526
  store i8 83, i8* getelementptr inbounds ([9 x i8]* @client_fqdn_flags.buf, i32 0, i32 0), align 1, !dbg !526, !tbaa !206
  br label %cont6.i.i, !dbg !526

cont6.i.i:                                        ; preds = %cont4.i.i, %if.then432.i
  %i.0.i.i = phi i32 [ 1, %cont4.i.i ], [ 0, %if.then432.i ]
  %and7.i.i = and i32 %conv433.i, 2, !dbg !527
  %tobool8.i.i = icmp eq i32 %and7.i.i, 0, !dbg !527
  br i1 %tobool8.i.i, label %cont17.i.i, label %cont11.i.i, !dbg !527

cont11.i.i:                                       ; preds = %cont6.i.i
  %166 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0.i.i, i32 1) nounwind, !dbg !528
  %167 = extractvalue { i32, i1 } %166, 0, !dbg !528
  %168 = extractvalue { i32, i1 } %166, 1, !dbg !528
  br i1 %168, label %ioc_bb12.i.i, label %cont13.i.i, !dbg !528

ioc_bb12.i.i:                                     ; preds = %cont11.i.i
  %169 = zext i32 %i.0.i.i to i64, !dbg !528
  call void @__ioc_report_add_overflow(i32 750, i32 10, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %169, i64 1, i8 13) nounwind, !dbg !528
  br label %cont13.i.i, !dbg !528

cont13.i.i:                                       ; preds = %ioc_bb12.i.i, %cont11.i.i
  call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !523) nounwind, !dbg !528
  %arrayidx14.i.i = getelementptr inbounds [9 x i8]* @client_fqdn_flags.buf, i32 0, i32 %i.0.i.i, !dbg !528
  store i8 79, i8* %arrayidx14.i.i, align 1, !dbg !528, !tbaa !206
  br label %cont17.i.i, !dbg !528

cont17.i.i:                                       ; preds = %cont13.i.i, %cont6.i.i
  %i.1.i.i = phi i32 [ %167, %cont13.i.i ], [ %i.0.i.i, %cont6.i.i ]
  %and18.i.i = and i32 %conv433.i, 4, !dbg !529
  %tobool19.i.i = icmp eq i32 %and18.i.i, 0, !dbg !529
  br i1 %tobool19.i.i, label %cont28.i.i, label %cont22.i.i, !dbg !529

cont22.i.i:                                       ; preds = %cont17.i.i
  %170 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1.i.i, i32 1) nounwind, !dbg !530
  %171 = extractvalue { i32, i1 } %170, 0, !dbg !530
  %172 = extractvalue { i32, i1 } %170, 1, !dbg !530
  br i1 %172, label %ioc_bb23.i.i, label %cont24.i.i, !dbg !530

ioc_bb23.i.i:                                     ; preds = %cont22.i.i
  %173 = sext i32 %i.1.i.i to i64, !dbg !530
  call void @__ioc_report_add_overflow(i32 752, i32 10, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %173, i64 1, i8 13) nounwind, !dbg !530
  br label %cont24.i.i, !dbg !530

cont24.i.i:                                       ; preds = %ioc_bb23.i.i, %cont22.i.i
  call void @llvm.dbg.value(metadata !{i32 %171}, i64 0, metadata !523) nounwind, !dbg !530
  %arrayidx25.i.i = getelementptr inbounds [9 x i8]* @client_fqdn_flags.buf, i32 0, i32 %i.1.i.i, !dbg !530
  store i8 69, i8* %arrayidx25.i.i, align 1, !dbg !530, !tbaa !206
  br label %cont28.i.i, !dbg !530

cont28.i.i:                                       ; preds = %cont24.i.i, %cont17.i.i
  %i.2.i.i = phi i32 [ %171, %cont24.i.i ], [ %i.1.i.i, %cont17.i.i ]
  %and29.i.i = and i32 %conv433.i, 8, !dbg !531
  %tobool30.i.i = icmp eq i32 %and29.i.i, 0, !dbg !531
  br i1 %tobool30.i.i, label %client_fqdn_flags.exit.i, label %cont33.i.i, !dbg !531

cont33.i.i:                                       ; preds = %cont28.i.i
  %174 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2.i.i, i32 1) nounwind, !dbg !532
  %175 = extractvalue { i32, i1 } %174, 0, !dbg !532
  %176 = extractvalue { i32, i1 } %174, 1, !dbg !532
  br i1 %176, label %ioc_bb34.i.i, label %cont35.i.i, !dbg !532

ioc_bb34.i.i:                                     ; preds = %cont33.i.i
  %177 = sext i32 %i.2.i.i to i64, !dbg !532
  call void @__ioc_report_add_overflow(i32 754, i32 10, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %177, i64 1, i8 13) nounwind, !dbg !532
  br label %cont35.i.i, !dbg !532

cont35.i.i:                                       ; preds = %ioc_bb34.i.i, %cont33.i.i
  call void @llvm.dbg.value(metadata !{i32 %175}, i64 0, metadata !523) nounwind, !dbg !532
  %arrayidx36.i.i = getelementptr inbounds [9 x i8]* @client_fqdn_flags.buf, i32 0, i32 %i.2.i.i, !dbg !532
  store i8 78, i8* %arrayidx36.i.i, align 1, !dbg !532, !tbaa !206
  br label %client_fqdn_flags.exit.i, !dbg !532

client_fqdn_flags.exit.i:                         ; preds = %cont35.i.i, %cont28.i.i
  %i.3.i.i = phi i32 [ %175, %cont35.i.i ], [ %i.2.i.i, %cont28.i.i ]
  %arrayidx40.i.i = getelementptr inbounds [9 x i8]* @client_fqdn_flags.buf, i32 0, i32 %i.3.i.i, !dbg !533
  store i8 0, i8* %arrayidx40.i.i, align 1, !dbg !533, !tbaa !206
  %call435.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @client_fqdn_flags.buf, i32 0, i32 0)) nounwind, !dbg !522
  br label %if.end436.i, !dbg !522

if.end436.i:                                      ; preds = %client_fqdn_flags.exit.i, %if.end430.i
  %incdec.ptr437.i = getelementptr inbounds i8* %bp.addr.3.i, i32 1, !dbg !534
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr437.i}, i64 0, metadata !295) nounwind, !dbg !534
  %178 = load i8* %incdec.ptr437.i, align 1, !dbg !535, !tbaa !206
  %add.ptr441.i = getelementptr inbounds i8* %bp.addr.3.i, i32 2, !dbg !535
  %179 = load i8* %add.ptr441.i, align 1, !dbg !535, !tbaa !206
  %180 = or i8 %179, %178, !dbg !535
  %181 = icmp eq i8 %180, 0, !dbg !535
  br i1 %181, label %if.end449.i, label %if.then444.i, !dbg !535

if.then444.i:                                     ; preds = %if.end436.i
  %conv445.i = zext i8 %178 to i32, !dbg !536
  %conv447.i = zext i8 %179 to i32, !dbg !536
  %call448.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str55, i32 0, i32 0), i32 %conv445.i, i32 %conv447.i) nounwind, !dbg !536
  br label %if.end449.i, !dbg !536

if.end449.i:                                      ; preds = %if.then444.i, %if.end436.i
  %add.ptr450.i = getelementptr inbounds i8* %bp.addr.3.i, i32 3, !dbg !537
  call void @llvm.dbg.value(metadata !{i8* %add.ptr450.i}, i64 0, metadata !295) nounwind, !dbg !537
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !538) nounwind, !dbg !540
  %182 = load %struct._IO_FILE** @stdout, align 4, !dbg !541, !tbaa !205
  %call.i879.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %182) nounwind, !dbg !541
  %183 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0.i, i32 3) nounwind, !dbg !542
  %184 = extractvalue { i32, i1 } %183, 0, !dbg !542
  %185 = extractvalue { i32, i1 } %183, 1, !dbg !542
  %186 = zext i32 %len.0.i to i64, !dbg !542
  br i1 %185, label %ioc_bb454.i, label %cont455.i, !dbg !542

ioc_bb454.i:                                      ; preds = %if.end449.i
  call void @__ioc_report_sub_overflow(i32 511, i32 34, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %186, i64 3, i8 5) nounwind, !dbg !542
  br label %cont455.i, !dbg !542

cont455.i:                                        ; preds = %ioc_bb454.i, %if.end449.i
  %187 = load %struct.netdissect_options** @gndo, align 4, !dbg !542, !tbaa !205
  %ndo_snapend456.i = getelementptr inbounds %struct.netdissect_options* %187, i32 0, i32 45, !dbg !542
  %188 = load i8** %ndo_snapend456.i, align 4, !dbg !542, !tbaa !205
  %call457.i = call i32 @fn_printn(i8* %add.ptr450.i, i32 %184, i8* %188) nounwind, !dbg !542
  %tobool458.i = icmp eq i32 %call457.i, 0, !dbg !542
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !543) nounwind, !dbg !546
  %189 = load %struct._IO_FILE** @stdout, align 4, !dbg !547, !tbaa !205
  %call.i880.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %189) nounwind, !dbg !547
  br i1 %tobool458.i, label %cont464.i, label %trunc.i, !dbg !542

cont464.i:                                        ; preds = %cont455.i
  br i1 %185, label %ioc_bb465.i, label %cont469.i, !dbg !548

ioc_bb465.i:                                      ; preds = %cont464.i
  call void @__ioc_report_sub_overflow(i32 516, i32 23, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %186, i64 3, i8 5) nounwind, !dbg !548
  br label %cont469.i, !dbg !548

cont469.i:                                        ; preds = %ioc_bb465.i, %cont464.i
  %add.ptr450.sum.i = add i32 %184, 3, !dbg !548
  %add.ptr467.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %add.ptr450.sum.i, !dbg !548
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !549
  br label %land.rhs.backedge.i, !dbg !550

cont472.i:                                        ; preds = %sw.bb382.i
  %cmp473.i = icmp eq i32 %len.0.i, 0, !dbg !551
  br i1 %cmp473.i, label %cont477.i, label %if.end479.i, !dbg !551

cont477.i:                                        ; preds = %cont472.i
  %call478.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str52, i32 0, i32 0), i32 61, i32 0) nounwind, !dbg !552
  br label %land.rhs.backedge.i, !dbg !554

if.end479.i:                                      ; preds = %cont472.i
  %incdec.ptr480.i = getelementptr inbounds i8* %bp.addr.3.i, i32 1, !dbg !555
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr480.i}, i64 0, metadata !295) nounwind, !dbg !555
  %190 = load i8* %bp.addr.3.i, align 1, !dbg !555, !tbaa !206
  %conv481.i = zext i8 %190 to i32, !dbg !555
  call void @llvm.dbg.value(metadata !{i32 %conv481.i}, i64 0, metadata !556) nounwind, !dbg !555
  %191 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0.i, i32 1) nounwind, !dbg !557
  %192 = extractvalue { i32, i1 } %191, 0, !dbg !557
  %193 = extractvalue { i32, i1 } %191, 1, !dbg !557
  br i1 %193, label %ioc_bb482.i, label %cont483.i, !dbg !557

ioc_bb482.i:                                      ; preds = %if.end479.i
  %194 = zext i32 %len.0.i to i64, !dbg !557
  call void @__ioc_report_sub_overflow(i32 529, i32 16, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %194, i64 1, i8 5) nounwind, !dbg !557
  br label %cont483.i, !dbg !557

cont483.i:                                        ; preds = %ioc_bb482.i, %if.end479.i
  call void @llvm.dbg.value(metadata !{i32 %192}, i64 0, metadata !324) nounwind, !dbg !557
  %cmp484.i = icmp eq i8 %190, 0, !dbg !558
  br i1 %cmp484.i, label %if.then486.i, label %if.else498.i, !dbg !558

if.then486.i:                                     ; preds = %cont483.i
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !559) nounwind, !dbg !562
  %195 = load %struct._IO_FILE** @stdout, align 4, !dbg !563, !tbaa !205
  %call.i881.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %195) nounwind, !dbg !563
  %196 = load %struct.netdissect_options** @gndo, align 4, !dbg !564, !tbaa !205
  %ndo_snapend488.i = getelementptr inbounds %struct.netdissect_options* %196, i32 0, i32 45, !dbg !564
  %197 = load i8** %ndo_snapend488.i, align 4, !dbg !564, !tbaa !205
  %call489.i = call i32 @fn_printn(i8* %incdec.ptr480.i, i32 %192, i8* %197) nounwind, !dbg !564
  %tobool490.i = icmp eq i32 %call489.i, 0, !dbg !564
  call void @llvm.dbg.value(metadata !270, i64 0, metadata !565) nounwind, !dbg !568
  %198 = load %struct._IO_FILE** @stdout, align 4, !dbg !569, !tbaa !205
  %call.i882.i = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %198) nounwind, !dbg !569
  br i1 %tobool490.i, label %cont497.i, label %trunc.i, !dbg !564

cont497.i:                                        ; preds = %if.then486.i
  %incdec.ptr480.sum.i = add i32 %192, 1, !dbg !570
  %add.ptr495.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %incdec.ptr480.sum.i, !dbg !570
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !571
  br label %land.rhs.backedge.i, !dbg !572

if.else498.i:                                     ; preds = %cont483.i
  %call499.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([7 x %struct.tok]* @arp2str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str57, i32 0, i32 0), i32 %conv481.i) nounwind, !dbg !573
  %call500.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str56, i32 0, i32 0), i8* %call499.i) nounwind, !dbg !573
  %cmp504926.i = icmp eq i32 %192, 0, !dbg !575
  br i1 %cmp504926.i, label %land.rhs.backedge.i, label %while.body506.i, !dbg !575

while.body506.i:                                  ; preds = %if.else498.i, %cont503.backedge.i
  %bp.addr.11929.i = phi i8* [ %incdec.ptr513.i, %cont503.backedge.i ], [ %incdec.ptr480.i, %if.else498.i ]
  %len.8928.i = phi i32 [ %202, %cont503.backedge.i ], [ %192, %if.else498.i ]
  %first.6927.i = phi i1 [ true, %cont503.backedge.i ], [ false, %if.else498.i ]
  br i1 %first.6927.i, label %if.then508.i, label %if.end510.i, !dbg !576

if.then508.i:                                     ; preds = %while.body506.i
  call void @llvm.dbg.value(metadata !578, i64 0, metadata !579) nounwind, !dbg !581
  %199 = load %struct._IO_FILE** @stdout, align 4, !dbg !582, !tbaa !205
  %call.i883.i = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %199) nounwind, !dbg !582
  br label %if.end510.i, !dbg !580

if.end510.i:                                      ; preds = %if.then508.i, %while.body506.i
  %200 = load i8* %bp.addr.11929.i, align 1, !dbg !583, !tbaa !206
  %conv511.i = zext i8 %200 to i32, !dbg !583
  %call512.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0), i32 %conv511.i) nounwind, !dbg !583
  %incdec.ptr513.i = getelementptr inbounds i8* %bp.addr.11929.i, i32 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr513.i}, i64 0, metadata !295) nounwind, !dbg !584
  %201 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.8928.i, i32 1) nounwind, !dbg !585
  %202 = extractvalue { i32, i1 } %201, 0, !dbg !585
  %203 = extractvalue { i32, i1 } %201, 1, !dbg !585
  br i1 %203, label %ioc_bb514.i, label %cont503.backedge.i, !dbg !585

cont503.backedge.i:                               ; preds = %ioc_bb514.i, %if.end510.i
  %cmp504.i = icmp eq i32 %202, 0, !dbg !575
  br i1 %cmp504.i, label %land.rhs.backedge.i, label %while.body506.i, !dbg !575

ioc_bb514.i:                                      ; preds = %if.end510.i
  %204 = zext i32 %len.8928.i to i64, !dbg !585
  call void @__ioc_report_sub_overflow(i32 548, i32 17, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %204, i64 1, i8 5) nounwind, !dbg !585
  br label %cont503.backedge.i, !dbg !585

while.body524.i:                                  ; preds = %cont561.i, %cont521.preheader.i
  %bp.addr.12922.i = phi i8* [ %bp.addr.3.i, %cont521.preheader.i ], [ %add.ptr563.i, %cont561.i ]
  %len.9921.i = phi i32 [ %len.0.i, %cont521.preheader.i ], [ %212, %cont561.i ]
  %incdec.ptr525.i = getelementptr inbounds i8* %bp.addr.12922.i, i32 1, !dbg !586
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr525.i}, i64 0, metadata !295) nounwind, !dbg !586
  %205 = load i8* %bp.addr.12922.i, align 1, !dbg !586, !tbaa !206
  call void @llvm.dbg.value(metadata !{i8 %205}, i64 0, metadata !588) nounwind, !dbg !586
  %incdec.ptr526.i = getelementptr inbounds i8* %bp.addr.12922.i, i32 2, !dbg !589
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr526.i}, i64 0, metadata !295) nounwind, !dbg !589
  %206 = load i8* %incdec.ptr525.i, align 1, !dbg !589, !tbaa !206
  call void @llvm.dbg.value(metadata !{i8 %206}, i64 0, metadata !590) nounwind, !dbg !589
  %207 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.9921.i, i32 2) nounwind, !dbg !591
  %208 = extractvalue { i32, i1 } %207, 0, !dbg !591
  %209 = extractvalue { i32, i1 } %207, 1, !dbg !591
  br i1 %209, label %ioc_bb529.i, label %cont530.i, !dbg !591

ioc_bb529.i:                                      ; preds = %while.body524.i
  %210 = zext i32 %len.9921.i to i64, !dbg !591
  call void @__ioc_report_sub_overflow(i32 559, i32 19, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %210, i64 2, i8 5) nounwind, !dbg !591
  br label %cont530.i, !dbg !591

cont530.i:                                        ; preds = %ioc_bb529.i, %while.body524.i
  call void @llvm.dbg.value(metadata !{i32 %208}, i64 0, metadata !324) nounwind, !dbg !591
  %conv531.i = zext i8 %206 to i32, !dbg !592
  %cmp532.i = icmp ugt i32 %conv531.i, %208, !dbg !592
  %conv535.i = zext i8 %205 to i32, !dbg !593
  %call536.i = call i8* @tok2str(%struct.tok* getelementptr inbounds ([4 x %struct.tok]* @agent_suboption_values, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str59, i32 0, i32 0), i32 %conv535.i) nounwind, !dbg !593
  br i1 %cmp532.i, label %if.then534.i, label %if.end543.i, !dbg !592

if.then534.i:                                     ; preds = %cont530.i
  %call539.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str58, i32 0, i32 0), i8* %call536.i, i32 %conv535.i, i32 %conv531.i) nounwind, !dbg !593
  %incdec.ptr526.sum867.i = add i32 %208, 2, !dbg !595
  %add.ptr540.i = getelementptr inbounds i8* %bp.addr.12922.i, i32 %incdec.ptr526.sum867.i, !dbg !595
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !596
  br label %land.rhs.backedge.i, !dbg !597

if.end543.i:                                      ; preds = %cont530.i
  %call548.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str60, i32 0, i32 0), i8* %call536.i, i32 %conv535.i, i32 %conv531.i) nounwind, !dbg !598
  switch i32 %conv535.i, label %sw.default555.i [
    i32 1, label %sw.bb552.i
    i32 2, label %sw.bb552.i
    i32 6, label %sw.bb552.i
  ], !dbg !599

sw.bb552.i:                                       ; preds = %if.end543.i, %if.end543.i, %if.end543.i
  %call554.i = call i32 @fn_printn(i8* %incdec.ptr526.i, i32 %conv531.i, i8* null) nounwind, !dbg !600
  br label %sw.epilog558.i, !dbg !603

sw.default555.i:                                  ; preds = %if.end543.i
  %call557.i = call i32 @print_unknown_data(i8* %incdec.ptr526.i, i8* getelementptr inbounds ([4 x i8]* @.str61, i32 0, i32 0), i32 %conv531.i) nounwind, !dbg !604
  br label %sw.epilog558.i, !dbg !605

sw.epilog558.i:                                   ; preds = %sw.default555.i, %sw.bb552.i
  %211 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %208, i32 %conv531.i) nounwind, !dbg !606
  %212 = extractvalue { i32, i1 } %211, 0, !dbg !606
  %213 = extractvalue { i32, i1 } %211, 1, !dbg !606
  br i1 %213, label %ioc_bb560.i, label %cont561.i, !dbg !606

ioc_bb560.i:                                      ; preds = %sw.epilog558.i
  %214 = zext i8 %206 to i64, !dbg !606
  %215 = zext i32 %208 to i64, !dbg !606
  call void @__ioc_report_sub_overflow(i32 583, i32 19, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %215, i64 %214, i8 5) nounwind, !dbg !606
  br label %cont561.i, !dbg !606

cont561.i:                                        ; preds = %ioc_bb560.i, %sw.epilog558.i
  call void @llvm.dbg.value(metadata !{i32 %212}, i64 0, metadata !324) nounwind, !dbg !606
  %incdec.ptr526.sum.i = add i32 %conv531.i, 2, !dbg !607
  %add.ptr563.i = getelementptr inbounds i8* %bp.addr.12922.i, i32 %incdec.ptr526.sum.i, !dbg !607
  call void @llvm.dbg.value(metadata !{i8* %add.ptr563.i}, i64 0, metadata !295) nounwind, !dbg !607
  %cmp522.i = icmp ugt i32 %212, 1, !dbg !494
  br i1 %cmp522.i, label %while.body524.i, label %sw.epilog680.i, !dbg !494

cont568.i:                                        ; preds = %sw.bb382.i, %sw.bb382.i
  %cmp569.i = icmp ult i32 %len.0.i, 5, !dbg !608
  br i1 %cmp569.i, label %cont573.i, label %while.body584.i, !dbg !608

cont573.i:                                        ; preds = %cont568.i
  %call574.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str62, i32 0, i32 0), i32 121, i32 %len.0.i) nounwind, !dbg !609
  %add.ptr575.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %len.0.i, !dbg !611
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !612
  br label %land.rhs.backedge.i, !dbg !613

while.body584.i:                                  ; preds = %cont568.i, %cont581.backedge.i
  %bp.addr.13915.i = phi i8* [ %add.ptr665.i, %cont581.backedge.i ], [ %bp.addr.3.i, %cont568.i ]
  %len.10914.i = phi i32 [ %238, %cont581.backedge.i ], [ %len.0.i, %cont568.i ]
  %first.7913.i = phi i1 [ true, %cont581.backedge.i ], [ false, %cont568.i ]
  br i1 %first.7913.i, label %if.then586.i, label %if.end588.i, !dbg !614

if.then586.i:                                     ; preds = %while.body584.i
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !616) nounwind, !dbg !618
  %216 = load %struct._IO_FILE** @stdout, align 4, !dbg !619, !tbaa !205
  %call.i884.i = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %216) nounwind, !dbg !619
  br label %if.end588.i, !dbg !617

if.end588.i:                                      ; preds = %while.body584.i, %if.then586.i
  %incdec.ptr589.i = getelementptr inbounds i8* %bp.addr.13915.i, i32 1, !dbg !620
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr589.i}, i64 0, metadata !295) nounwind, !dbg !620
  %217 = load i8* %bp.addr.13915.i, align 1, !dbg !620, !tbaa !206
  %conv590.i = zext i8 %217 to i32, !dbg !620
  call void @llvm.dbg.value(metadata !{i32 %conv590.i}, i64 0, metadata !621) nounwind, !dbg !620
  %218 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.10914.i, i32 1) nounwind, !dbg !622
  %219 = extractvalue { i32, i1 } %218, 0, !dbg !622
  %220 = extractvalue { i32, i1 } %218, 1, !dbg !622
  br i1 %220, label %ioc_bb591.i, label %cont594.i, !dbg !622

ioc_bb591.i:                                      ; preds = %if.end588.i
  %221 = zext i32 %len.10914.i to i64, !dbg !622
  call void @__ioc_report_sub_overflow(i32 608, i32 20, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %221, i64 1, i8 5) nounwind, !dbg !622
  br label %cont594.i, !dbg !622

cont594.i:                                        ; preds = %ioc_bb591.i, %if.end588.i
  call void @llvm.dbg.value(metadata !{i32 %219}, i64 0, metadata !324) nounwind, !dbg !622
  %cmp595.i = icmp ugt i8 %217, 32, !dbg !623
  br i1 %cmp595.i, label %if.then597.i, label %cont604.i, !dbg !623

if.then597.i:                                     ; preds = %cont594.i
  %call598.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str63, i32 0, i32 0), i32 %conv590.i) nounwind, !dbg !624
  %incdec.ptr589.sum866.i = add i32 %219, 1, !dbg !626
  %add.ptr599.i = getelementptr inbounds i8* %bp.addr.13915.i, i32 %incdec.ptr589.sum866.i, !dbg !626
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !627
  br label %land.rhs.backedge.i, !dbg !628

cont604.i:                                        ; preds = %cont594.i
  %222 = add nuw i32 %conv590.i, 7, !dbg !629
  %div.i = lshr i32 %222, 3, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !630) nounwind, !dbg !629
  %223 = add nuw i32 %div.i, 4, !dbg !631
  %cmp614.i = icmp ult i32 %219, %223, !dbg !631
  br i1 %cmp614.i, label %cont620.i, label %if.end625.i, !dbg !631

cont620.i:                                        ; preds = %cont604.i
  %call621.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str64, i32 0, i32 0), i32 %219, i32 %223) nounwind, !dbg !632
  %incdec.ptr589.sum.i = add i32 %219, 1, !dbg !634
  %add.ptr622.i = getelementptr inbounds i8* %bp.addr.13915.i, i32 %incdec.ptr589.sum.i, !dbg !634
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !635
  br label %land.rhs.backedge.i, !dbg !636

if.end625.i:                                      ; preds = %cont604.i
  call void @llvm.dbg.value(metadata !637, i64 0, metadata !638) nounwind, !dbg !640
  %224 = load %struct._IO_FILE** @stdout, align 4, !dbg !641, !tbaa !205
  %call.i885.i = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %224) nounwind, !dbg !641
  %cmp629.i = icmp eq i8 %217, 0, !dbg !642
  br i1 %cmp629.i, label %if.then631.i, label %for.cond.preheader.i, !dbg !642

for.cond.preheader.i:                             ; preds = %if.end625.i
  %cmp636900.i = icmp eq i32 %div.i, 0, !dbg !643
  br i1 %cmp636900.i, label %cont652.loopexit.i, label %cont639.i, !dbg !643

if.then631.i:                                     ; preds = %if.end625.i
  %call632.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str65, i32 0, i32 0)) nounwind, !dbg !646
  br label %if.end662.i, !dbg !646

cont639.i:                                        ; preds = %for.cond.preheader.i, %for.cond.backedge.i
  %i.0902.i = phi i32 [ %228, %for.cond.backedge.i ], [ 0, %for.cond.preheader.i ]
  %bp.addr.14901.i = phi i8* [ %incdec.ptr645.i, %for.cond.backedge.i ], [ %incdec.ptr589.i, %for.cond.preheader.i ]
  %cmp640.i = icmp eq i32 %i.0902.i, 0, !dbg !647
  br i1 %cmp640.i, label %if.end644.i, label %if.then642.i, !dbg !647

if.then642.i:                                     ; preds = %cont639.i
  call void @llvm.dbg.value(metadata !649, i64 0, metadata !650) nounwind, !dbg !652
  %225 = load %struct._IO_FILE** @stdout, align 4, !dbg !653, !tbaa !205
  %call.i886.i = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %225) nounwind, !dbg !653
  br label %if.end644.i, !dbg !651

if.end644.i:                                      ; preds = %if.then642.i, %cont639.i
  %incdec.ptr645.i = getelementptr inbounds i8* %bp.addr.14901.i, i32 1, !dbg !654
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr645.i}, i64 0, metadata !295) nounwind, !dbg !654
  %226 = load i8* %bp.addr.14901.i, align 1, !dbg !654, !tbaa !206
  %conv646.i = zext i8 %226 to i32, !dbg !654
  %call647.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %conv646.i) nounwind, !dbg !654
  %227 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0902.i, i32 1) nounwind, !dbg !643
  %228 = extractvalue { i32, i1 } %227, 0, !dbg !643
  %229 = extractvalue { i32, i1 } %227, 1, !dbg !643
  br i1 %229, label %ioc_bb648.i, label %for.cond.backedge.i, !dbg !643

for.cond.backedge.i:                              ; preds = %ioc_bb648.i, %if.end644.i
  %cmp636.i = icmp ult i32 %228, %div.i, !dbg !643
  br i1 %cmp636.i, label %cont639.i, label %cont652.loopexit.i, !dbg !643

ioc_bb648.i:                                      ; preds = %if.end644.i
  %230 = zext i32 %i.0902.i to i64, !dbg !643
  call void @__ioc_report_add_overflow(i32 628, i32 56, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %230, i64 1, i8 5) nounwind, !dbg !643
  br label %for.cond.backedge.i, !dbg !643

cont652.loopexit.i:                               ; preds = %for.cond.backedge.i, %for.cond.preheader.i
  %bp.addr.14.lcssa.i = phi i8* [ %incdec.ptr589.i, %for.cond.preheader.i ], [ %incdec.ptr645.i, %for.cond.backedge.i ]
  %cmp653904.i = icmp ult i32 %222, 32, !dbg !655
  br i1 %cmp653904.i, label %for.body655.i, label %for.end660.i, !dbg !655

for.body655.i:                                    ; preds = %cont652.loopexit.i, %cont652.backedge.i
  %i.1905.i = phi i32 [ %232, %cont652.backedge.i ], [ %div.i, %cont652.loopexit.i ]
  %call656.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str66, i32 0, i32 0)) nounwind, !dbg !657
  %231 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1905.i, i32 1) nounwind, !dbg !655
  %232 = extractvalue { i32, i1 } %231, 0, !dbg !655
  %233 = extractvalue { i32, i1 } %231, 1, !dbg !655
  br i1 %233, label %ioc_bb658.i, label %cont652.backedge.i, !dbg !655

cont652.backedge.i:                               ; preds = %ioc_bb658.i, %for.body655.i
  %cmp653.i = icmp ult i32 %232, 4, !dbg !655
  br i1 %cmp653.i, label %for.body655.i, label %for.end660.i, !dbg !655

ioc_bb658.i:                                      ; preds = %for.body655.i
  %234 = zext i32 %i.1905.i to i64, !dbg !655
  call void @__ioc_report_add_overflow(i32 633, i32 56, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %234, i64 1, i8 5) nounwind, !dbg !655
  br label %cont652.backedge.i, !dbg !655

for.end660.i:                                     ; preds = %cont652.backedge.i, %cont652.loopexit.i
  %call661.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str67, i32 0, i32 0), i32 %conv590.i) nounwind, !dbg !658
  br label %if.end662.i

if.end662.i:                                      ; preds = %for.end660.i, %if.then631.i
  %bp.addr.15.i = phi i8* [ %incdec.ptr589.i, %if.then631.i ], [ %bp.addr.14.lcssa.i, %for.end660.i ]
  %235 = bitcast i8* %bp.addr.15.i to i32*, !dbg !659
  %236 = load i32* %235, align 1, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !418) nounwind, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !418) nounwind, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !418) nounwind, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !418) nounwind, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !108), !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !108), !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !108), !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !108), !dbg !659
  store i32 %236, i32* %ul.i, align 4, !dbg !659
  %call663.i = call i8* @getname(i8* %60) nounwind, !dbg !660
  %call664.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0), i8* %call663.i) nounwind, !dbg !660
  %add.ptr665.i = getelementptr inbounds i8* %bp.addr.15.i, i32 4, !dbg !661
  call void @llvm.dbg.value(metadata !{i8* %add.ptr665.i}, i64 0, metadata !295) nounwind, !dbg !661
  %237 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %219, i32 %223) nounwind, !dbg !662
  %238 = extractvalue { i32, i1 } %237, 0, !dbg !662
  %239 = extractvalue { i32, i1 } %237, 1, !dbg !662
  br i1 %239, label %ioc_bb670.i, label %cont581.backedge.i, !dbg !662

cont581.backedge.i:                               ; preds = %ioc_bb670.i, %if.end662.i
  %cmp582.i = icmp eq i32 %238, 0, !dbg !663
  br i1 %cmp582.i, label %land.rhs.backedge.i, label %while.body584.i, !dbg !663

ioc_bb670.i:                                      ; preds = %if.end662.i
  %240 = zext i32 %223 to i64, !dbg !662
  %241 = zext i32 %219 to i64, !dbg !662
  call void @__ioc_report_sub_overflow(i32 640, i32 21, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %241, i64 %240, i8 5) nounwind, !dbg !662
  br label %cont581.backedge.i, !dbg !662

sw.default673.i:                                  ; preds = %sw.bb382.i
  %call675.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str69, i32 0, i32 0), i32 %conv51.i, i32 %len.0.i) nounwind, !dbg !664
  %add.ptr676.i = getelementptr inbounds i8* %bp.addr.3.i, i32 %len.0.i, !dbg !666
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324) nounwind, !dbg !667
  br label %land.rhs.backedge.i, !dbg !668

sw.epilog680.i:                                   ; preds = %while.cond257.backedge.i, %cont292.backedge.i, %while.cond314.backedge.i, %cont561.i, %cont414.i, %cont397.i, %cont521.preheader.i, %while.cond314.preheader.i, %cont292.preheader.i, %while.cond257.preheader.i
  %len.11.i = phi i32 [ %161, %cont414.i ], [ %155, %cont397.i ], [ %len.0.i, %cont521.preheader.i ], [ %len.0.i, %while.cond314.preheader.i ], [ %len.0.i, %cont292.preheader.i ], [ %len.0.i, %while.cond257.preheader.i ], [ %212, %cont561.i ], [ %136, %while.cond314.backedge.i ], [ %128, %cont292.backedge.i ], [ %119, %while.cond257.backedge.i ]
  %bp.addr.16.i = phi i8* [ %incdec.ptr411.i, %cont414.i ], [ %incdec.ptr394.i, %cont397.i ], [ %bp.addr.3.i, %cont521.preheader.i ], [ %bp.addr.3.i, %while.cond314.preheader.i ], [ %bp.addr.3.i, %cont292.preheader.i ], [ %bp.addr.3.i, %while.cond257.preheader.i ], [ %add.ptr563.i, %cont561.i ], [ %add.ptr325.i, %while.cond314.backedge.i ], [ %add.ptr305.i, %cont292.backedge.i ], [ %add.ptr283.i, %while.cond257.backedge.i ]
  %tobool681.i = icmp eq i32 %len.11.i, 0, !dbg !669
  br i1 %tobool681.i, label %land.rhs.backedge.i, label %if.then682.i, !dbg !669

land.rhs.backedge.i:                              ; preds = %cont356.backedge.i, %cont332.backedge.i, %cont503.backedge.i, %cont581.backedge.i, %cont168.i, %if.end212.i, %sw.epilog680.i, %if.else498.i, %if.then682.i, %sw.default673.i, %cont620.i, %if.then597.i, %cont573.i, %if.then534.i, %cont497.i, %cont477.i, %cont469.i, %cont425.i, %cont408.i, %cont391.i, %cont253.i, %cont332.preheader.i, %cont356.preheader.i, %cont198.preheader.i, %if.then152.i, %land.lhs.true.i
  %bp.addr.0.be.i = phi i8* [ %incdec.ptr.i, %land.lhs.true.i ], [ %incdec.ptr153.i, %if.then152.i ], [ %add.ptr684.i, %if.then682.i ], [ %add.ptr676.i, %sw.default673.i ], [ %add.ptr575.i, %cont573.i ], [ %add.ptr599.i, %if.then597.i ], [ %add.ptr622.i, %cont620.i ], [ %add.ptr540.i, %if.then534.i ], [ %bp.addr.3.i, %cont477.i ], [ %add.ptr495.i, %cont497.i ], [ %add.ptr427.i, %cont425.i ], [ %add.ptr467.i, %cont469.i ], [ %bp.addr.3.i, %cont408.i ], [ %bp.addr.3.i, %cont391.i ], [ %add.ptr251.i, %cont253.i ], [ %bp.addr.3.i, %cont198.preheader.i ], [ %bp.addr.3.i, %cont332.preheader.i ], [ %bp.addr.3.i, %cont356.preheader.i ], [ %incdec.ptr480.i, %if.else498.i ], [ %bp.addr.16.i, %sw.epilog680.i ], [ %add.ptr207.i, %if.end212.i ], [ %bp.addr.4.i, %cont168.i ], [ %add.ptr665.i, %cont581.backedge.i ], [ %incdec.ptr513.i, %cont503.backedge.i ], [ %incdec.ptr347.i, %cont332.backedge.i ], [ %incdec.ptr378.i, %cont356.backedge.i ]
  %242 = load %struct.netdissect_options** @gndo, align 4, !dbg !303, !tbaa !205
  %ndo_snapend.i = getelementptr inbounds %struct.netdissect_options* %242, i32 0, i32 45, !dbg !303
  %243 = load i8** %ndo_snapend.i, align 4, !dbg !303, !tbaa !205
  %add.ptr3.i = getelementptr inbounds i8* %243, i32 -1, !dbg !303
  %cmp7.i = icmp ugt i8* %bp.addr.0.be.i, %add.ptr3.i, !dbg !303
  br i1 %cmp7.i, label %return, label %while.body.i

if.then682.i:                                     ; preds = %sw.epilog680.i
  %call683.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str70, i32 0, i32 0), i32 %len.11.i) nounwind, !dbg !670
  %add.ptr684.i = getelementptr inbounds i8* %bp.addr.16.i, i32 %len.11.i, !dbg !672
  call void @llvm.dbg.value(metadata !{i8* %add.ptr684.i}, i64 0, metadata !295) nounwind, !dbg !672
  br label %land.rhs.backedge.i, !dbg !673

trunc.i:                                          ; preds = %if.then486.i, %cont455.i, %sw.bb.i, %land.lhs.true70.i, %land.lhs.true35.i
  %call687.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str71, i32 0, i32 0)) nounwind, !dbg !674
  br label %return, !dbg !675

if.else:                                          ; preds = %if.end284
  %call295 = call i32 @memcmp(i8* %bp_vend, i8* getelementptr inbounds ([4 x i8]* @bootp_print.vm_cmu, i32 0, i32 0), i32 4) nounwind readonly, !dbg !676
  %cmp296 = icmp eq i32 %call295, 0, !dbg !676
  br i1 %cmp296, label %if.then298, label %if.else301, !dbg !676

if.then298:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i8* %bp_vend}, i64 0, metadata !677) nounwind, !dbg !679
  %call.i361 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0)) nounwind, !dbg !680
  %244 = load %struct.netdissect_options** @gndo, align 4, !dbg !681, !tbaa !205
  %ndo_snapend.i362 = getelementptr inbounds %struct.netdissect_options* %244, i32 0, i32 45, !dbg !681
  %245 = load i8** %ndo_snapend.i362, align 4, !dbg !681, !tbaa !205
  %add.ptr.i363 = getelementptr inbounds i8* %245, i32 -4, !dbg !681
  %v_flags.i = getelementptr inbounds i8* %cp, i32 240, !dbg !681
  %246 = bitcast i8* %v_flags.i to i32*, !dbg !681
  %cmp4.i = icmp ugt i8* %v_flags.i, %add.ptr.i363, !dbg !681
  br i1 %cmp4.i, label %trunc.i373, label %if.end.i, !dbg !681

if.end.i:                                         ; preds = %if.then298
  %247 = load i32* %246, align 1, !dbg !682, !tbaa !216
  call void @__ioc_report_conversion(i32 679, i32 25, i8* getelementptr inbounds ([21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i64 -2, i8 1) nounwind, !dbg !682
  %cmp8.i = icmp ugt i32 %247, 1, !dbg !682
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true17.i, !dbg !682

if.then9.i:                                       ; preds = %if.end.i
  %248 = load i32* %246, align 1, !dbg !683, !tbaa !216
  %call11.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str21, i32 0, i32 0), i32 %248) nounwind, !dbg !683
  br label %land.lhs.true17.i, !dbg !683

land.lhs.true17.i:                                ; preds = %if.then9.i, %if.end.i
  %249 = load %struct.netdissect_options** @gndo, align 4, !dbg !684, !tbaa !205
  %ndo_snapend13.i = getelementptr inbounds %struct.netdissect_options* %249, i32 0, i32 45, !dbg !684
  %250 = load i8** %ndo_snapend13.i, align 4, !dbg !684, !tbaa !205
  %add.ptr14.i = getelementptr inbounds i8* %250, i32 -4, !dbg !684
  %v_dgate.i = getelementptr inbounds i8* %cp, i32 248, !dbg !684
  %cmp20.i364 = icmp ugt i8* %v_dgate.i, %add.ptr14.i, !dbg !684
  br i1 %cmp20.i364, label %trunc.i373, label %cont25.i, !dbg !684

cont25.i:                                         ; preds = %land.lhs.true17.i
  %s_addr.i = bitcast i8* %v_dgate.i to i32*, !dbg !686
  %251 = load i32* %s_addr.i, align 1, !dbg !686, !tbaa !216
  %cmp26.i = icmp eq i32 %251, 0, !dbg !686
  br i1 %cmp26.i, label %land.lhs.true37.i, label %if.then27.i, !dbg !686

if.then27.i:                                      ; preds = %cont25.i
  %call30.i = call i8* @getname(i8* %v_dgate.i) nounwind, !dbg !687
  %call31.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0), i8* %call30.i) nounwind, !dbg !687
  %.pre.i365 = load %struct.netdissect_options** @gndo, align 4, !dbg !688, !tbaa !205
  %ndo_snapend33.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre.i365, i32 0, i32 45
  %.pre212.i = load i8** %ndo_snapend33.phi.trans.insert.i, align 4, !dbg !688, !tbaa !205
  br label %land.lhs.true37.i, !dbg !687

land.lhs.true37.i:                                ; preds = %if.then27.i, %cont25.i
  %252 = phi i8* [ %.pre212.i, %if.then27.i ], [ %250, %cont25.i ]
  %add.ptr34.i = getelementptr inbounds i8* %252, i32 -4, !dbg !688
  %v_smask.i = getelementptr inbounds i8* %cp, i32 244, !dbg !688
  %cmp40.i = icmp ugt i8* %v_smask.i, %add.ptr34.i, !dbg !688
  br i1 %cmp40.i, label %trunc.i373, label %cont46.i, !dbg !688

cont46.i:                                         ; preds = %land.lhs.true37.i
  %s_addr44.i = bitcast i8* %v_smask.i to i32*, !dbg !690
  %253 = load i32* %s_addr44.i, align 1, !dbg !690, !tbaa !216
  %cmp47.i = icmp eq i32 %253, 0, !dbg !690
  br i1 %cmp47.i, label %land.lhs.true62.i, label %cont51.i, !dbg !690

cont51.i:                                         ; preds = %cont46.i
  %254 = load i32* %246, align 1, !dbg !691, !tbaa !216
  %and52.i = and i32 %254, 1, !dbg !691
  %tobool.i366 = icmp ne i32 %and52.i, 0, !dbg !691
  %cond.i367 = select i1 %tobool.i366, i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), !dbg !691
  %call55.i = call i8* @getname(i8* %v_smask.i) nounwind, !dbg !691
  %call56.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* %cond.i367, i8* %call55.i) nounwind, !dbg !691
  %.pre213.i = load %struct.netdissect_options** @gndo, align 4, !dbg !692, !tbaa !205
  %ndo_snapend58.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre213.i, i32 0, i32 45
  %.pre214.i = load i8** %ndo_snapend58.phi.trans.insert.i, align 4, !dbg !692, !tbaa !205
  br label %land.lhs.true62.i, !dbg !691

land.lhs.true62.i:                                ; preds = %cont51.i, %cont46.i
  %255 = phi i8* [ %.pre214.i, %cont51.i ], [ %252, %cont46.i ]
  %add.ptr59.i = getelementptr inbounds i8* %255, i32 -4, !dbg !692
  %v_dns1.i = getelementptr inbounds i8* %cp, i32 252, !dbg !692
  %cmp65.i = icmp ugt i8* %v_dns1.i, %add.ptr59.i, !dbg !692
  br i1 %cmp65.i, label %trunc.i373, label %cont71.i, !dbg !692

cont71.i:                                         ; preds = %land.lhs.true62.i
  %s_addr69.i = bitcast i8* %v_dns1.i to i32*, !dbg !694
  %256 = load i32* %s_addr69.i, align 1, !dbg !694, !tbaa !216
  %cmp72.i = icmp eq i32 %256, 0, !dbg !694
  br i1 %cmp72.i, label %land.lhs.true83.i, label %if.then73.i, !dbg !694

if.then73.i:                                      ; preds = %cont71.i
  %call76.i = call i8* @getname(i8* %v_dns1.i) nounwind, !dbg !695
  %call77.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* %call76.i) nounwind, !dbg !695
  %.pre215.i = load %struct.netdissect_options** @gndo, align 4, !dbg !696, !tbaa !205
  %ndo_snapend79.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre215.i, i32 0, i32 45
  %.pre216.i = load i8** %ndo_snapend79.phi.trans.insert.i, align 4, !dbg !696, !tbaa !205
  br label %land.lhs.true83.i, !dbg !695

land.lhs.true83.i:                                ; preds = %if.then73.i, %cont71.i
  %257 = phi i8* [ %.pre216.i, %if.then73.i ], [ %255, %cont71.i ]
  %add.ptr80.i = getelementptr inbounds i8* %257, i32 -4, !dbg !696
  %v_dns2.i = getelementptr inbounds i8* %cp, i32 256, !dbg !696
  %cmp86.i = icmp ugt i8* %v_dns2.i, %add.ptr80.i, !dbg !696
  br i1 %cmp86.i, label %trunc.i373, label %cont92.i, !dbg !696

cont92.i:                                         ; preds = %land.lhs.true83.i
  %s_addr90.i = bitcast i8* %v_dns2.i to i32*, !dbg !698
  %258 = load i32* %s_addr90.i, align 1, !dbg !698, !tbaa !216
  %cmp93.i368 = icmp eq i32 %258, 0, !dbg !698
  br i1 %cmp93.i368, label %land.lhs.true104.i, label %if.then94.i, !dbg !698

if.then94.i:                                      ; preds = %cont92.i
  %call97.i = call i8* @getname(i8* %v_dns2.i) nounwind, !dbg !699
  %call98.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* %call97.i) nounwind, !dbg !699
  %.pre217.i = load %struct.netdissect_options** @gndo, align 4, !dbg !700, !tbaa !205
  %ndo_snapend100.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre217.i, i32 0, i32 45
  %.pre218.i = load i8** %ndo_snapend100.phi.trans.insert.i, align 4, !dbg !700, !tbaa !205
  br label %land.lhs.true104.i, !dbg !699

land.lhs.true104.i:                               ; preds = %if.then94.i, %cont92.i
  %259 = phi i8* [ %.pre218.i, %if.then94.i ], [ %257, %cont92.i ]
  %add.ptr101.i = getelementptr inbounds i8* %259, i32 -4, !dbg !700
  %v_ins1.i = getelementptr inbounds i8* %cp, i32 260, !dbg !700
  %cmp107.i369 = icmp ugt i8* %v_ins1.i, %add.ptr101.i, !dbg !700
  br i1 %cmp107.i369, label %trunc.i373, label %cont113.i, !dbg !700

cont113.i:                                        ; preds = %land.lhs.true104.i
  %s_addr111.i = bitcast i8* %v_ins1.i to i32*, !dbg !702
  %260 = load i32* %s_addr111.i, align 1, !dbg !702, !tbaa !216
  %cmp114.i = icmp eq i32 %260, 0, !dbg !702
  br i1 %cmp114.i, label %land.lhs.true125.i, label %if.then115.i, !dbg !702

if.then115.i:                                     ; preds = %cont113.i
  %call118.i = call i8* @getname(i8* %v_ins1.i) nounwind, !dbg !703
  %call119.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i8* %call118.i) nounwind, !dbg !703
  %.pre219.i = load %struct.netdissect_options** @gndo, align 4, !dbg !704, !tbaa !205
  %ndo_snapend121.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre219.i, i32 0, i32 45
  %.pre220.i = load i8** %ndo_snapend121.phi.trans.insert.i, align 4, !dbg !704, !tbaa !205
  br label %land.lhs.true125.i, !dbg !703

land.lhs.true125.i:                               ; preds = %if.then115.i, %cont113.i
  %261 = phi i8* [ %.pre220.i, %if.then115.i ], [ %259, %cont113.i ]
  %add.ptr122.i = getelementptr inbounds i8* %261, i32 -4, !dbg !704
  %v_ins2.i = getelementptr inbounds i8* %cp, i32 264, !dbg !704
  %cmp128.i = icmp ugt i8* %v_ins2.i, %add.ptr122.i, !dbg !704
  br i1 %cmp128.i, label %trunc.i373, label %cont134.i, !dbg !704

cont134.i:                                        ; preds = %land.lhs.true125.i
  %s_addr132.i = bitcast i8* %v_ins2.i to i32*, !dbg !706
  %262 = load i32* %s_addr132.i, align 1, !dbg !706, !tbaa !216
  %cmp135.i = icmp eq i32 %262, 0, !dbg !706
  br i1 %cmp135.i, label %land.lhs.true146.i, label %if.then136.i, !dbg !706

if.then136.i:                                     ; preds = %cont134.i
  %call139.i = call i8* @getname(i8* %v_ins2.i) nounwind, !dbg !707
  %call140.i370 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i8* %call139.i) nounwind, !dbg !707
  %.pre221.i = load %struct.netdissect_options** @gndo, align 4, !dbg !708, !tbaa !205
  %ndo_snapend142.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre221.i, i32 0, i32 45
  %.pre222.i = load i8** %ndo_snapend142.phi.trans.insert.i, align 4, !dbg !708, !tbaa !205
  br label %land.lhs.true146.i, !dbg !707

land.lhs.true146.i:                               ; preds = %if.then136.i, %cont134.i
  %263 = phi i8* [ %.pre222.i, %if.then136.i ], [ %261, %cont134.i ]
  %add.ptr143.i = getelementptr inbounds i8* %263, i32 -4, !dbg !708
  %v_ts1.i = getelementptr inbounds i8* %cp, i32 268, !dbg !708
  %cmp149.i = icmp ugt i8* %v_ts1.i, %add.ptr143.i, !dbg !708
  br i1 %cmp149.i, label %trunc.i373, label %cont155.i, !dbg !708

cont155.i:                                        ; preds = %land.lhs.true146.i
  %s_addr153.i = bitcast i8* %v_ts1.i to i32*, !dbg !710
  %264 = load i32* %s_addr153.i, align 1, !dbg !710, !tbaa !216
  %cmp156.i = icmp eq i32 %264, 0, !dbg !710
  br i1 %cmp156.i, label %land.lhs.true167.i, label %if.then157.i, !dbg !710

if.then157.i:                                     ; preds = %cont155.i
  %call160.i = call i8* @getname(i8* %v_ts1.i) nounwind, !dbg !711
  %call161.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0), i8* %call160.i) nounwind, !dbg !711
  %.pre223.i = load %struct.netdissect_options** @gndo, align 4, !dbg !712, !tbaa !205
  %ndo_snapend163.phi.trans.insert.i = getelementptr inbounds %struct.netdissect_options* %.pre223.i, i32 0, i32 45
  %.pre224.i = load i8** %ndo_snapend163.phi.trans.insert.i, align 4, !dbg !712, !tbaa !205
  br label %land.lhs.true167.i, !dbg !711

land.lhs.true167.i:                               ; preds = %if.then157.i, %cont155.i
  %265 = phi i8* [ %.pre224.i, %if.then157.i ], [ %263, %cont155.i ]
  %add.ptr164.i = getelementptr inbounds i8* %265, i32 -4, !dbg !712
  %v_ts2.i = getelementptr inbounds i8* %cp, i32 272, !dbg !712
  %cmp170.i = icmp ugt i8* %v_ts2.i, %add.ptr164.i, !dbg !712
  br i1 %cmp170.i, label %trunc.i373, label %cont176.i, !dbg !712

cont176.i:                                        ; preds = %land.lhs.true167.i
  %s_addr174.i = bitcast i8* %v_ts2.i to i32*, !dbg !714
  %266 = load i32* %s_addr174.i, align 1, !dbg !714, !tbaa !216
  %cmp177.i371 = icmp eq i32 %266, 0, !dbg !714
  br i1 %cmp177.i371, label %return, label %if.then178.i, !dbg !714

if.then178.i:                                     ; preds = %cont176.i
  %call181.i = call i8* @getname(i8* %v_ts2.i) nounwind, !dbg !715
  %call182.i372 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* %call181.i) nounwind, !dbg !715
  br label %return, !dbg !715

trunc.i373:                                       ; preds = %land.lhs.true167.i, %land.lhs.true146.i, %land.lhs.true125.i, %land.lhs.true104.i, %land.lhs.true83.i, %land.lhs.true62.i, %land.lhs.true37.i, %land.lhs.true17.i, %if.then298
  %267 = load %struct._IO_FILE** @stdout, align 4, !dbg !716, !tbaa !205
  %call184.i = call i32 @fputs(i8* getelementptr inbounds ([10 x i8]* @tstr, i32 0, i32 0), %struct._IO_FILE* %267) nounwind, !dbg !716
  br label %return, !dbg !717

if.else301:                                       ; preds = %if.else
  %268 = bitcast i8* %bp_vend to i32*, !dbg !718
  %269 = load i32* %268, align 4, !dbg !718, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32 %269}, i64 0, metadata !719) nounwind, !dbg !720
  %270 = call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %269) nounwind, !dbg !721, !srcloc !230
  call void @llvm.dbg.value(metadata !{i32 %270}, i64 0, metadata !719) nounwind, !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %270}, i64 0, metadata !62), !dbg !718
  %cmp304 = icmp eq i32 %270, 0, !dbg !722
  br i1 %cmp304, label %return, label %if.then306, !dbg !722

if.then306:                                       ; preds = %if.else301
  %call307 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str19, i32 0, i32 0), i32 %270) nounwind, !dbg !723
  br label %return, !dbg !723

trunc:                                            ; preds = %land.lhs.true25, %land.lhs.true200, %land.lhs.true277, %land.lhs.true248, %land.lhs.true219, %land.lhs.true170, %land.lhs.true150, %land.lhs.true130, %land.lhs.true111, %land.lhs.true44, %entry
  %271 = load %struct._IO_FILE** @stdout, align 4, !dbg !724, !tbaa !205
  %call311 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8]* @tstr, i32 0, i32 0), %struct._IO_FILE* %271) nounwind, !dbg !724
  br label %return, !dbg !725

return:                                           ; preds = %land.rhs.backedge.i, %land.lhs.true18.i, %trunc.i, %if.then139.i, %if.then290, %trunc.i373, %if.then178.i, %cont176.i, %if.else301, %if.end35, %if.then306, %trunc, %if.then266, %if.then237
  ret void, !dbg !725
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @printf(i8* nocapture, ...) nounwind

declare i8* @tok2str(%struct.tok*, i8*, i32)

declare i8* @etheraddr_string(i8*)

declare i8* @bittok2str(%struct.tok*, i8*, i32)

declare i8* @getname(i8*)

declare i32 @fn_print(i8*, i8*)

declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) nounwind

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @fn_printn(i8*, i32, i8*)

declare i32 @print_unknown_data(i8*, i8*, i32)

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"../src/print-bootp.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", metadata !"clang version 3.2  (https://github.com/jikk/ioc-llvm.git 05d0e47f00295acc4df8088f9c0d935861988ed4)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !156} ; [ DW_TAG_compile_unit ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !64, metadata !93, metadata !126, metadata !135, metadata !142, metadata !149}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bootp_print", metadata !"bootp_print", metadata !"", metadata !6, i32 47, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @bootp_print, null, null, metadata !17, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [bootp_print]
!6 = metadata !{i32 786473, metadata !"../src/print-bootp.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !14}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u_char]
!11 = metadata !{i32 786454, null, metadata !"u_char", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!12 = metadata !{i32 786454, null, metadata !"__u_char", metadata !6, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!13 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!14 = metadata !{i32 786454, null, metadata !"u_int", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [u_int] [line 36, size 0, align 0, offset 0] [from __u_int]
!15 = metadata !{i32 786454, null, metadata !"__u_int", metadata !6, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [__u_int] [line 33, size 0, align 0, offset 0] [from unsigned int]
!16 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !62}
!19 = metadata !{i32 786689, metadata !5, metadata !"cp", metadata !6, i32 16777263, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 47]
!20 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 33554479, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 47]
!21 = metadata !{i32 786688, metadata !22, metadata !"bp", metadata !6, i32 49, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 49]
!22 = metadata !{i32 786443, metadata !5, i32 48, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!24 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from bootp]
!25 = metadata !{i32 786451, null, metadata !"bootp", metadata !26, i32 23, i64 2400, i64 8, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_structure_type ] [bootp] [line 23, size 2400, align 8, offset 0] [from ]
!26 = metadata !{i32 786473, metadata !"../src/bootp.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28, metadata !30, metadata !31, metadata !32, metadata !33, metadata !35, metadata !38, metadata !39, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !57, metadata !61}
!28 = metadata !{i32 786445, metadata !25, metadata !"bp_op", metadata !26, i32 24, i64 8, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [bp_op] [line 24, size 8, align 8, offset 0] [from u_int8_t]
!29 = metadata !{i32 786454, null, metadata !"u_int8_t", metadata !26, i32 201, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [u_int8_t] [line 201, size 0, align 0, offset 0] [from unsigned char]
!30 = metadata !{i32 786445, metadata !25, metadata !"bp_htype", metadata !26, i32 25, i64 8, i64 8, i64 8, i32 0, metadata !29} ; [ DW_TAG_member ] [bp_htype] [line 25, size 8, align 8, offset 8] [from u_int8_t]
!31 = metadata !{i32 786445, metadata !25, metadata !"bp_hlen", metadata !26, i32 26, i64 8, i64 8, i64 16, i32 0, metadata !29} ; [ DW_TAG_member ] [bp_hlen] [line 26, size 8, align 8, offset 16] [from u_int8_t]
!32 = metadata !{i32 786445, metadata !25, metadata !"bp_hops", metadata !26, i32 27, i64 8, i64 8, i64 24, i32 0, metadata !29} ; [ DW_TAG_member ] [bp_hops] [line 27, size 8, align 8, offset 24] [from u_int8_t]
!33 = metadata !{i32 786445, metadata !25, metadata !"bp_xid", metadata !26, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [bp_xid] [line 28, size 32, align 32, offset 32] [from u_int32_t]
!34 = metadata !{i32 786454, null, metadata !"u_int32_t", metadata !26, i32 203, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u_int32_t] [line 203, size 0, align 0, offset 0] [from unsigned int]
!35 = metadata !{i32 786445, metadata !25, metadata !"bp_secs", metadata !26, i32 29, i64 16, i64 16, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [bp_secs] [line 29, size 16, align 16, offset 64] [from u_int16_t]
!36 = metadata !{i32 786454, null, metadata !"u_int16_t", metadata !26, i32 202, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [u_int16_t] [line 202, size 0, align 0, offset 0] [from unsigned short]
!37 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!38 = metadata !{i32 786445, metadata !25, metadata !"bp_flags", metadata !26, i32 30, i64 16, i64 16, i64 80, i32 0, metadata !36} ; [ DW_TAG_member ] [bp_flags] [line 30, size 16, align 16, offset 80] [from u_int16_t]
!39 = metadata !{i32 786445, metadata !25, metadata !"bp_ciaddr", metadata !26, i32 32, i64 32, i64 32, i64 96, i32 0, metadata !40} ; [ DW_TAG_member ] [bp_ciaddr] [line 32, size 32, align 32, offset 96] [from in_addr]
!40 = metadata !{i32 786451, null, metadata !"in_addr", metadata !41, i32 142, i64 32, i64 32, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_type ] [in_addr] [line 142, size 32, align 32, offset 0] [from ]
!41 = metadata !{i32 786473, metadata !"/usr/include/netinet/in.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786445, metadata !40, metadata !"s_addr", metadata !41, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [s_addr] [line 144, size 32, align 32, offset 0] [from in_addr_t]
!44 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !41, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!45 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !41, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!46 = metadata !{i32 786445, metadata !25, metadata !"bp_yiaddr", metadata !26, i32 33, i64 32, i64 32, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [bp_yiaddr] [line 33, size 32, align 32, offset 128] [from in_addr]
!47 = metadata !{i32 786445, metadata !25, metadata !"bp_siaddr", metadata !26, i32 34, i64 32, i64 32, i64 160, i32 0, metadata !40} ; [ DW_TAG_member ] [bp_siaddr] [line 34, size 32, align 32, offset 160] [from in_addr]
!48 = metadata !{i32 786445, metadata !25, metadata !"bp_giaddr", metadata !26, i32 35, i64 32, i64 32, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [bp_giaddr] [line 35, size 32, align 32, offset 192] [from in_addr]
!49 = metadata !{i32 786445, metadata !25, metadata !"bp_chaddr", metadata !26, i32 36, i64 128, i64 8, i64 224, i32 0, metadata !50} ; [ DW_TAG_member ] [bp_chaddr] [line 36, size 128, align 8, offset 224] [from ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !29, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_int8_t]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ] [0, 15]
!53 = metadata !{i32 786445, metadata !25, metadata !"bp_sname", metadata !26, i32 37, i64 512, i64 8, i64 352, i32 0, metadata !54} ; [ DW_TAG_member ] [bp_sname] [line 37, size 512, align 8, offset 352] [from ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !29, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from u_int8_t]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ] [0, 63]
!57 = metadata !{i32 786445, metadata !25, metadata !"bp_file", metadata !26, i32 38, i64 1024, i64 8, i64 864, i32 0, metadata !58} ; [ DW_TAG_member ] [bp_file] [line 38, size 1024, align 8, offset 864] [from ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !29, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from u_int8_t]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ] [0, 127]
!61 = metadata !{i32 786445, metadata !25, metadata !"bp_vend", metadata !26, i32 39, i64 512, i64 8, i64 1888, i32 0, metadata !54} ; [ DW_TAG_member ] [bp_vend] [line 39, size 512, align 8, offset 1888] [from ]
!62 = metadata !{i32 786688, metadata !63, metadata !"ul", metadata !6, i32 140, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ul] [line 140]
!63 = metadata !{i32 786443, metadata !22, i32 139, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!64 = metadata !{i32 786478, i32 0, metadata !6, metadata !"cmu_print", metadata !"cmu_print", metadata !"", metadata !6, i32 668, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !67, i32 669} ; [ DW_TAG_subprogram ] [line 668] [local] [def] [scope 669] [cmu_print]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{null, metadata !9}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786689, metadata !64, metadata !"bp", metadata !6, i32 16777884, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 668]
!70 = metadata !{i32 786688, metadata !71, metadata !"cmu", metadata !6, i32 670, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmu] [line 670]
!71 = metadata !{i32 786443, metadata !64, i32 669, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!73 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cmu_vend]
!74 = metadata !{i32 786451, null, metadata !"cmu_vend", metadata !26, i32 211, i64 512, i64 8, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_type ] [cmu_vend] [line 211, size 512, align 8, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!76 = metadata !{i32 786445, metadata !74, metadata !"v_magic", metadata !26, i32 212, i64 32, i64 8, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [v_magic] [line 212, size 32, align 8, offset 0] [from ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !29, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from u_int8_t]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 3]
!80 = metadata !{i32 786445, metadata !74, metadata !"v_flags", metadata !26, i32 213, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [v_flags] [line 213, size 32, align 32, offset 32] [from u_int32_t]
!81 = metadata !{i32 786445, metadata !74, metadata !"v_smask", metadata !26, i32 214, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [v_smask] [line 214, size 32, align 32, offset 64] [from in_addr]
!82 = metadata !{i32 786445, metadata !74, metadata !"v_dgate", metadata !26, i32 215, i64 32, i64 32, i64 96, i32 0, metadata !40} ; [ DW_TAG_member ] [v_dgate] [line 215, size 32, align 32, offset 96] [from in_addr]
!83 = metadata !{i32 786445, metadata !74, metadata !"v_dns1", metadata !26, i32 216, i64 32, i64 32, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [v_dns1] [line 216, size 32, align 32, offset 128] [from in_addr]
!84 = metadata !{i32 786445, metadata !74, metadata !"v_dns2", metadata !26, i32 216, i64 32, i64 32, i64 160, i32 0, metadata !40} ; [ DW_TAG_member ] [v_dns2] [line 216, size 32, align 32, offset 160] [from in_addr]
!85 = metadata !{i32 786445, metadata !74, metadata !"v_ins1", metadata !26, i32 217, i64 32, i64 32, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [v_ins1] [line 217, size 32, align 32, offset 192] [from in_addr]
!86 = metadata !{i32 786445, metadata !74, metadata !"v_ins2", metadata !26, i32 217, i64 32, i64 32, i64 224, i32 0, metadata !40} ; [ DW_TAG_member ] [v_ins2] [line 217, size 32, align 32, offset 224] [from in_addr]
!87 = metadata !{i32 786445, metadata !74, metadata !"v_ts1", metadata !26, i32 218, i64 32, i64 32, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [v_ts1] [line 218, size 32, align 32, offset 256] [from in_addr]
!88 = metadata !{i32 786445, metadata !74, metadata !"v_ts2", metadata !26, i32 218, i64 32, i64 32, i64 288, i32 0, metadata !40} ; [ DW_TAG_member ] [v_ts2] [line 218, size 32, align 32, offset 288] [from in_addr]
!89 = metadata !{i32 786445, metadata !74, metadata !"v_unused", metadata !26, i32 219, i64 192, i64 8, i64 320, i32 0, metadata !90} ; [ DW_TAG_member ] [v_unused] [line 219, size 192, align 8, offset 320] [from ]
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 8, i32 0, i32 0, metadata !29, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 8, offset 0] [from u_int8_t]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 23}       ; [ DW_TAG_subrange_type ] [0, 23]
!93 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rfc1048_print", metadata !"rfc1048_print", metadata !"", metadata !6, i32 241, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !94, i32 242} ; [ DW_TAG_subprogram ] [line 241] [local] [def] [scope 242] [rfc1048_print]
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !96, metadata !97, metadata !99, metadata !100, metadata !104, metadata !105, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !116, metadata !121, metadata !124, metadata !125}
!96 = metadata !{i32 786689, metadata !93, metadata !"bp", metadata !6, i32 16777457, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 241]
!97 = metadata !{i32 786688, metadata !98, metadata !"tag", metadata !6, i32 243, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tag] [line 243]
!98 = metadata !{i32 786443, metadata !93, i32 242, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!99 = metadata !{i32 786688, metadata !98, metadata !"len", metadata !6, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 244]
!100 = metadata !{i32 786688, metadata !98, metadata !"cp", metadata !6, i32 245, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 245]
!101 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!102 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!103 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!104 = metadata !{i32 786688, metadata !98, metadata !"c", metadata !6, i32 246, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 246]
!105 = metadata !{i32 786688, metadata !98, metadata !"first", metadata !6, i32 247, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 247]
!106 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!107 = metadata !{i32 786688, metadata !98, metadata !"idx", metadata !6, i32 248, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 248]
!108 = metadata !{i32 786688, metadata !98, metadata !"ul", metadata !6, i32 249, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ul] [line 249]
!109 = metadata !{i32 786688, metadata !98, metadata !"us", metadata !6, i32 250, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [us] [line 250]
!110 = metadata !{i32 786688, metadata !98, metadata !"uc", metadata !6, i32 251, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc] [line 251]
!111 = metadata !{i32 786688, metadata !98, metadata !"subopt", metadata !6, i32 252, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [subopt] [line 252]
!112 = metadata !{i32 786688, metadata !98, metadata !"suboptlen", metadata !6, i32 253, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [suboptlen] [line 253]
!113 = metadata !{i32 786688, metadata !114, metadata !"ntag", metadata !6, i32 288, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntag] [line 288]
!114 = metadata !{i32 786443, metadata !115, i32 287, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!115 = metadata !{i32 786443, metadata !98, i32 259, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!116 = metadata !{i32 786688, metadata !117, metadata !"type", metadata !6, i32 522, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 522]
!117 = metadata !{i32 786443, metadata !118, i32 521, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!118 = metadata !{i32 786443, metadata !119, i32 470, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!119 = metadata !{i32 786443, metadata !120, i32 468, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!120 = metadata !{i32 786443, metadata !115, i32 344, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!121 = metadata !{i32 786688, metadata !122, metadata !"mask_width", metadata !6, i32 594, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask_width] [line 594]
!122 = metadata !{i32 786443, metadata !123, i32 593, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!123 = metadata !{i32 786443, metadata !118, i32 592, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!124 = metadata !{i32 786688, metadata !122, metadata !"significant_octets", metadata !6, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [significant_octets] [line 595]
!125 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !6, i32 596, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 596]
!126 = metadata !{i32 786478, i32 0, metadata !6, metadata !"client_fqdn_flags", metadata !"client_fqdn_flags", metadata !"", metadata !6, i32 743, metadata !127, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !130, i32 744} ; [ DW_TAG_subprogram ] [line 743] [local] [def] [scope 744] [client_fqdn_flags]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{metadata !129, metadata !14}
!129 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !132, metadata !133}
!132 = metadata !{i32 786689, metadata !126, metadata !"flags", metadata !6, i32 16777959, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 743]
!133 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !6, i32 746, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 746]
!134 = metadata !{i32 786443, metadata !126, i32 744, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!135 = metadata !{i32 786478, i32 0, metadata !136, metadata !"putchar", metadata !"putchar", metadata !"", metadata !136, i32 80, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !139, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [putchar]
!136 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/stdio.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !106, metadata !106}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!142 = metadata !{i32 786478, i32 0, metadata !143, metadata !"__ntohs", metadata !"__ntohs", metadata !"", metadata !143, i32 206, metadata !144, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !146, i32 207} ; [ DW_TAG_subprogram ] [line 206] [local] [def] [scope 207] [__ntohs]
!143 = metadata !{i32 786473, metadata !"../src/tcpdump-stdinc.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{metadata !37, metadata !37}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 206]
!149 = metadata !{i32 786478, i32 0, metadata !143, metadata !"__ntohl", metadata !"__ntohl", metadata !"", metadata !143, i32 197, metadata !150, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !153, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [__ntohl]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !152}
!152 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !158, metadata !160, metadata !161, metadata !168, metadata !172, metadata !176, metadata !177, metadata !181, metadata !183, metadata !187, metadata !191, metadata !195, metadata !199}
!158 = metadata !{i32 786484, i32 0, metadata !5, metadata !"vm_cmu", metadata !"vm_cmu", metadata !"", metadata !6, i32 50, metadata !159, i32 1, i32 1, [4 x i8]* @bootp_print.vm_cmu} ; [ DW_TAG_variable ] [vm_cmu] [line 50] [local] [def]
!159 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !10, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from ]
!160 = metadata !{i32 786484, i32 0, metadata !5, metadata !"vm_rfc1048", metadata !"vm_rfc1048", metadata !"", metadata !6, i32 51, metadata !159, i32 1, i32 1, [4 x i8]* @bootp_print.vm_rfc1048} ; [ DW_TAG_variable ] [vm_rfc1048] [line 51] [local] [def]
!161 = metadata !{i32 786484, i32 0, null, metadata !"agent_suboption_values", metadata !"agent_suboption_values", metadata !"", metadata !6, i32 239, metadata !162, i32 1, i32 1, [4 x %struct.tok]* @agent_suboption_values} ; [ DW_TAG_variable ] [agent_suboption_values] [line 239] [local] [def]
!162 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !163, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from tok]
!163 = metadata !{i32 786451, null, metadata !"tok", metadata !164, i32 68, i64 64, i64 32, i32 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tok] [line 68, size 64, align 32, offset 0] [from ]
!164 = metadata !{i32 786473, metadata !"../src/netdissect.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786445, metadata !163, metadata !"v", metadata !164, i32 69, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [v] [line 69, size 32, align 32, offset 0] [from int]
!167 = metadata !{i32 786445, metadata !163, metadata !"s", metadata !164, i32 70, i64 32, i64 32, i64 32, i32 0, metadata !101} ; [ DW_TAG_member ] [s] [line 70, size 32, align 32, offset 32] [from ]
!168 = metadata !{i32 786484, i32 0, null, metadata !"arp2str", metadata !"arp2str", metadata !"", metadata !6, i32 234, metadata !169, i32 1, i32 1, [7 x %struct.tok]* @arp2str} ; [ DW_TAG_variable ] [arp2str] [line 234] [local] [def]
!169 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !163, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from tok]
!170 = metadata !{metadata !171}
!171 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 6]
!172 = metadata !{i32 786484, i32 0, metadata !126, metadata !"buf", metadata !"buf", metadata !"", metadata !6, i32 745, metadata !173, i32 1, i32 1, [9 x i8]* @client_fqdn_flags.buf} ; [ DW_TAG_variable ] [buf] [line 745] [local] [def]
!173 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !103, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from char]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 8]
!176 = metadata !{i32 786484, i32 0, null, metadata !"oo2str", metadata !"oo2str", metadata !"", metadata !6, i32 230, metadata !162, i32 1, i32 1, [4 x %struct.tok]* @oo2str} ; [ DW_TAG_variable ] [oo2str] [line 230] [local] [def]
!177 = metadata !{i32 786484, i32 0, null, metadata !"nbo2str", metadata !"nbo2str", metadata !"", metadata !6, i32 232, metadata !178, i32 1, i32 1, [5 x %struct.tok]* @nbo2str} ; [ DW_TAG_variable ] [nbo2str] [line 232] [local] [def]
!178 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !163, metadata !179, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from tok]
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 4]
!181 = metadata !{i32 786484, i32 0, null, metadata !"dhcp_msg_values", metadata !"dhcp_msg_values", metadata !"", metadata !6, i32 235, metadata !182, i32 1, i32 1, [9 x %struct.tok]* @dhcp_msg_values} ; [ DW_TAG_variable ] [dhcp_msg_values] [line 235] [local] [def]
!182 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 576, i64 32, i32 0, i32 0, metadata !163, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 32, offset 0] [from tok]
!183 = metadata !{i32 786484, i32 0, null, metadata !"tag2str", metadata !"tag2str", metadata !"", metadata !6, i32 162, metadata !184, i32 1, i32 1, [108 x %struct.tok]* @tag2str} ; [ DW_TAG_variable ] [tag2str] [line 162] [local] [def]
!184 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 6912, i64 32, i32 0, i32 0, metadata !163, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6912, align 32, offset 0] [from tok]
!185 = metadata !{metadata !186}
!186 = metadata !{i32 786465, i64 0, i64 107}     ; [ DW_TAG_subrange_type ] [0, 107]
!187 = metadata !{i32 786484, i32 0, null, metadata !"xtag2str", metadata !"xtag2str", metadata !"", metadata !6, i32 228, metadata !188, i32 1, i32 1, [1 x %struct.tok]* @xtag2str} ; [ DW_TAG_variable ] [xtag2str] [line 228] [local] [def]
!188 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !163, metadata !189, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from tok]
!189 = metadata !{metadata !190}
!190 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!191 = metadata !{i32 786484, i32 0, null, metadata !"tstr", metadata !"tstr", metadata !"", metadata !6, i32 40, metadata !192, i32 1, i32 1, [10 x i8]* @tstr} ; [ DW_TAG_variable ] [tstr] [line 40] [local] [def]
!192 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80, i64 8, i32 0, i32 0, metadata !103, metadata !193, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 9]
!195 = metadata !{i32 786484, i32 0, null, metadata !"bootp_flag_values", metadata !"bootp_flag_values", metadata !"", metadata !6, i32 41, metadata !196, i32 1, i32 1, [2 x %struct.tok]* @bootp_flag_values} ; [ DW_TAG_variable ] [bootp_flag_values] [line 41] [local] [def]
!196 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !163, metadata !197, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from tok]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 1]
!199 = metadata !{i32 786484, i32 0, null, metadata !"bootp_op_values", metadata !"bootp_op_values", metadata !"", metadata !6, i32 42, metadata !200, i32 1, i32 1, [3 x %struct.tok]* @bootp_op_values} ; [ DW_TAG_variable ] [bootp_op_values] [line 42] [local] [def]
!200 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !163, metadata !201, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from tok]
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!203 = metadata !{i32 47, i32 0, metadata !5, null}
!204 = metadata !{i32 53, i32 0, metadata !22, null}
!205 = metadata !{metadata !"any pointer", metadata !206}
!206 = metadata !{metadata !"omnipotent char", metadata !207}
!207 = metadata !{metadata !"Simple C/C++ TBAA"}
!208 = metadata !{i32 55, i32 0, metadata !22, null}
!209 = metadata !{i32 56, i32 0, metadata !22, null}
!210 = metadata !{i32 57, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !22, i32 56, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!212 = metadata !{i32 59, i32 0, metadata !211, null}
!213 = metadata !{i32 60, i32 0, metadata !211, null}
!214 = metadata !{i32 61, i32 0, metadata !22, null}
!215 = metadata !{i32 62, i32 0, metadata !22, null}
!216 = metadata !{metadata !"int", metadata !206}
!217 = metadata !{i32 64, i32 0, metadata !22, null}
!218 = metadata !{i32 67, i32 0, metadata !22, null}
!219 = metadata !{i32 68, i32 0, metadata !22, null}
!220 = metadata !{i32 70, i32 0, metadata !22, null}
!221 = metadata !{i32 71, i32 0, metadata !22, null}
!222 = metadata !{i32 73, i32 0, metadata !22, null}
!223 = metadata !{i32 74, i32 0, metadata !22, null}
!224 = metadata !{i32 75, i32 0, metadata !22, null}
!225 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, metadata !226} ; [ DW_TAG_arg_variable ] [x] [line 197]
!226 = metadata !{i32 76, i32 0, metadata !22, null}
!227 = metadata !{i32 197, i32 0, metadata !149, metadata !226}
!228 = metadata !{i32 199, i32 0, metadata !229, metadata !226}
!229 = metadata !{i32 786443, metadata !149, i32 198, i32 0, metadata !143, i32 90} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/tcpdump-stdinc.h]
!230 = metadata !{i32 47911, i32 47928, i32 47987}
!231 = metadata !{i32 77, i32 0, metadata !22, null}
!232 = metadata !{metadata !"short", metadata !206}
!233 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !234} ; [ DW_TAG_arg_variable ] [x] [line 206]
!234 = metadata !{i32 78, i32 0, metadata !22, null}
!235 = metadata !{i32 206, i32 0, metadata !142, metadata !234}
!236 = metadata !{i32 208, i32 0, metadata !237, metadata !234}
!237 = metadata !{i32 786443, metadata !142, i32 207, i32 0, metadata !143, i32 89} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/tcpdump-stdinc.h]
!238 = metadata !{i32 48213}
!239 = metadata !{i32 79, i32 0, metadata !22, null}
!240 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !239} ; [ DW_TAG_arg_variable ] [x] [line 206]
!241 = metadata !{i32 206, i32 0, metadata !142, metadata !239}
!242 = metadata !{i32 208, i32 0, metadata !237, metadata !239}
!243 = metadata !{i32 80, i32 0, metadata !22, null}
!244 = metadata !{i32 81, i32 0, metadata !22, null}
!245 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !244} ; [ DW_TAG_arg_variable ] [x] [line 206]
!246 = metadata !{i32 206, i32 0, metadata !142, metadata !244}
!247 = metadata !{i32 208, i32 0, metadata !237, metadata !244}
!248 = metadata !{i32 83, i32 0, metadata !22, null}
!249 = metadata !{i32 85, i32 0, metadata !22, null}
!250 = metadata !{i32 86, i32 0, metadata !22, null}
!251 = metadata !{i32 88, i32 0, metadata !22, null}
!252 = metadata !{i32 90, i32 0, metadata !22, null}
!253 = metadata !{i32 91, i32 0, metadata !22, null}
!254 = metadata !{i32 93, i32 0, metadata !22, null}
!255 = metadata !{i32 95, i32 0, metadata !22, null}
!256 = metadata !{i32 96, i32 0, metadata !22, null}
!257 = metadata !{i32 98, i32 0, metadata !22, null}
!258 = metadata !{i32 100, i32 0, metadata !22, null}
!259 = metadata !{i32 101, i32 0, metadata !22, null}
!260 = metadata !{i32 103, i32 0, metadata !22, null}
!261 = metadata !{i32 104, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !22, i32 103, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!263 = metadata !{i32 106, i32 0, metadata !262, null}
!264 = metadata !{i32 107, i32 0, metadata !262, null}
!265 = metadata !{i32 109, i32 0, metadata !22, null}
!266 = metadata !{i32 111, i32 0, metadata !22, null}
!267 = metadata !{i32 112, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !22, i32 111, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!269 = metadata !{i32 113, i32 0, metadata !268, null}
!270 = metadata !{i32 34}
!271 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !272} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!272 = metadata !{i32 114, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !268, i32 113, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!274 = metadata !{i32 80, i32 0, metadata !135, metadata !272}
!275 = metadata !{i32 82, i32 0, metadata !276, metadata !272}
!276 = metadata !{i32 786443, metadata !135, i32 81, i32 0, metadata !136, i32 88} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install//usr/include/i386-linux-gnu/bits/stdio.h]
!277 = metadata !{i32 121, i32 0, metadata !22, null}
!278 = metadata !{i32 115, i32 0, metadata !273, null}
!279 = metadata !{i32 116, i32 0, metadata !273, null}
!280 = metadata !{i32 123, i32 0, metadata !22, null}
!281 = metadata !{i32 124, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !22, i32 123, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!283 = metadata !{i32 125, i32 0, metadata !282, null}
!284 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !285} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!285 = metadata !{i32 126, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !282, i32 125, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!287 = metadata !{i32 80, i32 0, metadata !135, metadata !285}
!288 = metadata !{i32 82, i32 0, metadata !276, metadata !285}
!289 = metadata !{i32 133, i32 0, metadata !22, null}
!290 = metadata !{i32 127, i32 0, metadata !286, null}
!291 = metadata !{i32 128, i32 0, metadata !286, null}
!292 = metadata !{i32 135, i32 0, metadata !22, null}
!293 = metadata !{i32 241, i32 0, metadata !93, metadata !294}
!294 = metadata !{i32 136, i32 0, metadata !22, null}
!295 = metadata !{i32 786689, metadata !93, metadata !"bp", metadata !6, i32 16777457, metadata !9, i32 0, metadata !294} ; [ DW_TAG_arg_variable ] [bp] [line 241]
!296 = metadata !{i32 249, i32 0, metadata !98, metadata !294}
!297 = metadata !{i32 254, i32 0, metadata !98, metadata !294}
!298 = metadata !{i32 256, i32 0, metadata !98, metadata !294}
!299 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, metadata !298} ; [ DW_TAG_arg_variable ] [x] [line 197]
!300 = metadata !{i32 197, i32 0, metadata !149, metadata !298}
!301 = metadata !{i32 199, i32 0, metadata !229, metadata !298}
!302 = metadata !{i32 257, i32 0, metadata !98, metadata !294}
!303 = metadata !{i32 259, i32 0, metadata !98, metadata !294}
!304 = metadata !{i32 260, i32 0, metadata !115, metadata !294}
!305 = metadata !{i32 786688, metadata !98, metadata !"tag", metadata !6, i32 243, metadata !36, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [tag] [line 243]
!306 = metadata !{i32 261, i32 0, metadata !115, metadata !294}
!307 = metadata !{i32 263, i32 0, metadata !115, metadata !294}
!308 = metadata !{i32 266, i32 0, metadata !309, metadata !294}
!309 = metadata !{i32 786443, metadata !115, i32 265, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!310 = metadata !{i32 268, i32 0, metadata !309, metadata !294}
!311 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !310} ; [ DW_TAG_arg_variable ] [x] [line 206]
!312 = metadata !{i32 206, i32 0, metadata !142, metadata !310}
!313 = metadata !{i32 208, i32 0, metadata !237, metadata !310}
!314 = metadata !{i32 273, i32 0, metadata !309, metadata !294}
!315 = metadata !{i32 786688, metadata !98, metadata !"cp", metadata !6, i32 245, metadata !101, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [cp] [line 245]
!316 = metadata !{i32 274, i32 0, metadata !309, metadata !294}
!317 = metadata !{i32 276, i32 0, metadata !115, metadata !294}
!318 = metadata !{i32 277, i32 0, metadata !115, metadata !294}
!319 = metadata !{i32 786688, metadata !98, metadata !"c", metadata !6, i32 246, metadata !103, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [c] [line 246]
!320 = metadata !{i32 278, i32 0, metadata !115, metadata !294}
!321 = metadata !{i32 282, i32 0, metadata !322, metadata !294}
!322 = metadata !{i32 786443, metadata !115, i32 280, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!323 = metadata !{i32 284, i32 0, metadata !322, metadata !294}
!324 = metadata !{i32 786688, metadata !98, metadata !"len", metadata !6, i32 244, metadata !14, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [len] [line 244]
!325 = metadata !{i32 286, i32 0, metadata !115, metadata !294}
!326 = metadata !{i32 287, i32 0, metadata !115, metadata !294}
!327 = metadata !{i32 289, i32 0, metadata !114, metadata !294}
!328 = metadata !{i32 290, i32 0, metadata !329, metadata !294}
!329 = metadata !{i32 786443, metadata !114, i32 289, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!330 = metadata !{i32 291, i32 0, metadata !329, metadata !294}
!331 = metadata !{i32 293, i32 0, metadata !114, metadata !294}
!332 = metadata !{i32 294, i32 0, metadata !114, metadata !294}
!333 = metadata !{i32 296, i32 0, metadata !115, metadata !294}
!334 = metadata !{i32 297, i32 0, metadata !335, metadata !294}
!335 = metadata !{i32 786443, metadata !115, i32 296, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!336 = metadata !{i32 298, i32 0, metadata !335, metadata !294}
!337 = metadata !{i32 300, i32 0, metadata !115, metadata !294}
!338 = metadata !{i32 301, i32 0, metadata !339, metadata !294}
!339 = metadata !{i32 786443, metadata !115, i32 300, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!340 = metadata !{i32 786688, metadata !98, metadata !"uc", metadata !6, i32 251, metadata !29, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [uc] [line 251]
!341 = metadata !{i32 302, i32 0, metadata !339, metadata !294}
!342 = metadata !{i32 303, i32 0, metadata !339, metadata !294}
!343 = metadata !{i32 305, i32 0, metadata !115, metadata !294}
!344 = metadata !{i32 321, i32 0, metadata !345, metadata !294}
!345 = metadata !{i32 786443, metadata !115, i32 319, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!346 = metadata !{i32 307, i32 0, metadata !347, metadata !294}
!347 = metadata !{i32 786443, metadata !115, i32 305, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!348 = metadata !{i32 308, i32 0, metadata !349, metadata !294}
!349 = metadata !{i32 786443, metadata !347, i32 307, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!350 = metadata !{i32 309, i32 0, metadata !349, metadata !294}
!351 = metadata !{i32 310, i32 0, metadata !349, metadata !294}
!352 = metadata !{i32 311, i32 0, metadata !349, metadata !294}
!353 = metadata !{i32 313, i32 0, metadata !349, metadata !294}
!354 = metadata !{i32 314, i32 0, metadata !349, metadata !294}
!355 = metadata !{i32 315, i32 0, metadata !349, metadata !294}
!356 = metadata !{i32 322, i32 0, metadata !357, metadata !294}
!357 = metadata !{i32 786443, metadata !345, i32 321, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!358 = metadata !{i32 323, i32 0, metadata !357, metadata !294}
!359 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !358} ; [ DW_TAG_arg_variable ] [x] [line 206]
!360 = metadata !{i32 206, i32 0, metadata !142, metadata !358}
!361 = metadata !{i32 208, i32 0, metadata !237, metadata !358}
!362 = metadata !{i32 786688, metadata !98, metadata !"us", metadata !6, i32 250, metadata !36, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [us] [line 250]
!363 = metadata !{i32 324, i32 0, metadata !357, metadata !294}
!364 = metadata !{i32 325, i32 0, metadata !357, metadata !294}
!365 = metadata !{i32 326, i32 0, metadata !357, metadata !294}
!366 = metadata !{i32 43}
!367 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !368} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!368 = metadata !{i32 327, i32 0, metadata !357, metadata !294}
!369 = metadata !{i32 80, i32 0, metadata !135, metadata !368}
!370 = metadata !{i32 82, i32 0, metadata !276, metadata !368}
!371 = metadata !{i32 328, i32 0, metadata !357, metadata !294}
!372 = metadata !{i32 786688, metadata !98, metadata !"first", metadata !6, i32 247, metadata !106, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [first] [line 247]
!373 = metadata !{i32 329, i32 0, metadata !357, metadata !294}
!374 = metadata !{i32 334, i32 0, metadata !115, metadata !294}
!375 = metadata !{i32 336, i32 0, metadata !376, metadata !294}
!376 = metadata !{i32 786443, metadata !115, i32 334, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!377 = metadata !{i32 338, i32 0, metadata !376, metadata !294}
!378 = metadata !{i32 1}
!379 = metadata !{i32 343, i32 0, metadata !115, metadata !294}
!380 = metadata !{i32 344, i32 0, metadata !115, metadata !294}
!381 = metadata !{i32 454, i32 0, metadata !382, metadata !294}
!382 = metadata !{i32 786443, metadata !120, i32 452, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!383 = metadata !{i32 456, i32 0, metadata !384, metadata !294}
!384 = metadata !{i32 786443, metadata !382, i32 454, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!385 = metadata !{i32 367, i32 0, metadata !386, metadata !294}
!386 = metadata !{i32 786443, metadata !120, i32 365, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!387 = metadata !{i32 388, i32 0, metadata !388, metadata !294}
!388 = metadata !{i32 786443, metadata !120, i32 386, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!389 = metadata !{i32 405, i32 0, metadata !390, metadata !294}
!390 = metadata !{i32 786443, metadata !120, i32 403, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!391 = metadata !{i32 419, i32 0, metadata !392, metadata !294}
!392 = metadata !{i32 786443, metadata !120, i32 417, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!393 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !394} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!394 = metadata !{i32 348, i32 0, metadata !395, metadata !294}
!395 = metadata !{i32 786443, metadata !120, i32 346, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!396 = metadata !{i32 80, i32 0, metadata !135, metadata !394}
!397 = metadata !{i32 82, i32 0, metadata !276, metadata !394}
!398 = metadata !{i32 349, i32 0, metadata !395, metadata !294}
!399 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !400} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!400 = metadata !{i32 350, i32 0, metadata !401, metadata !294}
!401 = metadata !{i32 786443, metadata !395, i32 349, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!402 = metadata !{i32 80, i32 0, metadata !135, metadata !400}
!403 = metadata !{i32 82, i32 0, metadata !276, metadata !400}
!404 = metadata !{i32 354, i32 0, metadata !395, metadata !294}
!405 = metadata !{i32 355, i32 0, metadata !395, metadata !294}
!406 = metadata !{i32 356, i32 0, metadata !395, metadata !294}
!407 = metadata !{i32 368, i32 0, metadata !408, metadata !294}
!408 = metadata !{i32 786443, metadata !386, i32 367, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!409 = metadata !{i32 44}
!410 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!411 = metadata !{i32 369, i32 0, metadata !408, metadata !294}
!412 = metadata !{i32 80, i32 0, metadata !135, metadata !411}
!413 = metadata !{i32 82, i32 0, metadata !276, metadata !411}
!414 = metadata !{i32 370, i32 0, metadata !408, metadata !294}
!415 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, metadata !414} ; [ DW_TAG_arg_variable ] [x] [line 197]
!416 = metadata !{i32 197, i32 0, metadata !149, metadata !414}
!417 = metadata !{i32 199, i32 0, metadata !229, metadata !414}
!418 = metadata !{i32 786688, metadata !98, metadata !"ul", metadata !6, i32 249, metadata !34, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [ul] [line 249]
!419 = metadata !{i32 371, i32 0, metadata !408, metadata !294}
!420 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, metadata !421} ; [ DW_TAG_arg_variable ] [x] [line 197]
!421 = metadata !{i32 372, i32 0, metadata !422, metadata !294}
!422 = metadata !{i32 786443, metadata !408, i32 371, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!423 = metadata !{i32 197, i32 0, metadata !149, metadata !421}
!424 = metadata !{i32 199, i32 0, metadata !229, metadata !421}
!425 = metadata !{i32 373, i32 0, metadata !422, metadata !294}
!426 = metadata !{i32 374, i32 0, metadata !422, metadata !294}
!427 = metadata !{i32 376, i32 0, metadata !408, metadata !294}
!428 = metadata !{i32 378, i32 0, metadata !408, metadata !294}
!429 = metadata !{i32 379, i32 0, metadata !408, metadata !294}
!430 = metadata !{i32 380, i32 0, metadata !408, metadata !294}
!431 = metadata !{i32 389, i32 0, metadata !432, metadata !294}
!432 = metadata !{i32 786443, metadata !388, i32 388, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!433 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !434} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!434 = metadata !{i32 390, i32 0, metadata !432, metadata !294}
!435 = metadata !{i32 80, i32 0, metadata !135, metadata !434}
!436 = metadata !{i32 82, i32 0, metadata !276, metadata !434}
!437 = metadata !{i32 391, i32 0, metadata !432, metadata !294}
!438 = metadata !{i32 392, i32 0, metadata !432, metadata !294}
!439 = metadata !{i32 393, i32 0, metadata !432, metadata !294}
!440 = metadata !{i32 394, i32 0, metadata !432, metadata !294}
!441 = metadata !{i32 395, i32 0, metadata !432, metadata !294}
!442 = metadata !{i32 396, i32 0, metadata !432, metadata !294}
!443 = metadata !{i32 397, i32 0, metadata !432, metadata !294}
!444 = metadata !{i32 406, i32 0, metadata !445, metadata !294}
!445 = metadata !{i32 786443, metadata !390, i32 405, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!446 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !447} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!447 = metadata !{i32 407, i32 0, metadata !445, metadata !294}
!448 = metadata !{i32 80, i32 0, metadata !135, metadata !447}
!449 = metadata !{i32 82, i32 0, metadata !276, metadata !447}
!450 = metadata !{i32 408, i32 0, metadata !445, metadata !294}
!451 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !143, i32 16777422, metadata !37, i32 0, metadata !450} ; [ DW_TAG_arg_variable ] [x] [line 206]
!452 = metadata !{i32 206, i32 0, metadata !142, metadata !450}
!453 = metadata !{i32 208, i32 0, metadata !237, metadata !450}
!454 = metadata !{i32 409, i32 0, metadata !445, metadata !294}
!455 = metadata !{i32 410, i32 0, metadata !445, metadata !294}
!456 = metadata !{i32 411, i32 0, metadata !445, metadata !294}
!457 = metadata !{i32 420, i32 0, metadata !458, metadata !294}
!458 = metadata !{i32 786443, metadata !392, i32 419, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!459 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !460} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!460 = metadata !{i32 421, i32 0, metadata !458, metadata !294}
!461 = metadata !{i32 80, i32 0, metadata !135, metadata !460}
!462 = metadata !{i32 82, i32 0, metadata !276, metadata !460}
!463 = metadata !{i32 422, i32 0, metadata !458, metadata !294}
!464 = metadata !{i32 78}
!465 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !466} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!466 = metadata !{i32 425, i32 0, metadata !467, metadata !294}
!467 = metadata !{i32 786443, metadata !468, i32 424, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!468 = metadata !{i32 786443, metadata !458, i32 422, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!469 = metadata !{i32 80, i32 0, metadata !135, metadata !466}
!470 = metadata !{i32 82, i32 0, metadata !276, metadata !466}
!471 = metadata !{i32 426, i32 0, metadata !467, metadata !294}
!472 = metadata !{i32 89}
!473 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !474} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!474 = metadata !{i32 430, i32 0, metadata !475, metadata !294}
!475 = metadata !{i32 786443, metadata !468, i32 429, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!476 = metadata !{i32 80, i32 0, metadata !135, metadata !474}
!477 = metadata !{i32 82, i32 0, metadata !276, metadata !474}
!478 = metadata !{i32 431, i32 0, metadata !475, metadata !294}
!479 = metadata !{i32 435, i32 0, metadata !480, metadata !294}
!480 = metadata !{i32 786443, metadata !468, i32 434, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!481 = metadata !{i32 436, i32 0, metadata !480, metadata !294}
!482 = metadata !{i32 439, i32 0, metadata !458, metadata !294}
!483 = metadata !{i32 440, i32 0, metadata !458, metadata !294}
!484 = metadata !{i32 455, i32 0, metadata !384, metadata !294}
!485 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !383} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!486 = metadata !{i32 80, i32 0, metadata !135, metadata !383}
!487 = metadata !{i32 82, i32 0, metadata !276, metadata !383}
!488 = metadata !{i32 458, i32 0, metadata !384, metadata !294}
!489 = metadata !{i32 457, i32 0, metadata !384, metadata !294}
!490 = metadata !{i32 460, i32 0, metadata !384, metadata !294}
!491 = metadata !{i32 461, i32 0, metadata !384, metadata !294}
!492 = metadata !{i32 462, i32 0, metadata !384, metadata !294}
!493 = metadata !{i32 470, i32 0, metadata !119, metadata !294}
!494 = metadata !{i32 556, i32 0, metadata !495, metadata !294}
!495 = metadata !{i32 786443, metadata !118, i32 555, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!496 = metadata !{i32 474, i32 0, metadata !497, metadata !294}
!497 = metadata !{i32 786443, metadata !118, i32 472, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!498 = metadata !{i32 475, i32 0, metadata !499, metadata !294}
!499 = metadata !{i32 786443, metadata !497, i32 474, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!500 = metadata !{i32 476, i32 0, metadata !499, metadata !294}
!501 = metadata !{i32 478, i32 0, metadata !497, metadata !294}
!502 = metadata !{i32 479, i32 0, metadata !497, metadata !294}
!503 = metadata !{i32 480, i32 0, metadata !497, metadata !294}
!504 = metadata !{i32 481, i32 0, metadata !497, metadata !294}
!505 = metadata !{i32 486, i32 0, metadata !506, metadata !294}
!506 = metadata !{i32 786443, metadata !118, i32 484, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!507 = metadata !{i32 487, i32 0, metadata !508, metadata !294}
!508 = metadata !{i32 786443, metadata !506, i32 486, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!509 = metadata !{i32 488, i32 0, metadata !508, metadata !294}
!510 = metadata !{i32 490, i32 0, metadata !506, metadata !294}
!511 = metadata !{i32 491, i32 0, metadata !506, metadata !294}
!512 = metadata !{i32 492, i32 0, metadata !506, metadata !294}
!513 = metadata !{i32 493, i32 0, metadata !506, metadata !294}
!514 = metadata !{i32 498, i32 0, metadata !515, metadata !294}
!515 = metadata !{i32 786443, metadata !118, i32 496, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!516 = metadata !{i32 499, i32 0, metadata !517, metadata !294}
!517 = metadata !{i32 786443, metadata !515, i32 498, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!518 = metadata !{i32 500, i32 0, metadata !517, metadata !294}
!519 = metadata !{i32 501, i32 0, metadata !517, metadata !294}
!520 = metadata !{i32 502, i32 0, metadata !517, metadata !294}
!521 = metadata !{i32 504, i32 0, metadata !515, metadata !294}
!522 = metadata !{i32 505, i32 0, metadata !515, metadata !294}
!523 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !6, i32 746, metadata !106, i32 0, metadata !522} ; [ DW_TAG_auto_variable ] [i] [line 746]
!524 = metadata !{i32 746, i32 0, metadata !134, metadata !522}
!525 = metadata !{i32 747, i32 0, metadata !134, metadata !522}
!526 = metadata !{i32 748, i32 0, metadata !134, metadata !522}
!527 = metadata !{i32 749, i32 0, metadata !134, metadata !522}
!528 = metadata !{i32 750, i32 0, metadata !134, metadata !522}
!529 = metadata !{i32 751, i32 0, metadata !134, metadata !522}
!530 = metadata !{i32 752, i32 0, metadata !134, metadata !522}
!531 = metadata !{i32 753, i32 0, metadata !134, metadata !522}
!532 = metadata !{i32 754, i32 0, metadata !134, metadata !522}
!533 = metadata !{i32 755, i32 0, metadata !134, metadata !522}
!534 = metadata !{i32 506, i32 0, metadata !515, metadata !294}
!535 = metadata !{i32 507, i32 0, metadata !515, metadata !294}
!536 = metadata !{i32 508, i32 0, metadata !515, metadata !294}
!537 = metadata !{i32 509, i32 0, metadata !515, metadata !294}
!538 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!539 = metadata !{i32 510, i32 0, metadata !515, metadata !294}
!540 = metadata !{i32 80, i32 0, metadata !135, metadata !539}
!541 = metadata !{i32 82, i32 0, metadata !276, metadata !539}
!542 = metadata !{i32 511, i32 0, metadata !515, metadata !294}
!543 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !544} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!544 = metadata !{i32 512, i32 0, metadata !545, metadata !294}
!545 = metadata !{i32 786443, metadata !515, i32 511, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!546 = metadata !{i32 80, i32 0, metadata !135, metadata !544}
!547 = metadata !{i32 82, i32 0, metadata !276, metadata !544}
!548 = metadata !{i32 516, i32 0, metadata !515, metadata !294}
!549 = metadata !{i32 517, i32 0, metadata !515, metadata !294}
!550 = metadata !{i32 518, i32 0, metadata !515, metadata !294}
!551 = metadata !{i32 524, i32 0, metadata !117, metadata !294}
!552 = metadata !{i32 525, i32 0, metadata !553, metadata !294}
!553 = metadata !{i32 786443, metadata !117, i32 524, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!554 = metadata !{i32 526, i32 0, metadata !553, metadata !294}
!555 = metadata !{i32 528, i32 0, metadata !117, metadata !294}
!556 = metadata !{i32 786688, metadata !117, metadata !"type", metadata !6, i32 522, metadata !106, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [type] [line 522]
!557 = metadata !{i32 529, i32 0, metadata !117, metadata !294}
!558 = metadata !{i32 530, i32 0, metadata !117, metadata !294}
!559 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !560} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!560 = metadata !{i32 531, i32 0, metadata !561, metadata !294}
!561 = metadata !{i32 786443, metadata !117, i32 530, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!562 = metadata !{i32 80, i32 0, metadata !135, metadata !560}
!563 = metadata !{i32 82, i32 0, metadata !276, metadata !560}
!564 = metadata !{i32 532, i32 0, metadata !561, metadata !294}
!565 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !566} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!566 = metadata !{i32 533, i32 0, metadata !567, metadata !294}
!567 = metadata !{i32 786443, metadata !561, i32 532, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!568 = metadata !{i32 80, i32 0, metadata !135, metadata !566}
!569 = metadata !{i32 82, i32 0, metadata !276, metadata !566}
!570 = metadata !{i32 537, i32 0, metadata !561, metadata !294}
!571 = metadata !{i32 538, i32 0, metadata !561, metadata !294}
!572 = metadata !{i32 539, i32 0, metadata !561, metadata !294}
!573 = metadata !{i32 542, i32 0, metadata !574, metadata !294}
!574 = metadata !{i32 786443, metadata !117, i32 541, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!575 = metadata !{i32 543, i32 0, metadata !574, metadata !294}
!576 = metadata !{i32 544, i32 0, metadata !577, metadata !294}
!577 = metadata !{i32 786443, metadata !574, i32 543, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!578 = metadata !{i32 58}
!579 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!580 = metadata !{i32 545, i32 0, metadata !577, metadata !294}
!581 = metadata !{i32 80, i32 0, metadata !135, metadata !580}
!582 = metadata !{i32 82, i32 0, metadata !276, metadata !580}
!583 = metadata !{i32 546, i32 0, metadata !577, metadata !294}
!584 = metadata !{i32 547, i32 0, metadata !577, metadata !294}
!585 = metadata !{i32 548, i32 0, metadata !577, metadata !294}
!586 = metadata !{i32 557, i32 0, metadata !587, metadata !294}
!587 = metadata !{i32 786443, metadata !495, i32 556, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!588 = metadata !{i32 786688, metadata !98, metadata !"subopt", metadata !6, i32 252, metadata !29, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [subopt] [line 252]
!589 = metadata !{i32 558, i32 0, metadata !587, metadata !294}
!590 = metadata !{i32 786688, metadata !98, metadata !"suboptlen", metadata !6, i32 253, metadata !29, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [suboptlen] [line 253]
!591 = metadata !{i32 559, i32 0, metadata !587, metadata !294}
!592 = metadata !{i32 560, i32 0, metadata !587, metadata !294}
!593 = metadata !{i32 561, i32 0, metadata !594, metadata !294}
!594 = metadata !{i32 786443, metadata !587, i32 560, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!595 = metadata !{i32 562, i32 0, metadata !594, metadata !294}
!596 = metadata !{i32 563, i32 0, metadata !594, metadata !294}
!597 = metadata !{i32 564, i32 0, metadata !594, metadata !294}
!598 = metadata !{i32 566, i32 0, metadata !587, metadata !294}
!599 = metadata !{i32 567, i32 0, metadata !587, metadata !294}
!600 = metadata !{i32 577, i32 0, metadata !601, metadata !294}
!601 = metadata !{i32 786443, metadata !602, i32 575, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!602 = metadata !{i32 786443, metadata !587, i32 567, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!603 = metadata !{i32 578, i32 0, metadata !601, metadata !294}
!604 = metadata !{i32 581, i32 0, metadata !602, metadata !294}
!605 = metadata !{i32 582, i32 0, metadata !602, metadata !294}
!606 = metadata !{i32 583, i32 0, metadata !587, metadata !294}
!607 = metadata !{i32 584, i32 0, metadata !587, metadata !294}
!608 = metadata !{i32 598, i32 0, metadata !122, metadata !294}
!609 = metadata !{i32 599, i32 0, metadata !610, metadata !294}
!610 = metadata !{i32 786443, metadata !122, i32 598, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!611 = metadata !{i32 600, i32 0, metadata !610, metadata !294}
!612 = metadata !{i32 601, i32 0, metadata !610, metadata !294}
!613 = metadata !{i32 602, i32 0, metadata !610, metadata !294}
!614 = metadata !{i32 605, i32 0, metadata !615, metadata !294}
!615 = metadata !{i32 786443, metadata !122, i32 604, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!616 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!617 = metadata !{i32 606, i32 0, metadata !615, metadata !294}
!618 = metadata !{i32 80, i32 0, metadata !135, metadata !617}
!619 = metadata !{i32 82, i32 0, metadata !276, metadata !617}
!620 = metadata !{i32 607, i32 0, metadata !615, metadata !294}
!621 = metadata !{i32 786688, metadata !122, metadata !"mask_width", metadata !6, i32 594, metadata !14, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [mask_width] [line 594]
!622 = metadata !{i32 608, i32 0, metadata !615, metadata !294}
!623 = metadata !{i32 610, i32 0, metadata !615, metadata !294}
!624 = metadata !{i32 611, i32 0, metadata !625, metadata !294}
!625 = metadata !{i32 786443, metadata !615, i32 610, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!626 = metadata !{i32 612, i32 0, metadata !625, metadata !294}
!627 = metadata !{i32 613, i32 0, metadata !625, metadata !294}
!628 = metadata !{i32 614, i32 0, metadata !625, metadata !294}
!629 = metadata !{i32 616, i32 0, metadata !615, metadata !294}
!630 = metadata !{i32 786688, metadata !122, metadata !"significant_octets", metadata !6, i32 595, metadata !14, i32 0, metadata !294} ; [ DW_TAG_auto_variable ] [significant_octets] [line 595]
!631 = metadata !{i32 618, i32 0, metadata !615, metadata !294}
!632 = metadata !{i32 619, i32 0, metadata !633, metadata !294}
!633 = metadata !{i32 786443, metadata !615, i32 618, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!634 = metadata !{i32 620, i32 0, metadata !633, metadata !294}
!635 = metadata !{i32 621, i32 0, metadata !633, metadata !294}
!636 = metadata !{i32 622, i32 0, metadata !633, metadata !294}
!637 = metadata !{i32 40}
!638 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !639} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!639 = metadata !{i32 624, i32 0, metadata !615, metadata !294}
!640 = metadata !{i32 80, i32 0, metadata !135, metadata !639}
!641 = metadata !{i32 82, i32 0, metadata !276, metadata !639}
!642 = metadata !{i32 625, i32 0, metadata !615, metadata !294}
!643 = metadata !{i32 628, i32 0, metadata !644, metadata !294}
!644 = metadata !{i32 786443, metadata !645, i32 628, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!645 = metadata !{i32 786443, metadata !615, i32 627, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!646 = metadata !{i32 626, i32 0, metadata !615, metadata !294}
!647 = metadata !{i32 629, i32 0, metadata !648, metadata !294}
!648 = metadata !{i32 786443, metadata !644, i32 628, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!649 = metadata !{i32 46}
!650 = metadata !{i32 786689, metadata !135, metadata !"__c", metadata !136, i32 16777296, metadata !106, i32 0, metadata !651} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!651 = metadata !{i32 630, i32 0, metadata !648, metadata !294}
!652 = metadata !{i32 80, i32 0, metadata !135, metadata !651}
!653 = metadata !{i32 82, i32 0, metadata !276, metadata !651}
!654 = metadata !{i32 631, i32 0, metadata !648, metadata !294}
!655 = metadata !{i32 633, i32 0, metadata !656, metadata !294}
!656 = metadata !{i32 786443, metadata !645, i32 633, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!657 = metadata !{i32 634, i32 0, metadata !656, metadata !294}
!658 = metadata !{i32 635, i32 0, metadata !645, metadata !294}
!659 = metadata !{i32 637, i32 0, metadata !615, metadata !294}
!660 = metadata !{i32 638, i32 0, metadata !615, metadata !294}
!661 = metadata !{i32 639, i32 0, metadata !615, metadata !294}
!662 = metadata !{i32 640, i32 0, metadata !615, metadata !294}
!663 = metadata !{i32 604, i32 0, metadata !122, metadata !294}
!664 = metadata !{i32 648, i32 0, metadata !665, metadata !294}
!665 = metadata !{i32 786443, metadata !118, i32 647, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!666 = metadata !{i32 649, i32 0, metadata !665, metadata !294}
!667 = metadata !{i32 650, i32 0, metadata !665, metadata !294}
!668 = metadata !{i32 651, i32 0, metadata !665, metadata !294}
!669 = metadata !{i32 658, i32 0, metadata !115, metadata !294}
!670 = metadata !{i32 659, i32 0, metadata !671, metadata !294}
!671 = metadata !{i32 786443, metadata !115, i32 658, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!672 = metadata !{i32 660, i32 0, metadata !671, metadata !294}
!673 = metadata !{i32 661, i32 0, metadata !671, metadata !294}
!674 = metadata !{i32 665, i32 0, metadata !98, metadata !294}
!675 = metadata !{i32 666, i32 0, metadata !98, metadata !294}
!676 = metadata !{i32 137, i32 0, metadata !22, null}
!677 = metadata !{i32 786689, metadata !64, metadata !"bp", metadata !6, i32 16777884, metadata !9, i32 0, metadata !678} ; [ DW_TAG_arg_variable ] [bp] [line 668]
!678 = metadata !{i32 138, i32 0, metadata !22, null}
!679 = metadata !{i32 668, i32 0, metadata !64, metadata !678}
!680 = metadata !{i32 674, i32 0, metadata !71, metadata !678}
!681 = metadata !{i32 677, i32 0, metadata !71, metadata !678}
!682 = metadata !{i32 679, i32 0, metadata !71, metadata !678}
!683 = metadata !{i32 680, i32 0, metadata !71, metadata !678}
!684 = metadata !{i32 682, i32 0, metadata !685, metadata !678}
!685 = metadata !{i32 786443, metadata !71, i32 681, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!686 = metadata !{i32 684, i32 0, metadata !685, metadata !678}
!687 = metadata !{i32 685, i32 0, metadata !685, metadata !678}
!688 = metadata !{i32 689, i32 0, metadata !689, metadata !678}
!689 = metadata !{i32 786443, metadata !71, i32 688, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!690 = metadata !{i32 691, i32 0, metadata !689, metadata !678}
!691 = metadata !{i32 692, i32 0, metadata !689, metadata !678}
!692 = metadata !{i32 696, i32 0, metadata !693, metadata !678}
!693 = metadata !{i32 786443, metadata !71, i32 695, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!694 = metadata !{i32 698, i32 0, metadata !693, metadata !678}
!695 = metadata !{i32 699, i32 0, metadata !693, metadata !678}
!696 = metadata !{i32 703, i32 0, metadata !697, metadata !678}
!697 = metadata !{i32 786443, metadata !71, i32 702, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!698 = metadata !{i32 705, i32 0, metadata !697, metadata !678}
!699 = metadata !{i32 706, i32 0, metadata !697, metadata !678}
!700 = metadata !{i32 710, i32 0, metadata !701, metadata !678}
!701 = metadata !{i32 786443, metadata !71, i32 709, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!702 = metadata !{i32 712, i32 0, metadata !701, metadata !678}
!703 = metadata !{i32 713, i32 0, metadata !701, metadata !678}
!704 = metadata !{i32 717, i32 0, metadata !705, metadata !678}
!705 = metadata !{i32 786443, metadata !71, i32 716, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!706 = metadata !{i32 719, i32 0, metadata !705, metadata !678}
!707 = metadata !{i32 720, i32 0, metadata !705, metadata !678}
!708 = metadata !{i32 724, i32 0, metadata !709, metadata !678}
!709 = metadata !{i32 786443, metadata !71, i32 723, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!710 = metadata !{i32 726, i32 0, metadata !709, metadata !678}
!711 = metadata !{i32 727, i32 0, metadata !709, metadata !678}
!712 = metadata !{i32 731, i32 0, metadata !713, metadata !678}
!713 = metadata !{i32 786443, metadata !71, i32 730, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-bootp.c]
!714 = metadata !{i32 733, i32 0, metadata !713, metadata !678}
!715 = metadata !{i32 734, i32 0, metadata !713, metadata !678}
!716 = metadata !{i32 739, i32 0, metadata !71, metadata !678}
!717 = metadata !{i32 741, i32 0, metadata !71, metadata !678}
!718 = metadata !{i32 141, i32 0, metadata !63, null}
!719 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !143, i32 16777413, metadata !152, i32 0, metadata !718} ; [ DW_TAG_arg_variable ] [x] [line 197]
!720 = metadata !{i32 197, i32 0, metadata !149, metadata !718}
!721 = metadata !{i32 199, i32 0, metadata !229, metadata !718}
!722 = metadata !{i32 142, i32 0, metadata !63, null}
!723 = metadata !{i32 143, i32 0, metadata !63, null}
!724 = metadata !{i32 147, i32 0, metadata !22, null}
!725 = metadata !{i32 148, i32 0, metadata !22, null}
