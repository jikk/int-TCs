; ModuleID = '../src/print-domain.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.tok = type { i32, i8* }
%struct.netdissect_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.sa_list*, %struct.sa_list*, i8*, %struct.esp_algorithm*, i8*, i32, i8*, i32, i32, i8*, i8*, i32, void (%struct.netdissect_options*, i8*, i32)*, void (%struct.netdissect_options*, i32)*, i32 (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)* }
%struct.sa_list = type opaque
%struct.esp_algorithm = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"MD\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"MF\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"SOA\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"MG\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"WKS\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"HINFO\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"MINFO\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"RP\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"AFSDB\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"X25\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"ISDN\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"NSAP\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"NSAP_PTR\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"GPOS\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"LOC\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"NXT\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"EID\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"NIMLOC\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"SRV\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"ATMA\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"NAPTR\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"KX\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"CERT\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"DNAME\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"SINK\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"OPT\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"APL\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"DS\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"SSHFP\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"IPSECKEY\00", align 1
@.str45 = private unnamed_addr constant [6 x i8] c"RRSIG\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"NSEC\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"DNSKEY\00", align 1
@.str48 = private unnamed_addr constant [4 x i8] c"SPF\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"UINFO\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str51 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@.str52 = private unnamed_addr constant [7 x i8] c"UNSPEC\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"UNSPECA\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"TKEY\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"TSIG\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"IXFR\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@.str58 = private unnamed_addr constant [6 x i8] c"MAILB\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"MAILA\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@ns_type2str = global [62 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0) }, %struct.tok { i32 2, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0) }, %struct.tok { i32 3, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0) }, %struct.tok { i32 4, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0) }, %struct.tok { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0) }, %struct.tok { i32 6, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0) }, %struct.tok { i32 7, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0) }, %struct.tok { i32 8, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0) }, %struct.tok { i32 9, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0) }, %struct.tok { i32 10, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0) }, %struct.tok { i32 11, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0) }, %struct.tok { i32 12, i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0) }, %struct.tok { i32 13, i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0) }, %struct.tok { i32 14, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0) }, %struct.tok { i32 15, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0) }, %struct.tok { i32 16, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0) }, %struct.tok { i32 17, i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0) }, %struct.tok { i32 18, i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0) }, %struct.tok { i32 19, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0) }, %struct.tok { i32 20, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0) }, %struct.tok { i32 21, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0) }, %struct.tok { i32 22, i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0) }, %struct.tok { i32 23, i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0) }, %struct.tok { i32 24, i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0) }, %struct.tok { i32 25, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0) }, %struct.tok { i32 26, i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0) }, %struct.tok { i32 27, i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0) }, %struct.tok { i32 28, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0) }, %struct.tok { i32 29, i8* getelementptr inbounds ([4 x i8]* @.str28, i32 0, i32 0) }, %struct.tok { i32 30, i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0) }, %struct.tok { i32 31, i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0) }, %struct.tok { i32 32, i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0) }, %struct.tok { i32 33, i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0) }, %struct.tok { i32 34, i8* getelementptr inbounds ([5 x i8]* @.str33, i32 0, i32 0) }, %struct.tok { i32 35, i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0) }, %struct.tok { i32 36, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0) }, %struct.tok { i32 37, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0) }, %struct.tok { i32 38, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0) }, %struct.tok { i32 39, i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0) }, %struct.tok { i32 40, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0) }, %struct.tok { i32 41, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0) }, %struct.tok { i32 42, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0) }, %struct.tok { i32 43, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0) }, %struct.tok { i32 44, i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0) }, %struct.tok { i32 45, i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0) }, %struct.tok { i32 46, i8* getelementptr inbounds ([6 x i8]* @.str45, i32 0, i32 0) }, %struct.tok { i32 47, i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0) }, %struct.tok { i32 48, i8* getelementptr inbounds ([7 x i8]* @.str47, i32 0, i32 0) }, %struct.tok { i32 99, i8* getelementptr inbounds ([4 x i8]* @.str48, i32 0, i32 0) }, %struct.tok { i32 100, i8* getelementptr inbounds ([6 x i8]* @.str49, i32 0, i32 0) }, %struct.tok { i32 101, i8* getelementptr inbounds ([4 x i8]* @.str50, i32 0, i32 0) }, %struct.tok { i32 102, i8* getelementptr inbounds ([4 x i8]* @.str51, i32 0, i32 0) }, %struct.tok { i32 103, i8* getelementptr inbounds ([7 x i8]* @.str52, i32 0, i32 0) }, %struct.tok { i32 104, i8* getelementptr inbounds ([8 x i8]* @.str53, i32 0, i32 0) }, %struct.tok { i32 249, i8* getelementptr inbounds ([5 x i8]* @.str54, i32 0, i32 0) }, %struct.tok { i32 250, i8* getelementptr inbounds ([5 x i8]* @.str55, i32 0, i32 0) }, %struct.tok { i32 251, i8* getelementptr inbounds ([5 x i8]* @.str56, i32 0, i32 0) }, %struct.tok { i32 252, i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0) }, %struct.tok { i32 253, i8* getelementptr inbounds ([6 x i8]* @.str58, i32 0, i32 0) }, %struct.tok { i32 254, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0) }, %struct.tok { i32 255, i8* getelementptr inbounds ([4 x i8]* @.str60, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@.str61 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"CHAOS\00", align 1
@.str63 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@ns_class2str = global [5 x %struct.tok] [%struct.tok { i32 1, i8* getelementptr inbounds ([3 x i8]* @.str61, i32 0, i32 0) }, %struct.tok { i32 3, i8* getelementptr inbounds ([6 x i8]* @.str62, i32 0, i32 0) }, %struct.tok { i32 4, i8* getelementptr inbounds ([3 x i8]* @.str63, i32 0, i32 0) }, %struct.tok { i32 255, i8* getelementptr inbounds ([4 x i8]* @.str60, i32 0, i32 0) }, %struct.tok zeroinitializer], align 4
@gndo = external global %struct.netdissect_options*
@.str64 = private unnamed_addr constant [15 x i8] c"%d%s%s%s%s%s%s\00", align 1
@ns_ops = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str140, i32 0, i32 0)], align 4
@ns_resp = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str125, i32 0, i32 0)], align 4
@.str65 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str68 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str69 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str70 = private unnamed_addr constant [7 x i8] c" [%dq]\00", align 1
@.str71 = private unnamed_addr constant [4 x i8] c" q:\00", align 1
@stdout = external global %struct._IO_FILE*
@.str72 = private unnamed_addr constant [10 x i8] c" %d/%d/%d\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c" ns:\00", align 1
@.str74 = private unnamed_addr constant [5 x i8] c" ar:\00", align 1
@.str75 = private unnamed_addr constant [9 x i8] c"%d%s%s%s\00", align 1
@.str77 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str78 = private unnamed_addr constant [13 x i8] c" [b2&3=0x%x]\00", align 1
@.str79 = private unnamed_addr constant [7 x i8] c" [%da]\00", align 1
@.str80 = private unnamed_addr constant [7 x i8] c" [%dn]\00", align 1
@.str81 = private unnamed_addr constant [8 x i8] c" [%dau]\00", align 1
@0 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str82 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str83 = private unnamed_addr constant [10 x i8] c"[|domain]\00", align 1
@.str84 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str85 = private unnamed_addr constant [11 x i8] c"(Class %d)\00", align 1
@.str86 = private unnamed_addr constant [15 x i8] c" (Cache flush)\00", align 1
@.str87 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@1 = internal unnamed_addr constant [10 x i8] c"u_int32_t\00"
@.str89 = private unnamed_addr constant [7 x i8] c"Type%d\00", align 1
@.str90 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str91 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str92 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str93 = private unnamed_addr constant [10 x i8] c":%d %d %d\00", align 1
@.str94 = private unnamed_addr constant [12 x i8] c" UDPsize=%u\00", align 1
@.str95 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str96 = private unnamed_addr constant [10 x i8] c" fudge=%u\00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c" maclen=%u\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c" origid=%u\00", align 1
@.str99 = private unnamed_addr constant [10 x i8] c" error=%u\00", align 1
@.str100 = private unnamed_addr constant [13 x i8] c" otherlen=%u\00", align 1
@.str101 = private unnamed_addr constant [7 x i8] c"<LOOP>\00", align 1
@.str102 = private unnamed_addr constant [9 x i8] c"<ELT %d>\00", align 1
@2 = internal unnamed_addr constant [3 x i8] c"+=\00"
@3 = internal unnamed_addr constant [6 x i8] c"u_int\00"
@4 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str103 = private unnamed_addr constant [4 x i8] c"\5C[x\00", align 1
@.str104 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@5 = internal unnamed_addr constant [3 x i8] c"-=\00"
@6 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@7 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@8 = internal unnamed_addr constant [5 x i8] c"char\00"
@.str105 = private unnamed_addr constant [4 x i8] c"%1x\00", align 1
@9 = internal unnamed_addr constant [2 x i8] c"-\00", align 1
@10 = internal unnamed_addr constant [3 x i8] c"<<\00"
@.str106 = private unnamed_addr constant [5 x i8] c"/%d]\00", align 1
@.str107 = private unnamed_addr constant [8 x i8] c".../%d]\00", align 1
@11 = internal unnamed_addr constant [2 x i8] c"+\00", align 1
@12 = internal unnamed_addr constant [4 x i8] c"int\00"
@13 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@14 = internal unnamed_addr constant [22 x i8] c"../src/print-domain.c\00"
@.str108 = private unnamed_addr constant [6 x i8] c" (QU)\00", align 1
@.str109 = private unnamed_addr constant [6 x i8] c" (QM)\00", align 1
@.str110 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@.str111 = private unnamed_addr constant [9 x i8] c" FormErr\00", align 1
@.str112 = private unnamed_addr constant [10 x i8] c" ServFail\00", align 1
@.str113 = private unnamed_addr constant [10 x i8] c" NXDomain\00", align 1
@.str114 = private unnamed_addr constant [8 x i8] c" NotImp\00", align 1
@.str115 = private unnamed_addr constant [9 x i8] c" Refused\00", align 1
@.str116 = private unnamed_addr constant [10 x i8] c" YXDomain\00", align 1
@.str117 = private unnamed_addr constant [9 x i8] c" YXRRSet\00", align 1
@.str118 = private unnamed_addr constant [9 x i8] c" NXRRSet\00", align 1
@.str119 = private unnamed_addr constant [9 x i8] c" NotAuth\00", align 1
@.str120 = private unnamed_addr constant [9 x i8] c" NotZone\00", align 1
@.str121 = private unnamed_addr constant [8 x i8] c" Resp11\00", align 1
@.str122 = private unnamed_addr constant [8 x i8] c" Resp12\00", align 1
@.str123 = private unnamed_addr constant [8 x i8] c" Resp13\00", align 1
@.str124 = private unnamed_addr constant [8 x i8] c" Resp14\00", align 1
@.str125 = private unnamed_addr constant [10 x i8] c" NoChange\00", align 1
@.str126 = private unnamed_addr constant [7 x i8] c" inv_q\00", align 1
@.str127 = private unnamed_addr constant [6 x i8] c" stat\00", align 1
@.str128 = private unnamed_addr constant [5 x i8] c" op3\00", align 1
@.str129 = private unnamed_addr constant [8 x i8] c" notify\00", align 1
@.str130 = private unnamed_addr constant [8 x i8] c" update\00", align 1
@.str131 = private unnamed_addr constant [5 x i8] c" op6\00", align 1
@.str132 = private unnamed_addr constant [5 x i8] c" op7\00", align 1
@.str133 = private unnamed_addr constant [5 x i8] c" op8\00", align 1
@.str134 = private unnamed_addr constant [9 x i8] c" updataA\00", align 1
@.str135 = private unnamed_addr constant [9 x i8] c" updateD\00", align 1
@.str136 = private unnamed_addr constant [10 x i8] c" updateDA\00", align 1
@.str137 = private unnamed_addr constant [9 x i8] c" updateM\00", align 1
@.str138 = private unnamed_addr constant [10 x i8] c" updateMA\00", align 1
@.str139 = private unnamed_addr constant [10 x i8] c" zoneInit\00", align 1
@.str140 = private unnamed_addr constant [9 x i8] c" zoneRef\00", align 1

define void @ns_print(i8* %bp, i32 %length, i32 %is_mdns) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %bp}, i64 0, metadata !20), !dbg !173
  tail call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !21), !dbg !173
  tail call void @llvm.dbg.value(metadata !{i32 %is_mdns}, i64 0, metadata !22), !dbg !173
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !174, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !174
  %1 = load i8** %ndo_snapend, align 4, !dbg !174, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %1, i32 -12, !dbg !174
  %cmp4 = icmp ult i8* %add.ptr, %bp, !dbg !174
  br i1 %cmp4, label %trunc, label %if.end, !dbg !174

if.end:                                           ; preds = %entry
  %qdcount5 = getelementptr inbounds i8* %bp, i32 4, !dbg !178
  %2 = bitcast i8* %qdcount5 to i16*, !dbg !178
  %3 = load i16* %2, align 2, !dbg !178, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %3}, i64 0, metadata !180) nounwind, !dbg !181
  %4 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %3) nounwind, !dbg !182, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %4}, i64 0, metadata !180) nounwind, !dbg !182
  %conv = zext i16 %4 to i32, !dbg !178
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !41), !dbg !178
  %ancount6 = getelementptr inbounds i8* %bp, i32 6, !dbg !185
  %5 = bitcast i8* %ancount6 to i16*, !dbg !185
  %6 = load i16* %5, align 2, !dbg !185, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %6}, i64 0, metadata !186) nounwind, !dbg !187
  %7 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %6) nounwind, !dbg !188, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %7}, i64 0, metadata !186) nounwind, !dbg !188
  %conv8 = zext i16 %7 to i32, !dbg !185
  tail call void @llvm.dbg.value(metadata !{i32 %conv8}, i64 0, metadata !42), !dbg !185
  %nscount9 = getelementptr inbounds i8* %bp, i32 8, !dbg !189
  %8 = bitcast i8* %nscount9 to i16*, !dbg !189
  %9 = load i16* %8, align 2, !dbg !189, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %9}, i64 0, metadata !190) nounwind, !dbg !191
  %10 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %9) nounwind, !dbg !192, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %10}, i64 0, metadata !190) nounwind, !dbg !192
  %conv11 = zext i16 %10 to i32, !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %conv11}, i64 0, metadata !43), !dbg !189
  %arcount12 = getelementptr inbounds i8* %bp, i32 10, !dbg !193
  %11 = bitcast i8* %arcount12 to i16*, !dbg !193
  %12 = load i16* %11, align 2, !dbg !193, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %12}, i64 0, metadata !194) nounwind, !dbg !195
  %13 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %12) nounwind, !dbg !196, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %13}, i64 0, metadata !194) nounwind, !dbg !196
  %conv14 = zext i16 %13 to i32, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %conv14}, i64 0, metadata !44), !dbg !193
  %14 = getelementptr inbounds i8* %bp, i32 2, !dbg !197
  %15 = load i8* %14, align 1, !dbg !197, !tbaa !176
  %tobool = icmp slt i8 %15, 0, !dbg !197
  %id = bitcast i8* %bp to i16*, !dbg !198
  %16 = load i16* %id, align 2, !dbg !198, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %16}, i64 0, metadata !200) nounwind, !dbg !201
  %17 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %16) nounwind, !dbg !202, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %17}, i64 0, metadata !200) nounwind, !dbg !202
  %conv18 = zext i16 %17 to i32, !dbg !198
  %18 = load i8* %14, align 1, !dbg !198, !tbaa !176
  %conv20 = zext i8 %18 to i32, !dbg !198
  %shr511 = lshr i32 %conv20, 3, !dbg !198
  %and21 = and i32 %shr511, 15, !dbg !198
  %arrayidx = getelementptr inbounds [16 x i8*]* @ns_ops, i32 0, i32 %and21, !dbg !198
  %19 = load i8** %arrayidx, align 4, !dbg !198, !tbaa !175
  br i1 %tobool, label %cont, label %cont194, !dbg !197

cont:                                             ; preds = %if.end
  %20 = getelementptr inbounds i8* %bp, i32 3, !dbg !198
  %21 = load i8* %20, align 1, !dbg !198, !tbaa !176
  %conv22 = zext i8 %21 to i32, !dbg !198
  %and23 = and i32 %conv22, 15, !dbg !198
  %arrayidx24 = getelementptr inbounds [16 x i8*]* @ns_resp, i32 0, i32 %and23, !dbg !198
  %22 = load i8** %arrayidx24, align 4, !dbg !198, !tbaa !175
  %and27 = and i32 %conv20, 4, !dbg !198
  %tobool28 = icmp ne i32 %and27, 0, !dbg !198
  %cond = select i1 %tobool28, i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), !dbg !198
  %and31 = and i32 %conv22, 128, !dbg !198
  %tobool32 = icmp ne i32 %and31, 0, !dbg !198
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), !dbg !198
  %and36 = and i32 %conv20, 2, !dbg !198
  %tobool37 = icmp ne i32 %and36, 0, !dbg !198
  %cond38 = select i1 %tobool37, i8* getelementptr inbounds ([2 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), !dbg !198
  %and41 = and i32 %conv22, 32, !dbg !198
  %tobool42 = icmp ne i32 %and41, 0, !dbg !198
  %cond43 = select i1 %tobool42, i8* getelementptr inbounds ([2 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), !dbg !198
  %call44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str64, i32 0, i32 0), i32 %conv18, i8* %19, i8* %22, i8* %cond, i8* %cond33, i8* %cond38, i8* %cond43) nounwind, !dbg !198
  %cmp45 = icmp eq i16 %4, 1, !dbg !203
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !203

if.then47:                                        ; preds = %cont
  %call48 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str70, i32 0, i32 0), i32 %conv) nounwind, !dbg !204
  br label %if.end49, !dbg !204

if.end49:                                         ; preds = %cont, %if.then47
  %add.ptr50 = getelementptr inbounds i8* %bp, i32 12, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr50}, i64 0, metadata !45), !dbg !205
  br label %while.cond, !dbg !206

while.cond:                                       ; preds = %if.end77, %if.then66, %if.end49
  %cp.0 = phi i8* [ %add.ptr50, %if.end49 ], [ %call68, %if.then66 ], [ %add.ptr78, %if.end77 ]
  %qdcount.0 = phi i32 [ %conv, %if.end49 ], [ %24, %if.then66 ], [ %24, %if.end77 ]
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %qdcount.0, i32 -1), !dbg !206
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !206
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !206
  br i1 %25, label %ioc_bb51, label %cont52, !dbg !206

ioc_bb51:                                         ; preds = %while.cond
  %26 = sext i32 %qdcount.0 to i64, !dbg !206
  tail call void @__ioc_report_add_overflow(i32 590, i32 18, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %26, i64 -1, i8 13) nounwind, !dbg !206
  br label %cont52, !dbg !206

cont52:                                           ; preds = %while.cond, %ioc_bb51
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !41), !dbg !206
  %tobool53 = icmp eq i32 %qdcount.0, 0, !dbg !206
  br i1 %tobool53, label %while.end, label %while.body, !dbg !206

while.body:                                       ; preds = %cont52
  %27 = load i16* %2, align 2, !dbg !207, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %27}, i64 0, metadata !209) nounwind, !dbg !210
  %28 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %27) nounwind, !dbg !211, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %28}, i64 0, metadata !209) nounwind, !dbg !211
  %conv56 = zext i16 %28 to i32, !dbg !207
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv56, i32 1), !dbg !207
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !207
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !207
  br i1 %31, label %ioc_bb57, label %cont58, !dbg !207

ioc_bb57:                                         ; preds = %while.body
  %32 = zext i16 %28 to i64, !dbg !207
  tail call void @__ioc_report_sub_overflow(i32 591, i32 86, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind, !dbg !207
  br label %cont58, !dbg !207

cont58:                                           ; preds = %while.body, %ioc_bb57
  %cmp59 = icmp slt i32 %24, %30, !dbg !207
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !207

if.then61:                                        ; preds = %cont58
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !213) nounwind, !dbg !215
  %33 = load %struct._IO_FILE** @stdout, align 4, !dbg !216, !tbaa !175
  %call.i = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %33) nounwind, !dbg !216
  br label %if.end63, !dbg !214

if.end63:                                         ; preds = %if.then61, %cont58
  %34 = load %struct.netdissect_options** @gndo, align 4, !dbg !218, !tbaa !175
  %ndo_vflag = getelementptr inbounds %struct.netdissect_options* %34, i32 0, i32 14, !dbg !218
  %35 = load i32* %ndo_vflag, align 4, !dbg !218, !tbaa !219
  %cmp64 = icmp sgt i32 %35, 1, !dbg !218
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !218

if.then66:                                        ; preds = %if.end63
  %36 = load %struct._IO_FILE** @stdout, align 4, !dbg !220, !tbaa !175
  %37 = tail call i32 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 3, i32 1, %struct._IO_FILE* %36), !dbg !220
  %call68 = tail call fastcc i8* @ns_qprint(i8* %cp.0, i8* %bp, i32 %is_mdns), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i8* %call68}, i64 0, metadata !45), !dbg !222
  %cmp69 = icmp eq i8* %call68, null, !dbg !222
  br i1 %cmp69, label %trunc, label %while.cond, !dbg !222

if.else:                                          ; preds = %if.end63
  %call73 = tail call fastcc i8* @ns_nskip(i8* %cp.0), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i8* %call73}, i64 0, metadata !45), !dbg !223
  %cmp74 = icmp eq i8* %call73, null, !dbg !223
  br i1 %cmp74, label %trunc, label %if.end77, !dbg !223

if.end77:                                         ; preds = %if.else
  %add.ptr78 = getelementptr inbounds i8* %call73, i32 4, !dbg !225
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr78}, i64 0, metadata !45), !dbg !225
  br label %while.cond

while.end:                                        ; preds = %cont52
  %call80 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str72, i32 0, i32 0), i32 %conv8, i32 %conv11, i32 %conv14) nounwind, !dbg !226
  %38 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv8, i32 -1), !dbg !227
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !227
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !227
  br i1 %40, label %ioc_bb81, label %cont82, !dbg !227

ioc_bb81:                                         ; preds = %while.end
  %41 = zext i16 %7 to i64, !dbg !227
  tail call void @__ioc_report_add_overflow(i32 606, i32 16, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %41, i64 -1, i8 13) nounwind, !dbg !227
  br label %cont82, !dbg !227

cont82:                                           ; preds = %while.end, %ioc_bb81
  tail call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !42), !dbg !227
  %tobool83 = icmp eq i16 %7, 0, !dbg !227
  br i1 %tobool83, label %if.end105, label %if.then84, !dbg !227

if.then84:                                        ; preds = %cont82
  %call85 = tail call fastcc i8* @ns_rprint(i8* %cp.0, i8* %bp, i32 %is_mdns), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i8* %call85}, i64 0, metadata !45), !dbg !228
  %cmp86 = icmp eq i8* %call85, null, !dbg !228
  br i1 %cmp86, label %trunc, label %while.cond90, !dbg !228

while.cond90:                                     ; preds = %if.then84, %while.body97
  %ancount.0 = phi i32 [ %45, %while.body97 ], [ %39, %if.then84 ]
  %cp.1 = phi i8* [ %call99, %while.body97 ], [ %call85, %if.then84 ]
  %42 = load %struct.netdissect_options** @gndo, align 4, !dbg !230, !tbaa !175
  %ndo_snapend91 = getelementptr inbounds %struct.netdissect_options* %42, i32 0, i32 45, !dbg !230
  %43 = load i8** %ndo_snapend91, align 4, !dbg !230, !tbaa !175
  %cmp92 = icmp ult i8* %cp.1, %43, !dbg !230
  br i1 %cmp92, label %land.rhs, label %if.end105, !dbg !230

land.rhs:                                         ; preds = %while.cond90
  %44 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ancount.0, i32 -1), !dbg !230
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !230
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !230
  br i1 %46, label %ioc_bb94, label %cont95, !dbg !230

ioc_bb94:                                         ; preds = %land.rhs
  %47 = sext i32 %ancount.0 to i64, !dbg !230
  tail call void @__ioc_report_add_overflow(i32 609, i32 48, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %47, i64 -1, i8 13) nounwind, !dbg !230
  br label %cont95, !dbg !230

cont95:                                           ; preds = %land.rhs, %ioc_bb94
  tail call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !42), !dbg !230
  %tobool96 = icmp eq i32 %ancount.0, 0, !dbg !230
  br i1 %tobool96, label %if.end105, label %while.body97

while.body97:                                     ; preds = %cont95
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !231) nounwind, !dbg !234
  %48 = load %struct._IO_FILE** @stdout, align 4, !dbg !235, !tbaa !175
  %call.i512 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %48) nounwind, !dbg !235
  %call99 = tail call fastcc i8* @ns_rprint(i8* %cp.1, i8* %bp, i32 %is_mdns), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i8* %call99}, i64 0, metadata !45), !dbg !236
  %cmp100 = icmp eq i8* %call99, null, !dbg !236
  br i1 %cmp100, label %trunc, label %while.cond90, !dbg !236

if.end105:                                        ; preds = %cont95, %while.cond90, %cont82
  %ancount.1 = phi i32 [ %39, %cont82 ], [ %45, %cont95 ], [ %ancount.0, %while.cond90 ]
  %cp.2 = phi i8* [ %cp.0, %cont82 ], [ %cp.1, %cont95 ], [ %cp.1, %while.cond90 ]
  %cmp106 = icmp sgt i32 %ancount.1, 0, !dbg !237
  br i1 %cmp106, label %trunc, label %if.end109, !dbg !237

if.end109:                                        ; preds = %if.end105
  %49 = load %struct.netdissect_options** @gndo, align 4, !dbg !238, !tbaa !175
  %ndo_vflag110 = getelementptr inbounds %struct.netdissect_options* %49, i32 0, i32 14, !dbg !238
  %50 = load i32* %ndo_vflag110, align 4, !dbg !238, !tbaa !219
  %cmp111 = icmp sgt i32 %50, 1, !dbg !238
  br i1 %cmp111, label %if.then113, label %if.end392, !dbg !238

if.then113:                                       ; preds = %if.end109
  %ndo_snapend114 = getelementptr inbounds %struct.netdissect_options* %49, i32 0, i32 45, !dbg !239
  %51 = load i8** %ndo_snapend114, align 4, !dbg !239, !tbaa !175
  %cmp115 = icmp ult i8* %cp.2, %51, !dbg !239
  br i1 %cmp115, label %land.lhs.true117, label %if.end145, !dbg !239

land.lhs.true117:                                 ; preds = %if.then113
  %52 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv11, i32 -1), !dbg !239
  %53 = extractvalue { i32, i1 } %52, 0, !dbg !239
  %54 = extractvalue { i32, i1 } %52, 1, !dbg !239
  br i1 %54, label %ioc_bb118, label %cont119, !dbg !239

ioc_bb118:                                        ; preds = %land.lhs.true117
  %55 = zext i16 %10 to i64, !dbg !239
  tail call void @__ioc_report_add_overflow(i32 619, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %55, i64 -1, i8 13) nounwind, !dbg !239
  br label %cont119, !dbg !239

cont119:                                          ; preds = %land.lhs.true117, %ioc_bb118
  tail call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !43), !dbg !239
  %tobool120 = icmp eq i16 %10, 0, !dbg !239
  br i1 %tobool120, label %if.end145, label %if.then121, !dbg !239

if.then121:                                       ; preds = %cont119
  %56 = load %struct._IO_FILE** @stdout, align 4, !dbg !241, !tbaa !175
  %57 = tail call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %56), !dbg !241
  %call123 = tail call fastcc i8* @ns_rprint(i8* %cp.2, i8* %bp, i32 %is_mdns), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i8* %call123}, i64 0, metadata !45), !dbg !243
  %cmp124 = icmp eq i8* %call123, null, !dbg !243
  br i1 %cmp124, label %trunc, label %while.cond128, !dbg !243

while.cond128:                                    ; preds = %if.then121, %while.body137
  %nscount.0 = phi i32 [ %61, %while.body137 ], [ %53, %if.then121 ]
  %cp.3 = phi i8* [ %call139, %while.body137 ], [ %call123, %if.then121 ]
  %58 = load %struct.netdissect_options** @gndo, align 4, !dbg !244, !tbaa !175
  %ndo_snapend129 = getelementptr inbounds %struct.netdissect_options* %58, i32 0, i32 45, !dbg !244
  %59 = load i8** %ndo_snapend129, align 4, !dbg !244, !tbaa !175
  %cmp130 = icmp ult i8* %cp.3, %59, !dbg !244
  br i1 %cmp130, label %land.rhs132, label %if.end145, !dbg !244

land.rhs132:                                      ; preds = %while.cond128
  %60 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nscount.0, i32 -1), !dbg !244
  %61 = extractvalue { i32, i1 } %60, 0, !dbg !244
  %62 = extractvalue { i32, i1 } %60, 1, !dbg !244
  br i1 %62, label %ioc_bb133, label %cont134, !dbg !244

ioc_bb133:                                        ; preds = %land.rhs132
  %63 = sext i32 %nscount.0 to i64, !dbg !244
  tail call void @__ioc_report_add_overflow(i32 623, i32 50, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %63, i64 -1, i8 13) nounwind, !dbg !244
  br label %cont134, !dbg !244

cont134:                                          ; preds = %land.rhs132, %ioc_bb133
  tail call void @llvm.dbg.value(metadata !{i32 %61}, i64 0, metadata !43), !dbg !244
  %tobool135 = icmp eq i32 %nscount.0, 0, !dbg !244
  br i1 %tobool135, label %if.end145, label %while.body137

while.body137:                                    ; preds = %cont134
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !245) nounwind, !dbg !248
  %64 = load %struct._IO_FILE** @stdout, align 4, !dbg !249, !tbaa !175
  %call.i513 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %64) nounwind, !dbg !249
  %call139 = tail call fastcc i8* @ns_rprint(i8* %cp.3, i8* %bp, i32 %is_mdns), !dbg !250
  tail call void @llvm.dbg.value(metadata !{i8* %call139}, i64 0, metadata !45), !dbg !250
  %cmp140 = icmp eq i8* %call139, null, !dbg !250
  br i1 %cmp140, label %trunc, label %while.cond128, !dbg !250

if.end145:                                        ; preds = %cont134, %while.cond128, %cont119, %if.then113
  %nscount.1 = phi i32 [ %53, %cont119 ], [ %conv11, %if.then113 ], [ %61, %cont134 ], [ %nscount.0, %while.cond128 ]
  %cp.4 = phi i8* [ %cp.2, %cont119 ], [ %cp.2, %if.then113 ], [ %cp.3, %cont134 ], [ %cp.3, %while.cond128 ]
  %cmp146 = icmp sgt i32 %nscount.1, 0, !dbg !251
  br i1 %cmp146, label %trunc, label %if.end149, !dbg !251

if.end149:                                        ; preds = %if.end145
  %65 = load %struct.netdissect_options** @gndo, align 4, !dbg !252, !tbaa !175
  %ndo_snapend150 = getelementptr inbounds %struct.netdissect_options* %65, i32 0, i32 45, !dbg !252
  %66 = load i8** %ndo_snapend150, align 4, !dbg !252, !tbaa !175
  %cmp151 = icmp ult i8* %cp.4, %66, !dbg !252
  br i1 %cmp151, label %land.lhs.true153, label %if.end181, !dbg !252

land.lhs.true153:                                 ; preds = %if.end149
  %67 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv14, i32 -1), !dbg !252
  %68 = extractvalue { i32, i1 } %67, 0, !dbg !252
  %69 = extractvalue { i32, i1 } %67, 1, !dbg !252
  br i1 %69, label %ioc_bb154, label %cont155, !dbg !252

ioc_bb154:                                        ; preds = %land.lhs.true153
  %70 = zext i16 %13 to i64, !dbg !252
  tail call void @__ioc_report_add_overflow(i32 631, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %70, i64 -1, i8 13) nounwind, !dbg !252
  br label %cont155, !dbg !252

cont155:                                          ; preds = %land.lhs.true153, %ioc_bb154
  tail call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !44), !dbg !252
  %tobool156 = icmp eq i16 %13, 0, !dbg !252
  br i1 %tobool156, label %if.end181, label %if.then157, !dbg !252

if.then157:                                       ; preds = %cont155
  %71 = load %struct._IO_FILE** @stdout, align 4, !dbg !253, !tbaa !175
  %72 = tail call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str74, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %71), !dbg !253
  %call159 = tail call fastcc i8* @ns_rprint(i8* %cp.4, i8* %bp, i32 %is_mdns), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i8* %call159}, i64 0, metadata !45), !dbg !255
  %cmp160 = icmp eq i8* %call159, null, !dbg !255
  br i1 %cmp160, label %trunc, label %while.cond164, !dbg !255

while.cond164:                                    ; preds = %if.then157, %while.body173
  %arcount.0 = phi i32 [ %76, %while.body173 ], [ %68, %if.then157 ]
  %cp.5 = phi i8* [ %call175, %while.body173 ], [ %call159, %if.then157 ]
  %73 = load %struct.netdissect_options** @gndo, align 4, !dbg !256, !tbaa !175
  %ndo_snapend165 = getelementptr inbounds %struct.netdissect_options* %73, i32 0, i32 45, !dbg !256
  %74 = load i8** %ndo_snapend165, align 4, !dbg !256, !tbaa !175
  %cmp166 = icmp ult i8* %cp.5, %74, !dbg !256
  br i1 %cmp166, label %land.rhs168, label %if.end181, !dbg !256

land.rhs168:                                      ; preds = %while.cond164
  %75 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %arcount.0, i32 -1), !dbg !256
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !256
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !256
  br i1 %77, label %ioc_bb169, label %cont170, !dbg !256

ioc_bb169:                                        ; preds = %land.rhs168
  %78 = sext i32 %arcount.0 to i64, !dbg !256
  tail call void @__ioc_report_add_overflow(i32 635, i32 50, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %78, i64 -1, i8 13) nounwind, !dbg !256
  br label %cont170, !dbg !256

cont170:                                          ; preds = %land.rhs168, %ioc_bb169
  tail call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !44), !dbg !256
  %tobool171 = icmp eq i32 %arcount.0, 0, !dbg !256
  br i1 %tobool171, label %if.end181, label %while.body173

while.body173:                                    ; preds = %cont170
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !257) nounwind, !dbg !260
  %79 = load %struct._IO_FILE** @stdout, align 4, !dbg !261, !tbaa !175
  %call.i514 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %79) nounwind, !dbg !261
  %call175 = tail call fastcc i8* @ns_rprint(i8* %cp.5, i8* %bp, i32 %is_mdns), !dbg !262
  tail call void @llvm.dbg.value(metadata !{i8* %call175}, i64 0, metadata !45), !dbg !262
  %cmp176 = icmp eq i8* %call175, null, !dbg !262
  br i1 %cmp176, label %trunc, label %while.cond164, !dbg !262

if.end181:                                        ; preds = %cont170, %while.cond164, %cont155, %if.end149
  %arcount.1 = phi i32 [ %68, %cont155 ], [ %conv14, %if.end149 ], [ %76, %cont170 ], [ %arcount.0, %while.cond164 ]
  %cmp182 = icmp sgt i32 %arcount.1, 0, !dbg !263
  br i1 %cmp182, label %trunc, label %if.end392, !dbg !263

cont194:                                          ; preds = %if.end
  %and200 = and i8 %18, 1, !dbg !264
  %tobool201 = icmp ne i8 %and200, 0, !dbg !264
  %cond202 = select i1 %tobool201, i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), !dbg !264
  %80 = getelementptr inbounds i8* %bp, i32 3, !dbg !264
  %81 = load i8* %80, align 1, !dbg !264, !tbaa !176
  %and205 = and i8 %81, 16, !dbg !264
  %tobool206 = icmp ne i8 %and205, 0, !dbg !264
  %cond207 = select i1 %tobool206, i8* getelementptr inbounds ([2 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str66, i32 0, i32 0), !dbg !264
  %call208 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str75, i32 0, i32 0), i32 %conv18, i8* %19, i8* %cond202, i8* %cond207) nounwind, !dbg !264
  %82 = bitcast i8* %14 to i16*, !dbg !266
  %83 = load i16* %82, align 2, !dbg !266, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %83}, i64 0, metadata !267) nounwind, !dbg !268
  %84 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %83) nounwind, !dbg !269, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %84}, i64 0, metadata !267) nounwind, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i16 %84}, i64 0, metadata !46), !dbg !266
  %conv211 = zext i16 %84 to i32, !dbg !270
  %and212 = and i32 %conv211, 1743, !dbg !270
  %tobool213 = icmp eq i32 %and212, 0, !dbg !270
  br i1 %tobool213, label %cont221, label %if.then214, !dbg !270

if.then214:                                       ; preds = %cont194
  %call216 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str78, i32 0, i32 0), i32 %conv211) nounwind, !dbg !271
  br label %cont221, !dbg !271

cont221:                                          ; preds = %if.then214, %cont194
  %85 = load i8* %14, align 1, !dbg !272, !tbaa !176
  %and223 = and i8 %85, 120, !dbg !272
  %cmp224 = icmp eq i8 %and223, 8, !dbg !272
  br i1 %cmp224, label %if.then226, label %if.else236, !dbg !272

if.then226:                                       ; preds = %cont221
  %tobool227 = icmp eq i16 %4, 0, !dbg !273
  br i1 %tobool227, label %if.end230, label %if.then228, !dbg !273

if.then228:                                       ; preds = %if.then226
  %call229 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str70, i32 0, i32 0), i32 %conv) nounwind, !dbg !275
  br label %if.end230, !dbg !275

if.end230:                                        ; preds = %if.then226, %if.then228
  %cmp231 = icmp eq i16 %7, 1, !dbg !276
  br i1 %cmp231, label %if.end246, label %if.then233, !dbg !276

if.then233:                                       ; preds = %if.end230
  %call234 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str79, i32 0, i32 0), i32 %conv8) nounwind, !dbg !277
  br label %if.end246, !dbg !277

if.else236:                                       ; preds = %cont221
  %tobool237 = icmp eq i16 %7, 0, !dbg !278
  br i1 %tobool237, label %if.end240, label %if.then238, !dbg !278

if.then238:                                       ; preds = %if.else236
  %call239 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str79, i32 0, i32 0), i32 %conv8) nounwind, !dbg !280
  br label %if.end240, !dbg !280

if.end240:                                        ; preds = %if.else236, %if.then238
  %cmp241 = icmp eq i16 %4, 1, !dbg !281
  br i1 %cmp241, label %if.end246, label %if.then243, !dbg !281

if.then243:                                       ; preds = %if.end240
  %call244 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str70, i32 0, i32 0), i32 %conv) nounwind, !dbg !282
  br label %if.end246, !dbg !282

if.end246:                                        ; preds = %if.end230, %if.end240, %if.then243, %if.then233
  %tobool247 = icmp ne i16 %10, 0, !dbg !283
  br i1 %tobool247, label %if.then248, label %if.end250, !dbg !283

if.then248:                                       ; preds = %if.end246
  %call249 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str80, i32 0, i32 0), i32 %conv11) nounwind, !dbg !284
  br label %if.end250, !dbg !284

if.end250:                                        ; preds = %if.then248, %if.end246
  %tobool251 = icmp ne i16 %13, 0, !dbg !285
  br i1 %tobool251, label %if.then252, label %if.end254, !dbg !285

if.then252:                                       ; preds = %if.end250
  %call253 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str81, i32 0, i32 0), i32 %conv14) nounwind, !dbg !286
  br label %if.end254, !dbg !286

if.end254:                                        ; preds = %if.then252, %if.end250
  %add.ptr255 = getelementptr inbounds i8* %bp, i32 12, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr255}, i64 0, metadata !45), !dbg !287
  %86 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv, i32 -1), !dbg !288
  %87 = extractvalue { i32, i1 } %86, 0, !dbg !288
  %88 = extractvalue { i32, i1 } %86, 1, !dbg !288
  br i1 %88, label %ioc_bb256, label %cont257, !dbg !288

ioc_bb256:                                        ; preds = %if.end254
  %89 = zext i16 %4 to i64, !dbg !288
  tail call void @__ioc_report_add_overflow(i32 669, i32 16, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %89, i64 -1, i8 13) nounwind, !dbg !288
  br label %cont257, !dbg !288

cont257:                                          ; preds = %if.end254, %ioc_bb256
  tail call void @llvm.dbg.value(metadata !{i32 %87}, i64 0, metadata !41), !dbg !288
  %tobool258 = icmp eq i16 %4, 0, !dbg !288
  br i1 %tobool258, label %if.end279, label %if.then259, !dbg !288

if.then259:                                       ; preds = %cont257
  %call260 = tail call fastcc i8* @ns_qprint(i8* %add.ptr255, i8* %bp, i32 %is_mdns), !dbg !289
  tail call void @llvm.dbg.value(metadata !{i8* %call260}, i64 0, metadata !45), !dbg !289
  %tobool261 = icmp eq i8* %call260, null, !dbg !291
  br i1 %tobool261, label %trunc, label %while.cond264, !dbg !291

while.cond264:                                    ; preds = %if.then259, %while.body273
  %cp.6 = phi i8* [ %call274, %while.body273 ], [ %call260, %if.then259 ]
  %qdcount.1 = phi i32 [ %93, %while.body273 ], [ %87, %if.then259 ]
  %90 = load %struct.netdissect_options** @gndo, align 4, !dbg !292, !tbaa !175
  %ndo_snapend265 = getelementptr inbounds %struct.netdissect_options* %90, i32 0, i32 45, !dbg !292
  %91 = load i8** %ndo_snapend265, align 4, !dbg !292, !tbaa !175
  %cmp266 = icmp ult i8* %cp.6, %91, !dbg !292
  br i1 %cmp266, label %land.rhs268, label %if.end279, !dbg !292

land.rhs268:                                      ; preds = %while.cond264
  %92 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %qdcount.1, i32 -1), !dbg !292
  %93 = extractvalue { i32, i1 } %92, 0, !dbg !292
  %94 = extractvalue { i32, i1 } %92, 1, !dbg !292
  br i1 %94, label %ioc_bb269, label %cont270, !dbg !292

ioc_bb269:                                        ; preds = %land.rhs268
  %95 = sext i32 %qdcount.1 to i64, !dbg !292
  tail call void @__ioc_report_add_overflow(i32 673, i32 48, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %95, i64 -1, i8 13) nounwind, !dbg !292
  br label %cont270, !dbg !292

cont270:                                          ; preds = %land.rhs268, %ioc_bb269
  tail call void @llvm.dbg.value(metadata !{i32 %93}, i64 0, metadata !41), !dbg !292
  %tobool271 = icmp eq i32 %qdcount.1, 0, !dbg !292
  br i1 %tobool271, label %if.end279, label %while.body273

while.body273:                                    ; preds = %cont270
  %call274 = tail call fastcc i8* @ns_qprint(i8* %cp.6, i8* %bp, i32 %is_mdns), !dbg !293
  tail call void @llvm.dbg.value(metadata !{i8* %call274}, i64 0, metadata !45), !dbg !293
  %tobool275 = icmp eq i8* %call274, null, !dbg !295
  br i1 %tobool275, label %trunc, label %while.cond264, !dbg !295

if.end279:                                        ; preds = %cont270, %while.cond264, %cont257
  %cp.7 = phi i8* [ %add.ptr255, %cont257 ], [ %cp.6, %while.cond264 ], [ %cp.6, %cont270 ]
  %qdcount.2 = phi i32 [ %87, %cont257 ], [ %qdcount.1, %while.cond264 ], [ %93, %cont270 ]
  %cmp280 = icmp sgt i32 %qdcount.2, 0, !dbg !296
  br i1 %cmp280, label %trunc, label %if.end283, !dbg !296

if.end283:                                        ; preds = %if.end279
  %96 = load %struct.netdissect_options** @gndo, align 4, !dbg !297, !tbaa !175
  %ndo_vflag284 = getelementptr inbounds %struct.netdissect_options* %96, i32 0, i32 14, !dbg !297
  %97 = load i32* %ndo_vflag284, align 4, !dbg !297, !tbaa !219
  %cmp285 = icmp sgt i32 %97, 1, !dbg !297
  br i1 %cmp285, label %if.then287, label %if.end392, !dbg !297

if.then287:                                       ; preds = %if.end283
  %98 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv8, i32 -1), !dbg !298
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !298
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !298
  br i1 %100, label %ioc_bb288, label %cont289, !dbg !298

ioc_bb288:                                        ; preds = %if.then287
  %101 = zext i16 %7 to i64, !dbg !298
  tail call void @__ioc_report_add_overflow(i32 683, i32 18, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %101, i64 -1, i8 13) nounwind, !dbg !298
  br label %cont289, !dbg !298

cont289:                                          ; preds = %if.then287, %ioc_bb288
  tail call void @llvm.dbg.value(metadata !{i32 %99}, i64 0, metadata !42), !dbg !298
  %tobool290 = icmp eq i16 %7, 0, !dbg !298
  br i1 %tobool290, label %if.end314, label %if.then291, !dbg !298

if.then291:                                       ; preds = %cont289
  %call292 = tail call fastcc i8* @ns_rprint(i8* %cp.7, i8* %bp, i32 %is_mdns), !dbg !300
  tail call void @llvm.dbg.value(metadata !{i8* %call292}, i64 0, metadata !45), !dbg !300
  %cmp293 = icmp eq i8* %call292, null, !dbg !300
  br i1 %cmp293, label %trunc, label %while.cond297, !dbg !300

while.cond297:                                    ; preds = %if.then291, %while.body306
  %ancount.2 = phi i32 [ %105, %while.body306 ], [ %99, %if.then291 ]
  %cp.8 = phi i8* [ %call308, %while.body306 ], [ %call292, %if.then291 ]
  %102 = load %struct.netdissect_options** @gndo, align 4, !dbg !302, !tbaa !175
  %ndo_snapend298 = getelementptr inbounds %struct.netdissect_options* %102, i32 0, i32 45, !dbg !302
  %103 = load i8** %ndo_snapend298, align 4, !dbg !302, !tbaa !175
  %cmp299 = icmp ult i8* %cp.8, %103, !dbg !302
  br i1 %cmp299, label %land.rhs301, label %if.end314, !dbg !302

land.rhs301:                                      ; preds = %while.cond297
  %104 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ancount.2, i32 -1), !dbg !302
  %105 = extractvalue { i32, i1 } %104, 0, !dbg !302
  %106 = extractvalue { i32, i1 } %104, 1, !dbg !302
  br i1 %106, label %ioc_bb302, label %cont303, !dbg !302

ioc_bb302:                                        ; preds = %land.rhs301
  %107 = sext i32 %ancount.2 to i64, !dbg !302
  tail call void @__ioc_report_add_overflow(i32 686, i32 50, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %107, i64 -1, i8 13) nounwind, !dbg !302
  br label %cont303, !dbg !302

cont303:                                          ; preds = %land.rhs301, %ioc_bb302
  tail call void @llvm.dbg.value(metadata !{i32 %105}, i64 0, metadata !42), !dbg !302
  %tobool304 = icmp eq i32 %ancount.2, 0, !dbg !302
  br i1 %tobool304, label %if.end314, label %while.body306

while.body306:                                    ; preds = %cont303
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !303) nounwind, !dbg !306
  %108 = load %struct._IO_FILE** @stdout, align 4, !dbg !307, !tbaa !175
  %call.i515 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %108) nounwind, !dbg !307
  %call308 = tail call fastcc i8* @ns_rprint(i8* %cp.8, i8* %bp, i32 %is_mdns), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i8* %call308}, i64 0, metadata !45), !dbg !308
  %cmp309 = icmp eq i8* %call308, null, !dbg !308
  br i1 %cmp309, label %trunc, label %while.cond297, !dbg !308

if.end314:                                        ; preds = %cont303, %while.cond297, %cont289
  %ancount.3 = phi i32 [ %99, %cont289 ], [ %105, %cont303 ], [ %ancount.2, %while.cond297 ]
  %cp.9 = phi i8* [ %cp.7, %cont289 ], [ %cp.8, %cont303 ], [ %cp.8, %while.cond297 ]
  %cmp315 = icmp sgt i32 %ancount.3, 0, !dbg !309
  br i1 %cmp315, label %trunc, label %if.end318, !dbg !309

if.end318:                                        ; preds = %if.end314
  %109 = load %struct.netdissect_options** @gndo, align 4, !dbg !310, !tbaa !175
  %ndo_snapend319 = getelementptr inbounds %struct.netdissect_options* %109, i32 0, i32 45, !dbg !310
  %110 = load i8** %ndo_snapend319, align 4, !dbg !310, !tbaa !175
  %cmp320 = icmp ult i8* %cp.9, %110, !dbg !310
  br i1 %cmp320, label %land.lhs.true322, label %if.end350, !dbg !310

land.lhs.true322:                                 ; preds = %if.end318
  %111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv11, i32 -1), !dbg !310
  %112 = extractvalue { i32, i1 } %111, 0, !dbg !310
  %113 = extractvalue { i32, i1 } %111, 1, !dbg !310
  br i1 %113, label %ioc_bb323, label %cont324, !dbg !310

ioc_bb323:                                        ; preds = %land.lhs.true322
  %114 = zext i16 %10 to i64, !dbg !310
  tail call void @__ioc_report_add_overflow(i32 694, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %114, i64 -1, i8 13) nounwind, !dbg !310
  br label %cont324, !dbg !310

cont324:                                          ; preds = %land.lhs.true322, %ioc_bb323
  tail call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !43), !dbg !310
  br i1 %tobool247, label %if.then326, label %if.end350, !dbg !310

if.then326:                                       ; preds = %cont324
  %115 = load %struct._IO_FILE** @stdout, align 4, !dbg !311, !tbaa !175
  %116 = tail call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str73, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %115), !dbg !311
  %call328 = tail call fastcc i8* @ns_rprint(i8* %cp.9, i8* %bp, i32 %is_mdns), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i8* %call328}, i64 0, metadata !45), !dbg !313
  %cmp329 = icmp eq i8* %call328, null, !dbg !313
  br i1 %cmp329, label %trunc, label %while.cond333, !dbg !313

while.cond333:                                    ; preds = %if.then326, %while.body342
  %nscount.2 = phi i32 [ %118, %while.body342 ], [ %112, %if.then326 ]
  %cp.10 = phi i8* [ %call344, %while.body342 ], [ %call328, %if.then326 ]
  %117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nscount.2, i32 -1), !dbg !314
  %118 = extractvalue { i32, i1 } %117, 0, !dbg !314
  %119 = extractvalue { i32, i1 } %117, 1, !dbg !314
  br i1 %119, label %ioc_bb334, label %cont335, !dbg !314

ioc_bb334:                                        ; preds = %while.cond333
  %120 = sext i32 %nscount.2 to i64, !dbg !314
  tail call void @__ioc_report_add_overflow(i32 698, i32 22, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %120, i64 -1, i8 13) nounwind, !dbg !314
  br label %cont335, !dbg !314

cont335:                                          ; preds = %while.cond333, %ioc_bb334
  tail call void @llvm.dbg.value(metadata !{i32 %118}, i64 0, metadata !43), !dbg !314
  %tobool336 = icmp eq i32 %nscount.2, 0, !dbg !314
  br i1 %tobool336, label %if.end350, label %land.rhs337, !dbg !314

land.rhs337:                                      ; preds = %cont335
  %121 = load %struct.netdissect_options** @gndo, align 4, !dbg !314, !tbaa !175
  %ndo_snapend338 = getelementptr inbounds %struct.netdissect_options* %121, i32 0, i32 45, !dbg !314
  %122 = load i8** %ndo_snapend338, align 4, !dbg !314, !tbaa !175
  %cmp339 = icmp ult i8* %cp.10, %122, !dbg !314
  br i1 %cmp339, label %while.body342, label %if.end350

while.body342:                                    ; preds = %land.rhs337
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !315) nounwind, !dbg !318
  %123 = load %struct._IO_FILE** @stdout, align 4, !dbg !319, !tbaa !175
  %call.i516 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %123) nounwind, !dbg !319
  %call344 = tail call fastcc i8* @ns_rprint(i8* %cp.10, i8* %bp, i32 %is_mdns), !dbg !320
  tail call void @llvm.dbg.value(metadata !{i8* %call344}, i64 0, metadata !45), !dbg !320
  %cmp345 = icmp eq i8* %call344, null, !dbg !320
  br i1 %cmp345, label %trunc, label %while.cond333, !dbg !320

if.end350:                                        ; preds = %cont335, %land.rhs337, %cont324, %if.end318
  %nscount.3 = phi i32 [ %112, %cont324 ], [ %conv11, %if.end318 ], [ %118, %land.rhs337 ], [ %118, %cont335 ]
  %cp.11 = phi i8* [ %cp.9, %cont324 ], [ %cp.9, %if.end318 ], [ %cp.10, %land.rhs337 ], [ %cp.10, %cont335 ]
  %cmp351 = icmp sgt i32 %nscount.3, 0, !dbg !321
  br i1 %cmp351, label %trunc, label %if.end354, !dbg !321

if.end354:                                        ; preds = %if.end350
  %124 = load %struct.netdissect_options** @gndo, align 4, !dbg !322, !tbaa !175
  %ndo_snapend355 = getelementptr inbounds %struct.netdissect_options* %124, i32 0, i32 45, !dbg !322
  %125 = load i8** %ndo_snapend355, align 4, !dbg !322, !tbaa !175
  %cmp356 = icmp ult i8* %cp.11, %125, !dbg !322
  br i1 %cmp356, label %land.lhs.true358, label %if.end386, !dbg !322

land.lhs.true358:                                 ; preds = %if.end354
  %126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv14, i32 -1), !dbg !322
  %127 = extractvalue { i32, i1 } %126, 0, !dbg !322
  %128 = extractvalue { i32, i1 } %126, 1, !dbg !322
  br i1 %128, label %ioc_bb359, label %cont360, !dbg !322

ioc_bb359:                                        ; preds = %land.lhs.true358
  %129 = zext i16 %13 to i64, !dbg !322
  tail call void @__ioc_report_add_overflow(i32 706, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %129, i64 -1, i8 13) nounwind, !dbg !322
  br label %cont360, !dbg !322

cont360:                                          ; preds = %land.lhs.true358, %ioc_bb359
  tail call void @llvm.dbg.value(metadata !{i32 %127}, i64 0, metadata !44), !dbg !322
  br i1 %tobool251, label %if.then362, label %if.end386, !dbg !322

if.then362:                                       ; preds = %cont360
  %130 = load %struct._IO_FILE** @stdout, align 4, !dbg !323, !tbaa !175
  %131 = tail call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str74, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %130), !dbg !323
  %call364 = tail call fastcc i8* @ns_rprint(i8* %cp.11, i8* %bp, i32 %is_mdns), !dbg !325
  tail call void @llvm.dbg.value(metadata !{i8* %call364}, i64 0, metadata !45), !dbg !325
  %cmp365 = icmp eq i8* %call364, null, !dbg !325
  br i1 %cmp365, label %trunc, label %while.cond369, !dbg !325

while.cond369:                                    ; preds = %if.then362, %while.body378
  %arcount.2 = phi i32 [ %135, %while.body378 ], [ %127, %if.then362 ]
  %cp.12 = phi i8* [ %call380, %while.body378 ], [ %call364, %if.then362 ]
  %132 = load %struct.netdissect_options** @gndo, align 4, !dbg !326, !tbaa !175
  %ndo_snapend370 = getelementptr inbounds %struct.netdissect_options* %132, i32 0, i32 45, !dbg !326
  %133 = load i8** %ndo_snapend370, align 4, !dbg !326, !tbaa !175
  %cmp371 = icmp ult i8* %cp.12, %133, !dbg !326
  br i1 %cmp371, label %land.rhs373, label %if.end386, !dbg !326

land.rhs373:                                      ; preds = %while.cond369
  %134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %arcount.2, i32 -1), !dbg !326
  %135 = extractvalue { i32, i1 } %134, 0, !dbg !326
  %136 = extractvalue { i32, i1 } %134, 1, !dbg !326
  br i1 %136, label %ioc_bb374, label %cont375, !dbg !326

ioc_bb374:                                        ; preds = %land.rhs373
  %137 = sext i32 %arcount.2 to i64, !dbg !326
  tail call void @__ioc_report_add_overflow(i32 710, i32 50, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %137, i64 -1, i8 13) nounwind, !dbg !326
  br label %cont375, !dbg !326

cont375:                                          ; preds = %land.rhs373, %ioc_bb374
  tail call void @llvm.dbg.value(metadata !{i32 %135}, i64 0, metadata !44), !dbg !326
  %tobool376 = icmp eq i32 %arcount.2, 0, !dbg !326
  br i1 %tobool376, label %if.end386, label %while.body378

while.body378:                                    ; preds = %cont375
  tail call void @llvm.dbg.value(metadata !212, i64 0, metadata !327) nounwind, !dbg !330
  %138 = load %struct._IO_FILE** @stdout, align 4, !dbg !331, !tbaa !175
  %call.i517 = tail call i32 @_IO_putc(i32 44, %struct._IO_FILE* %138) nounwind, !dbg !331
  %call380 = tail call fastcc i8* @ns_rprint(i8* %cp.12, i8* %bp, i32 %is_mdns), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i8* %call380}, i64 0, metadata !45), !dbg !332
  %cmp381 = icmp eq i8* %call380, null, !dbg !332
  br i1 %cmp381, label %trunc, label %while.cond369, !dbg !332

if.end386:                                        ; preds = %cont375, %while.cond369, %cont360, %if.end354
  %arcount.3 = phi i32 [ %127, %cont360 ], [ %conv14, %if.end354 ], [ %135, %cont375 ], [ %arcount.2, %while.cond369 ]
  %cmp387 = icmp sgt i32 %arcount.3, 0, !dbg !333
  br i1 %cmp387, label %trunc, label %if.end392, !dbg !333

if.end392:                                        ; preds = %if.end283, %if.end386, %if.end109, %if.end181
  %call393 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str82, i32 0, i32 0), i32 %length) nounwind, !dbg !334
  br label %return, !dbg !335

trunc:                                            ; preds = %while.body273, %while.body306, %while.body342, %while.body378, %if.else, %if.then66, %while.body97, %while.body137, %while.body173, %if.then259, %entry, %if.end386, %if.then362, %if.end350, %if.then326, %if.end314, %if.then291, %if.end279, %if.end181, %if.then157, %if.end145, %if.then121, %if.end105, %if.then84
  %call394 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str83, i32 0, i32 0)) nounwind, !dbg !336
  br label %return, !dbg !337

return:                                           ; preds = %trunc, %if.end392
  ret void, !dbg !338
}

declare i32 @printf(i8* nocapture, ...) nounwind

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define available_externally i32 @putchar(i32 %__c) nounwind inlinehint {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %__c}, i64 0, metadata !144), !dbg !339
  %0 = load %struct._IO_FILE** @stdout, align 4, !dbg !340, !tbaa !175
  %call = tail call i32 @_IO_putc(i32 %__c, %struct._IO_FILE* %0) nounwind, !dbg !340
  ret i32 %call, !dbg !340
}

define internal fastcc i8* @ns_qprint(i8* %cp, i8* %bp, i32 %is_mdns) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !131), !dbg !341
  tail call void @llvm.dbg.value(metadata !{i8* %bp}, i64 0, metadata !132), !dbg !341
  tail call void @llvm.dbg.value(metadata !{i32 %is_mdns}, i64 0, metadata !133), !dbg !341
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !134), !dbg !342
  %call = tail call fastcc i8* @ns_nskip(i8* %cp), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !131), !dbg !343
  %cmp = icmp eq i8* %call, null, !dbg !344
  br i1 %cmp, label %return, label %land.lhs.true, !dbg !344

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !344, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !344
  %1 = load i8** %ndo_snapend, align 4, !dbg !344, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %1, i32 -4, !dbg !344
  %cmp5 = icmp ugt i8* %call, %add.ptr, !dbg !344
  br i1 %cmp5, label %return, label %if.end, !dbg !344

if.end:                                           ; preds = %land.lhs.true
  %2 = bitcast i8* %call to i16*, !dbg !345
  %3 = load i16* %2, align 2, !dbg !345, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %3}, i64 0, metadata !346) nounwind, !dbg !347
  %4 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %3) nounwind, !dbg !348, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %4}, i64 0, metadata !346) nounwind, !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !136), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr7}, i64 0, metadata !131), !dbg !349
  %add.ptr7 = getelementptr inbounds i8* %call, i32 2, !dbg !349
  %conv = zext i16 %4 to i32, !dbg !345
  %call8 = tail call i8* @tok2str(%struct.tok* getelementptr inbounds ([62 x %struct.tok]* @ns_type2str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str89, i32 0, i32 0), i32 %conv) nounwind, !dbg !350
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* %call8) nounwind, !dbg !350
  %5 = bitcast i8* %add.ptr7 to i16*, !dbg !351
  %6 = load i16* %5, align 2, !dbg !351, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %6}, i64 0, metadata !352) nounwind, !dbg !353
  %7 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %6) nounwind, !dbg !354, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %7}, i64 0, metadata !352) nounwind, !dbg !354
  %conv11 = zext i16 %7 to i32, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %conv11}, i64 0, metadata !136), !dbg !351
  %tobool = icmp ne i32 %is_mdns, 0, !dbg !355
  br i1 %tobool, label %ioc_bb14, label %cont18, !dbg !355

ioc_bb14:                                         ; preds = %if.end
  tail call void @__ioc_report_conversion(i32 357, i32 17, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -32769, i8 1) nounwind, !dbg !356
  %and = and i32 %conv11, 32767, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !137), !dbg !356
  br label %cont18, !dbg !356

cont18:                                           ; preds = %ioc_bb14, %if.end
  %class.0 = phi i32 [ %and, %ioc_bb14 ], [ %conv11, %if.end ]
  %cmp19 = icmp eq i32 %class.0, 1, !dbg !357
  br i1 %cmp19, label %if.end27, label %cont24, !dbg !357

cont24:                                           ; preds = %cont18
  %call25 = tail call i8* @tok2str(%struct.tok* getelementptr inbounds ([5 x %struct.tok]* @ns_class2str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str85, i32 0, i32 0), i32 %class.0) nounwind, !dbg !358
  %call26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* %call25) nounwind, !dbg !358
  br label %if.end27, !dbg !358

if.end27:                                         ; preds = %cont18, %cont24
  br i1 %tobool, label %cont31, label %if.end39, !dbg !359

cont31:                                           ; preds = %if.end27
  %and32 = and i32 %conv11, 32768, !dbg !360
  %tobool33 = icmp eq i32 %and32, 0, !dbg !360
  br i1 %tobool33, label %if.else36, label %if.then34, !dbg !360

if.then34:                                        ; preds = %cont31
  %call35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str108, i32 0, i32 0)) nounwind, !dbg !362
  br label %if.end39, !dbg !362

if.else36:                                        ; preds = %cont31
  %call37 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str109, i32 0, i32 0)) nounwind, !dbg !363
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else36, %if.end27
  %8 = load %struct._IO_FILE** @stdout, align 4, !dbg !364, !tbaa !175
  %9 = tail call i32 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str110, i32 0, i32 0), i32 2, i32 1, %struct._IO_FILE* %8), !dbg !364
  %call41 = tail call fastcc i8* @ns_nprint(i8* %cp, i8* %bp), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i8* %call41}, i64 0, metadata !131), !dbg !365
  %tobool42 = icmp eq i8* %call41, null, !dbg !366
  %add.ptr43 = getelementptr inbounds i8* %call41, i32 4, !dbg !366
  %.add.ptr43 = select i1 %tobool42, i8* null, i8* %add.ptr43, !dbg !366
  br label %return, !dbg !366

return:                                           ; preds = %entry, %land.lhs.true, %if.end39
  %retval.0 = phi i8* [ %.add.ptr43, %if.end39 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %retval.0, !dbg !367
}

define internal fastcc i8* @ns_nskip(i8* %cp) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !121), !dbg !368
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !369, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !369
  %1 = load i8** %ndo_snapend, align 4, !dbg !369, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %1, i32 -1, !dbg !369
  %cmp4 = icmp ult i8* %add.ptr, %cp, !dbg !369
  br i1 %cmp4, label %return, label %while.cond, !dbg !369

while.cond:                                       ; preds = %entry, %if.end45
  %2 = phi i8* [ %8, %if.end45 ], [ %1, %entry ]
  %cp.pn = phi i8* [ %cp.addr.1, %if.end45 ], [ %cp, %entry ]
  %i.0 = load i8* %cp.pn, align 1, !dbg !370
  %cp.addr.0 = getelementptr inbounds i8* %cp.pn, i32 1, !dbg !370
  %tobool = icmp eq i8 %i.0, 0, !dbg !371
  br i1 %tobool, label %return, label %while.body, !dbg !371

while.body:                                       ; preds = %while.cond
  %conv = zext i8 %i.0 to i32, !dbg !372
  %and = and i32 %conv, 192, !dbg !372
  switch i32 %and, label %if.else [
    i32 192, label %if.then7
    i32 64, label %if.then14
  ], !dbg !372

if.then7:                                         ; preds = %while.body
  %add.ptr8 = getelementptr inbounds i8* %cp.pn, i32 2, !dbg !373
  br label %return, !dbg !373

if.then14:                                        ; preds = %while.body
  %and16 = and i32 %conv, 63, !dbg !374
  %cmp17 = icmp eq i32 %and16, 1, !dbg !374
  br i1 %cmp17, label %land.lhs.true26, label %return, !dbg !374

land.lhs.true26:                                  ; preds = %if.then14
  %add.ptr22 = getelementptr inbounds i8* %2, i32 -1, !dbg !375
  %cmp29 = icmp ugt i8* %cp.addr.0, %add.ptr22, !dbg !375
  br i1 %cmp29, label %return, label %if.end32, !dbg !375

if.end32:                                         ; preds = %land.lhs.true26
  %3 = load i8* %cp.addr.0, align 1, !dbg !376, !tbaa !176
  %conv34 = zext i8 %3 to i32, !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %conv34}, i64 0, metadata !124), !dbg !376
  %cmp35 = icmp eq i8 %3, 0, !dbg !376
  %.conv34 = select i1 %cmp35, i32 256, i32 %conv34, !dbg !376
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.conv34, i32 7), !dbg !377
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !377
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !377
  br i1 %6, label %ioc_bb, label %cont41, !dbg !377

ioc_bb:                                           ; preds = %if.end32
  %7 = zext i32 %.conv34 to i64, !dbg !377
  tail call void @__ioc_report_add_overflow(i32 57, i32 25, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %7, i64 7, i8 13) nounwind, !dbg !377
  %.pre.pre = load %struct.netdissect_options** @gndo, align 4, !dbg !378, !tbaa !175
  %ndo_snapend46.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre.pre, i32 0, i32 45
  %.pre74.pre = load i8** %ndo_snapend46.phi.trans.insert.phi.trans.insert, align 4, !dbg !378, !tbaa !175
  br label %cont41, !dbg !377

cont41:                                           ; preds = %ioc_bb, %if.end32
  %.pre74 = phi i8* [ %.pre74.pre, %ioc_bb ], [ %2, %if.end32 ], !dbg !377
  %div = sdiv i32 %5, 8, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !127), !dbg !377
  %incdec.ptr33.sum = add i32 %div, 2, !dbg !379
  br label %if.end45, !dbg !380

if.else:                                          ; preds = %while.body
  %cp.addr.0.sum = add i32 %conv, 1, !dbg !381
  br label %if.end45

if.end45:                                         ; preds = %if.else, %cont41
  %8 = phi i8* [ %.pre74, %cont41 ], [ %2, %if.else ], !dbg !379
  %incdec.ptr33.sum.pn = phi i32 [ %incdec.ptr33.sum, %cont41 ], [ %cp.addr.0.sum, %if.else ]
  %cp.addr.1 = getelementptr inbounds i8* %cp.pn, i32 %incdec.ptr33.sum.pn, !dbg !379
  %add.ptr47 = getelementptr inbounds i8* %8, i32 -1, !dbg !378
  %cmp54 = icmp ugt i8* %cp.addr.1, %add.ptr47, !dbg !378
  br i1 %cmp54, label %return, label %while.cond, !dbg !378

return:                                           ; preds = %while.cond, %if.end45, %land.lhs.true26, %if.then14, %entry, %if.then7
  %retval.0 = phi i8* [ %add.ptr8, %if.then7 ], [ null, %entry ], [ %cp.addr.0, %while.cond ], [ null, %if.end45 ], [ null, %land.lhs.true26 ], [ null, %if.then14 ]
  ret i8* %retval.0, !dbg !382
}

define internal fastcc i8* @ns_rprint(i8* %cp, i8* %bp, i32 %is_mdns) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !52), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i8* %bp}, i64 0, metadata !53), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i32 %is_mdns}, i64 0, metadata !54), !dbg !383
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !384
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !385, !tbaa !175
  %ndo_vflag = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 14, !dbg !385
  %1 = load i32* %ndo_vflag, align 4, !dbg !385, !tbaa !219
  %tobool = icmp eq i32 %1, 0, !dbg !385
  br i1 %tobool, label %if.end4, label %if.then, !dbg !385

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !387) nounwind, !dbg !390
  %2 = load %struct._IO_FILE** @stdout, align 4, !dbg !391, !tbaa !175
  %call.i = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %2) nounwind, !dbg !391
  %call1 = tail call fastcc i8* @ns_nprint(i8* %cp, i8* %bp), !dbg !392
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !52), !dbg !392
  %cmp = icmp eq i8* %call1, null, !dbg !392
  br i1 %cmp, label %return, label %land.lhs.true, !dbg !392

if.end4:                                          ; preds = %entry
  %call3 = tail call fastcc i8* @ns_nskip(i8* %cp), !dbg !393
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !52), !dbg !393
  %cmp5 = icmp eq i8* %call3, null, !dbg !394
  br i1 %cmp5, label %if.end4.if.then11_crit_edge, label %land.lhs.true, !dbg !394

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  %.pre = load %struct.netdissect_options** @gndo, align 4, !dbg !395, !tbaa !175
  %ndo_snapend12.phi.trans.insert = getelementptr inbounds %struct.netdissect_options* %.pre, i32 0, i32 45
  %.pre454 = load i8** %ndo_snapend12.phi.trans.insert, align 4, !dbg !395, !tbaa !175
  br label %return, !dbg !394

land.lhs.true:                                    ; preds = %if.then, %if.end4
  %cp.addr.0450 = phi i8* [ %call3, %if.end4 ], [ %call1, %if.then ]
  %3 = load %struct.netdissect_options** @gndo, align 4, !dbg !394, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %3, i32 0, i32 45, !dbg !394
  %4 = load i8** %ndo_snapend, align 4, !dbg !394, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %4, i32 -10, !dbg !394
  %cmp10 = icmp ugt i8* %cp.addr.0450, %add.ptr, !dbg !394
  br i1 %cmp10, label %return, label %if.end13, !dbg !394

if.end13:                                         ; preds = %land.lhs.true
  %5 = bitcast i8* %cp.addr.0450 to i16*, !dbg !396
  %6 = load i16* %5, align 2, !dbg !396, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %6}, i64 0, metadata !397) nounwind, !dbg !398
  %7 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %6) nounwind, !dbg !399, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %7}, i64 0, metadata !397) nounwind, !dbg !399
  tail call void @llvm.dbg.value(metadata !{i16 %7}, i64 0, metadata !59), !dbg !396
  %add.ptr15 = getelementptr inbounds i8* %cp.addr.0450, i32 2, !dbg !400
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr15}, i64 0, metadata !52), !dbg !400
  %8 = bitcast i8* %add.ptr15 to i16*, !dbg !401
  %9 = load i16* %8, align 2, !dbg !401, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %9}, i64 0, metadata !402) nounwind, !dbg !403
  %10 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %9) nounwind, !dbg !404, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %10}, i64 0, metadata !402) nounwind, !dbg !404
  %conv = zext i16 %10 to i32, !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !55), !dbg !401
  %add.ptr17 = getelementptr inbounds i8* %cp.addr.0450, i32 4, !dbg !405
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr17}, i64 0, metadata !52), !dbg !405
  %tobool18 = icmp ne i32 %is_mdns, 0, !dbg !406
  br i1 %tobool18, label %ioc_bb20, label %cont25, !dbg !406

ioc_bb20:                                         ; preds = %if.end13
  tail call void @__ioc_report_conversion(i32 398, i32 17, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -32769, i8 1) nounwind, !dbg !407
  %and = and i32 %conv, 32767, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !57), !dbg !407
  br label %cont25, !dbg !407

cont25:                                           ; preds = %ioc_bb20, %if.end13
  %class.0 = phi i32 [ %and, %ioc_bb20 ], [ %conv, %if.end13 ]
  %cmp26 = icmp eq i32 %class.0, 1, !dbg !408
  %cmp30 = icmp eq i16 %7, 41, !dbg !408
  %or.cond = or i1 %cmp26, %cmp30, !dbg !408
  br i1 %or.cond, label %if.end37, label %cont34, !dbg !408

cont34:                                           ; preds = %cont25
  %call35 = tail call i8* @tok2str(%struct.tok* getelementptr inbounds ([5 x %struct.tok]* @ns_class2str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str85, i32 0, i32 0), i32 %class.0) nounwind, !dbg !409
  %call36 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* %call35) nounwind, !dbg !409
  br label %if.end37, !dbg !409

if.end37:                                         ; preds = %cont25, %cont34
  br i1 %tobool18, label %cont41, label %if.end47, !dbg !410

cont41:                                           ; preds = %if.end37
  %and42 = and i32 %conv, 32768, !dbg !411
  %tobool43 = icmp eq i32 %and42, 0, !dbg !411
  br i1 %tobool43, label %if.end47, label %if.then44, !dbg !411

if.then44:                                        ; preds = %cont41
  %call45 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str86, i32 0, i32 0)) nounwind, !dbg !413
  br label %if.end47, !dbg !413

if.end47:                                         ; preds = %cont41, %if.then44, %if.end37
  %conv48 = zext i16 %7 to i32, !dbg !414
  br i1 %cmp30, label %if.then51, label %if.else56, !dbg !414

if.then51:                                        ; preds = %if.end47
  %add.ptr52 = getelementptr inbounds i8* %cp.addr.0450, i32 6, !dbg !415
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr52}, i64 0, metadata !52), !dbg !415
  %11 = bitcast i8* %add.ptr52 to i16*, !dbg !417
  %12 = load i16* %11, align 2, !dbg !417, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %12}, i64 0, metadata !418) nounwind, !dbg !419
  %13 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %12) nounwind, !dbg !420, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %13}, i64 0, metadata !418) nounwind, !dbg !420
  %conv54 = zext i16 %13 to i32, !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %conv54}, i64 0, metadata !58), !dbg !417
  %phitmp = and i32 %conv54, 32768, !dbg !421
  br label %if.end71, !dbg !421

if.else56:                                        ; preds = %if.end47
  %14 = load %struct.netdissect_options** @gndo, align 4, !dbg !422, !tbaa !175
  %ndo_vflag57 = getelementptr inbounds %struct.netdissect_options* %14, i32 0, i32 14, !dbg !422
  %15 = load i32* %ndo_vflag57, align 4, !dbg !422, !tbaa !219
  %cmp58 = icmp sgt i32 %15, 2, !dbg !422
  br i1 %cmp58, label %if.then60, label %if.end71, !dbg !422

if.then60:                                        ; preds = %if.else56
  %call61 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str87, i32 0, i32 0)) nounwind, !dbg !423
  %16 = bitcast i8* %add.ptr17 to i32*, !dbg !425
  %17 = load i32* %16, align 4, !dbg !425, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !426) nounwind, !dbg !427
  %18 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %17) nounwind, !dbg !428, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !426) nounwind, !dbg !428
  %19 = icmp sgt i32 %18, -1, !dbg !425
  br i1 %19, label %cont65, label %ioc_bb64, !dbg !425

ioc_bb64:                                         ; preds = %if.then60
  %20 = zext i32 %18 to i64, !dbg !425
  tail call void @__ioc_report_conversion(i32 417, i32 17, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %20, i8 0) nounwind, !dbg !425
  br label %cont65, !dbg !425

cont65:                                           ; preds = %ioc_bb64, %if.then60
  tail call void @relts_print(i32 %18) nounwind, !dbg !425
  %putchar = tail call i32 @putchar(i32 93), !dbg !431
  br label %if.end71, !dbg !432

if.end71:                                         ; preds = %if.else56, %cont65, %if.then51
  %opt_flags.0 = phi i32 [ %phitmp, %if.then51 ], [ 0, %cont65 ], [ 0, %if.else56 ]
  %cp.addr.1 = getelementptr inbounds i8* %cp.addr.0450, i32 8, !dbg !433
  %21 = bitcast i8* %cp.addr.1 to i16*, !dbg !434
  %22 = load i16* %21, align 2, !dbg !434, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %22}, i64 0, metadata !435) nounwind, !dbg !436
  %23 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %22) nounwind, !dbg !437, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %23}, i64 0, metadata !435) nounwind, !dbg !437
  tail call void @llvm.dbg.value(metadata !{i16 %23}, i64 0, metadata !62), !dbg !434
  %add.ptr73 = getelementptr inbounds i8* %cp.addr.0450, i32 10, !dbg !438
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr73}, i64 0, metadata !52), !dbg !438
  %conv74 = zext i16 %23 to i32, !dbg !439
  %cp.addr.1.sum = add i32 %conv74, 10, !dbg !439
  %add.ptr75 = getelementptr inbounds i8* %cp.addr.0450, i32 %cp.addr.1.sum, !dbg !439
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr75}, i64 0, metadata !63), !dbg !439
  %call77 = tail call i8* @tok2str(%struct.tok* getelementptr inbounds ([62 x %struct.tok]* @ns_type2str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str89, i32 0, i32 0), i32 %conv48) nounwind, !dbg !440
  %call78 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* %call77) nounwind, !dbg !440
  %24 = load %struct.netdissect_options** @gndo, align 4, !dbg !441, !tbaa !175
  %ndo_snapend79 = getelementptr inbounds %struct.netdissect_options* %24, i32 0, i32 45, !dbg !441
  %25 = load i8** %ndo_snapend79, align 4, !dbg !441, !tbaa !175
  %cmp80 = icmp ugt i8* %add.ptr75, %25, !dbg !441
  br i1 %cmp80, label %return, label %if.end83, !dbg !441

if.end83:                                         ; preds = %if.end71
  switch i32 %conv48, label %sw.epilog [
    i32 1, label %land.lhs.true90
    i32 2, label %sw.bb104
    i32 5, label %sw.bb104
    i32 12, label %sw.bb104
    i32 39, label %sw.bb104
    i32 6, label %sw.bb111
    i32 15, label %sw.bb160
    i32 16, label %while.cond.preheader
    i32 33, label %sw.bb193
    i32 41, label %sw.bb222
    i32 104, label %sw.bb231
    i32 250, label %if.end261
  ], !dbg !442

while.cond.preheader:                             ; preds = %if.end83
  %cmp184452 = icmp ugt i32 %cp.addr.1.sum, 10, !dbg !443
  br i1 %cmp184452, label %while.body, label %sw.epilog, !dbg !443

land.lhs.true90:                                  ; preds = %if.end83
  %add.ptr86 = getelementptr inbounds i8* %25, i32 -4, !dbg !446
  %cmp93 = icmp ugt i8* %add.ptr73, %add.ptr86, !dbg !446
  br i1 %cmp93, label %return, label %if.end96, !dbg !446

if.end96:                                         ; preds = %land.lhs.true90
  %26 = bitcast i8* %add.ptr73 to i32*, !dbg !448
  %27 = load i32* %26, align 4, !dbg !448, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !449) nounwind, !dbg !450
  %28 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %27) nounwind, !dbg !451, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !449) nounwind, !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !449) nounwind, !dbg !450
  %29 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) nounwind, !dbg !451, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !449) nounwind, !dbg !451
  %call99 = tail call i8* @intoa(i32 %29) nounwind, !dbg !448
  %call100 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* %call99) nounwind, !dbg !448
  br label %sw.epilog, !dbg !452

sw.bb104:                                         ; preds = %if.end83, %if.end83, %if.end83, %if.end83
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !453) nounwind, !dbg !456
  %30 = load %struct._IO_FILE** @stdout, align 4, !dbg !457, !tbaa !175
  %call.i441 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %30) nounwind, !dbg !457
  %call106 = tail call fastcc i8* @ns_nprint(i8* %add.ptr73, i8* %bp), !dbg !458
  %cmp107 = icmp eq i8* %call106, null, !dbg !458
  br i1 %cmp107, label %return, label %sw.epilog, !dbg !458

sw.bb111:                                         ; preds = %if.end83
  %ndo_vflag112 = getelementptr inbounds %struct.netdissect_options* %24, i32 0, i32 14, !dbg !459
  %31 = load i32* %ndo_vflag112, align 4, !dbg !459, !tbaa !219
  %tobool113 = icmp eq i32 %31, 0, !dbg !459
  br i1 %tobool113, label %sw.epilog, label %if.end115, !dbg !459

if.end115:                                        ; preds = %sw.bb111
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !461) nounwind, !dbg !463
  %32 = load %struct._IO_FILE** @stdout, align 4, !dbg !464, !tbaa !175
  %call.i442 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %32) nounwind, !dbg !464
  %call117 = tail call fastcc i8* @ns_nprint(i8* %add.ptr73, i8* %bp), !dbg !465
  tail call void @llvm.dbg.value(metadata !{i8* %call117}, i64 0, metadata !52), !dbg !465
  %cmp118 = icmp eq i8* %call117, null, !dbg !465
  br i1 %cmp118, label %return, label %if.end121, !dbg !465

if.end121:                                        ; preds = %if.end115
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !466) nounwind, !dbg !468
  %33 = load %struct._IO_FILE** @stdout, align 4, !dbg !469, !tbaa !175
  %call.i443 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %33) nounwind, !dbg !469
  %call123 = tail call fastcc i8* @ns_nprint(i8* %call117, i8* %bp), !dbg !470
  tail call void @llvm.dbg.value(metadata !{i8* %call123}, i64 0, metadata !52), !dbg !470
  %cmp124 = icmp eq i8* %call123, null, !dbg !470
  br i1 %cmp124, label %return, label %if.end127, !dbg !470

if.end127:                                        ; preds = %if.end121
  %34 = load %struct.netdissect_options** @gndo, align 4, !dbg !471, !tbaa !175
  %ndo_snapend128 = getelementptr inbounds %struct.netdissect_options* %34, i32 0, i32 45, !dbg !471
  %35 = load i8** %ndo_snapend128, align 4, !dbg !471, !tbaa !175
  %add.ptr131 = getelementptr inbounds i8* %35, i32 -20, !dbg !471
  %cmp141 = icmp ugt i8* %call123, %add.ptr131, !dbg !471
  br i1 %cmp141, label %return, label %if.end144, !dbg !471

if.end144:                                        ; preds = %if.end127
  %36 = bitcast i8* %call123 to i32*, !dbg !472
  %37 = load i32* %36, align 4, !dbg !472, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !473) nounwind, !dbg !474
  %38 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %37) nounwind, !dbg !475, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !473) nounwind, !dbg !475
  %call146 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i32 %38) nounwind, !dbg !472
  %add.ptr147 = getelementptr inbounds i8* %call123, i32 4, !dbg !476
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr147}, i64 0, metadata !52), !dbg !476
  %39 = bitcast i8* %add.ptr147 to i32*, !dbg !477
  %40 = load i32* %39, align 4, !dbg !477, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !478) nounwind, !dbg !479
  %41 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) nounwind, !dbg !480, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !478) nounwind, !dbg !480
  %call149 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i32 %41) nounwind, !dbg !477
  %add.ptr150 = getelementptr inbounds i8* %call123, i32 8, !dbg !481
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr150}, i64 0, metadata !52), !dbg !481
  %42 = bitcast i8* %add.ptr150 to i32*, !dbg !482
  %43 = load i32* %42, align 4, !dbg !482, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !483) nounwind, !dbg !484
  %44 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %43) nounwind, !dbg !485, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !483) nounwind, !dbg !485
  %call152 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i32 %44) nounwind, !dbg !482
  %add.ptr153 = getelementptr inbounds i8* %call123, i32 12, !dbg !486
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr153}, i64 0, metadata !52), !dbg !486
  %45 = bitcast i8* %add.ptr153 to i32*, !dbg !487
  %46 = load i32* %45, align 4, !dbg !487, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %46}, i64 0, metadata !488) nounwind, !dbg !489
  %47 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %46) nounwind, !dbg !490, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !488) nounwind, !dbg !490
  %call155 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i32 %47) nounwind, !dbg !487
  %add.ptr156 = getelementptr inbounds i8* %call123, i32 16, !dbg !491
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr156}, i64 0, metadata !52), !dbg !491
  %48 = bitcast i8* %add.ptr156 to i32*, !dbg !492
  %49 = load i32* %48, align 4, !dbg !492, !tbaa !219
  tail call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !493) nounwind, !dbg !494
  %50 = tail call i32 asm "xchgb ${0:b}, ${0:h}\0A\09rorl  $$16, $0\0A\09xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) nounwind, !dbg !495, !srcloc !430
  tail call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !493) nounwind, !dbg !495
  %call158 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i32 %50) nounwind, !dbg !492
  br label %sw.epilog, !dbg !496

sw.bb160:                                         ; preds = %if.end83
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !497) nounwind, !dbg !500
  %51 = load %struct._IO_FILE** @stdout, align 4, !dbg !501, !tbaa !175
  %call.i444 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %51) nounwind, !dbg !501
  %52 = load %struct.netdissect_options** @gndo, align 4, !dbg !502, !tbaa !175
  %ndo_snapend162 = getelementptr inbounds %struct.netdissect_options* %52, i32 0, i32 45, !dbg !502
  %53 = load i8** %ndo_snapend162, align 4, !dbg !502, !tbaa !175
  %add.ptr163 = getelementptr inbounds i8* %53, i32 -2, !dbg !502
  %cmp170 = icmp ugt i8* %add.ptr73, %add.ptr163, !dbg !502
  br i1 %cmp170, label %return, label %if.end173, !dbg !502

if.end173:                                        ; preds = %sw.bb160
  %add.ptr174 = getelementptr inbounds i8* %cp.addr.0450, i32 12, !dbg !503
  %call175 = tail call fastcc i8* @ns_nprint(i8* %add.ptr174, i8* %bp), !dbg !503
  %cmp176 = icmp eq i8* %call175, null, !dbg !503
  br i1 %cmp176, label %return, label %if.end179, !dbg !503

if.end179:                                        ; preds = %if.end173
  %54 = bitcast i8* %add.ptr73 to i16*, !dbg !504
  %55 = load i16* %54, align 2, !dbg !504, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %55}, i64 0, metadata !505) nounwind, !dbg !506
  %56 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %55) nounwind, !dbg !507, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %56}, i64 0, metadata !505) nounwind, !dbg !507
  %conv181 = zext i16 %56 to i32, !dbg !504
  %call182 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str91, i32 0, i32 0), i32 %conv181) nounwind, !dbg !504
  br label %sw.epilog, !dbg !508

while.body:                                       ; preds = %while.cond.preheader, %if.end191
  %cp.addr.2453 = phi i8* [ %add.ptr8.i, %if.end191 ], [ %add.ptr73, %while.cond.preheader ]
  %call186 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str92, i32 0, i32 0)) nounwind, !dbg !509
  tail call void @llvm.dbg.value(metadata !{i8* %cp.addr.2453}, i64 0, metadata !511) nounwind, !dbg !513
  %57 = load %struct.netdissect_options** @gndo, align 4, !dbg !514, !tbaa !175
  %ndo_snapend.i = getelementptr inbounds %struct.netdissect_options* %57, i32 0, i32 45, !dbg !514
  %58 = load i8** %ndo_snapend.i, align 4, !dbg !514, !tbaa !175
  %add.ptr.i = getelementptr inbounds i8* %58, i32 -1, !dbg !514
  %cmp4.i = icmp ult i8* %add.ptr.i, %cp.addr.2453, !dbg !514
  br i1 %cmp4.i, label %return, label %if.end.i, !dbg !514

if.end.i:                                         ; preds = %while.body
  %incdec.ptr.i = getelementptr inbounds i8* %cp.addr.2453, i32 1, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !511) nounwind, !dbg !515
  %59 = load i8* %cp.addr.2453, align 1, !dbg !515, !tbaa !176
  %conv.i = zext i8 %59 to i32, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !516) nounwind, !dbg !515
  %call.i445 = tail call i32 @fn_printn(i8* %incdec.ptr.i, i32 %conv.i, i8* %58) nounwind, !dbg !517
  %tobool.i = icmp eq i32 %call.i445, 0, !dbg !517
  br i1 %tobool.i, label %ns_cprint.exit, label %return, !dbg !517

ns_cprint.exit:                                   ; preds = %if.end.i
  %incdec.ptr.sum.i = add i32 %conv.i, 1, !dbg !518
  %add.ptr8.i = getelementptr inbounds i8* %cp.addr.2453, i32 %incdec.ptr.sum.i, !dbg !518
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr8.i}, i64 0, metadata !52), !dbg !512
  %cmp188 = icmp eq i8* %add.ptr8.i, null, !dbg !519
  br i1 %cmp188, label %return, label %if.end191, !dbg !519

if.end191:                                        ; preds = %ns_cprint.exit
  tail call void @llvm.dbg.value(metadata !520, i64 0, metadata !521) nounwind, !dbg !523
  %60 = load %struct._IO_FILE** @stdout, align 4, !dbg !524, !tbaa !175
  %call.i446 = tail call i32 @_IO_putc(i32 34, %struct._IO_FILE* %60) nounwind, !dbg !524
  %cmp184 = icmp ult i8* %add.ptr8.i, %add.ptr75, !dbg !443
  br i1 %cmp184, label %while.body, label %sw.epilog, !dbg !443

sw.bb193:                                         ; preds = %if.end83
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !525) nounwind, !dbg !528
  %61 = load %struct._IO_FILE** @stdout, align 4, !dbg !529, !tbaa !175
  %call.i447 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %61) nounwind, !dbg !529
  %62 = load %struct.netdissect_options** @gndo, align 4, !dbg !530, !tbaa !175
  %ndo_snapend195 = getelementptr inbounds %struct.netdissect_options* %62, i32 0, i32 45, !dbg !530
  %63 = load i8** %ndo_snapend195, align 4, !dbg !530, !tbaa !175
  %add.ptr196 = getelementptr inbounds i8* %63, i32 -6, !dbg !530
  %cmp203 = icmp ugt i8* %add.ptr73, %add.ptr196, !dbg !530
  br i1 %cmp203, label %return, label %if.end206, !dbg !530

if.end206:                                        ; preds = %sw.bb193
  %add.ptr207 = getelementptr inbounds i8* %cp.addr.0450, i32 16, !dbg !531
  %call208 = tail call fastcc i8* @ns_nprint(i8* %add.ptr207, i8* %bp), !dbg !531
  %cmp209 = icmp eq i8* %call208, null, !dbg !531
  br i1 %cmp209, label %return, label %if.end212, !dbg !531

if.end212:                                        ; preds = %if.end206
  %add.ptr213 = getelementptr inbounds i8* %cp.addr.0450, i32 14, !dbg !532
  %64 = bitcast i8* %add.ptr213 to i16*, !dbg !532
  %65 = load i16* %64, align 2, !dbg !532, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %65}, i64 0, metadata !533) nounwind, !dbg !534
  %66 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %65) nounwind, !dbg !535, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %66}, i64 0, metadata !533) nounwind, !dbg !535
  %conv215 = zext i16 %66 to i32, !dbg !532
  %67 = bitcast i8* %add.ptr73 to i16*, !dbg !532
  %68 = load i16* %67, align 2, !dbg !532, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %68}, i64 0, metadata !533) nounwind, !dbg !534
  %69 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %68) nounwind, !dbg !535, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %69}, i64 0, metadata !533) nounwind, !dbg !535
  %conv217 = zext i16 %69 to i32, !dbg !532
  %add.ptr218 = getelementptr inbounds i8* %cp.addr.0450, i32 12, !dbg !532
  %70 = bitcast i8* %add.ptr218 to i16*, !dbg !532
  %71 = load i16* %70, align 2, !dbg !532, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %71}, i64 0, metadata !533) nounwind, !dbg !534
  %72 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %71) nounwind, !dbg !535, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %72}, i64 0, metadata !533) nounwind, !dbg !535
  %conv220 = zext i16 %72 to i32, !dbg !532
  %call221 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str93, i32 0, i32 0), i32 %conv215, i32 %conv217, i32 %conv220) nounwind, !dbg !532
  br label %sw.epilog, !dbg !536

sw.bb222:                                         ; preds = %if.end83
  %call223 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str94, i32 0, i32 0), i32 %class.0) nounwind, !dbg !537
  %tobool227 = icmp eq i32 %opt_flags.0, 0, !dbg !539
  br i1 %tobool227, label %sw.epilog, label %if.then228, !dbg !539

if.then228:                                       ; preds = %sw.bb222
  %call229 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str95, i32 0, i32 0)) nounwind, !dbg !540
  br label %sw.epilog, !dbg !540

sw.bb231:                                         ; preds = %if.end83
  %idx.neg234 = sub i32 0, %conv74, !dbg !541
  %cmp237 = icmp slt i32 %idx.neg234, 1, !dbg !541
  br i1 %cmp237, label %land.lhs.true239, label %return, !dbg !541

land.lhs.true239:                                 ; preds = %sw.bb231
  %add.ptr235 = getelementptr inbounds i8* %25, i32 %idx.neg234, !dbg !541
  %cmp244 = icmp ugt i8* %add.ptr73, %add.ptr235, !dbg !541
  br i1 %cmp244, label %return, label %if.end247, !dbg !541

if.end247:                                        ; preds = %land.lhs.true239
  %call250 = tail call i32 @fn_printn(i8* %add.ptr73, i32 %conv74, i8* %25) nounwind, !dbg !543
  %tobool251 = icmp eq i32 %call250, 0, !dbg !543
  br i1 %tobool251, label %sw.epilog, label %return, !dbg !543

if.end261:                                        ; preds = %if.end83
  %ndo_vflag262 = getelementptr inbounds %struct.netdissect_options* %24, i32 0, i32 14, !dbg !544
  %73 = load i32* %ndo_vflag262, align 4, !dbg !544, !tbaa !219
  %tobool263 = icmp eq i32 %73, 0, !dbg !544
  br i1 %tobool263, label %sw.epilog, label %if.end265, !dbg !544

if.end265:                                        ; preds = %if.end261
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !546) nounwind, !dbg !548
  %74 = load %struct._IO_FILE** @stdout, align 4, !dbg !549, !tbaa !175
  %call.i448 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %74) nounwind, !dbg !549
  %call267 = tail call fastcc i8* @ns_nprint(i8* %add.ptr73, i8* %bp), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i8* %call267}, i64 0, metadata !52), !dbg !550
  %cmp268 = icmp eq i8* %call267, null, !dbg !550
  br i1 %cmp268, label %return, label %if.end271, !dbg !550

if.end271:                                        ; preds = %if.end265
  %add.ptr272 = getelementptr inbounds i8* %call267, i32 6, !dbg !551
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr272}, i64 0, metadata !52), !dbg !551
  %75 = load %struct.netdissect_options** @gndo, align 4, !dbg !552, !tbaa !175
  %ndo_snapend273 = getelementptr inbounds %struct.netdissect_options* %75, i32 0, i32 45, !dbg !552
  %76 = load i8** %ndo_snapend273, align 4, !dbg !552, !tbaa !175
  %add.ptr274 = getelementptr inbounds i8* %76, i32 -2, !dbg !552
  %cmp281 = icmp ugt i8* %add.ptr272, %add.ptr274, !dbg !552
  br i1 %cmp281, label %return, label %if.end284, !dbg !552

if.end284:                                        ; preds = %if.end271
  %77 = bitcast i8* %add.ptr272 to i16*, !dbg !553
  %78 = load i16* %77, align 2, !dbg !553, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %78}, i64 0, metadata !554) nounwind, !dbg !555
  %79 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %78) nounwind, !dbg !556, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %79}, i64 0, metadata !554) nounwind, !dbg !556
  %conv286 = zext i16 %79 to i32, !dbg !553
  %call287 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str96, i32 0, i32 0), i32 %conv286) nounwind, !dbg !553
  %add.ptr288 = getelementptr inbounds i8* %call267, i32 8, !dbg !557
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr288}, i64 0, metadata !52), !dbg !557
  %80 = load %struct.netdissect_options** @gndo, align 4, !dbg !558, !tbaa !175
  %ndo_snapend289 = getelementptr inbounds %struct.netdissect_options* %80, i32 0, i32 45, !dbg !558
  %81 = load i8** %ndo_snapend289, align 4, !dbg !558, !tbaa !175
  %add.ptr290 = getelementptr inbounds i8* %81, i32 -2, !dbg !558
  %cmp297 = icmp ugt i8* %add.ptr288, %add.ptr290, !dbg !558
  br i1 %cmp297, label %return, label %if.end300, !dbg !558

if.end300:                                        ; preds = %if.end284
  %82 = bitcast i8* %add.ptr288 to i16*, !dbg !559
  %83 = load i16* %82, align 2, !dbg !559, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %83}, i64 0, metadata !560) nounwind, !dbg !561
  %84 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %83) nounwind, !dbg !562, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %84}, i64 0, metadata !560) nounwind, !dbg !562
  %conv302 = zext i16 %84 to i32, !dbg !559
  %call303 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str97, i32 0, i32 0), i32 %conv302) nounwind, !dbg !559
  %85 = load i16* %82, align 2, !dbg !563, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %85}, i64 0, metadata !564) nounwind, !dbg !565
  %86 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %85) nounwind, !dbg !566, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %86}, i64 0, metadata !564) nounwind, !dbg !566
  %conv305 = zext i16 %86 to i32, !dbg !563
  %87 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv305, i32 2), !dbg !563
  %88 = extractvalue { i32, i1 } %87, 0, !dbg !563
  %89 = extractvalue { i32, i1 } %87, 1, !dbg !563
  br i1 %89, label %ioc_bb306, label %cont307, !dbg !563

ioc_bb306:                                        ; preds = %if.end300
  %90 = zext i16 %86 to i64, !dbg !563
  tail call void @__ioc_report_add_overflow(i32 547, i32 15, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 2, i64 %90, i8 13) nounwind, !dbg !563
  br label %cont307, !dbg !563

cont307:                                          ; preds = %if.end300, %ioc_bb306
  %add.ptr288.sum = add i32 %88, 8, !dbg !563
  %add.ptr308 = getelementptr inbounds i8* %call267, i32 %add.ptr288.sum, !dbg !563
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr308}, i64 0, metadata !52), !dbg !563
  %91 = load %struct.netdissect_options** @gndo, align 4, !dbg !567, !tbaa !175
  %ndo_snapend309 = getelementptr inbounds %struct.netdissect_options* %91, i32 0, i32 45, !dbg !567
  %92 = load i8** %ndo_snapend309, align 4, !dbg !567, !tbaa !175
  %add.ptr310 = getelementptr inbounds i8* %92, i32 -2, !dbg !567
  %cmp317 = icmp ugt i8* %add.ptr308, %add.ptr310, !dbg !567
  br i1 %cmp317, label %return, label %if.end320, !dbg !567

if.end320:                                        ; preds = %cont307
  %93 = bitcast i8* %add.ptr308 to i16*, !dbg !568
  %94 = load i16* %93, align 2, !dbg !568, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %94}, i64 0, metadata !569) nounwind, !dbg !570
  %95 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %94) nounwind, !dbg !571, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %95}, i64 0, metadata !569) nounwind, !dbg !571
  %conv322 = zext i16 %95 to i32, !dbg !568
  %call323 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0), i32 %conv322) nounwind, !dbg !568
  %add.ptr308.sum = add i32 %88, 10, !dbg !572
  %add.ptr324 = getelementptr inbounds i8* %call267, i32 %add.ptr308.sum, !dbg !572
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr324}, i64 0, metadata !52), !dbg !572
  %96 = load %struct.netdissect_options** @gndo, align 4, !dbg !573, !tbaa !175
  %ndo_snapend325 = getelementptr inbounds %struct.netdissect_options* %96, i32 0, i32 45, !dbg !573
  %97 = load i8** %ndo_snapend325, align 4, !dbg !573, !tbaa !175
  %add.ptr326 = getelementptr inbounds i8* %97, i32 -2, !dbg !573
  %cmp333 = icmp ugt i8* %add.ptr324, %add.ptr326, !dbg !573
  br i1 %cmp333, label %return, label %if.end336, !dbg !573

if.end336:                                        ; preds = %if.end320
  %98 = bitcast i8* %add.ptr324 to i16*, !dbg !574
  %99 = load i16* %98, align 2, !dbg !574, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %99}, i64 0, metadata !575) nounwind, !dbg !576
  %100 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %99) nounwind, !dbg !577, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %100}, i64 0, metadata !575) nounwind, !dbg !577
  %conv338 = zext i16 %100 to i32, !dbg !574
  %call339 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str99, i32 0, i32 0), i32 %conv338) nounwind, !dbg !574
  %add.ptr324.sum = add i32 %88, 12, !dbg !578
  %add.ptr340 = getelementptr inbounds i8* %call267, i32 %add.ptr324.sum, !dbg !578
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr340}, i64 0, metadata !52), !dbg !578
  %101 = load %struct.netdissect_options** @gndo, align 4, !dbg !579, !tbaa !175
  %ndo_snapend341 = getelementptr inbounds %struct.netdissect_options* %101, i32 0, i32 45, !dbg !579
  %102 = load i8** %ndo_snapend341, align 4, !dbg !579, !tbaa !175
  %add.ptr342 = getelementptr inbounds i8* %102, i32 -2, !dbg !579
  %cmp349 = icmp ugt i8* %add.ptr340, %add.ptr342, !dbg !579
  br i1 %cmp349, label %return, label %if.end352, !dbg !579

if.end352:                                        ; preds = %if.end336
  %103 = bitcast i8* %add.ptr340 to i16*, !dbg !580
  %104 = load i16* %103, align 2, !dbg !580, !tbaa !179
  tail call void @llvm.dbg.value(metadata !{i16 %104}, i64 0, metadata !581) nounwind, !dbg !582
  %105 = tail call i16 asm "xchgb ${0:b}, ${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i16 %104) nounwind, !dbg !583, !srcloc !184
  tail call void @llvm.dbg.value(metadata !{i16 %105}, i64 0, metadata !581) nounwind, !dbg !583
  %conv354 = zext i16 %105 to i32, !dbg !580
  %call355 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str100, i32 0, i32 0), i32 %conv354) nounwind, !dbg !580
  br label %sw.epilog, !dbg !584

sw.epilog:                                        ; preds = %while.cond.preheader, %if.end191, %sw.bb111, %sw.bb222, %if.end247, %if.end261, %if.then228, %sw.bb104, %if.end352, %if.end83, %if.end212, %if.end179, %if.end144, %if.end96
  br label %return, !dbg !585

return:                                           ; preds = %if.end.i, %while.body, %ns_cprint.exit, %land.lhs.true, %if.end4.if.then11_crit_edge, %if.end336, %if.end320, %cont307, %if.end284, %if.end271, %if.end265, %if.end247, %sw.bb231, %land.lhs.true239, %if.end206, %sw.bb193, %if.end173, %sw.bb160, %if.end127, %if.end121, %if.end115, %sw.bb104, %land.lhs.true90, %if.end71, %if.then, %sw.epilog
  %retval.0 = phi i8* [ %add.ptr75, %sw.epilog ], [ null, %if.then ], [ null, %if.end71 ], [ null, %land.lhs.true90 ], [ null, %sw.bb104 ], [ null, %if.end115 ], [ null, %if.end121 ], [ null, %if.end127 ], [ null, %sw.bb160 ], [ null, %if.end173 ], [ null, %sw.bb193 ], [ null, %if.end206 ], [ null, %land.lhs.true239 ], [ null, %sw.bb231 ], [ null, %if.end247 ], [ null, %if.end265 ], [ null, %if.end271 ], [ null, %if.end284 ], [ null, %cont307 ], [ null, %if.end320 ], [ null, %if.end336 ], [ %.pre454, %if.end4.if.then11_crit_edge ], [ %4, %land.lhs.true ], [ null, %ns_cprint.exit ], [ null, %while.body ], [ null, %if.end.i ]
  ret i8* %retval.0, !dbg !586
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define internal fastcc i8* @ns_nprint(i8* %cp, i8* %bp) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !85), !dbg !587
  tail call void @llvm.dbg.value(metadata !{i8* %bp}, i64 0, metadata !86), !dbg !587
  tail call void @llvm.dbg.value(metadata !588, i64 0, metadata !90), !dbg !589
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !590
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !591, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !591
  %1 = load i8** %ndo_snapend, align 4, !dbg !591, !tbaa !175
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i32, !dbg !591
  %sub.ptr.rhs.cast = ptrtoint i8* %bp to i32, !dbg !591
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !591
  tail call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub}, i64 0, metadata !94), !dbg !591
  %call = tail call fastcc i32 @labellen(i8* %cp), !dbg !592
  %2 = icmp sgt i32 %call, -1, !dbg !592
  br i1 %2, label %ioc_bb4.thread, label %ioc_bb4, !dbg !592

ioc_bb4.thread:                                   ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !89), !dbg !592
  tail call void @__ioc_report_conversion(i32 142, i32 40, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !592
  br label %land.lhs.true, !dbg !592

ioc_bb4:                                          ; preds = %entry
  %3 = sext i32 %call to i64, !dbg !592
  tail call void @__ioc_report_conversion(i32 142, i32 12, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %3, i8 1) nounwind, !dbg !592
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !89), !dbg !592
  tail call void @__ioc_report_conversion(i32 142, i32 40, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !592
  %cmp = icmp eq i32 %call, -1, !dbg !592
  br i1 %cmp, label %return, label %land.lhs.true, !dbg !592

land.lhs.true:                                    ; preds = %ioc_bb4.thread, %ioc_bb4
  %4 = load %struct.netdissect_options** @gndo, align 4, !dbg !593, !tbaa !175
  %ndo_snapend6 = getelementptr inbounds %struct.netdissect_options* %4, i32 0, i32 45, !dbg !593
  %5 = load i8** %ndo_snapend6, align 4, !dbg !593, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %5, i32 -1, !dbg !593
  %cmp11 = icmp ult i8* %add.ptr, %cp, !dbg !593
  br i1 %cmp11, label %return, label %if.end13, !dbg !593

if.end13:                                         ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !594, i64 0, metadata !92), !dbg !595
  %incdec.ptr = getelementptr inbounds i8* %cp, i32 1, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !85), !dbg !596
  %6 = load i8* %cp, align 1, !dbg !596, !tbaa !176
  %conv = zext i8 %6 to i32, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !87), !dbg !596
  %and = and i32 %conv, 192, !dbg !596
  %cmp18 = icmp eq i32 %and, 192, !dbg !596
  br i1 %cmp18, label %cont24, label %if.then20, !dbg !596

if.then20:                                        ; preds = %if.end13
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !597
  %incdec.ptr.sum = add i32 %call, 1, !dbg !599
  %add.ptr21 = getelementptr inbounds i8* %cp, i32 %incdec.ptr.sum, !dbg !599
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr21}, i64 0, metadata !90), !dbg !599
  br label %cont24, !dbg !600

cont24:                                           ; preds = %if.then20, %if.end13
  %rp.0 = phi i8* [ %add.ptr21, %if.then20 ], [ null, %if.end13 ]
  %cmp25 = icmp eq i8 %6, 0, !dbg !601
  br i1 %cmp25, label %if.else163, label %while.cond.outer.outer, !dbg !601

while.cond.outer.outer:                           ; preds = %cont24, %cont90
  %i.0.ph.ph = phi i32 [ %conv88, %cont90 ], [ %conv, %cont24 ]
  %l.0.ph.ph = phi i32 [ %call62, %cont90 ], [ %call, %cont24 ]
  %rp.1.ph.ph = phi i8* [ %add.ptr41.rp.1, %cont90 ], [ %rp.0, %cont24 ]
  %compress.1.ph.ph = phi i32 [ %.compress.1, %cont90 ], [ 0, %cont24 ]
  %chars_processed.0.ph.ph = phi i32 [ %16, %cont90 ], [ 1, %cont24 ]
  %cp.addr.0.ph.ph = phi i8* [ %incdec.ptr87, %cont90 ], [ %incdec.ptr, %cont24 ]
  %tobool155 = icmp eq i32 %compress.1.ph.ph, 0, !dbg !602
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %cont160
  %i.0.ph = phi i32 [ %conv152, %cont160 ], [ %i.0.ph.ph, %while.cond.outer.outer ]
  %l.0.ph = phi i32 [ %call126, %cont160 ], [ %l.0.ph.ph, %while.cond.outer.outer ]
  %rp.1.ph = phi i8* [ %add.ptr161, %cont160 ], [ %rp.1.ph.ph, %while.cond.outer.outer ]
  %chars_processed.0.ph = phi i32 [ %69, %cont160 ], [ %chars_processed.0.ph.ph, %while.cond.outer.outer ]
  %cp.addr.0.ph = phi i8* [ %incdec.ptr151, %cont160 ], [ %cp.addr.0.ph.ph, %while.cond.outer.outer ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %cont154
  %i.0 = phi i32 [ %conv152, %cont154 ], [ %i.0.ph, %while.cond.outer ]
  %l.0 = phi i32 [ %call126, %cont154 ], [ %l.0.ph, %while.cond.outer ]
  %chars_processed.0 = phi i32 [ %69, %cont154 ], [ %chars_processed.0.ph, %while.cond.outer ]
  %cp.addr.0 = phi i8* [ %incdec.ptr151, %cont154 ], [ %cp.addr.0.ph, %while.cond.outer ]
  %tobool = icmp eq i32 %i.0, 0, !dbg !604
  br i1 %tobool, label %return, label %land.rhs, !dbg !604

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.netdissect_options** @gndo, align 4, !dbg !604, !tbaa !175
  %ndo_snapend28 = getelementptr inbounds %struct.netdissect_options* %7, i32 0, i32 45, !dbg !604
  %8 = load i8** %ndo_snapend28, align 4, !dbg !604, !tbaa !175
  %cmp29 = icmp ult i8* %cp.addr.0, %8, !dbg !604
  br i1 %cmp29, label %cont32, label %return

cont32:                                           ; preds = %land.rhs
  %and33 = and i32 %i.0, 192, !dbg !605
  switch i32 %and33, label %if.else [
    i32 192, label %if.then38
    i32 64, label %ioc_bb105
  ], !dbg !605

if.then38:                                        ; preds = %cont32
  %add.ptr41 = getelementptr inbounds i8* %cp.addr.0, i32 1, !dbg !606
  %add.ptr41.rp.1 = select i1 %tobool155, i8* %add.ptr41, i8* %rp.1.ph, !dbg !609
  %.compress.1 = select i1 %tobool155, i32 1, i32 %compress.1.ph.ph, !dbg !609
  %add.ptr44 = getelementptr inbounds i8* %8, i32 -1, !dbg !610
  %cmp51 = icmp ugt i8* %cp.addr.0, %add.ptr44, !dbg !610
  br i1 %cmp51, label %return, label %cont59, !dbg !610

cont59:                                           ; preds = %if.then38
  %9 = load i8* %cp.addr.0, align 1, !dbg !611, !tbaa !176
  %shl = shl nuw nsw i32 %i.0, 8, !dbg !611
  %conv57 = zext i8 %9 to i32, !dbg !611
  %shl.masked = and i32 %shl, 16128, !dbg !611
  %and60 = or i32 %conv57, %shl.masked, !dbg !611
  %add.ptr61 = getelementptr inbounds i8* %bp, i32 %and60, !dbg !611
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr61}, i64 0, metadata !85), !dbg !611
  %call62 = tail call fastcc i32 @labellen(i8* %add.ptr61), !dbg !612
  %10 = icmp sgt i32 %call62, -1, !dbg !612
  br i1 %10, label %ioc_bb69.thread, label %ioc_bb69, !dbg !612

ioc_bb69.thread:                                  ; preds = %cont59
  tail call void @llvm.dbg.value(metadata !{i32 %call62}, i64 0, metadata !89), !dbg !612
  tail call void @__ioc_report_conversion(i32 161, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !612
  br label %land.lhs.true80, !dbg !612

ioc_bb69:                                         ; preds = %cont59
  %11 = sext i32 %call62 to i64, !dbg !612
  tail call void @__ioc_report_conversion(i32 161, i32 18, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !612
  tail call void @llvm.dbg.value(metadata !{i32 %call62}, i64 0, metadata !89), !dbg !612
  tail call void @__ioc_report_conversion(i32 161, i32 46, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !612
  %cmp71 = icmp eq i32 %call62, -1, !dbg !612
  br i1 %cmp71, label %return, label %land.lhs.true80, !dbg !612

land.lhs.true80:                                  ; preds = %ioc_bb69.thread, %ioc_bb69
  %12 = load %struct.netdissect_options** @gndo, align 4, !dbg !613, !tbaa !175
  %ndo_snapend75 = getelementptr inbounds %struct.netdissect_options* %12, i32 0, i32 45, !dbg !613
  %13 = load i8** %ndo_snapend75, align 4, !dbg !613, !tbaa !175
  %add.ptr76 = getelementptr inbounds i8* %13, i32 -1, !dbg !613
  %cmp83 = icmp ugt i8* %add.ptr61, %add.ptr76, !dbg !613
  br i1 %cmp83, label %return, label %if.end86, !dbg !613

if.end86:                                         ; preds = %land.lhs.true80
  %add.ptr61.sum = add i32 %and60, 1, !dbg !614
  %incdec.ptr87 = getelementptr inbounds i8* %bp, i32 %add.ptr61.sum, !dbg !614
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr87}, i64 0, metadata !85), !dbg !614
  %14 = load i8* %add.ptr61, align 1, !dbg !614, !tbaa !176
  %conv88 = zext i8 %14 to i32, !dbg !614
  tail call void @llvm.dbg.value(metadata !{i32 %conv88}, i64 0, metadata !87), !dbg !614
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %chars_processed.0, i32 1), !dbg !615
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !615
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !615
  br i1 %17, label %ioc_bb89, label %cont90, !dbg !615

ioc_bb89:                                         ; preds = %if.end86
  %18 = sext i32 %chars_processed.0 to i64, !dbg !615
  tail call void @__ioc_report_add_overflow(i32 166, i32 24, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind, !dbg !615
  br label %cont90, !dbg !615

cont90:                                           ; preds = %if.end86, %ioc_bb89
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !92), !dbg !615
  %cmp91 = icmp slt i32 %16, %sub.ptr.sub, !dbg !616
  br i1 %cmp91, label %while.cond.outer.outer, label %if.then93, !dbg !616

if.then93:                                        ; preds = %cont90
  %call94 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str101, i32 0, i32 0)) nounwind, !dbg !617
  br label %return, !dbg !619

ioc_bb105:                                        ; preds = %cont32
  tail call void @__ioc_report_conversion(i32 180, i32 20, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -193, i8 1) nounwind, !dbg !620
  %and107 = and i32 %i.0, 63, !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %and107}, i64 0, metadata !93), !dbg !620
  %cond = icmp eq i32 %and107, 1, !dbg !622
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !622

sw.bb:                                            ; preds = %ioc_bb105
  tail call void @llvm.dbg.value(metadata !{i8* %cp.addr.0}, i64 0, metadata !623) nounwind, !dbg !627
  %19 = load %struct.netdissect_options** @gndo, align 4, !dbg !628, !tbaa !175
  %ndo_snapend.i = getelementptr inbounds %struct.netdissect_options* %19, i32 0, i32 45, !dbg !628
  %20 = load i8** %ndo_snapend.i, align 4, !dbg !628, !tbaa !175
  %add.ptr.i = getelementptr inbounds i8* %20, i32 -1, !dbg !628
  %cmp4.i = icmp ult i8* %add.ptr.i, %cp.addr.0, !dbg !628
  br i1 %cmp4.i, label %return, label %if.end.i, !dbg !628

if.end.i:                                         ; preds = %sw.bb
  %21 = load i8* %cp.addr.0, align 1, !dbg !629, !tbaa !176
  %conv.i = zext i8 %21 to i32, !dbg !629
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !630) nounwind, !dbg !629
  %cmp5.i = icmp eq i8 %21, 0, !dbg !629
  %.conv.i = select i1 %cmp5.i, i32 256, i32 %conv.i, !dbg !629
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.conv.i, i32 3) nounwind, !dbg !631
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !631
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !631
  br i1 %24, label %ioc_bb.i, label %cont10.i, !dbg !631

ioc_bb.i:                                         ; preds = %if.end.i
  %25 = zext i32 %.conv.i to i64, !dbg !631
  tail call void @__ioc_report_add_overflow(i32 82, i32 18, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %25, i64 3, i8 13) nounwind, !dbg !631
  br label %cont10.i, !dbg !631

cont10.i:                                         ; preds = %ioc_bb.i, %if.end.i
  %div.i = sdiv i32 %23, 4, !dbg !631
  tail call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !632) nounwind, !dbg !631
  %add.ptr11.sum.i = add i32 %div.i, 1, !dbg !633
  %add.ptr12.i = getelementptr inbounds i8* %cp.addr.0, i32 %add.ptr11.sum.i, !dbg !633
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr12.i}, i64 0, metadata !634) nounwind, !dbg !633
  %call.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str103, i32 0, i32 0)) nounwind, !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %.conv.i}, i64 0, metadata !636) nounwind, !dbg !637
  %bitp.0123.i = getelementptr inbounds i8* %cp.addr.0, i32 1, !dbg !633
  %cmp14124.i = icmp sgt i32 %add.ptr11.sum.i, 1, !dbg !637
  %cmp16125.i = icmp ugt i32 %.conv.i, 7, !dbg !637
  %or.cond126.i = and i1 %cmp14124.i, %cmp16125.i, !dbg !637
  br i1 %or.cond126.i, label %land.lhs.true23.i, label %for.end.i, !dbg !637

land.lhs.true23.i:                                ; preds = %cont10.i, %for.cond.backedge.i
  %bitp.0128.i = phi i8* [ %bitp.0.i, %for.cond.backedge.i ], [ %bitp.0123.i, %cont10.i ]
  %b.0127.i = phi i32 [ %30, %for.cond.backedge.i ], [ %.conv.i, %cont10.i ]
  %26 = load %struct.netdissect_options** @gndo, align 4, !dbg !639, !tbaa !175
  %ndo_snapend18.i = getelementptr inbounds %struct.netdissect_options* %26, i32 0, i32 45, !dbg !639
  %27 = load i8** %ndo_snapend18.i, align 4, !dbg !639, !tbaa !175
  %add.ptr19.i = getelementptr inbounds i8* %27, i32 -1, !dbg !639
  %cmp26.i = icmp ugt i8* %bitp.0128.i, %add.ptr19.i, !dbg !639
  br i1 %cmp26.i, label %trunc.i, label %if.end29.i, !dbg !639

if.end29.i:                                       ; preds = %land.lhs.true23.i
  %28 = load i8* %bitp.0128.i, align 1, !dbg !641, !tbaa !176
  %conv30.i = zext i8 %28 to i32, !dbg !641
  %call31.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str104, i32 0, i32 0), i32 %conv30.i) nounwind, !dbg !641
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %b.0127.i, i32 8) nounwind, !dbg !637
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !637
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !637
  br i1 %31, label %ioc_bb32.i, label %for.cond.backedge.i, !dbg !637

for.cond.backedge.i:                              ; preds = %ioc_bb32.i, %if.end29.i
  %bitp.0.i = getelementptr inbounds i8* %bitp.0128.i, i32 1, !dbg !633
  %cmp14.i = icmp ult i8* %bitp.0.i, %add.ptr12.i, !dbg !637
  %cmp16.i = icmp sgt i32 %30, 7, !dbg !637
  %or.cond.i = and i1 %cmp14.i, %cmp16.i, !dbg !637
  br i1 %or.cond.i, label %land.lhs.true23.i, label %for.end.i, !dbg !637

ioc_bb32.i:                                       ; preds = %if.end29.i
  %32 = sext i32 %b.0127.i to i64, !dbg !637
  tail call void @__ioc_report_sub_overflow(i32 86, i32 62, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %32, i64 8, i8 13) nounwind, !dbg !637
  br label %for.cond.backedge.i, !dbg !637

for.end.i:                                        ; preds = %for.cond.backedge.i, %cont10.i
  %bitp.0.lcssa.i = phi i8* [ %bitp.0123.i, %cont10.i ], [ %bitp.0.i, %for.cond.backedge.i ]
  %b.0.lcssa.i = phi i32 [ %.conv.i, %cont10.i ], [ %30, %for.cond.backedge.i ]
  %cmp34.i = icmp sgt i32 %b.0.lcssa.i, 4, !dbg !642
  br i1 %cmp34.i, label %land.lhs.true42.i, label %if.else.i, !dbg !642

land.lhs.true42.i:                                ; preds = %for.end.i
  %33 = load %struct.netdissect_options** @gndo, align 4, !dbg !643, !tbaa !175
  %ndo_snapend37.i = getelementptr inbounds %struct.netdissect_options* %33, i32 0, i32 45, !dbg !643
  %34 = load i8** %ndo_snapend37.i, align 4, !dbg !643, !tbaa !175
  %add.ptr38.i = getelementptr inbounds i8* %34, i32 -1, !dbg !643
  %cmp45.i = icmp ugt i8* %bitp.0.lcssa.i, %add.ptr38.i, !dbg !643
  br i1 %cmp45.i, label %trunc.i, label %if.end48.i, !dbg !643

if.end48.i:                                       ; preds = %land.lhs.true42.i
  %35 = load i8* %bitp.0.lcssa.i, align 1, !dbg !645, !tbaa !176
  %36 = icmp sgt i8 %35, -1, !dbg !645
  br i1 %36, label %cont51.i, label %ioc_bb50.i, !dbg !645

ioc_bb50.i:                                       ; preds = %if.end48.i
  %37 = zext i8 %35 to i64, !dbg !645
  tail call void @__ioc_report_conversion(i32 94, i32 10, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i64 %37, i8 0) nounwind, !dbg !645
  br label %cont51.i, !dbg !645

cont51.i:                                         ; preds = %ioc_bb50.i, %if.end48.i
  tail call void @llvm.dbg.value(metadata !{i8 %35}, i64 0, metadata !646) nounwind, !dbg !645
  %conv52.i = sext i8 %35 to i32, !dbg !647
  %38 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 8, i32 %b.0.lcssa.i) nounwind, !dbg !647
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !647
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !647
  br i1 %40, label %ioc_bb53.i, label %cont54.i, !dbg !647

ioc_bb53.i:                                       ; preds = %cont51.i
  %41 = sext i32 %b.0.lcssa.i to i64, !dbg !647
  tail call void @__ioc_report_sub_overflow(i32 95, i32 34, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 8, i64 %41, i8 13) nounwind, !dbg !647
  br label %cont54.i, !dbg !647

cont54.i:                                         ; preds = %ioc_bb53.i, %cont51.i
  %42 = icmp ult i32 %39, 32, !dbg !647
  %43 = sext i32 %39 to i64, !dbg !647
  br i1 %42, label %cont56.i, label %ioc_bb55.i, !dbg !647

ioc_bb55.i:                                       ; preds = %cont54.i
  tail call void @__ioc_report_shl_bitwidth(i32 95, i32 29, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 255, i64 %43, i8 13) nounwind, !dbg !647
  br label %cont56.i, !dbg !647

cont56.i:                                         ; preds = %ioc_bb55.i, %cont54.i
  %shl.zeros.i = sub nuw nsw i32 31, %39, !dbg !647
  %shl.check.i = lshr i32 255, %shl.zeros.i, !dbg !647
  %44 = icmp eq i32 %shl.check.i, 0, !dbg !647
  br i1 %44, label %cont58.i, label %ioc_bb57.i, !dbg !647

ioc_bb57.i:                                       ; preds = %cont56.i
  tail call void @__ioc_report_shl_strict(i32 95, i32 29, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 255, i64 %43, i8 13) nounwind, !dbg !647
  br label %cont58.i, !dbg !647

cont58.i:                                         ; preds = %ioc_bb57.i, %cont56.i
  %shl.i = shl i32 255, %39, !dbg !647
  %and59.i = and i32 %shl.i, %conv52.i, !dbg !647
  %call60.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str104, i32 0, i32 0), i32 %and59.i) nounwind, !dbg !647
  br label %blabel_print.exit, !dbg !648

if.else.i:                                        ; preds = %for.end.i
  %cmp61.i = icmp sgt i32 %b.0.lcssa.i, 0, !dbg !649
  br i1 %cmp61.i, label %land.lhs.true69.i, label %blabel_print.exit, !dbg !649

land.lhs.true69.i:                                ; preds = %if.else.i
  %45 = load %struct.netdissect_options** @gndo, align 4, !dbg !650, !tbaa !175
  %ndo_snapend64.i = getelementptr inbounds %struct.netdissect_options* %45, i32 0, i32 45, !dbg !650
  %46 = load i8** %ndo_snapend64.i, align 4, !dbg !650, !tbaa !175
  %add.ptr65.i = getelementptr inbounds i8* %46, i32 -1, !dbg !650
  %cmp72.i = icmp ugt i8* %bitp.0.lcssa.i, %add.ptr65.i, !dbg !650
  br i1 %cmp72.i, label %trunc.i, label %if.end75.i, !dbg !650

if.end75.i:                                       ; preds = %land.lhs.true69.i
  %47 = load i8* %bitp.0.lcssa.i, align 1, !dbg !652, !tbaa !176
  %48 = icmp sgt i8 %47, -1, !dbg !652
  br i1 %48, label %cont82.i, label %ioc_bb78.i, !dbg !652

ioc_bb78.i:                                       ; preds = %if.end75.i
  %49 = zext i8 %47 to i64, !dbg !652
  tail call void @__ioc_report_conversion(i32 100, i32 10, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i64 %49, i8 0) nounwind, !dbg !652
  br label %cont82.i, !dbg !652

cont82.i:                                         ; preds = %ioc_bb78.i, %if.end75.i
  tail call void @llvm.dbg.value(metadata !{i8 %47}, i64 0, metadata !646) nounwind, !dbg !652
  %conv80119.i = zext i8 %47 to i32, !dbg !653
  %shr120.i = lshr i32 %conv80119.i, 4, !dbg !653
  %50 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 4, i32 %b.0.lcssa.i) nounwind, !dbg !653
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !653
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !653
  br i1 %52, label %ioc_bb84.i, label %cont85.i, !dbg !653

ioc_bb84.i:                                       ; preds = %cont82.i
  %53 = sext i32 %b.0.lcssa.i to i64, !dbg !653
  tail call void @__ioc_report_sub_overflow(i32 101, i32 45, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 4, i64 %53, i8 13) nounwind, !dbg !653
  br label %cont85.i, !dbg !653

cont85.i:                                         ; preds = %ioc_bb84.i, %cont82.i
  %54 = icmp ult i32 %51, 32, !dbg !653
  %55 = sext i32 %51 to i64, !dbg !653
  br i1 %54, label %cont87.i, label %ioc_bb86.i, !dbg !653

ioc_bb86.i:                                       ; preds = %cont85.i
  tail call void @__ioc_report_shl_bitwidth(i32 101, i32 40, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 15, i64 %55, i8 13) nounwind, !dbg !653
  br label %cont87.i, !dbg !653

cont87.i:                                         ; preds = %ioc_bb86.i, %cont85.i
  %shl.zeros88.i = sub nuw nsw i32 31, %51, !dbg !653
  %shl.check89.i = lshr i32 15, %shl.zeros88.i, !dbg !653
  %56 = icmp eq i32 %shl.check89.i, 0, !dbg !653
  br i1 %56, label %cont91.i, label %ioc_bb90.i, !dbg !653

ioc_bb90.i:                                       ; preds = %cont87.i
  tail call void @__ioc_report_shl_strict(i32 101, i32 40, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 15, i64 %55, i8 13) nounwind, !dbg !653
  br label %cont91.i, !dbg !653

cont91.i:                                         ; preds = %ioc_bb90.i, %cont87.i
  %shl92.i = shl i32 15, %51, !dbg !653
  %and93.i = and i32 %shl92.i, %shr120.i, !dbg !653
  %call94.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str105, i32 0, i32 0), i32 %and93.i) nounwind, !dbg !653
  br label %blabel_print.exit, !dbg !654

trunc.i:                                          ; preds = %land.lhs.true69.i, %land.lhs.true42.i, %land.lhs.true23.i
  %call98.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str107, i32 0, i32 0), i32 %.conv.i) nounwind, !dbg !655
  br label %return, !dbg !656

blabel_print.exit:                                ; preds = %cont58.i, %if.else.i, %cont91.i
  %call97.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str106, i32 0, i32 0), i32 %.conv.i) nounwind, !dbg !657
  %cmp111 = icmp eq i8* %add.ptr12.i, null, !dbg !624
  br i1 %cmp111, label %return, label %if.end121, !dbg !624

sw.default:                                       ; preds = %ioc_bb105
  %call115 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str102, i32 0, i32 0), i32 %and107) nounwind, !dbg !658
  br label %return, !dbg !660

if.else:                                          ; preds = %cont32
  %call117 = tail call i32 @fn_printn(i8* %cp.addr.0, i32 %l.0, i8* %8) nounwind, !dbg !661
  %tobool118 = icmp eq i32 %call117, 0, !dbg !661
  br i1 %tobool118, label %if.end121, label %return, !dbg !661

if.end121:                                        ; preds = %if.else, %blabel_print.exit
  %add.ptr122 = getelementptr inbounds i8* %cp.addr.0, i32 %l.0, !dbg !663
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr122}, i64 0, metadata !85), !dbg !663
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %chars_processed.0, i32 %l.0), !dbg !664
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !664
  %59 = extractvalue { i32, i1 } %57, 1, !dbg !664
  br i1 %59, label %ioc_bb123, label %cont124, !dbg !664

ioc_bb123:                                        ; preds = %if.end121
  %60 = sext i32 %l.0 to i64, !dbg !664
  %61 = sext i32 %chars_processed.0 to i64, !dbg !664
  tail call void @__ioc_report_add_overflow(i32 201, i32 23, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %61, i64 %60, i8 13) nounwind, !dbg !664
  br label %cont124, !dbg !664

cont124:                                          ; preds = %if.end121, %ioc_bb123
  tail call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !92), !dbg !664
  tail call void @llvm.dbg.value(metadata !665, i64 0, metadata !666) nounwind, !dbg !668
  %62 = load %struct._IO_FILE** @stdout, align 4, !dbg !669, !tbaa !175
  %call.i198 = tail call i32 @_IO_putc(i32 46, %struct._IO_FILE* %62) nounwind, !dbg !669
  %call126 = tail call fastcc i32 @labellen(i8* %add.ptr122), !dbg !670
  %63 = icmp sgt i32 %call126, -1, !dbg !670
  br i1 %63, label %ioc_bb133.thread, label %ioc_bb133, !dbg !670

ioc_bb133.thread:                                 ; preds = %cont124
  tail call void @llvm.dbg.value(metadata !{i32 %call126}, i64 0, metadata !89), !dbg !670
  tail call void @__ioc_report_conversion(i32 203, i32 44, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !670
  br label %land.lhs.true144, !dbg !670

ioc_bb133:                                        ; preds = %cont124
  %64 = sext i32 %call126 to i64, !dbg !670
  tail call void @__ioc_report_conversion(i32 203, i32 16, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %64, i8 1) nounwind, !dbg !670
  tail call void @llvm.dbg.value(metadata !{i32 %call126}, i64 0, metadata !89), !dbg !670
  tail call void @__ioc_report_conversion(i32 203, i32 44, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !670
  %cmp135 = icmp eq i32 %call126, -1, !dbg !670
  br i1 %cmp135, label %return, label %land.lhs.true144, !dbg !670

land.lhs.true144:                                 ; preds = %ioc_bb133.thread, %ioc_bb133
  %65 = load %struct.netdissect_options** @gndo, align 4, !dbg !671, !tbaa !175
  %ndo_snapend139 = getelementptr inbounds %struct.netdissect_options* %65, i32 0, i32 45, !dbg !671
  %66 = load i8** %ndo_snapend139, align 4, !dbg !671, !tbaa !175
  %add.ptr140 = getelementptr inbounds i8* %66, i32 -1, !dbg !671
  %cmp147 = icmp ugt i8* %add.ptr122, %add.ptr140, !dbg !671
  br i1 %cmp147, label %return, label %if.end150, !dbg !671

if.end150:                                        ; preds = %land.lhs.true144
  %add.ptr122.sum = add i32 %l.0, 1, !dbg !672
  %incdec.ptr151 = getelementptr inbounds i8* %cp.addr.0, i32 %add.ptr122.sum, !dbg !672
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr151}, i64 0, metadata !85), !dbg !672
  %67 = load i8* %add.ptr122, align 1, !dbg !672, !tbaa !176
  %conv152 = zext i8 %67 to i32, !dbg !672
  tail call void @llvm.dbg.value(metadata !{i32 %conv152}, i64 0, metadata !87), !dbg !672
  %68 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %58, i32 1), !dbg !673
  %69 = extractvalue { i32, i1 } %68, 0, !dbg !673
  %70 = extractvalue { i32, i1 } %68, 1, !dbg !673
  br i1 %70, label %ioc_bb153, label %cont154, !dbg !673

ioc_bb153:                                        ; preds = %if.end150
  %71 = sext i32 %58 to i64, !dbg !673
  tail call void @__ioc_report_add_overflow(i32 208, i32 22, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind, !dbg !673
  br label %cont154, !dbg !673

cont154:                                          ; preds = %if.end150, %ioc_bb153
  tail call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !92), !dbg !673
  br i1 %tobool155, label %cont158, label %while.cond, !dbg !602

cont158:                                          ; preds = %cont154
  %72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call126, i32 1), !dbg !674
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !674
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !674
  br i1 %74, label %ioc_bb159, label %cont160, !dbg !674

ioc_bb159:                                        ; preds = %cont158
  %75 = zext i32 %call126 to i64, !dbg !674
  tail call void @__ioc_report_add_overflow(i32 210, i32 17, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %75, i64 1, i8 5) nounwind, !dbg !674
  br label %cont160, !dbg !674

cont160:                                          ; preds = %cont158, %ioc_bb159
  %add.ptr161 = getelementptr inbounds i8* %rp.1.ph, i32 %73, !dbg !674
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr161}, i64 0, metadata !90), !dbg !674
  br label %while.cond.outer, !dbg !674

if.else163:                                       ; preds = %cont24
  tail call void @llvm.dbg.value(metadata !665, i64 0, metadata !675) nounwind, !dbg !677
  %76 = load %struct._IO_FILE** @stdout, align 4, !dbg !678, !tbaa !175
  %call.i199 = tail call i32 @_IO_putc(i32 46, %struct._IO_FILE* %76) nounwind, !dbg !678
  br label %return

return:                                           ; preds = %sw.bb, %land.rhs, %while.cond, %land.lhs.true144, %ioc_bb133, %if.else, %blabel_print.exit, %land.lhs.true80, %ioc_bb69, %if.then38, %trunc.i, %if.else163, %land.lhs.true, %ioc_bb4, %sw.default, %if.then93
  %retval.0 = phi i8* [ null, %if.then93 ], [ null, %sw.default ], [ null, %ioc_bb4 ], [ null, %land.lhs.true ], [ %rp.0, %if.else163 ], [ null, %trunc.i ], [ null, %blabel_print.exit ], [ null, %if.else ], [ null, %ioc_bb133 ], [ null, %land.lhs.true144 ], [ %rp.1.ph, %while.cond ], [ %rp.1.ph, %land.rhs ], [ null, %sw.bb ], [ null, %land.lhs.true80 ], [ null, %ioc_bb69 ], [ null, %if.then38 ]
  ret i8* %retval.0, !dbg !679
}

declare i8* @tok2str(%struct.tok*, i8*, i32)

declare void @relts_print(i32)

declare i8* @intoa(i32)

declare i32 @fn_printn(i8*, i32, i8*)

define internal fastcc i32 @labellen(i8* %cp) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !112), !dbg !680
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !681, !tbaa !175
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !681
  %1 = load i8** %ndo_snapend, align 4, !dbg !681, !tbaa !175
  %add.ptr = getelementptr inbounds i8* %1, i32 -1, !dbg !681
  %cmp4 = icmp ult i8* %add.ptr, %cp, !dbg !681
  br i1 %cmp4, label %return, label %if.end, !dbg !681

if.end:                                           ; preds = %entry
  %2 = load i8* %cp, align 1, !dbg !682, !tbaa !176
  %conv = zext i8 %2 to i32, !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !113), !dbg !682
  %and = and i32 %conv, 192, !dbg !683
  %cmp9 = icmp eq i32 %and, 64, !dbg !683
  br i1 %cmp9, label %ioc_bb12, label %return, !dbg !683

ioc_bb12:                                         ; preds = %if.end
  tail call void @__ioc_report_conversion(i32 119, i32 21, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -193, i8 1) nounwind, !dbg !684
  %and14 = and i32 %conv, 63, !dbg !684
  tail call void @llvm.dbg.value(metadata !{i32 %and14}, i64 0, metadata !117), !dbg !684
  %cmp17 = icmp eq i32 %and14, 1, !dbg !684
  br i1 %cmp17, label %land.lhs.true28, label %if.then19, !dbg !684

if.then19:                                        ; preds = %ioc_bb12
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str102, i32 0, i32 0), i32 %and14) nounwind, !dbg !685
  br label %return, !dbg !687

land.lhs.true28:                                  ; preds = %ioc_bb12
  %3 = load %struct.netdissect_options** @gndo, align 4, !dbg !688, !tbaa !175
  %ndo_snapend23 = getelementptr inbounds %struct.netdissect_options* %3, i32 0, i32 45, !dbg !688
  %4 = load i8** %ndo_snapend23, align 4, !dbg !688, !tbaa !175
  %add.ptr24 = getelementptr inbounds i8* %4, i32 -1, !dbg !688
  %add.ptr29 = getelementptr inbounds i8* %cp, i32 1, !dbg !688
  %cmp32 = icmp ugt i8* %add.ptr29, %add.ptr24, !dbg !688
  br i1 %cmp32, label %return, label %if.end37, !dbg !688

if.end37:                                         ; preds = %land.lhs.true28
  %5 = load i8* %add.ptr29, align 1, !dbg !689, !tbaa !176
  %conv39 = zext i8 %5 to i32, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %conv39}, i64 0, metadata !115), !dbg !689
  %cmp40 = icmp eq i8 %5, 0, !dbg !689
  %.conv39 = select i1 %cmp40, i32 256, i32 %conv39, !dbg !689
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.conv39, i32 7), !dbg !690
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !690
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !690
  br i1 %8, label %ioc_bb44, label %cont48, !dbg !690

ioc_bb44:                                         ; preds = %if.end37
  %9 = zext i32 %.conv39 to i64, !dbg !690
  tail call void @__ioc_report_add_overflow(i32 127, i32 20, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %9, i64 7, i8 13) nounwind, !dbg !690
  br label %cont48, !dbg !690

cont48:                                           ; preds = %ioc_bb44, %if.end37
  %div = sdiv i32 %7, 8, !dbg !690
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div, i32 1), !dbg !690
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !690
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !690
  br i1 %12, label %ioc_bb49, label %return, !dbg !690

ioc_bb49:                                         ; preds = %cont48
  %13 = sext i32 %div to i64, !dbg !690
  tail call void @__ioc_report_add_overflow(i32 127, i32 29, i8* getelementptr inbounds ([22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind, !dbg !690
  br label %return, !dbg !690

return:                                           ; preds = %if.end, %ioc_bb49, %cont48, %land.lhs.true28, %entry, %if.then19
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %entry ], [ -1, %land.lhs.true28 ], [ %11, %cont48 ], [ %11, %ioc_bb49 ], [ %conv, %if.end ]
  ret i32 %retval.0, !dbg !691
}

declare void @__ioc_report_shl_bitwidth(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"../src/print-domain.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", metadata !"clang version 3.2  (https://github.com/jikk/ioc-llvm.git 05d0e47f00295acc4df8088f9c0d935861988ed4)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !151} ; [ DW_TAG_compile_unit ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !47, metadata !64, metadata !72, metadata !80, metadata !95, metadata !107, metadata !118, metadata !128, metadata !138, metadata !145}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_print", metadata !"ns_print", metadata !"", metadata !6, i32 566, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32)* @ns_print, null, null, metadata !18, i32 567} ; [ DW_TAG_subprogram ] [line 566] [def] [scope 567] [ns_print]
!6 = metadata !{i32 786473, metadata !"../src/print-domain.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !14, metadata !17}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u_char]
!11 = metadata !{i32 786454, null, metadata !"u_char", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!12 = metadata !{i32 786454, null, metadata !"__u_char", metadata !6, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!13 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!14 = metadata !{i32 786454, null, metadata !"u_int", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [u_int] [line 36, size 0, align 0, offset 0] [from __u_int]
!15 = metadata !{i32 786454, null, metadata !"__u_int", metadata !6, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [__u_int] [line 33, size 0, align 0, offset 0] [from unsigned int]
!16 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!20 = metadata !{i32 786689, metadata !5, metadata !"bp", metadata !6, i32 16777782, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 566]
!21 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 33554998, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 566]
!22 = metadata !{i32 786689, metadata !5, metadata !"is_mdns", metadata !6, i32 50332214, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_mdns] [line 566]
!23 = metadata !{i32 786688, metadata !24, metadata !"np", metadata !6, i32 568, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 568]
!24 = metadata !{i32 786443, metadata !5, i32 567, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from HEADER]
!27 = metadata !{i32 786454, null, metadata !"HEADER", metadata !6, i32 235, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [HEADER] [line 235, size 0, align 0, offset 0] [from ]
!28 = metadata !{i32 786451, null, metadata !"", metadata !29, i32 227, i64 96, i64 16, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 227, size 96, align 16, offset 0] [from ]
!29 = metadata !{i32 786473, metadata !"../src/nameser.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!30 = metadata !{metadata !31, metadata !34, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!31 = metadata !{i32 786445, metadata !28, metadata !"id", metadata !29, i32 228, i64 16, i64 16, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [id] [line 228, size 16, align 16, offset 0] [from u_int16_t]
!32 = metadata !{i32 786454, null, metadata !"u_int16_t", metadata !29, i32 202, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [u_int16_t] [line 202, size 0, align 0, offset 0] [from unsigned short]
!33 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!34 = metadata !{i32 786445, metadata !28, metadata !"flags1", metadata !29, i32 229, i64 8, i64 8, i64 16, i32 0, metadata !35} ; [ DW_TAG_member ] [flags1] [line 229, size 8, align 8, offset 16] [from u_int8_t]
!35 = metadata !{i32 786454, null, metadata !"u_int8_t", metadata !29, i32 201, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [u_int8_t] [line 201, size 0, align 0, offset 0] [from unsigned char]
!36 = metadata !{i32 786445, metadata !28, metadata !"flags2", metadata !29, i32 230, i64 8, i64 8, i64 24, i32 0, metadata !35} ; [ DW_TAG_member ] [flags2] [line 230, size 8, align 8, offset 24] [from u_int8_t]
!37 = metadata !{i32 786445, metadata !28, metadata !"qdcount", metadata !29, i32 231, i64 16, i64 16, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [qdcount] [line 231, size 16, align 16, offset 32] [from u_int16_t]
!38 = metadata !{i32 786445, metadata !28, metadata !"ancount", metadata !29, i32 232, i64 16, i64 16, i64 48, i32 0, metadata !32} ; [ DW_TAG_member ] [ancount] [line 232, size 16, align 16, offset 48] [from u_int16_t]
!39 = metadata !{i32 786445, metadata !28, metadata !"nscount", metadata !29, i32 233, i64 16, i64 16, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [nscount] [line 233, size 16, align 16, offset 64] [from u_int16_t]
!40 = metadata !{i32 786445, metadata !28, metadata !"arcount", metadata !29, i32 234, i64 16, i64 16, i64 80, i32 0, metadata !32} ; [ DW_TAG_member ] [arcount] [line 234, size 16, align 16, offset 80] [from u_int16_t]
!41 = metadata !{i32 786688, metadata !24, metadata !"qdcount", metadata !6, i32 569, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qdcount] [line 569]
!42 = metadata !{i32 786688, metadata !24, metadata !"ancount", metadata !6, i32 570, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ancount] [line 570]
!43 = metadata !{i32 786688, metadata !24, metadata !"nscount", metadata !6, i32 571, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nscount] [line 571]
!44 = metadata !{i32 786688, metadata !24, metadata !"arcount", metadata !6, i32 572, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arcount] [line 572]
!45 = metadata !{i32 786688, metadata !24, metadata !"cp", metadata !6, i32 573, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 573]
!46 = metadata !{i32 786688, metadata !24, metadata !"b2", metadata !6, i32 574, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2] [line 574]
!47 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_rprint", metadata !"ns_rprint", metadata !"", metadata !6, i32 374, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ns_rprint, null, null, metadata !50, i32 375} ; [ DW_TAG_subprogram ] [line 374] [local] [def] [scope 375] [ns_rprint]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !9, metadata !9, metadata !9, metadata !17}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !57, metadata !58, metadata !59, metadata !62, metadata !63}
!52 = metadata !{i32 786689, metadata !47, metadata !"cp", metadata !6, i32 16777590, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 374]
!53 = metadata !{i32 786689, metadata !47, metadata !"bp", metadata !6, i32 33554806, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 374]
!54 = metadata !{i32 786689, metadata !47, metadata !"is_mdns", metadata !6, i32 50332022, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_mdns] [line 374]
!55 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !6, i32 376, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 376]
!56 = metadata !{i32 786443, metadata !47, i32 375, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!57 = metadata !{i32 786688, metadata !56, metadata !"class", metadata !6, i32 377, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [class] [line 377]
!58 = metadata !{i32 786688, metadata !56, metadata !"opt_flags", metadata !6, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt_flags] [line 378]
!59 = metadata !{i32 786688, metadata !56, metadata !"typ", metadata !6, i32 379, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typ] [line 379]
!60 = metadata !{i32 786454, null, metadata !"u_short", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!61 = metadata !{i32 786454, null, metadata !"__u_short", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!62 = metadata !{i32 786688, metadata !56, metadata !"len", metadata !6, i32 380, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 380]
!63 = metadata !{i32 786688, metadata !56, metadata !"rp", metadata !6, i32 381, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rp] [line 381]
!64 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_cprint", metadata !"ns_cprint", metadata !"", metadata !6, i32 218, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !67, i32 219} ; [ DW_TAG_subprogram ] [line 218] [local] [def] [scope 219] [ns_cprint]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !9, metadata !9}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786689, metadata !64, metadata !"cp", metadata !6, i32 16777434, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 218]
!70 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 220, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 220]
!71 = metadata !{i32 786443, metadata !64, i32 219, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!72 = metadata !{i32 786478, i32 0, metadata !73, metadata !"__ntohl", metadata !"__ntohl", metadata !"", metadata !73, i32 197, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !77, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [__ntohl]
!73 = metadata !{i32 786473, metadata !"../src/tcpdump-stdinc.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !76}
!76 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!80 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_nprint", metadata !"ns_nprint", metadata !"", metadata !6, i32 133, metadata !81, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @ns_nprint, null, null, metadata !83, i32 134} ; [ DW_TAG_subprogram ] [line 133] [local] [def] [scope 134] [ns_nprint]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !9, metadata !9, metadata !9}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!85 = metadata !{i32 786689, metadata !80, metadata !"cp", metadata !6, i32 16777349, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 133]
!86 = metadata !{i32 786689, metadata !80, metadata !"bp", metadata !6, i32 33554565, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 133]
!87 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !6, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 135]
!88 = metadata !{i32 786443, metadata !80, i32 134, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!89 = metadata !{i32 786688, metadata !88, metadata !"l", metadata !6, i32 136, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 136]
!90 = metadata !{i32 786688, metadata !88, metadata !"rp", metadata !6, i32 137, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rp] [line 137]
!91 = metadata !{i32 786688, metadata !88, metadata !"compress", metadata !6, i32 138, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [compress] [line 138]
!92 = metadata !{i32 786688, metadata !88, metadata !"chars_processed", metadata !6, i32 139, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chars_processed] [line 139]
!93 = metadata !{i32 786688, metadata !88, metadata !"elt", metadata !6, i32 140, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elt] [line 140]
!94 = metadata !{i32 786688, metadata !88, metadata !"data_size", metadata !6, i32 141, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data_size] [line 141]
!95 = metadata !{i32 786478, i32 0, metadata !6, metadata !"blabel_print", metadata !"blabel_print", metadata !"", metadata !6, i32 70, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !96, i32 71} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [scope 71] [blabel_print]
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !98, metadata !99, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!98 = metadata !{i32 786689, metadata !95, metadata !"cp", metadata !6, i32 16777286, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 70]
!99 = metadata !{i32 786688, metadata !100, metadata !"bitlen", metadata !6, i32 72, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitlen] [line 72]
!100 = metadata !{i32 786443, metadata !95, i32 71, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!101 = metadata !{i32 786688, metadata !100, metadata !"slen", metadata !6, i32 73, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 73]
!102 = metadata !{i32 786688, metadata !100, metadata !"b", metadata !6, i32 74, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 74]
!103 = metadata !{i32 786688, metadata !100, metadata !"bitp", metadata !6, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitp] [line 75]
!104 = metadata !{i32 786688, metadata !100, metadata !"lim", metadata !6, i32 76, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 76]
!105 = metadata !{i32 786688, metadata !100, metadata !"tc", metadata !6, i32 77, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tc] [line 77]
!106 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!107 = metadata !{i32 786478, i32 0, metadata !6, metadata !"labellen", metadata !"labellen", metadata !"", metadata !6, i32 110, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @labellen, null, null, metadata !110, i32 111} ; [ DW_TAG_subprogram ] [line 110] [local] [def] [scope 111] [labellen]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !17, metadata !9}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !112, metadata !113, metadata !115, metadata !117}
!112 = metadata !{i32 786689, metadata !107, metadata !"cp", metadata !6, i32 16777326, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 110]
!113 = metadata !{i32 786688, metadata !114, metadata !"i", metadata !6, i32 112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 112]
!114 = metadata !{i32 786443, metadata !107, i32 111, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!115 = metadata !{i32 786688, metadata !116, metadata !"bitlen", metadata !6, i32 117, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitlen] [line 117]
!116 = metadata !{i32 786443, metadata !114, i32 116, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!117 = metadata !{i32 786688, metadata !116, metadata !"elt", metadata !6, i32 118, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elt] [line 118]
!118 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_nskip", metadata !"ns_nskip", metadata !"", metadata !6, i32 38, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @ns_nskip, null, null, metadata !119, i32 39} ; [ DW_TAG_subprogram ] [line 38] [local] [def] [scope 39] [ns_nskip]
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !121, metadata !122, metadata !124, metadata !127}
!121 = metadata !{i32 786689, metadata !118, metadata !"cp", metadata !6, i32 16777254, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 38]
!122 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !6, i32 40, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!123 = metadata !{i32 786443, metadata !118, i32 39, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!124 = metadata !{i32 786688, metadata !125, metadata !"bitlen", metadata !6, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitlen] [line 48]
!125 = metadata !{i32 786443, metadata !126, i32 47, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!126 = metadata !{i32 786443, metadata !123, i32 44, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!127 = metadata !{i32 786688, metadata !125, metadata !"bytelen", metadata !6, i32 49, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytelen] [line 49]
!128 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ns_qprint", metadata !"ns_qprint", metadata !"", metadata !6, i32 341, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ns_qprint, null, null, metadata !129, i32 342} ; [ DW_TAG_subprogram ] [line 341] [local] [def] [scope 342] [ns_qprint]
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !136, metadata !137}
!131 = metadata !{i32 786689, metadata !128, metadata !"cp", metadata !6, i32 16777557, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 341]
!132 = metadata !{i32 786689, metadata !128, metadata !"bp", metadata !6, i32 33554773, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 341]
!133 = metadata !{i32 786689, metadata !128, metadata !"is_mdns", metadata !6, i32 50331989, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_mdns] [line 341]
!134 = metadata !{i32 786688, metadata !135, metadata !"np", metadata !6, i32 343, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 343]
!135 = metadata !{i32 786443, metadata !128, i32 342, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!136 = metadata !{i32 786688, metadata !135, metadata !"i", metadata !6, i32 344, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 344]
!137 = metadata !{i32 786688, metadata !135, metadata !"class", metadata !6, i32 345, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [class] [line 345]
!138 = metadata !{i32 786478, i32 0, metadata !139, metadata !"putchar", metadata !"putchar", metadata !"", metadata !139, i32 80, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @putchar, null, null, metadata !142, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [putchar]
!139 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/stdio.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !17, metadata !17}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!145 = metadata !{i32 786478, i32 0, metadata !73, metadata !"__ntohs", metadata !"__ntohs", metadata !"", metadata !73, i32 206, metadata !146, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !148, i32 207} ; [ DW_TAG_subprogram ] [line 206] [local] [def] [scope 207] [__ntohs]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !33, metadata !33}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 206]
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !153, metadata !164, metadata !168, metadata !172}
!153 = metadata !{i32 786484, i32 0, null, metadata !"ns_type2str", metadata !"ns_type2str", metadata !"", metadata !6, i32 229, metadata !154, i32 0, i32 1, [62 x %struct.tok]* @ns_type2str} ; [ DW_TAG_variable ] [ns_type2str] [line 229] [def]
!154 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3968, i64 32, i32 0, i32 0, metadata !155, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3968, align 32, offset 0] [from tok]
!155 = metadata !{i32 786451, null, metadata !"tok", metadata !156, i32 68, i64 64, i64 32, i32 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tok] [line 68, size 64, align 32, offset 0] [from ]
!156 = metadata !{i32 786473, metadata !"../src/netdissect.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!157 = metadata !{metadata !158, metadata !159}
!158 = metadata !{i32 786445, metadata !155, metadata !"v", metadata !156, i32 69, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [v] [line 69, size 32, align 32, offset 0] [from int]
!159 = metadata !{i32 786445, metadata !155, metadata !"s", metadata !156, i32 70, i64 32, i64 32, i64 32, i32 0, metadata !160} ; [ DW_TAG_member ] [s] [line 70, size 32, align 32, offset 32] [from ]
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!161 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786465, i64 0, i64 61}      ; [ DW_TAG_subrange_type ] [0, 61]
!164 = metadata !{i32 786484, i32 0, null, metadata !"ns_class2str", metadata !"ns_class2str", metadata !"", metadata !6, i32 336, metadata !165, i32 0, i32 1, [5 x %struct.tok]* @ns_class2str} ; [ DW_TAG_variable ] [ns_class2str] [line 336] [def]
!165 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !155, metadata !166, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from tok]
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 4]
!168 = metadata !{i32 786484, i32 0, null, metadata !"ns_resp", metadata !"ns_resp", metadata !"", metadata !6, i32 35, metadata !169, i32 1, i32 1, [16 x i8*]* @ns_resp} ; [ DW_TAG_variable ] [ns_resp] [line 35] [local] [def]
!169 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !160, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!170 = metadata !{metadata !171}
!171 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!172 = metadata !{i32 786484, i32 0, null, metadata !"ns_ops", metadata !"ns_ops", metadata !"", metadata !6, i32 34, metadata !169, i32 1, i32 1, [16 x i8*]* @ns_ops} ; [ DW_TAG_variable ] [ns_ops] [line 34] [local] [def]
!173 = metadata !{i32 566, i32 0, metadata !5, null}
!174 = metadata !{i32 576, i32 0, metadata !24, null}
!175 = metadata !{metadata !"any pointer", metadata !176}
!176 = metadata !{metadata !"omnipotent char", metadata !177}
!177 = metadata !{metadata !"Simple C/C++ TBAA"}
!178 = metadata !{i32 579, i32 0, metadata !24, null}
!179 = metadata !{metadata !"short", metadata !176}
!180 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [x] [line 206]
!181 = metadata !{i32 206, i32 0, metadata !145, metadata !178}
!182 = metadata !{i32 208, i32 0, metadata !183, metadata !178}
!183 = metadata !{i32 786443, metadata !145, i32 207, i32 0, metadata !73, i32 71} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/tcpdump-stdinc.h]
!184 = metadata !{i32 42321}
!185 = metadata !{i32 580, i32 0, metadata !24, null}
!186 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !185} ; [ DW_TAG_arg_variable ] [x] [line 206]
!187 = metadata !{i32 206, i32 0, metadata !145, metadata !185}
!188 = metadata !{i32 208, i32 0, metadata !183, metadata !185}
!189 = metadata !{i32 581, i32 0, metadata !24, null}
!190 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !189} ; [ DW_TAG_arg_variable ] [x] [line 206]
!191 = metadata !{i32 206, i32 0, metadata !145, metadata !189}
!192 = metadata !{i32 208, i32 0, metadata !183, metadata !189}
!193 = metadata !{i32 582, i32 0, metadata !24, null}
!194 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !193} ; [ DW_TAG_arg_variable ] [x] [line 206]
!195 = metadata !{i32 206, i32 0, metadata !145, metadata !193}
!196 = metadata !{i32 208, i32 0, metadata !183, metadata !193}
!197 = metadata !{i32 583, i32 0, metadata !24, null}
!198 = metadata !{i32 585, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !24, i32 583, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!200 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !198} ; [ DW_TAG_arg_variable ] [x] [line 206]
!201 = metadata !{i32 206, i32 0, metadata !145, metadata !198}
!202 = metadata !{i32 208, i32 0, metadata !183, metadata !198}
!203 = metadata !{i32 586, i32 0, metadata !199, null}
!204 = metadata !{i32 587, i32 0, metadata !199, null}
!205 = metadata !{i32 589, i32 0, metadata !199, null}
!206 = metadata !{i32 590, i32 0, metadata !199, null}
!207 = metadata !{i32 591, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !199, i32 590, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!209 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !207} ; [ DW_TAG_arg_variable ] [x] [line 206]
!210 = metadata !{i32 206, i32 0, metadata !145, metadata !207}
!211 = metadata !{i32 208, i32 0, metadata !183, metadata !207}
!212 = metadata !{i32 44}
!213 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !214} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!214 = metadata !{i32 592, i32 0, metadata !208, null}
!215 = metadata !{i32 80, i32 0, metadata !138, metadata !214}
!216 = metadata !{i32 82, i32 0, metadata !217, metadata !214}
!217 = metadata !{i32 786443, metadata !138, i32 81, i32 0, metadata !139, i32 70} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install//usr/include/i386-linux-gnu/bits/stdio.h]
!218 = metadata !{i32 593, i32 0, metadata !208, null}
!219 = metadata !{metadata !"int", metadata !176}
!220 = metadata !{i32 594, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !208, i32 593, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!222 = metadata !{i32 595, i32 0, metadata !221, null}
!223 = metadata !{i32 599, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !208, i32 598, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!225 = metadata !{i32 602, i32 0, metadata !224, null}
!226 = metadata !{i32 605, i32 0, metadata !199, null}
!227 = metadata !{i32 606, i32 0, metadata !199, null}
!228 = metadata !{i32 607, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !199, i32 606, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!230 = metadata !{i32 609, i32 0, metadata !229, null}
!231 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !232} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!232 = metadata !{i32 610, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !229, i32 609, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!234 = metadata !{i32 80, i32 0, metadata !138, metadata !232}
!235 = metadata !{i32 82, i32 0, metadata !217, metadata !232}
!236 = metadata !{i32 611, i32 0, metadata !233, null}
!237 = metadata !{i32 615, i32 0, metadata !199, null}
!238 = metadata !{i32 618, i32 0, metadata !199, null}
!239 = metadata !{i32 619, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !199, i32 618, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!241 = metadata !{i32 620, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !240, i32 619, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!243 = metadata !{i32 621, i32 0, metadata !242, null}
!244 = metadata !{i32 623, i32 0, metadata !242, null}
!245 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !246} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!246 = metadata !{i32 624, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !242, i32 623, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!248 = metadata !{i32 80, i32 0, metadata !138, metadata !246}
!249 = metadata !{i32 82, i32 0, metadata !217, metadata !246}
!250 = metadata !{i32 625, i32 0, metadata !247, null}
!251 = metadata !{i32 629, i32 0, metadata !240, null}
!252 = metadata !{i32 631, i32 0, metadata !240, null}
!253 = metadata !{i32 632, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !240, i32 631, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!255 = metadata !{i32 633, i32 0, metadata !254, null}
!256 = metadata !{i32 635, i32 0, metadata !254, null}
!257 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !258} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!258 = metadata !{i32 636, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !254, i32 635, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!260 = metadata !{i32 80, i32 0, metadata !138, metadata !258}
!261 = metadata !{i32 82, i32 0, metadata !217, metadata !258}
!262 = metadata !{i32 637, i32 0, metadata !259, null}
!263 = metadata !{i32 641, i32 0, metadata !240, null}
!264 = metadata !{i32 647, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !24, i32 645, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!266 = metadata !{i32 649, i32 0, metadata !265, null}
!267 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !266} ; [ DW_TAG_arg_variable ] [x] [line 206]
!268 = metadata !{i32 206, i32 0, metadata !145, metadata !266}
!269 = metadata !{i32 208, i32 0, metadata !183, metadata !266}
!270 = metadata !{i32 650, i32 0, metadata !265, null}
!271 = metadata !{i32 651, i32 0, metadata !265, null}
!272 = metadata !{i32 652, i32 0, metadata !265, null}
!273 = metadata !{i32 653, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !265, i32 652, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!275 = metadata !{i32 654, i32 0, metadata !274, null}
!276 = metadata !{i32 655, i32 0, metadata !274, null}
!277 = metadata !{i32 656, i32 0, metadata !274, null}
!278 = metadata !{i32 659, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !265, i32 658, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!280 = metadata !{i32 660, i32 0, metadata !279, null}
!281 = metadata !{i32 661, i32 0, metadata !279, null}
!282 = metadata !{i32 662, i32 0, metadata !279, null}
!283 = metadata !{i32 664, i32 0, metadata !265, null}
!284 = metadata !{i32 665, i32 0, metadata !265, null}
!285 = metadata !{i32 666, i32 0, metadata !265, null}
!286 = metadata !{i32 667, i32 0, metadata !265, null}
!287 = metadata !{i32 668, i32 0, metadata !265, null}
!288 = metadata !{i32 669, i32 0, metadata !265, null}
!289 = metadata !{i32 670, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !265, i32 669, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!291 = metadata !{i32 671, i32 0, metadata !290, null}
!292 = metadata !{i32 673, i32 0, metadata !290, null}
!293 = metadata !{i32 674, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !290, i32 673, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!295 = metadata !{i32 675, i32 0, metadata !294, null}
!296 = metadata !{i32 679, i32 0, metadata !265, null}
!297 = metadata !{i32 682, i32 0, metadata !265, null}
!298 = metadata !{i32 683, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !265, i32 682, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!300 = metadata !{i32 684, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !299, i32 683, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!302 = metadata !{i32 686, i32 0, metadata !301, null}
!303 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !304} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!304 = metadata !{i32 687, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !301, i32 686, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!306 = metadata !{i32 80, i32 0, metadata !138, metadata !304}
!307 = metadata !{i32 82, i32 0, metadata !217, metadata !304}
!308 = metadata !{i32 688, i32 0, metadata !305, null}
!309 = metadata !{i32 692, i32 0, metadata !299, null}
!310 = metadata !{i32 694, i32 0, metadata !299, null}
!311 = metadata !{i32 695, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !299, i32 694, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!313 = metadata !{i32 696, i32 0, metadata !312, null}
!314 = metadata !{i32 698, i32 0, metadata !312, null}
!315 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !316} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!316 = metadata !{i32 699, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !312, i32 698, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!318 = metadata !{i32 80, i32 0, metadata !138, metadata !316}
!319 = metadata !{i32 82, i32 0, metadata !217, metadata !316}
!320 = metadata !{i32 700, i32 0, metadata !317, null}
!321 = metadata !{i32 704, i32 0, metadata !299, null}
!322 = metadata !{i32 706, i32 0, metadata !299, null}
!323 = metadata !{i32 707, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !299, i32 706, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!325 = metadata !{i32 708, i32 0, metadata !324, null}
!326 = metadata !{i32 710, i32 0, metadata !324, null}
!327 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !328} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!328 = metadata !{i32 711, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !324, i32 710, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!330 = metadata !{i32 80, i32 0, metadata !138, metadata !328}
!331 = metadata !{i32 82, i32 0, metadata !217, metadata !328}
!332 = metadata !{i32 712, i32 0, metadata !329, null}
!333 = metadata !{i32 716, i32 0, metadata !299, null}
!334 = metadata !{i32 720, i32 0, metadata !24, null}
!335 = metadata !{i32 721, i32 0, metadata !24, null}
!336 = metadata !{i32 723, i32 0, metadata !24, null}
!337 = metadata !{i32 724, i32 0, metadata !24, null}
!338 = metadata !{i32 725, i32 0, metadata !24, null}
!339 = metadata !{i32 80, i32 0, metadata !138, null}
!340 = metadata !{i32 82, i32 0, metadata !217, null}
!341 = metadata !{i32 341, i32 0, metadata !128, null}
!342 = metadata !{i32 343, i32 0, metadata !135, null}
!343 = metadata !{i32 346, i32 0, metadata !135, null}
!344 = metadata !{i32 347, i32 0, metadata !135, null}
!345 = metadata !{i32 350, i32 0, metadata !135, null}
!346 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !345} ; [ DW_TAG_arg_variable ] [x] [line 206]
!347 = metadata !{i32 206, i32 0, metadata !145, metadata !345}
!348 = metadata !{i32 208, i32 0, metadata !183, metadata !345}
!349 = metadata !{i32 351, i32 0, metadata !135, null}
!350 = metadata !{i32 352, i32 0, metadata !135, null}
!351 = metadata !{i32 354, i32 0, metadata !135, null}
!352 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !351} ; [ DW_TAG_arg_variable ] [x] [line 206]
!353 = metadata !{i32 206, i32 0, metadata !145, metadata !351}
!354 = metadata !{i32 208, i32 0, metadata !183, metadata !351}
!355 = metadata !{i32 356, i32 0, metadata !135, null}
!356 = metadata !{i32 357, i32 0, metadata !135, null}
!357 = metadata !{i32 360, i32 0, metadata !135, null}
!358 = metadata !{i32 361, i32 0, metadata !135, null}
!359 = metadata !{i32 362, i32 0, metadata !135, null}
!360 = metadata !{i32 363, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !135, i32 362, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!362 = metadata !{i32 364, i32 0, metadata !361, null}
!363 = metadata !{i32 366, i32 0, metadata !361, null}
!364 = metadata !{i32 368, i32 0, metadata !135, null}
!365 = metadata !{i32 369, i32 0, metadata !135, null}
!366 = metadata !{i32 370, i32 0, metadata !135, null}
!367 = metadata !{i32 371, i32 0, metadata !135, null}
!368 = metadata !{i32 38, i32 0, metadata !118, null}
!369 = metadata !{i32 41, i32 0, metadata !123, null}
!370 = metadata !{i32 43, i32 0, metadata !123, null}
!371 = metadata !{i32 44, i32 0, metadata !123, null}
!372 = metadata !{i32 45, i32 0, metadata !126, null}
!373 = metadata !{i32 46, i32 0, metadata !126, null}
!374 = metadata !{i32 50, i32 0, metadata !125, null}
!375 = metadata !{i32 53, i32 0, metadata !125, null}
!376 = metadata !{i32 55, i32 0, metadata !125, null}
!377 = metadata !{i32 57, i32 0, metadata !125, null}
!378 = metadata !{i32 62, i32 0, metadata !126, null}
!379 = metadata !{i32 58, i32 0, metadata !125, null}
!380 = metadata !{i32 59, i32 0, metadata !125, null}
!381 = metadata !{i32 61, i32 0, metadata !126, null}
!382 = metadata !{i32 67, i32 0, metadata !123, null}
!383 = metadata !{i32 374, i32 0, metadata !47, null}
!384 = metadata !{i32 378, i32 0, metadata !56, null}
!385 = metadata !{i32 382, i32 0, metadata !56, null}
!386 = metadata !{i32 32}
!387 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !388} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!388 = metadata !{i32 383, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !56, i32 382, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!390 = metadata !{i32 80, i32 0, metadata !138, metadata !388}
!391 = metadata !{i32 82, i32 0, metadata !217, metadata !388}
!392 = metadata !{i32 384, i32 0, metadata !389, null}
!393 = metadata !{i32 388, i32 0, metadata !56, null}
!394 = metadata !{i32 389, i32 0, metadata !56, null}
!395 = metadata !{i32 390, i32 0, metadata !56, null}
!396 = metadata !{i32 392, i32 0, metadata !56, null}
!397 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !396} ; [ DW_TAG_arg_variable ] [x] [line 206]
!398 = metadata !{i32 206, i32 0, metadata !145, metadata !396}
!399 = metadata !{i32 208, i32 0, metadata !183, metadata !396}
!400 = metadata !{i32 393, i32 0, metadata !56, null}
!401 = metadata !{i32 395, i32 0, metadata !56, null}
!402 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !401} ; [ DW_TAG_arg_variable ] [x] [line 206]
!403 = metadata !{i32 206, i32 0, metadata !145, metadata !401}
!404 = metadata !{i32 208, i32 0, metadata !183, metadata !401}
!405 = metadata !{i32 396, i32 0, metadata !56, null}
!406 = metadata !{i32 397, i32 0, metadata !56, null}
!407 = metadata !{i32 398, i32 0, metadata !56, null}
!408 = metadata !{i32 401, i32 0, metadata !56, null}
!409 = metadata !{i32 402, i32 0, metadata !56, null}
!410 = metadata !{i32 403, i32 0, metadata !56, null}
!411 = metadata !{i32 404, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !56, i32 403, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!413 = metadata !{i32 405, i32 0, metadata !412, null}
!414 = metadata !{i32 407, i32 0, metadata !56, null}
!415 = metadata !{i32 409, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !56, i32 407, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!417 = metadata !{i32 410, i32 0, metadata !416, null}
!418 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !417} ; [ DW_TAG_arg_variable ] [x] [line 206]
!419 = metadata !{i32 206, i32 0, metadata !145, metadata !417}
!420 = metadata !{i32 208, i32 0, metadata !183, metadata !417}
!421 = metadata !{i32 413, i32 0, metadata !416, null}
!422 = metadata !{i32 414, i32 0, metadata !56, null}
!423 = metadata !{i32 416, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !56, i32 414, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!425 = metadata !{i32 417, i32 0, metadata !424, null}
!426 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !425} ; [ DW_TAG_arg_variable ] [x] [line 197]
!427 = metadata !{i32 197, i32 0, metadata !72, metadata !425}
!428 = metadata !{i32 199, i32 0, metadata !429, metadata !425}
!429 = metadata !{i32 786443, metadata !72, i32 198, i32 0, metadata !73, i32 45} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/tcpdump-stdinc.h]
!430 = metadata !{i32 42019, i32 42036, i32 42095}
!431 = metadata !{i32 418, i32 0, metadata !424, null}
!432 = metadata !{i32 420, i32 0, metadata !424, null}
!433 = metadata !{i32 412, i32 0, metadata !416, null}
!434 = metadata !{i32 425, i32 0, metadata !56, null}
!435 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !434} ; [ DW_TAG_arg_variable ] [x] [line 206]
!436 = metadata !{i32 206, i32 0, metadata !145, metadata !434}
!437 = metadata !{i32 208, i32 0, metadata !183, metadata !434}
!438 = metadata !{i32 426, i32 0, metadata !56, null}
!439 = metadata !{i32 427, i32 0, metadata !56, null}
!440 = metadata !{i32 428, i32 0, metadata !56, null}
!441 = metadata !{i32 429, i32 0, metadata !56, null}
!442 = metadata !{i32 431, i32 0, metadata !56, null}
!443 = metadata !{i32 493, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !445, i32 492, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!445 = metadata !{i32 786443, metadata !56, i32 431, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!446 = metadata !{i32 434, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !445, i32 433, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!448 = metadata !{i32 436, i32 0, metadata !447, null}
!449 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !448} ; [ DW_TAG_arg_variable ] [x] [line 197]
!450 = metadata !{i32 197, i32 0, metadata !72, metadata !448}
!451 = metadata !{i32 199, i32 0, metadata !429, metadata !448}
!452 = metadata !{i32 437, i32 0, metadata !447, null}
!453 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !454} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!454 = metadata !{i32 452, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !445, i32 449, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!456 = metadata !{i32 80, i32 0, metadata !138, metadata !454}
!457 = metadata !{i32 82, i32 0, metadata !217, metadata !454}
!458 = metadata !{i32 453, i32 0, metadata !455, null}
!459 = metadata !{i32 459, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !445, i32 458, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!461 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !462} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!462 = metadata !{i32 461, i32 0, metadata !460, null}
!463 = metadata !{i32 80, i32 0, metadata !138, metadata !462}
!464 = metadata !{i32 82, i32 0, metadata !217, metadata !462}
!465 = metadata !{i32 462, i32 0, metadata !460, null}
!466 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !467} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!467 = metadata !{i32 464, i32 0, metadata !460, null}
!468 = metadata !{i32 80, i32 0, metadata !138, metadata !467}
!469 = metadata !{i32 82, i32 0, metadata !217, metadata !467}
!470 = metadata !{i32 465, i32 0, metadata !460, null}
!471 = metadata !{i32 467, i32 0, metadata !460, null}
!472 = metadata !{i32 469, i32 0, metadata !460, null}
!473 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [x] [line 197]
!474 = metadata !{i32 197, i32 0, metadata !72, metadata !472}
!475 = metadata !{i32 199, i32 0, metadata !429, metadata !472}
!476 = metadata !{i32 470, i32 0, metadata !460, null}
!477 = metadata !{i32 471, i32 0, metadata !460, null}
!478 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !477} ; [ DW_TAG_arg_variable ] [x] [line 197]
!479 = metadata !{i32 197, i32 0, metadata !72, metadata !477}
!480 = metadata !{i32 199, i32 0, metadata !429, metadata !477}
!481 = metadata !{i32 472, i32 0, metadata !460, null}
!482 = metadata !{i32 473, i32 0, metadata !460, null}
!483 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !482} ; [ DW_TAG_arg_variable ] [x] [line 197]
!484 = metadata !{i32 197, i32 0, metadata !72, metadata !482}
!485 = metadata !{i32 199, i32 0, metadata !429, metadata !482}
!486 = metadata !{i32 474, i32 0, metadata !460, null}
!487 = metadata !{i32 475, i32 0, metadata !460, null}
!488 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !487} ; [ DW_TAG_arg_variable ] [x] [line 197]
!489 = metadata !{i32 197, i32 0, metadata !72, metadata !487}
!490 = metadata !{i32 199, i32 0, metadata !429, metadata !487}
!491 = metadata !{i32 476, i32 0, metadata !460, null}
!492 = metadata !{i32 477, i32 0, metadata !460, null}
!493 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !73, i32 16777413, metadata !76, i32 0, metadata !492} ; [ DW_TAG_arg_variable ] [x] [line 197]
!494 = metadata !{i32 197, i32 0, metadata !72, metadata !492}
!495 = metadata !{i32 199, i32 0, metadata !429, metadata !492}
!496 = metadata !{i32 479, i32 0, metadata !460, null}
!497 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !498} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!498 = metadata !{i32 483, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !445, i32 482, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!500 = metadata !{i32 80, i32 0, metadata !138, metadata !498}
!501 = metadata !{i32 82, i32 0, metadata !217, metadata !498}
!502 = metadata !{i32 484, i32 0, metadata !499, null}
!503 = metadata !{i32 486, i32 0, metadata !499, null}
!504 = metadata !{i32 488, i32 0, metadata !499, null}
!505 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !504} ; [ DW_TAG_arg_variable ] [x] [line 206]
!506 = metadata !{i32 206, i32 0, metadata !145, metadata !504}
!507 = metadata !{i32 208, i32 0, metadata !183, metadata !504}
!508 = metadata !{i32 489, i32 0, metadata !499, null}
!509 = metadata !{i32 494, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !444, i32 493, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!511 = metadata !{i32 786689, metadata !64, metadata !"cp", metadata !6, i32 16777434, metadata !9, i32 0, metadata !512} ; [ DW_TAG_arg_variable ] [cp] [line 218]
!512 = metadata !{i32 495, i32 0, metadata !510, null}
!513 = metadata !{i32 218, i32 0, metadata !64, metadata !512}
!514 = metadata !{i32 221, i32 0, metadata !71, metadata !512}
!515 = metadata !{i32 223, i32 0, metadata !71, metadata !512}
!516 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 220, metadata !14, i32 0, metadata !512} ; [ DW_TAG_auto_variable ] [i] [line 220]
!517 = metadata !{i32 224, i32 0, metadata !71, metadata !512}
!518 = metadata !{i32 226, i32 0, metadata !71, metadata !512}
!519 = metadata !{i32 496, i32 0, metadata !510, null}
!520 = metadata !{i32 34}
!521 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !522} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!522 = metadata !{i32 498, i32 0, metadata !510, null}
!523 = metadata !{i32 80, i32 0, metadata !138, metadata !522}
!524 = metadata !{i32 82, i32 0, metadata !217, metadata !522}
!525 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !526} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!526 = metadata !{i32 504, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !445, i32 503, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!528 = metadata !{i32 80, i32 0, metadata !138, metadata !526}
!529 = metadata !{i32 82, i32 0, metadata !217, metadata !526}
!530 = metadata !{i32 505, i32 0, metadata !527, null}
!531 = metadata !{i32 507, i32 0, metadata !527, null}
!532 = metadata !{i32 509, i32 0, metadata !527, null}
!533 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !532} ; [ DW_TAG_arg_variable ] [x] [line 206]
!534 = metadata !{i32 206, i32 0, metadata !145, metadata !532}
!535 = metadata !{i32 208, i32 0, metadata !183, metadata !532}
!536 = metadata !{i32 510, i32 0, metadata !527, null}
!537 = metadata !{i32 516, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !445, i32 513, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!539 = metadata !{i32 517, i32 0, metadata !538, null}
!540 = metadata !{i32 518, i32 0, metadata !538, null}
!541 = metadata !{i32 524, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !445, i32 522, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!543 = metadata !{i32 526, i32 0, metadata !542, null}
!544 = metadata !{i32 534, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !445, i32 531, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!546 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !547} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!547 = metadata !{i32 536, i32 0, metadata !545, null}
!548 = metadata !{i32 80, i32 0, metadata !138, metadata !547}
!549 = metadata !{i32 82, i32 0, metadata !217, metadata !547}
!550 = metadata !{i32 537, i32 0, metadata !545, null}
!551 = metadata !{i32 539, i32 0, metadata !545, null}
!552 = metadata !{i32 540, i32 0, metadata !545, null}
!553 = metadata !{i32 542, i32 0, metadata !545, null}
!554 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !553} ; [ DW_TAG_arg_variable ] [x] [line 206]
!555 = metadata !{i32 206, i32 0, metadata !145, metadata !553}
!556 = metadata !{i32 208, i32 0, metadata !183, metadata !553}
!557 = metadata !{i32 543, i32 0, metadata !545, null}
!558 = metadata !{i32 544, i32 0, metadata !545, null}
!559 = metadata !{i32 546, i32 0, metadata !545, null}
!560 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !559} ; [ DW_TAG_arg_variable ] [x] [line 206]
!561 = metadata !{i32 206, i32 0, metadata !145, metadata !559}
!562 = metadata !{i32 208, i32 0, metadata !183, metadata !559}
!563 = metadata !{i32 547, i32 0, metadata !545, null}
!564 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !563} ; [ DW_TAG_arg_variable ] [x] [line 206]
!565 = metadata !{i32 206, i32 0, metadata !145, metadata !563}
!566 = metadata !{i32 208, i32 0, metadata !183, metadata !563}
!567 = metadata !{i32 548, i32 0, metadata !545, null}
!568 = metadata !{i32 550, i32 0, metadata !545, null}
!569 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [x] [line 206]
!570 = metadata !{i32 206, i32 0, metadata !145, metadata !568}
!571 = metadata !{i32 208, i32 0, metadata !183, metadata !568}
!572 = metadata !{i32 551, i32 0, metadata !545, null}
!573 = metadata !{i32 552, i32 0, metadata !545, null}
!574 = metadata !{i32 554, i32 0, metadata !545, null}
!575 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [x] [line 206]
!576 = metadata !{i32 206, i32 0, metadata !145, metadata !574}
!577 = metadata !{i32 208, i32 0, metadata !183, metadata !574}
!578 = metadata !{i32 555, i32 0, metadata !545, null}
!579 = metadata !{i32 556, i32 0, metadata !545, null}
!580 = metadata !{i32 558, i32 0, metadata !545, null}
!581 = metadata !{i32 786689, metadata !145, metadata !"x", metadata !73, i32 16777422, metadata !33, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [x] [line 206]
!582 = metadata !{i32 206, i32 0, metadata !145, metadata !580}
!583 = metadata !{i32 208, i32 0, metadata !183, metadata !580}
!584 = metadata !{i32 561, i32 0, metadata !445, null}
!585 = metadata !{i32 563, i32 0, metadata !56, null}
!586 = metadata !{i32 564, i32 0, metadata !56, null}
!587 = metadata !{i32 133, i32 0, metadata !80, null}
!588 = metadata !{i8* null}
!589 = metadata !{i32 137, i32 0, metadata !88, null}
!590 = metadata !{i32 138, i32 0, metadata !88, null}
!591 = metadata !{i32 141, i32 0, metadata !88, null}
!592 = metadata !{i32 142, i32 0, metadata !88, null}
!593 = metadata !{i32 144, i32 0, metadata !88, null}
!594 = metadata !{i32 1}
!595 = metadata !{i32 146, i32 0, metadata !88, null}
!596 = metadata !{i32 147, i32 0, metadata !88, null}
!597 = metadata !{i32 148, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !88, i32 147, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!599 = metadata !{i32 149, i32 0, metadata !598, null}
!600 = metadata !{i32 150, i32 0, metadata !598, null}
!601 = metadata !{i32 151, i32 0, metadata !88, null}
!602 = metadata !{i32 209, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !88, i32 152, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!604 = metadata !{i32 152, i32 0, metadata !88, null}
!605 = metadata !{i32 153, i32 0, metadata !603, null}
!606 = metadata !{i32 155, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !608, i32 154, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!608 = metadata !{i32 786443, metadata !603, i32 153, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!609 = metadata !{i32 154, i32 0, metadata !608, null}
!610 = metadata !{i32 158, i32 0, metadata !608, null}
!611 = metadata !{i32 160, i32 0, metadata !608, null}
!612 = metadata !{i32 161, i32 0, metadata !608, null}
!613 = metadata !{i32 163, i32 0, metadata !608, null}
!614 = metadata !{i32 165, i32 0, metadata !608, null}
!615 = metadata !{i32 166, i32 0, metadata !608, null}
!616 = metadata !{i32 173, i32 0, metadata !608, null}
!617 = metadata !{i32 174, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !608, i32 173, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!619 = metadata !{i32 175, i32 0, metadata !618, null}
!620 = metadata !{i32 180, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !603, i32 179, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!622 = metadata !{i32 181, i32 0, metadata !621, null}
!623 = metadata !{i32 786689, metadata !95, metadata !"cp", metadata !6, i32 16777286, metadata !9, i32 0, metadata !624} ; [ DW_TAG_arg_variable ] [cp] [line 70]
!624 = metadata !{i32 184, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !626, i32 183, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!626 = metadata !{i32 786443, metadata !621, i32 181, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!627 = metadata !{i32 70, i32 0, metadata !95, metadata !624}
!628 = metadata !{i32 78, i32 0, metadata !100, metadata !624}
!629 = metadata !{i32 80, i32 0, metadata !100, metadata !624}
!630 = metadata !{i32 786688, metadata !100, metadata !"bitlen", metadata !6, i32 72, metadata !17, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [bitlen] [line 72]
!631 = metadata !{i32 82, i32 0, metadata !100, metadata !624}
!632 = metadata !{i32 786688, metadata !100, metadata !"slen", metadata !6, i32 73, metadata !17, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [slen] [line 73]
!633 = metadata !{i32 83, i32 0, metadata !100, metadata !624}
!634 = metadata !{i32 786688, metadata !100, metadata !"lim", metadata !6, i32 76, metadata !9, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [lim] [line 76]
!635 = metadata !{i32 85, i32 0, metadata !100, metadata !624}
!636 = metadata !{i32 786688, metadata !100, metadata !"b", metadata !6, i32 74, metadata !17, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [b] [line 74]
!637 = metadata !{i32 86, i32 0, metadata !638, metadata !624}
!638 = metadata !{i32 786443, metadata !100, i32 86, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!639 = metadata !{i32 87, i32 0, metadata !640, metadata !624}
!640 = metadata !{i32 786443, metadata !638, i32 86, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!641 = metadata !{i32 89, i32 0, metadata !640, metadata !624}
!642 = metadata !{i32 91, i32 0, metadata !100, metadata !624}
!643 = metadata !{i32 92, i32 0, metadata !644, metadata !624}
!644 = metadata !{i32 786443, metadata !100, i32 91, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!645 = metadata !{i32 94, i32 0, metadata !644, metadata !624}
!646 = metadata !{i32 786688, metadata !100, metadata !"tc", metadata !6, i32 77, metadata !106, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [tc] [line 77]
!647 = metadata !{i32 95, i32 0, metadata !644, metadata !624}
!648 = metadata !{i32 96, i32 0, metadata !644, metadata !624}
!649 = metadata !{i32 97, i32 0, metadata !100, metadata !624}
!650 = metadata !{i32 98, i32 0, metadata !651, metadata !624}
!651 = metadata !{i32 786443, metadata !100, i32 97, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!652 = metadata !{i32 100, i32 0, metadata !651, metadata !624}
!653 = metadata !{i32 101, i32 0, metadata !651, metadata !624}
!654 = metadata !{i32 102, i32 0, metadata !651, metadata !624}
!655 = metadata !{i32 106, i32 0, metadata !100, metadata !624}
!656 = metadata !{i32 107, i32 0, metadata !100, metadata !624}
!657 = metadata !{i32 103, i32 0, metadata !100, metadata !624}
!658 = metadata !{i32 191, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !626, i32 189, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!660 = metadata !{i32 192, i32 0, metadata !659, null}
!661 = metadata !{i32 197, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !603, i32 196, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!663 = metadata !{i32 200, i32 0, metadata !603, null}
!664 = metadata !{i32 201, i32 0, metadata !603, null}
!665 = metadata !{i32 46}
!666 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !667} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!667 = metadata !{i32 202, i32 0, metadata !603, null}
!668 = metadata !{i32 80, i32 0, metadata !138, metadata !667}
!669 = metadata !{i32 82, i32 0, metadata !217, metadata !667}
!670 = metadata !{i32 203, i32 0, metadata !603, null}
!671 = metadata !{i32 205, i32 0, metadata !603, null}
!672 = metadata !{i32 207, i32 0, metadata !603, null}
!673 = metadata !{i32 208, i32 0, metadata !603, null}
!674 = metadata !{i32 210, i32 0, metadata !603, null}
!675 = metadata !{i32 786689, metadata !138, metadata !"__c", metadata !139, i32 16777296, metadata !17, i32 0, metadata !676} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!676 = metadata !{i32 213, i32 0, metadata !88, null}
!677 = metadata !{i32 80, i32 0, metadata !138, metadata !676}
!678 = metadata !{i32 82, i32 0, metadata !217, metadata !676}
!679 = metadata !{i32 215, i32 0, metadata !88, null}
!680 = metadata !{i32 110, i32 0, metadata !107, null}
!681 = metadata !{i32 113, i32 0, metadata !114, null}
!682 = metadata !{i32 115, i32 0, metadata !114, null}
!683 = metadata !{i32 116, i32 0, metadata !114, null}
!684 = metadata !{i32 119, i32 0, metadata !116, null}
!685 = metadata !{i32 120, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !116, i32 119, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/print-domain.c]
!687 = metadata !{i32 121, i32 0, metadata !686, null}
!688 = metadata !{i32 123, i32 0, metadata !116, null}
!689 = metadata !{i32 125, i32 0, metadata !116, null}
!690 = metadata !{i32 127, i32 0, metadata !116, null}
!691 = metadata !{i32 131, i32 0, metadata !114, null}
