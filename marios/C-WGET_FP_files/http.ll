; ModuleID = '../../src/src/http.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.options = type { i32, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i8, i8*, i8, i8**, i8**, i8**, i8**, i8, i8*, i8*, i8*, i8*, i32, i8* (i8*)*, i1 (i8*, i8*)*, i8**, i8**, i8, i8**, i8**, i8, i8, i8*, i8*, i8*, i8*, i64, i8, i8, i8, i8, i8**, i8*, i8*, i8, i8, i8*, i8*, i8, i8, i8, i8*, i8*, i8**, i8, i8, i8, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, double, double, double, i8, double, double, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8, i8, i8, i8*, i64, i32, i32, i8, i8, i8, i8*, i32, i8, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8, i8*, i8*, i8, i8*, i8*, i32, i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8*, i8*, i8, i8, i8, i8 }
%struct.cookie_jar = type opaque
%struct.anon = type { i32, i8*, i32, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hash_table = type opaque
%struct.anon.1 = type { i8*, i8** }
%struct.param_token = type { i8*, i8* }
%struct.url = type { i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.iri = type { i8*, i8*, i8*, i8 }
%struct.http_stat = type { i64, i64, i64, i32, i8*, i8*, i8*, i8*, i32, i8*, i64, double, i8*, i8*, i8, i8, i8*, i64, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.ip_address = type { i32, %union.anon, i32 }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.request = type { i8*, i8*, %struct.request_header*, i32, i32 }
%struct.request_header = type { i8*, i8*, i32 }
%struct.address_list = type opaque
%struct.response = type { i8*, i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@opt = external global %struct.options
@.str = private unnamed_addr constant [56 x i8] c"local_file == ((void *)0) || *local_file == ((void *)0)\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"http.c\00", align 1
@__PRETTY_FUNCTION__.http_loop = private unnamed_addr constant [112 x i8] c"uerr_t http_loop(struct url *, struct url *, char **, char **, const char *, int *, struct url *, struct iri *)\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"Warning: wildcards not supported in HTTP.\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"Spider mode enabled. Check if remote file exists.\0A\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"(try:%2d)\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"--%s--  %s  %s\0A\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"--%s--  %s\0A\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"Cannot write to %s (%s).\0A\00", align 1
@.str9 = private unnamed_addr constant [28 x i8] c"Cannot write to WARC file.\0A\00", align 1
@.str10 = private unnamed_addr constant [38 x i8] c"Cannot write to temporary WARC file.\0A\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c"Unable to establish SSL connection.\0A\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"Cannot unlink %s (%s).\0A\00", align 1
@.str13 = private unnamed_addr constant [43 x i8] c"ERROR: Redirection (%d) without location.\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str15 = private unnamed_addr constant [46 x i8] c"Remote file does not exist -- broken link!!!\0A\00", align 1
@.str16 = private unnamed_addr constant [18 x i8] c"%s ERROR %d: %s.\0A\00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"Last-modified header missing -- time-stamps turned off.\0A\00", align 1
@.str18 = private unnamed_addr constant [53 x i8] c"Last-modified header invalid -- time-stamp ignored.\0A\00", align 1
@.str19 = private unnamed_addr constant [61 x i8] c"Server file no newer than local file %s -- not retrieving.\0A\0A\00", align 1
@.str20 = private unnamed_addr constant [50 x i8] c"The sizes do not match (local %s) -- retrieving.\0A\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c"Remote file is newer, retrieving.\0A\00", align 1
@.str22 = private unnamed_addr constant [79 x i8] c"Remote file exists and could contain links to other resources -- retrieving.\0A\0A\00", align 1
@.str23 = private unnamed_addr constant [70 x i8] c"Remote file exists but does not contain any link -- not retrieving.\0A\0A\00", align 1
@.str24 = private unnamed_addr constant [99 x i8] c"Remote file exists and could contain further links,\0Abut recursion is disabled -- not retrieving.\0A\0A\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"Remote file exists.\0A\0A\00", align 1
@.str26 = private unnamed_addr constant [19 x i8] c"%s URL: %s %2d %s\0A\00", align 1
@.str27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@total_download_time = external global double
@.str28 = private unnamed_addr constant [40 x i8] c"%s (%s) - written to stdout %s[%s/%s]\0A\0A\00", align 1
@.str29 = private unnamed_addr constant [29 x i8] c"%s (%s) - %s saved [%s/%s]\0A\0A\00", align 1
@.str30 = private unnamed_addr constant [32 x i8] c"%s URL:%s [%s/%s] -> \22%s\22 [%d]\0A\00", align 1
@numurls = external global i32
@total_downloaded_bytes = external global i64
@.str31 = private unnamed_addr constant [37 x i8] c"%s (%s) - written to stdout %s[%s]\0A\0A\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"%s (%s) - %s saved [%s]\0A\0A\00", align 1
@.str33 = private unnamed_addr constant [29 x i8] c"%s URL:%s [%s] -> \22%s\22 [%d]\0A\00", align 1
@.str34 = private unnamed_addr constant [41 x i8] c"%s (%s) - Connection closed at byte %s. \00", align 1
@.str35 = private unnamed_addr constant [38 x i8] c"%s (%s) - Read error at byte %s (%s).\00", align 1
@.str36 = private unnamed_addr constant [42 x i8] c"%s (%s) - Read error at byte %s/%s (%s). \00", align 1
@http_atotm.time_formats = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([16 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str40, i32 0, i32 0)], align 4
@.str37 = private unnamed_addr constant [16 x i8] c"%a, %d %b %Y %T\00", align 1
@.str38 = private unnamed_addr constant [16 x i8] c"%A, %d-%b-%y %T\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"%a %b %d %T %Y\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"%a, %d-%b-%Y %T\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@wget_cookie_jar = internal unnamed_addr global %struct.cookie_jar* null, align 4
@pconn = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@cookies_loaded_p.b = internal unnamed_addr global i1 false
@.str42 = private unnamed_addr constant [42 x i8] c"Disabling SSL due to encountered errors.\0A\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@.str47 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@.str48 = private unnamed_addr constant [26 x i8] c"no-cache, must-revalidate\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"Pragma\00", align 1
@.str50 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str52 = private unnamed_addr constant [10 x i8] c"bytes=%s-\00", align 1
@.str53 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str54 = private unnamed_addr constant [13 x i8] c"Wget/%s (%s)\00", align 1
@version_string = external global i8*
@.str55 = private unnamed_addr constant [10 x i8] c"linux-gnu\00", align 1
@.str56 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str57 = private unnamed_addr constant [4 x i8] c"*/*\00", align 1
@gethttp.hfmt = internal unnamed_addr constant [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str59, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str61, i32 0, i32 0)]], align 4
@.str58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str61 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str62 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str63 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str64 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str65 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@.str66 = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str67 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str68 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@.str69 = private unnamed_addr constant [31 x i8] c"POST data file %s missing: %s\0A\00", align 1
@.str70 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str71 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str72 = private unnamed_addr constant [20 x i8] c"Proxy-Authorization\00", align 1
@.str73 = private unnamed_addr constant [41 x i8] c"Reusing existing connection to [%s]:%d.\0A\00", align 1
@.str74 = private unnamed_addr constant [39 x i8] c"Reusing existing connection to %s:%d.\0A\00", align 1
@.str75 = private unnamed_addr constant [16 x i8] c"Reusing fd %d.\0A\00", align 1
@.str76 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str77 = private unnamed_addr constant [39 x i8] c"%s: unable to resolve host address %s\0A\00", align 1
@exec_name = external global i8*
@.str78 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@pconn_active.b = internal unnamed_addr global i1 false
@.str79 = private unnamed_addr constant [35 x i8] c"Failed reading proxy response: %s\0A\00", align 1
@.str80 = private unnamed_addr constant [28 x i8] c"proxy responded with: [%s]\0A\00", align 1
@.str81 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str82 = private unnamed_addr constant [22 x i8] c"Malformed status line\00", align 1
@.str83 = private unnamed_addr constant [27 x i8] c"Proxy tunneling failed: %s\00", align 1
@.str84 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str85 = private unnamed_addr constant [17 x i8] c"[POST data: %s]\0A\00", align 1
@0 = internal unnamed_addr constant [6 x i8] c"wgint\00"
@.str86 = private unnamed_addr constant [39 x i8] c"%s request sent, awaiting response... \00", align 1
@.str87 = private unnamed_addr constant [6 x i8] c"Proxy\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str89 = private unnamed_addr constant [19 x i8] c"No data received.\0A\00", align 1
@.str90 = private unnamed_addr constant [29 x i8] c"Read error (%s) in headers.\0A\00", align 1
@.str91 = private unnamed_addr constant [44 x i8] c"\0A---response begin---\0A%s---response end---\0A\00", align 1
@.str92 = private unnamed_addr constant [19 x i8] c"Ignoring response\0A\00", align 1
@.str93 = private unnamed_addr constant [8 x i8] c"%2d %s\0A\00", align 1
@.str94 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str95 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str96 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str97 = private unnamed_addr constant [31 x i8] c"wget_cookie_jar != ((void *)0)\00", align 1
@__PRETTY_FUNCTION__.gethttp = private unnamed_addr constant [89 x i8] c"uerr_t gethttp(struct url *, struct http_stat *, int *, struct url *, struct iri *, int)\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c"Set-Cookie\00", align 1
@.str99 = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1
@.str100 = private unnamed_addr constant [32 x i8] c"Unknown authentication scheme.\0A\00", align 1
@.str101 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@.str102 = private unnamed_addr constant [5 x i8] c"NTLM\00", align 1
@.str103 = private unnamed_addr constant [23 x i8] c"Authorization failed.\0A\00", align 1
@.str104 = private unnamed_addr constant [20 x i8] c"Content-Disposition\00", align 1
@.str105 = private unnamed_addr constant [46 x i8] c"Parsed filename from Content-Disposition: %s\0A\00", align 1
@.str106 = private unnamed_addr constant [6 x i8] c".orig\00", align 1
@.str107 = private unnamed_addr constant [17 x i8] c"(no description)\00", align 1
@.str108 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str109 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str110 = private unnamed_addr constant [14 x i8] c"Content-Range\00", align 1
@.str111 = private unnamed_addr constant [16 x i8] c"Location: %s%s\0A\00", align 1
@.str112 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str113 = private unnamed_addr constant [13 x i8] c" [following]\00", align 1
@.str114 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str115 = private unnamed_addr constant [22 x i8] c"application/xhtml+xml\00", align 1
@.str116 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str117 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str118 = private unnamed_addr constant [5 x i8] c".css\00", align 1
@.str119 = private unnamed_addr constant [59 x i8] c"\0A    The file is already fully retrieved; nothing to do.\0A\0A\00", align 1
@.str120 = private unnamed_addr constant [9 x i8] c"Length: \00", align 1
@.str121 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str122 = private unnamed_addr constant [20 x i8] c", %s (%s) remaining\00", align 1
@.str123 = private unnamed_addr constant [15 x i8] c", %s remaining\00", align 1
@.str124 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str125 = private unnamed_addr constant [7 x i8] c" [%s]\0A\00", align 1
@output_stream = external global %struct._IO_FILE*
@.str126 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str127 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str128 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str129 = private unnamed_addr constant [31 x i8] c"%s has sprung into existence.\0A\00", align 1
@.str130 = private unnamed_addr constant [15 x i8] c"Saving to: %s\0A\00", align 1
@.str131 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@1 = internal unnamed_addr constant [7 x i8] c"uerr_t\00"
@.str132 = private unnamed_addr constant [6 x i8] c".%d%s\00", align 1
@.str133 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str134 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@basic_authed_hosts = internal unnamed_addr global %struct.hash_table* null, align 4
@.str135 = private unnamed_addr constant [37 x i8] c"Inserted %s into basic_authed_hosts\0A\00", align 1
@digest_authentication_encode.realm = internal global i8* null, align 4
@digest_authentication_encode.opaque = internal global i8* null, align 4
@digest_authentication_encode.nonce = internal global i8* null, align 4
@digest_authentication_encode.qop = internal global i8* null, align 4
@digest_authentication_encode.options = internal unnamed_addr constant [4 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([6 x i8]* @.str136, i32 0, i32 0), i8** @digest_authentication_encode.realm }, %struct.anon.1 { i8* getelementptr inbounds ([7 x i8]* @.str137, i32 0, i32 0), i8** @digest_authentication_encode.opaque }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8]* @.str138, i32 0, i32 0), i8** @digest_authentication_encode.nonce }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8]* @.str139, i32 0, i32 0), i8** @digest_authentication_encode.qop }], align 4
@.str136 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str137 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str138 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str139 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str140 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str141 = private unnamed_addr constant [41 x i8] c"Unsupported quality of protection '%s'.\0A\00", align 1
@.str142 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str143 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str144 = private unnamed_addr constant [9 x i8] c"00000001\00", align 1
@.str145 = private unnamed_addr constant [106 x i8] c"Digest username=\22%s\22, realm=\22%s\22, nonce=\22%s\22, uri=\22%s\22, response=\22%s\22, qop=auth, nc=00000001, cnonce=\22%s\22\00", align 1
@.str146 = private unnamed_addr constant [70 x i8] c"Digest username=\22%s\22, realm=\22%s\22, nonce=\22%s\22, uri=\22%s\22, response=\22%s\22\00", align 1
@.str147 = private unnamed_addr constant [11 x i8] c", opaque=\22\00", align 1
@.str149 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str150 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str152 = private unnamed_addr constant [29 x i8] c"Skipping %s bytes of body: [\00", align 1
@.str153 = private unnamed_addr constant [18 x i8] c"] aborting (%s).\0A\00", align 1
@.str154 = private unnamed_addr constant [13 x i8] c"EOF received\00", align 1
@2 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str155 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str156 = private unnamed_addr constant [9 x i8] c"] done.\0A\00", align 1
@.str157 = private unnamed_addr constant [44 x i8] c"Registered socket %d for persistent reuse.\0A\00", align 1
@.str158 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@post_file.chunk = internal global [8192 x i8] zeroinitializer, align 1
@.str159 = private unnamed_addr constant [27 x i8] c"[writing POST file %s ... \00", align 1
@.str160 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@3 = internal unnamed_addr constant [10 x i8] c"long long\00"
@.str161 = private unnamed_addr constant [25 x i8] c"written == promised_size\00", align 1
@__PRETTY_FUNCTION__.post_file = private unnamed_addr constant [48 x i8] c"int post_file(int, const char *, wgint, FILE *)\00", align 1
@.str162 = private unnamed_addr constant [7 x i8] c"done]\0A\00", align 1
@.str163 = private unnamed_addr constant [30 x i8] c"No headers, assuming HTTP/0.9\00", align 1
@4 = internal unnamed_addr constant [3 x i8] c"<<\00"
@5 = internal unnamed_addr constant [5 x i8] c"long\00"
@6 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@.str164 = private unnamed_addr constant [39 x i8] c"Disabling further reuse of socket %d.\0A\00", align 1
@7 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str165 = private unnamed_addr constant [11 x i8] c"HTTP/1.1\0D\0A\00", align 1
@.str166 = private unnamed_addr constant [27 x i8] c"p - request_string == size\00", align 1
@__PRETTY_FUNCTION__.request_send = private unnamed_addr constant [54 x i8] c"int request_send(const struct request *, int, FILE *)\00", align 1
@.str167 = private unnamed_addr constant [42 x i8] c"\0A---request begin---\0A%s---request end---\0A\00", align 1
@.str168 = private unnamed_addr constant [34 x i8] c"Failed writing HTTP request: %s.\0A\00", align 1
@8 = internal unnamed_addr constant [2 x i8] c"-\00"
@9 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str169 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str170 = private unnamed_addr constant [7 x i8] c"Basic \00", align 1
@10 = internal unnamed_addr constant [2 x i8] c"+\00"
@.str171 = private unnamed_addr constant [56 x i8] c"Auth-without-challenge set, sending Basic credentials.\0A\00", align 1
@.str172 = private unnamed_addr constant [33 x i8] c"Found %s in basic_authed_hosts.\0A\00", align 1
@.str173 = private unnamed_addr constant [51 x i8] c"Host %s has not issued a general basic challenge.\0A\00", align 1
@11 = internal unnamed_addr constant [4 x i8] c"<<=\00"
@12 = internal unnamed_addr constant [2 x i8] c"*\00"
@13 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str174 = private unnamed_addr constant [41 x i8] c"File %s already there; not retrieving.\0A\0A\00", align 1
@14 = internal unnamed_addr constant [4 x i8] c"int\00"
@15 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@16 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@17 = internal unnamed_addr constant [21 x i8] c"../../src/src/http.c\00"

define zeroext i1 @extract_param(i8** nocapture %source, %struct.param_token* nocapture %name, %struct.param_token* nocapture %value, i8 signext %separator) nounwind {
entry:
  %0 = load i8** %source, align 4, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = phi i8* [ %0, %entry ], [ %incdec.ptr, %while.body ]
  %2 = load i8* %1, align 1, !tbaa !1
  switch i8 %2, label %if.end [
    i8 32, label %while.body
    i8 12, label %while.body
    i8 11, label %while.body
    i8 10, label %while.body
    i8 9, label %while.body
    i8 13, label %while.body
    i8 0, label %if.then
  ]

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8* %1, i32 1
  br label %while.cond

if.then:                                          ; preds = %while.cond
  store i8* %1, i8** %source, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %while.cond
  %b = getelementptr inbounds %struct.param_token* %name, i32 0, i32 0
  store i8* %1, i8** %b, align 4, !tbaa !0
  br label %while.cond15

while.cond15:                                     ; preds = %land.rhs, %if.end
  %p.1 = phi i8* [ %1, %if.end ], [ %incdec.ptr47, %land.rhs ]
  %3 = load i8* %p.1, align 1, !tbaa !1
  switch i8 %3, label %land.rhs [
    i8 0, label %while.end48
    i8 32, label %while.end48
    i8 13, label %while.end48
    i8 12, label %while.end48
    i8 11, label %while.end48
    i8 10, label %while.end48
    i8 9, label %while.end48
    i8 61, label %while.end48
  ]

land.rhs:                                         ; preds = %while.cond15
  %cmp44 = icmp eq i8 %3, %separator
  %incdec.ptr47 = getelementptr inbounds i8* %p.1, i32 1
  br i1 %cmp44, label %while.end48, label %while.cond15

while.end48:                                      ; preds = %land.rhs, %while.cond15, %while.cond15, %while.cond15, %while.cond15, %while.cond15, %while.cond15, %while.cond15, %while.cond15
  %e = getelementptr inbounds %struct.param_token* %name, i32 0, i32 1
  store i8* %p.1, i8** %e, align 4, !tbaa !0
  %cmp51 = icmp eq i8* %1, %p.1
  br i1 %cmp51, label %return, label %while.cond55

while.cond55:                                     ; preds = %while.end48, %while.body76
  %p.2 = phi i8* [ %incdec.ptr77, %while.body76 ], [ %p.1, %while.end48 ]
  %4 = load i8* %p.2, align 1, !tbaa !1
  switch i8 %4, label %lor.rhs72 [
    i8 32, label %while.body76
    i8 12, label %while.body76
    i8 11, label %while.body76
    i8 10, label %while.body76
    i8 9, label %while.body76
    i8 13, label %while.body76
  ]

lor.rhs72:                                        ; preds = %while.cond55
  %cmp81 = icmp eq i8 %4, %separator
  %tobool84 = icmp eq i8 %4, 0
  %or.cond = or i1 %cmp81, %tobool84
  br i1 %or.cond, label %if.then85, label %if.end93

while.body76:                                     ; preds = %while.cond55, %while.cond55, %while.cond55, %while.cond55, %while.cond55, %while.cond55
  %incdec.ptr77 = getelementptr inbounds i8* %p.2, i32 1
  br label %while.cond55

if.then85:                                        ; preds = %lor.rhs72
  %5 = bitcast %struct.param_token* %value to i64*
  store i64 0, i64* %5, align 4
  %6 = load i8* %p.2, align 1, !tbaa !1
  %cmp88 = icmp eq i8 %6, %separator
  %incdec.ptr91 = getelementptr inbounds i8* %p.2, i32 1
  %incdec.ptr91.p.2 = select i1 %cmp88, i8* %incdec.ptr91, i8* %p.2
  store i8* %incdec.ptr91.p.2, i8** %source, align 4, !tbaa !0
  br label %return

if.end93:                                         ; preds = %lor.rhs72
  %cmp95 = icmp eq i8 %4, 61
  br i1 %cmp95, label %while.cond100, label %return

while.cond100:                                    ; preds = %while.cond100, %while.cond100, %while.cond100, %while.cond100, %while.cond100, %while.cond100, %if.end93
  %p.2.pn = phi i8* [ %p.2, %if.end93 ], [ %p.4, %while.cond100 ], [ %p.4, %while.cond100 ], [ %p.4, %while.cond100 ], [ %p.4, %while.cond100 ], [ %p.4, %while.cond100 ], [ %p.4, %while.cond100 ]
  %p.4 = getelementptr inbounds i8* %p.2.pn, i32 1
  %7 = load i8* %p.4, align 1, !tbaa !1
  switch i8 %7, label %if.else192 [
    i8 32, label %while.cond100
    i8 12, label %while.cond100
    i8 11, label %while.cond100
    i8 10, label %while.cond100
    i8 9, label %while.cond100
    i8 13, label %while.cond100
    i8 34, label %if.then127
  ]

if.then127:                                       ; preds = %while.cond100
  %incdec.ptr128 = getelementptr inbounds i8* %p.2.pn, i32 2
  %b129 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 0
  store i8* %incdec.ptr128, i8** %b129, align 4, !tbaa !0
  br label %while.cond130

while.cond130:                                    ; preds = %while.cond130, %if.then127
  %p.5 = phi i8* [ %incdec.ptr128, %if.then127 ], [ %incdec.ptr139, %while.cond130 ]
  %8 = load i8* %p.5, align 1, !tbaa !1
  %tobool132 = icmp eq i8 %8, 0
  %cmp135 = icmp ne i8 %8, 34
  %not.tobool132 = xor i1 %tobool132, true
  %.cmp135 = and i1 %cmp135, %not.tobool132
  %incdec.ptr139 = getelementptr inbounds i8* %p.5, i32 1
  br i1 %.cmp135, label %while.cond130, label %while.end140

while.end140:                                     ; preds = %while.cond130
  br i1 %tobool132, label %return, label %if.end143

if.end143:                                        ; preds = %while.end140
  %e145 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 1
  store i8* %p.5, i8** %e145, align 4, !tbaa !0
  br label %while.cond146

while.cond146:                                    ; preds = %while.cond146, %while.cond146, %while.cond146, %while.cond146, %while.cond146, %while.cond146, %if.end143
  %p.5.pn = phi i8* [ %p.5, %if.end143 ], [ %p.6, %while.cond146 ], [ %p.6, %while.cond146 ], [ %p.6, %while.cond146 ], [ %p.6, %while.cond146 ], [ %p.6, %while.cond146 ], [ %p.6, %while.cond146 ]
  %p.6 = getelementptr inbounds i8* %p.5.pn, i32 1
  %9 = load i8* %p.6, align 1, !tbaa !1
  switch i8 %9, label %while.cond170 [
    i8 32, label %while.cond146
    i8 13, label %while.cond146
    i8 12, label %while.cond146
    i8 11, label %while.cond146
    i8 10, label %while.cond146
    i8 9, label %while.cond146
  ]

while.cond170:                                    ; preds = %while.cond146, %while.cond170.while.cond170_crit_edge
  %10 = phi i8 [ %.pre, %while.cond170.while.cond170_crit_edge ], [ %9, %while.cond146 ]
  %p.7 = phi i8* [ %incdec.ptr180, %while.cond170.while.cond170_crit_edge ], [ %p.6, %while.cond146 ]
  %tobool172 = icmp eq i8 %10, 0
  %cmp176 = icmp ne i8 %10, %separator
  %not.tobool172 = xor i1 %tobool172, true
  %.cmp176 = and i1 %cmp176, %not.tobool172
  %incdec.ptr180 = getelementptr inbounds i8* %p.7, i32 1
  br i1 %.cmp176, label %while.cond170.while.cond170_crit_edge, label %while.end181

while.cond170.while.cond170_crit_edge:            ; preds = %while.cond170
  %.pre = load i8* %incdec.ptr180, align 1, !tbaa !1
  br label %while.cond170

while.end181:                                     ; preds = %while.cond170
  %cmp184 = icmp eq i8 %10, %separator
  %brmerge = or i1 %cmp184, %tobool172
  %incdec.ptr180.mux = select i1 %cmp184, i8* %incdec.ptr180, i8* %p.7
  br i1 %brmerge, label %if.end246, label %return

if.else192:                                       ; preds = %while.cond100
  %b193 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 0
  store i8* %p.4, i8** %b193, align 4, !tbaa !0
  br label %while.cond194

while.cond194:                                    ; preds = %while.cond194, %if.else192
  %p.8 = phi i8* [ %p.4, %if.else192 ], [ %incdec.ptr204, %while.cond194 ]
  %11 = load i8* %p.8, align 1, !tbaa !1
  %cmp200 = icmp ne i8 %11, %separator
  %not.tobool196 = icmp ne i8 %11, 0
  %.cmp200 = and i1 %cmp200, %not.tobool196
  %incdec.ptr204 = getelementptr inbounds i8* %p.8, i32 1
  br i1 %.cmp200, label %while.cond194, label %while.end205

while.end205:                                     ; preds = %while.cond194
  %e206 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 1
  store i8* %p.8, i8** %e206, align 4
  %cmp210382 = icmp eq i8* %p.8, %p.4
  br i1 %cmp210382, label %while.end238, label %cont

cont:                                             ; preds = %while.end205, %while.cond207.backedge
  %storemerge383 = phi i8* [ %arrayidx, %while.cond207.backedge ], [ %p.8, %while.end205 ]
  %arrayidx = getelementptr inbounds i8* %storemerge383, i32 -1
  %12 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %12, label %while.end238 [
    i8 32, label %while.cond207.backedge
    i8 13, label %while.cond207.backedge
    i8 12, label %while.cond207.backedge
    i8 11, label %while.cond207.backedge
    i8 10, label %while.cond207.backedge
    i8 9, label %while.cond207.backedge
  ]

while.cond207.backedge:                           ; preds = %cont, %cont, %cont, %cont, %cont, %cont
  store i8* %arrayidx, i8** %e206, align 4
  %cmp210 = icmp eq i8* %arrayidx, %p.4
  br i1 %cmp210, label %while.end238, label %cont

while.end238:                                     ; preds = %while.cond207.backedge, %cont, %while.end205
  %13 = load i8* %p.8, align 1, !tbaa !1
  %cmp241 = icmp eq i8 %13, %separator
  %incdec.ptr244.p.8 = select i1 %cmp241, i8* %incdec.ptr204, i8* %p.8
  br label %if.end246

if.end246:                                        ; preds = %while.end181, %while.end238
  %p.9 = phi i8* [ %incdec.ptr244.p.8, %while.end238 ], [ %incdec.ptr180.mux, %while.end181 ]
  store i8* %p.9, i8** %source, align 4, !tbaa !0
  %14 = load i8** %b, align 4, !tbaa !0
  %15 = load i8** %e, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %16 = icmp sgt i32 %sub.ptr.sub.i, -1
  br i1 %16, label %cont.i, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %if.end246
  %17 = sext i32 %sub.ptr.sub.i to i64
  tail call void @__ioc_report_conversion(i32 930, i32 48, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %17, i8 1) nounwind
  %.pre.i = load i8** %b, align 4, !tbaa !0
  %.pre35.i = load i8** %e, align 4, !tbaa !0
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %if.end246
  %18 = phi i8* [ %.pre35.i, %ioc_bb.i ], [ %15, %if.end246 ]
  %19 = phi i8* [ %.pre.i, %ioc_bb.i ], [ %14, %if.end246 ]
  %call.i = tail call i8* @memchr(i8* %14, i32 42, i32 %sub.ptr.sub.i) nounwind readonly
  %sub.ptr.lhs.cast5.i = ptrtoint i8* %18 to i32
  %sub.ptr.rhs.cast6.i = ptrtoint i8* %19 to i32
  %sub.ptr.sub7.i = sub i32 %sub.ptr.lhs.cast5.i, %sub.ptr.rhs.cast6.i
  %20 = icmp sgt i32 %sub.ptr.sub7.i, -1
  br i1 %20, label %cont10.i, label %ioc_bb9.i

ioc_bb9.i:                                        ; preds = %cont.i
  %21 = sext i32 %sub.ptr.sub7.i to i64
  tail call void @__ioc_report_conversion(i32 931, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %cont.i
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %return, label %if.else.i

if.else.i:                                        ; preds = %cont10.i
  %call11.i = tail call i8* @memrchr(i8* %19, i32 42, i32 %sub.ptr.sub7.i) nounwind readonly
  %cmp12.i = icmp eq i8* %call.i, %call11.i
  br i1 %cmp12.i, label %if.then249, label %if.then249.thread

if.then249.thread:                                ; preds = %if.else.i
  store i8* %call.i, i8** %e, align 4, !tbaa !0
  br label %if.then.i

if.then249:                                       ; preds = %if.else.i
  %22 = load i8** %e, align 4, !tbaa !0
  %add.ptr.i = getelementptr inbounds i8* %22, i32 -1
  %cmp15.i = icmp eq i8* %add.ptr.i, %call.i
  store i8* %call.i, i8** %e, align 4, !tbaa !0
  br i1 %cmp15.i, label %if.then.i, label %return

if.then.i:                                        ; preds = %if.then249.thread, %if.then249
  %b.i368 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 0
  %23 = load i8** %b.i368, align 4, !tbaa !0
  %e.i369 = getelementptr inbounds %struct.param_token* %value, i32 0, i32 1
  %24 = load i8** %e.i369, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i370 = ptrtoint i8* %24 to i32
  %sub.ptr.rhs.cast.i371 = ptrtoint i8* %23 to i32
  %sub.ptr.sub.i372 = sub i32 %sub.ptr.lhs.cast.i370, %sub.ptr.rhs.cast.i371
  %25 = icmp sgt i32 %sub.ptr.sub.i372, -1
  br i1 %25, label %cont.i375, label %ioc_bb.i373

ioc_bb.i373:                                      ; preds = %if.then.i
  %26 = sext i32 %sub.ptr.sub.i372 to i64
  tail call void @__ioc_report_conversion(i32 959, i32 52, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %cont.i375

cont.i375:                                        ; preds = %ioc_bb.i373, %if.then.i
  %call.i374 = tail call i8* @memrchr(i8* %23, i32 39, i32 %sub.ptr.sub.i372) nounwind readonly
  %cmp2.i = icmp eq i8* %call.i374, null
  br i1 %cmp2.i, label %return, label %if.then3.i

if.then3.i:                                       ; preds = %cont.i375
  %add.ptr.i376 = getelementptr inbounds i8* %call.i374, i32 1
  store i8* %add.ptr.i376, i8** %b.i368, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %while.end181, %cont10.i, %if.then3.i, %cont.i375, %if.then249, %while.end140, %if.end93, %while.end48, %if.then85, %if.then
  %retval.0 = phi i1 [ true, %if.then85 ], [ false, %if.then ], [ false, %while.end48 ], [ false, %if.end93 ], [ false, %while.end140 ], [ true, %if.then249 ], [ true, %cont.i375 ], [ true, %if.then3.i ], [ true, %cont10.i ], [ false, %while.end181 ]
  ret i1 %retval.0
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @http_loop(%struct.url* %u, %struct.url* %original_url, i8** nocapture %newloc, i8** %local_file, i8* %referer, i32* %dt, %struct.url* %proxy, %struct.iri* %iri) nounwind {
entry:
  %hstat = alloca %struct.http_stat, align 8
  %st = alloca %struct.stat, align 4
  %tmp = alloca [256 x i8], align 1
  %fl = alloca i8*, align 4
  %0 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 46), align 4, !tbaa !0
  %not.cmp = icmp ne i8* %0, null
  %force_full_retrieve.0 = zext i1 %not.cmp to i8
  %cmp3 = icmp eq i8** %local_file, null
  br i1 %cmp3, label %if.end16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8** %local_file, align 4, !tbaa !0
  %cmp4 = icmp eq i8* %1, null
  br i1 %cmp4, label %cond.end, label %cont6

cont6:                                            ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 2950, i8* getelementptr inbounds ([112 x i8]* @__PRETTY_FUNCTION__.http_loop, i32 0, i32 0)) noreturn nounwind
  unreachable

cond.end:                                         ; preds = %lor.lhs.false
  %2 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool7 = icmp eq i8* %2, null
  br i1 %tobool7, label %if.end16, label %if.then8

if.then8:                                         ; preds = %cond.end
  %3 = load i8* %2, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %3, 45
  br i1 %cmp9, label %land.lhs.true11, label %cond.false14

land.lhs.true11:                                  ; preds = %if.then8
  %add.ptr = getelementptr inbounds i8* %2, i32 1
  %4 = load i8* %add.ptr, align 1, !tbaa !1
  %tobool12 = icmp eq i8 %4, 0
  br i1 %tobool12, label %cond.end15, label %cond.false14

cond.false14:                                     ; preds = %land.lhs.true11, %if.then8
  %call = call noalias i8* @xstrdup(i8* %2) nounwind
  br label %cond.end15

cond.end15:                                       ; preds = %land.lhs.true11, %cond.false14
  %cond = phi i8* [ %call, %cond.false14 ], [ null, %land.lhs.true11 ]
  store i8* %cond, i8** %local_file, align 4, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %cond.end, %entry, %cond.end15
  %tobool791 = phi i1 [ false, %cond.end15 ], [ false, %cond.end ], [ true, %entry ]
  store i8* null, i8** %newloc, align 4, !tbaa !0
  %5 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 117), align 4, !tbaa !3, !range !4
  %tobool17 = icmp eq i8 %5, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  %6 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %tobool.i = icmp eq %struct.cookie_jar* %6, null
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then18
  %call.i = call %struct.cookie_jar* @cookie_jar_new() nounwind
  store %struct.cookie_jar* %call.i, %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then18
  %7 = phi %struct.cookie_jar* [ %6, %if.then18 ], [ %call.i, %if.then.i ]
  %8 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 118), align 4, !tbaa !0
  %tobool1.i = icmp eq i8* %8, null
  br i1 %tobool1.i, label %if.end19, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %.b.i = load i1* @cookies_loaded_p.b, align 1
  br i1 %.b.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @cookie_jar_load(%struct.cookie_jar* %7, i8* %8) nounwind
  store i1 true, i1* @cookies_loaded_p.b, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then3.i, %land.lhs.true.i, %if.end.i, %if.end16
  %9 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 62), align 1, !tbaa !3, !range !4
  %tobool20 = icmp eq i8 %9, 0
  br i1 %tobool20, label %if.end29, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end19
  %path = getelementptr inbounds %struct.url* %u, i32 0, i32 4
  %10 = load i8** %path, align 4, !tbaa !0
  %call23 = call zeroext i1 @has_wildcards_p(i8* %10) nounwind
  br i1 %call23, label %cont27, label %if.end29

cont27:                                           ; preds = %land.lhs.true22
  %call28 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call28) nounwind
  br label %if.end29

if.end29:                                         ; preds = %if.end19, %cont27, %land.lhs.true22
  %11 = bitcast %struct.http_stat* %hstat to i8*
  call void @llvm.memset.p0i8.i32(i8* %11, i8 0, i32 96, i32 8, i1 false)
  %referer30 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 12
  store i8* %referer, i8** %referer30, align 4, !tbaa !0
  %12 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool31 = icmp eq i8* %12, null
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call33 = call noalias i8* @xstrdup(i8* %12) nounwind
  %local_file34 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  store i8* %call33, i8** %local_file34, align 8, !tbaa !0
  br label %land.lhs.true49

if.else:                                          ; preds = %if.end29
  %13 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 132), align 4, !tbaa !3, !range !4
  %tobool35 = icmp eq i8 %13, 0
  br i1 %tobool35, label %if.then36, label %if.end62

if.then36:                                        ; preds = %if.else
  %14 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 137), align 4, !tbaa !3, !range !4
  %tobool37 = icmp ne i8 %14, 0
  %cond42 = select i1 %tobool37, %struct.url* %u, %struct.url* %original_url
  %call43 = call i8* @url_file_name(%struct.url* %cond42, i8* null) nounwind
  %local_file44 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  store i8* %call43, i8** %local_file44, align 8, !tbaa !0
  br label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.then32, %if.then36
  %15 = phi i8* [ %call33, %if.then32 ], [ %call43, %if.then36 ]
  %local_file50 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  %call51 = call zeroext i1 @file_exists_p(i8* %15) nounwind
  br i1 %call51, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %16 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 17), align 2, !tbaa !3, !range !4
  %tobool54.not = icmp eq i8 %16, 0
  %17 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool57 = icmp ne i8* %17, null
  %or.cond687 = or i1 %tobool54.not, %tobool57
  br i1 %or.cond687, label %if.end62, label %if.then58

if.then58:                                        ; preds = %land.lhs.true53
  %18 = load i8** %local_file50, align 8, !tbaa !0
  %call.i782 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8]* @.str174, i32 0, i32 0), i32 5) nounwind
  %call1.i = call i8* @quote(i8* %18) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call.i782, i8* %call1.i) nounwind
  %19 = load i32* %dt, align 4, !tbaa !5
  %or.i = or i32 %19, 2
  store i32 %or.i, i32* %dt, align 4, !tbaa !5
  %call2.i = call zeroext i1 @has_html_suffix_p(i8* %18) nounwind
  br i1 %call2.i, label %if.then.i783, label %cont678

if.then.i783:                                     ; preds = %if.then58
  %20 = load i32* %dt, align 4, !tbaa !5
  %or3.i = or i32 %20, 1
  store i32 %or3.i, i32* %dt, align 4, !tbaa !5
  br label %cont678

if.end62:                                         ; preds = %if.else, %land.lhs.true53, %land.lhs.true49
  %got_name.0794 = phi i8 [ 1, %land.lhs.true53 ], [ 1, %land.lhs.true49 ], [ 0, %if.else ]
  store i32 0, i32* %dt, align 4, !tbaa !5
  %21 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 25), align 4, !tbaa !3, !range !4
  %22 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 137), align 4, !tbaa !3, !range !4
  %tobool66 = icmp ne i8 %22, 0
  %cond71 = select i1 %tobool66, %struct.url* %u, %struct.url* %original_url
  %call72 = call i8* @url_file_name(%struct.url* %cond71, i8* null) nounwind
  %23 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %tobool73 = icmp eq i8 %23, 0
  br i1 %tobool73, label %if.end82, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.end62
  %call76 = call zeroext i1 @file_exists_p(i8* %call72) nounwind
  %call76.not = xor i1 %call76, true
  %24 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 132), align 4, !tbaa !3, !range !4
  %tobool79 = icmp eq i8 %24, 0
  %or.cond775 = and i1 %tobool79, %call76.not
  %.. = select i1 %or.cond775, i8 %21, i8 1
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true75, %if.end62
  %send_head_first.1 = phi i8 [ %21, %if.end62 ], [ %.., %land.lhs.true75 ]
  call void @free(i8* %call72) nounwind
  %25 = and i8 %send_head_first.1, 1
  %tobool114 = icmp ne i8 %25, 0
  %len148 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 0
  %restval149 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 2
  %local_file130 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  %26 = bitcast %struct.stat* %st to %struct.stat64*
  %st_mode = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  %st_size = getelementptr inbounds %struct.stat* %st, i32 0, i32 9
  %tobool155 = icmp ne %struct.url* %proxy, null
  %newloc169 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 5
  %statcode258 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 8
  %remote_time311 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 6
  %orig_file_name = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 16
  %timestamp_checked = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 15
  %orig_file_tstamp = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 18
  %contlen = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 1
  %orig_file_size = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 17
  %rd_size = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 10
  %dltime = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 11
  %res557 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 3
  %rderrmsg = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8]* %tmp, i32 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end82
  %tmr.0 = phi i32 [ -1, %if.end82 ], [ %tmr.5, %do.cond ]
  %got_name.1 = phi i8 [ %got_name.0794, %if.end82 ], [ %got_name.2, %do.cond ]
  %force_full_retrieve.1 = phi i8 [ %force_full_retrieve.0, %if.end82 ], [ %force_full_retrieve.5, %do.cond ]
  %time_came_from_head.0 = phi i8 [ 0, %if.end82 ], [ %time_came_from_head.3, %do.cond ]
  %got_head.0 = phi i8 [ 0, %if.end82 ], [ %got_head.2, %do.cond ]
  %count.0 = phi i32 [ 0, %if.end82 ], [ %count.1, %do.cond ]
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %do.body
  %30 = sext i32 %count.0 to i64
  call void @__ioc_report_add_overflow(i32 2829, i32 5, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %do.body, %ioc_bb83
  call void @sleep_between_retrievals(i32 %28) nounwind
  %call85 = call i32 @time(i32* null) nounwind
  %call86 = call i8* @datetime_str(i32 %call85) nounwind
  %31 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 25), align 4, !tbaa !3, !range !4
  %tobool87 = icmp eq i8 %31, 0
  br i1 %tobool87, label %if.end95, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %cont84
  %32 = and i8 %got_head.0, 1
  %tobool90 = icmp eq i8 %32, 0
  br i1 %tobool90, label %cont93, label %if.end95

cont93:                                           ; preds = %land.lhs.true89
  %call94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8]* @.str3, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call94) nounwind
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true89, %cont84, %cont93
  %33 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 0), align 4, !tbaa !5
  %tobool96 = icmp eq i32 %33, 0
  br i1 %tobool96, label %if.end113, label %cont99

cont99:                                           ; preds = %if.end95
  %call100 = call i8* @url_string(%struct.url* %u, i32 1) nounwind
  %cmp101 = icmp sgt i32 %28, 1
  br i1 %cmp101, label %if.then103, label %cont111

if.then103:                                       ; preds = %cont99
  %call104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 5) nounwind
  %call105 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* %call104, i32 %28) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0), i8* %call86, i8* %arraydecay, i8* %call100) nounwind
  br label %if.end112

cont111:                                          ; preds = %cont99
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i8* %call86, i8* %call100) nounwind
  br label %if.end112

if.end112:                                        ; preds = %cont111, %if.then103
  call void @free(i8* %call100) nounwind
  br label %if.end113

if.end113:                                        ; preds = %if.end95, %if.end112
  br i1 %tobool114, label %land.lhs.true116, label %if.else119

land.lhs.true116:                                 ; preds = %if.end113
  %34 = and i8 %got_head.0, 1
  %tobool117 = icmp eq i8 %34, 0
  br i1 %tobool117, label %if.then118, label %if.else119

if.then118:                                       ; preds = %land.lhs.true116
  %35 = load i32* %dt, align 4, !tbaa !5
  %or = or i32 %35, 4
  br label %if.end120

if.else119:                                       ; preds = %land.lhs.true116, %if.end113
  %36 = load i32* %dt, align 4, !tbaa !5
  %and = and i32 %36, -5
  br label %if.end120

if.end120:                                        ; preds = %if.else119, %if.then118
  %storemerge = phi i32 [ %and, %if.else119 ], [ %or, %if.then118 ]
  store i32 %storemerge, i32* %dt, align 4
  %37 = and i8 %force_full_retrieve.1, 1
  %tobool121 = icmp eq i8 %37, 0
  br i1 %tobool121, label %if.else123, label %if.then122

if.then122:                                       ; preds = %if.end120
  %38 = load i64* %len148, align 8, !tbaa !6
  store i64 %38, i64* %restval149, align 8, !tbaa !6
  br label %if.end154

if.else123:                                       ; preds = %if.end120
  %39 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 58), align 1, !tbaa !3, !range !4
  %tobool124 = icmp eq i8 %39, 0
  br i1 %tobool124, label %if.else144, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.else123
  %40 = and i8 %got_name.1, 1
  %tobool127 = icmp eq i8 %40, 0
  br i1 %tobool127, label %if.else144, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %41 = load i8** %local_file130, align 8, !tbaa !0
  %call.i785 = call i32 @__xstat64(i32 3, i8* %41, %struct.stat64* %26) nounwind
  %cmp132 = icmp eq i32 %call.i785, 0
  br i1 %cmp132, label %cont139, label %if.else144

cont139:                                          ; preds = %land.lhs.true129
  %42 = load i32* %st_mode, align 4, !tbaa !5
  %and137 = and i32 %42, 61440
  %cmp140 = icmp eq i32 %and137, 32768
  br i1 %cmp140, label %if.then142, label %if.else144

if.then142:                                       ; preds = %cont139
  %43 = load i64* %st_size, align 4, !tbaa !6
  store i64 %43, i64* %restval149, align 8, !tbaa !6
  br label %if.end154

if.else144:                                       ; preds = %land.lhs.true126, %if.else123, %cont139, %land.lhs.true129
  %cmp145 = icmp sgt i32 %28, 1
  br i1 %cmp145, label %if.then147, label %if.else150

if.then147:                                       ; preds = %if.else144
  %44 = load i64* %len148, align 8, !tbaa !6
  store i64 %44, i64* %restval149, align 8, !tbaa !6
  br label %if.end154

if.else150:                                       ; preds = %if.else144
  store i64 0, i64* %restval149, align 8, !tbaa !6
  br label %if.end154

if.end154:                                        ; preds = %if.then142, %if.else150, %if.then147, %if.then122
  %cmp157 = icmp sgt i32 %28, 1
  %or.cond776 = and i1 %tobool155, %cmp157
  %45 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 69), align 2, !tbaa !3, !range !4
  %tobool160 = icmp eq i8 %45, 0
  %or.cond777 = or i1 %or.cond776, %tobool160
  %46 = load i32* %dt, align 4, !tbaa !5
  %or162 = or i32 %46, 8
  %and164 = and i32 %46, -9
  %storemerge774 = select i1 %or.cond777, i32 %or162, i32 %and164
  store i32 %storemerge774, i32* %dt, align 4
  %call166 = call fastcc i32 @gethttp(%struct.url* %u, %struct.http_stat* %hstat, i32* %dt, %struct.url* %proxy, %struct.iri* %iri, i32 %28)
  %call167 = call i32 @time(i32* null) nounwind
  %call168 = call i8* @datetime_str(i32 %call167) nounwind
  %47 = load i8** %newloc169, align 8, !tbaa !0
  %tobool170 = icmp eq i8* %47, null
  br i1 %tobool170, label %if.end174, label %if.then171

if.then171:                                       ; preds = %if.end154
  %call173 = call noalias i8* @xstrdup(i8* %47) nounwind
  store i8* %call173, i8** %newloc, align 4, !tbaa !0
  br label %if.end174

if.end174:                                        ; preds = %if.end154, %if.then171
  switch i32 %call166, label %sw.default [
    i32 30, label %sw.bb182
    i32 29, label %sw.bb182
    i32 2, label %sw.bb182
    i32 9, label %sw.bb182
    i32 3, label %sw.bb182
    i32 40, label %sw.bb182
    i32 52, label %sw.bb182
    i32 44, label %sw.bb182
    i32 25, label %sw.bb182
    i32 26, label %cont186
    i32 24, label %cont186
    i32 1, label %cont678.loopexit
    i32 5, label %cont678.loopexit
    i32 49, label %cont678.loopexit
    i32 50, label %cont678.loopexit
    i32 53, label %cont678.loopexit
    i32 37, label %cont678.loopexit
    i32 54, label %cont678.loopexit
    i32 58, label %cont203
    i32 59, label %cont210
    i32 60, label %cont210
    i32 4, label %cont216
    i32 55, label %cont220
    i32 6, label %sw.bb229
    i32 56, label %sw.bb229
    i32 38, label %cont678
    i32 39, label %sw.epilog
  ]

sw.bb182:                                         ; preds = %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174
  %48 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 2), align 4, !tbaa !5
  call void @printwhat(i32 %28, i32 %48) nounwind
  br label %do.cond

cont186:                                          ; preds = %if.end174, %if.end174
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call189 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8]* @.str8, i32 0, i32 0), i32 5) nounwind
  %49 = load i8** %local_file130, align 8, !tbaa !0
  %call191 = call i8* @quote(i8* %49) nounwind
  %call192 = call i32* @__errno_location() nounwind readnone
  %50 = load i32* %call192, align 4, !tbaa !5
  %call193 = call i8* @rpl_strerror(i32 %50) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call189, i8* %call191, i8* %call193) nounwind
  br label %if.end686

cont203:                                          ; preds = %if.end174
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8]* @.str9, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call206) nounwind
  br label %if.end686

cont210:                                          ; preds = %if.end174, %if.end174
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call213 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8]* @.str10, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call213) nounwind
  br label %cont678

cont216:                                          ; preds = %if.end174
  %call217 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8]* @.str11, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call217) nounwind
  br label %if.end686

cont220:                                          ; preds = %if.end174
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call223 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8]* @.str12, i32 0, i32 0), i32 5) nounwind
  %51 = load i8** %local_file130, align 8, !tbaa !0
  %call225 = call i8* @quote(i8* %51) nounwind
  %call226 = call i32* @__errno_location() nounwind readnone
  %52 = load i32* %call226, align 4, !tbaa !5
  %call227 = call i8* @rpl_strerror(i32 %52) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call223, i8* %call225, i8* %call227) nounwind
  br label %if.end686

sw.bb229:                                         ; preds = %if.end174, %if.end174
  %53 = load i8** %newloc, align 4, !tbaa !0
  %tobool230 = icmp eq i8* %53, null
  br i1 %tobool230, label %cont233, label %cont678

cont233:                                          ; preds = %sw.bb229
  %call234 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8]* @.str13, i32 0, i32 0), i32 5) nounwind
  %54 = load i32* %statcode258, align 4, !tbaa !5
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call234, i32 %54) nounwind
  br label %if.end686

sw.default:                                       ; preds = %if.end174
  call void @abort() noreturn nounwind
  unreachable

sw.epilog:                                        ; preds = %if.end174
  %55 = load i32* %dt, align 4, !tbaa !5
  %and242 = and i32 %55, 2
  %tobool243 = icmp eq i32 %and242, 0
  br i1 %tobool243, label %if.then244, label %if.end299

if.then244:                                       ; preds = %sw.epilog
  %56 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 0), align 4, !tbaa !5
  %tobool247 = icmp eq i32 %56, 0
  br i1 %tobool247, label %cont250, label %if.end254

cont250:                                          ; preds = %if.then244
  %call251 = call i8* @url_string(%struct.url* %u, i32 1) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 2, i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i8* %call251) nounwind
  %.pre = load i32* %dt, align 4, !tbaa !5
  br label %if.end254

if.end254:                                        ; preds = %if.then244, %cont250
  %57 = phi i32 [ %55, %if.then244 ], [ %.pre, %cont250 ]
  %hurl246.0 = phi i8* [ null, %if.then244 ], [ %call251, %cont250 ]
  %and255 = and i32 %57, 4
  %tobool256 = icmp eq i32 %and255, 0
  br i1 %tobool256, label %if.else266, label %land.lhs.true257

land.lhs.true257:                                 ; preds = %if.end254
  %58 = load i32* %statcode258, align 4, !tbaa !5
  %.off = add i32 %58, -500
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.cond, label %if.else266

if.else266:                                       ; preds = %land.lhs.true257, %if.end254
  %59 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 25), align 4, !tbaa !3, !range !4
  %tobool267 = icmp eq i8 %59, 0
  br i1 %tobool267, label %cont283, label %land.lhs.true269

land.lhs.true269:                                 ; preds = %if.else266
  %utf8_encode = getelementptr inbounds %struct.iri* %iri, i32 0, i32 3
  %60 = load i8* %utf8_encode, align 1, !tbaa !3, !range !4
  %tobool270 = icmp eq i8 %60, 0
  br i1 %tobool270, label %if.then271, label %cont283

if.then271:                                       ; preds = %land.lhs.true269
  %tobool272 = icmp eq i8* %hurl246.0, null
  br i1 %tobool272, label %cont275, label %if.end277

cont275:                                          ; preds = %if.then271
  %call276 = call i8* @url_string(%struct.url* %u, i32 1) nounwind
  br label %if.end277

if.end277:                                        ; preds = %if.then271, %cont275
  %hurl246.1 = phi i8* [ %hurl246.0, %if.then271 ], [ %call276, %cont275 ]
  call void @nonexisting_url(i8* %hurl246.1) nounwind
  %call280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8]* @.str15, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call280) nounwind
  br label %cont292

cont283:                                          ; preds = %if.else266, %land.lhs.true269
  %call284 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8]* @.str16, i32 0, i32 0), i32 5) nounwind
  %61 = load i32* %statcode258, align 4, !tbaa !5
  %error = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 7
  %62 = load i8** %error, align 8, !tbaa !0
  %call288 = call i8* @quotearg_style(i32 5, i8* %62) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call284, i8* %call168, i32 %61, i8* %call288) nounwind
  br label %cont292

cont292:                                          ; preds = %cont283, %if.end277
  %hurl246.2 = phi i8* [ %hurl246.0, %cont283 ], [ %hurl246.1, %if.end277 ]
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %tobool295 = icmp eq i8* %hurl246.2, null
  br i1 %tobool295, label %if.end686, label %if.else297

if.else297:                                       ; preds = %cont292
  call void @free(i8* %hurl246.2) nounwind
  br label %if.end686

if.end299:                                        ; preds = %sw.epilog
  %63 = and i8 %got_head.0, 1
  %tobool300 = icmp eq i8 %63, 0
  br i1 %tobool300, label %if.then301, label %if.end434

if.then301:                                       ; preds = %if.end299
  %64 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %tobool302 = icmp eq i8 %64, 0
  %.pre921 = load i8** %remote_time311, align 4, !tbaa !0
  %tobool312 = icmp eq i8* %.pre921, null
  br i1 %tobool302, label %if.else310, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %if.then301
  br i1 %tobool312, label %cont308, label %if.then313

cont308:                                          ; preds = %land.lhs.true304
  %call309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8]* @.str17, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 1, i8* %call309) nounwind
  br label %if.end330

if.else310:                                       ; preds = %if.then301
  br i1 %tobool312, label %if.end330, label %if.then313

if.then313:                                       ; preds = %land.lhs.true304, %if.else310
  %call315 = call i32 @http_atotm(i8* %.pre921)
  %cmp318 = icmp eq i32 %call315, -1
  br i1 %cmp318, label %cont322, label %if.end324

cont322:                                          ; preds = %if.then313
  %call323 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8]* @.str18, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call323) nounwind
  br label %if.end324

if.end324:                                        ; preds = %cont322, %if.then313
  %65 = load i32* %dt, align 4, !tbaa !5
  %and325 = and i32 %65, 4
  %tobool326 = icmp eq i32 %and325, 0
  %time_came_from_head.0. = select i1 %tobool326, i8 %time_came_from_head.0, i8 1
  br label %if.end330

if.end330:                                        ; preds = %if.end324, %if.else310, %cont308
  %tmr.1 = phi i32 [ %tmr.0, %if.else310 ], [ %tmr.0, %cont308 ], [ %call315, %if.end324 ]
  %time_came_from_head.1 = phi i8 [ %time_came_from_head.0, %if.else310 ], [ %time_came_from_head.0, %cont308 ], [ %time_came_from_head.0., %if.end324 ]
  br i1 %tobool114, label %if.then332, label %if.end434

if.then332:                                       ; preds = %if.end330
  %66 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %tobool333 = icmp eq i8 %66, 0
  br i1 %tobool333, label %if.end381, label %if.then334

if.then334:                                       ; preds = %if.then332
  %67 = load i8** %orig_file_name, align 8, !tbaa !0
  %tobool335 = icmp eq i8* %67, null
  br i1 %tobool335, label %if.end380, label %if.then336

if.then336:                                       ; preds = %if.then334
  %68 = load i8** %remote_time311, align 4, !tbaa !0
  %tobool338 = icmp eq i8* %68, null
  %cmp342 = icmp eq i32 %tmr.1, -1
  %or.cond778 = or i1 %tobool338, %cmp342
  br i1 %or.cond778, label %if.end380, label %if.then344

if.then344:                                       ; preds = %if.then336
  %69 = load i32* %orig_file_tstamp, align 4, !tbaa !7
  %cmp345 = icmp slt i32 %69, %tmr.1
  br i1 %cmp345, label %cont374, label %if.then347

if.then347:                                       ; preds = %if.then344
  %70 = load i64* %contlen, align 8, !tbaa !6
  %cmp351 = icmp eq i64 %70, -1
  br i1 %cmp351, label %cont359, label %lor.lhs.false353

lor.lhs.false353:                                 ; preds = %if.then347
  %71 = load i64* %orig_file_size, align 4, !tbaa !6
  %cmp355 = icmp eq i64 %71, %70
  br i1 %cmp355, label %cont359, label %cont367

cont359:                                          ; preds = %if.then347, %lor.lhs.false353
  %call360 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8]* @.str19, i32 0, i32 0), i32 5) nounwind
  %72 = load i8** %orig_file_name, align 8, !tbaa !0
  %call362 = call i8* @quote(i8* %72) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call360, i8* %call362) nounwind
  br label %cont678

cont367:                                          ; preds = %lor.lhs.false353
  %call368 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8]* @.str20, i32 0, i32 0), i32 5) nounwind
  %73 = load i64* %orig_file_size, align 4, !tbaa !6
  %call370 = call i8* @number_to_static_string(i64 %73) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call368, i8* %call370) nounwind
  br label %cont378

cont374:                                          ; preds = %if.then344
  %call375 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8]* @.str21, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call375) nounwind
  br label %cont378

cont378:                                          ; preds = %cont367, %cont374
  %force_full_retrieve.2 = phi i8 [ %force_full_retrieve.1, %cont367 ], [ 1, %cont374 ]
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %if.end380

if.end380:                                        ; preds = %if.then336, %if.then334, %cont378
  %force_full_retrieve.3 = phi i8 [ %force_full_retrieve.2, %cont378 ], [ %force_full_retrieve.1, %if.then336 ], [ %force_full_retrieve.1, %if.then334 ]
  store i8 1, i8* %timestamp_checked, align 1, !tbaa !3
  br label %if.end381

if.end381:                                        ; preds = %if.then332, %if.end380
  %force_full_retrieve.4 = phi i8 [ %force_full_retrieve.3, %if.end380 ], [ %force_full_retrieve.1, %if.then332 ]
  %74 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 25), align 4, !tbaa !3, !range !4
  %tobool382 = icmp eq i8 %74, 0
  br i1 %tobool382, label %if.end431, label %if.then383

if.then383:                                       ; preds = %if.end381
  %75 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 6), align 1, !tbaa !3, !range !4
  %tobool385 = icmp eq i8 %75, 0
  %76 = load i32* %dt, align 4, !tbaa !5
  %and387 = and i32 %76, 1
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool385, label %if.else400, label %if.then386

if.then386:                                       ; preds = %if.then383
  br i1 %tobool388, label %if.end414, label %cont395

cont395:                                          ; preds = %if.then386
  %call396 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8]* @.str23, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call396) nounwind
  br label %cont418

if.else400:                                       ; preds = %if.then383
  br i1 %tobool388, label %cont405, label %cont409

cont405:                                          ; preds = %if.else400
  %call406 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8]* @.str24, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call406) nounwind
  br label %cont418

cont409:                                          ; preds = %if.else400
  %call410 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8]* @.str25, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call410) nounwind
  br label %cont418

if.end414:                                        ; preds = %if.then386
  %call392 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([79 x i8]* @.str22, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call392) nounwind
  br label %if.end431

cont418:                                          ; preds = %cont395, %cont405, %cont409
  %call419 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8]* @.str26, i32 0, i32 0), i32 5) nounwind
  %url = getelementptr inbounds %struct.url* %u, i32 0, i32 0
  %77 = load i8** %url, align 4, !tbaa !0
  %78 = load i32* %statcode258, align 4, !tbaa !5
  %message = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 9
  %79 = load i8** %message, align 8, !tbaa !0
  %tobool421 = icmp eq i8* %79, null
  br i1 %tobool421, label %cond.end428, label %cont424

cont424:                                          ; preds = %cont418
  %call426 = call i8* @quotearg_style(i32 5, i8* %79) nounwind
  br label %cond.end428

cond.end428:                                      ; preds = %cont418, %cont424
  %cond429 = phi i8* [ %call426, %cont424 ], [ getelementptr inbounds ([1 x i8]* @.str27, i32 0, i32 0), %cont418 ]
  call void (i32, i8*, ...)* @logprintf(i32 2, i8* %call419, i8* %call168, i8* %77, i32 %78, i8* %cond429) nounwind
  br label %cont678

if.end431:                                        ; preds = %if.end381, %if.end414
  %80 = load i32* %dt, align 4, !tbaa !5
  %and432 = and i32 %80, -5
  store i32 %and432, i32* %dt, align 4, !tbaa !5
  br label %do.cond

if.end434:                                        ; preds = %if.end299, %if.end330
  %tmr.2 = phi i32 [ %tmr.0, %if.end299 ], [ %tmr.1, %if.end330 ]
  %time_came_from_head.2 = phi i8 [ %time_came_from_head.0, %if.end299 ], [ %time_came_from_head.1, %if.end330 ]
  %got_head.1 = phi i8 [ %got_head.0, %if.end299 ], [ 1, %if.end330 ]
  %81 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 138), align 1, !tbaa !3, !range !4
  %tobool435 = icmp eq i8 %81, 0
  %cmp440 = icmp eq i32 %tmr.2, -1
  %or.cond779 = or i1 %tobool435, %cmp440
  br i1 %or.cond779, label %if.end485, label %land.lhs.true442

land.lhs.true442:                                 ; preds = %if.end434
  %82 = load i64* %len148, align 8, !tbaa !6
  %83 = load i64* %contlen, align 8, !tbaa !6
  %cmp445 = icmp eq i64 %82, %83
  br i1 %cmp445, label %if.then457, label %lor.lhs.false447

lor.lhs.false447:                                 ; preds = %land.lhs.true442
  %84 = load i32* %res557, align 8, !tbaa !5
  %cmp448 = icmp eq i32 %84, 0
  %cmp455 = icmp eq i64 %83, -1
  %or.cond780 = and i1 %cmp448, %cmp455
  br i1 %or.cond780, label %if.then457, label %if.end485

if.then457:                                       ; preds = %lor.lhs.false447, %land.lhs.true442
  store i8* null, i8** %fl, align 4, !tbaa !0
  %85 = load i8** %local_file130, align 8, !tbaa !0
  call void @set_local_file(i8** %fl, i8* %85) nounwind
  %86 = load i8** %fl, align 4, !tbaa !0
  %tobool460 = icmp eq i8* %86, null
  br i1 %tobool460, label %if.end485, label %cont464

cont464:                                          ; preds = %if.then457
  %87 = and i8 %time_came_from_head.2, 1
  %tobool465 = icmp eq i8 %87, 0
  br i1 %tobool465, label %if.end483, label %land.lhs.true467

land.lhs.true467:                                 ; preds = %cont464
  %88 = load i8** %remote_time311, align 4, !tbaa !0
  %tobool469 = icmp eq i8* %88, null
  br i1 %tobool469, label %if.end483, label %land.lhs.true470

land.lhs.true470:                                 ; preds = %land.lhs.true467
  %89 = load i8* %88, align 1, !tbaa !1
  %tobool473 = icmp eq i8 %89, 0
  br i1 %tobool473, label %if.end483, label %if.then474

if.then474:                                       ; preds = %land.lhs.true470
  %call476 = call i32 @http_atotm(i8* %88)
  %cmp479 = icmp eq i32 %call476, -1
  %tmr.2.call476 = select i1 %cmp479, i32 %tmr.2, i32 %call476
  %.pre920 = load i8** %fl, align 4, !tbaa !0
  br label %if.end483

if.end483:                                        ; preds = %if.then474, %land.lhs.true470, %land.lhs.true467, %cont464
  %90 = phi i8* [ %86, %land.lhs.true470 ], [ %86, %land.lhs.true467 ], [ %86, %cont464 ], [ %.pre920, %if.then474 ]
  %tmr.3 = phi i32 [ %tmr.2, %land.lhs.true470 ], [ %tmr.2, %land.lhs.true467 ], [ %tmr.2, %cont464 ], [ %tmr.2.call476, %if.then474 ]
  call void @touch(i8* %90, i32 %tmr.3) nounwind
  br label %if.end485

if.end485:                                        ; preds = %if.then457, %if.end434, %if.end483, %lor.lhs.false447
  %tmr.4 = phi i32 [ %tmr.3, %if.end483 ], [ %tmr.2, %if.then457 ], [ %tmr.2, %lor.lhs.false447 ], [ %tmr.2, %if.end434 ]
  %91 = load i64* %rd_size, align 4, !tbaa !6
  %92 = load double* %dltime, align 4, !tbaa !8
  %call486 = call i8* @retr_rate(i64 %91, double %92) nounwind
  %93 = load double* %dltime, align 4, !tbaa !8
  %94 = load double* @total_download_time, align 8, !tbaa !8
  %add = fadd double %93, %94
  store double %add, double* @total_download_time, align 8, !tbaa !8
  %95 = load i64* %len148, align 8, !tbaa !6
  %96 = load i64* %contlen, align 8, !tbaa !6
  %cmp490 = icmp eq i64 %95, %96
  br i1 %cmp490, label %if.then492, label %if.else556

if.then492:                                       ; preds = %if.end485
  %97 = load i32* %dt, align 4, !tbaa !5
  %and493 = and i32 %97, 2
  %tobool494 = icmp eq i32 %and493, 0
  br i1 %tobool494, label %if.end535, label %if.then495

if.then495:                                       ; preds = %if.then492
  %98 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool497 = icmp eq i8* %98, null
  br i1 %tobool497, label %cond.false518, label %land.rhs

land.rhs:                                         ; preds = %if.then495
  %99 = load i8* %98, align 1, !tbaa !1
  %cmp499 = icmp eq i8 %99, 45
  br i1 %cmp499, label %cont506, label %cond.false518

cont506:                                          ; preds = %land.rhs
  %add.ptr502 = getelementptr inbounds i8* %98, i32 1
  %100 = load i8* %add.ptr502, align 1, !tbaa !1
  %lnot = icmp eq i8 %100, 0
  br i1 %lnot, label %cond.end513.thread, label %cond.false518

cond.end513.thread:                               ; preds = %cont506
  %call510 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8]* @.str28, i32 0, i32 0), i32 5) nounwind
  br label %cond.end521

cond.false518:                                    ; preds = %land.rhs, %if.then495, %cont506
  %call512800 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8]* @.str29, i32 0, i32 0), i32 5) nounwind
  %101 = load i8** %local_file130, align 8, !tbaa !0
  %call520 = call i8* @quote(i8* %101) nounwind
  br label %cond.end521

cond.end521:                                      ; preds = %cond.end513.thread, %cond.false518
  %cond514798 = phi i8* [ %call512800, %cond.false518 ], [ %call510, %cond.end513.thread ]
  %cond522 = phi i8* [ %call520, %cond.false518 ], [ getelementptr inbounds ([1 x i8]* @.str27, i32 0, i32 0), %cond.end513.thread ]
  %102 = load i64* %len148, align 8, !tbaa !6
  %call524 = call i8* @number_to_static_string(i64 %102) nounwind
  %103 = load i64* %contlen, align 8, !tbaa !6
  %call526 = call i8* @number_to_static_string(i64 %103) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %cond514798, i8* %call168, i8* %call486, i8* %cond522, i8* %call524, i8* %call526) nounwind
  %url529 = getelementptr inbounds %struct.url* %u, i32 0, i32 0
  %104 = load i8** %url529, align 4, !tbaa !0
  %105 = load i64* %len148, align 8, !tbaa !6
  %call531 = call i8* @number_to_static_string(i64 %105) nounwind
  %106 = load i64* %contlen, align 8, !tbaa !6
  %call533 = call i8* @number_to_static_string(i64 %106) nounwind
  %107 = load i8** %local_file130, align 8, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 2, i8* getelementptr inbounds ([32 x i8]* @.str30, i32 0, i32 0), i8* %call168, i8* %104, i8* %call531, i8* %call533, i8* %107, i32 %28) nounwind
  br label %if.end535

if.end535:                                        ; preds = %if.then492, %cond.end521
  %108 = load i32* @numurls, align 4, !tbaa !5
  %109 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %108, i32 1)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  br i1 %111, label %ioc_bb536, label %cont537

ioc_bb536:                                        ; preds = %if.end535
  %112 = sext i32 %108 to i64
  call void @__ioc_report_add_overflow(i32 3162, i32 7, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %112, i64 1, i8 13) nounwind
  br label %cont537

cont537:                                          ; preds = %if.end535, %ioc_bb536
  store i32 %110, i32* @numurls, align 4, !tbaa !5
  %113 = load i64* %rd_size, align 4, !tbaa !6
  %114 = load i64* @total_downloaded_bytes, align 8, !tbaa !6
  %115 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %114, i64 %113)
  %116 = extractvalue { i64, i1 } %115, 0
  %117 = extractvalue { i64, i1 } %115, 1
  br i1 %117, label %ioc_bb539, label %cont540

ioc_bb539:                                        ; preds = %cont537
  call void @__ioc_report_add_overflow(i32 3163, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %114, i64 %113, i8 14) nounwind
  br label %cont540

cont540:                                          ; preds = %cont537, %ioc_bb539
  store i64 %116, i64* @total_downloaded_bytes, align 8, !tbaa !6
  %118 = load i32* %dt, align 4, !tbaa !5
  %and541 = and i32 %118, 32
  %tobool542 = icmp eq i32 %and541, 0
  %119 = load i8** %local_file130, align 8, !tbaa !0
  br i1 %tobool542, label %cont550, label %cont545

cont545:                                          ; preds = %cont540
  %call547 = call i32 @downloaded_file(i32 2, i8* %119) nounwind
  br label %cont678

cont550:                                          ; preds = %cont540
  %call552 = call i32 @downloaded_file(i32 1, i8* %119) nounwind
  br label %cont678

if.else556:                                       ; preds = %if.end485
  %120 = load i32* %res557, align 8, !tbaa !5
  %cmp558 = icmp eq i32 %120, 0
  %cmp565 = icmp eq i64 %96, -1
  br i1 %cmp558, label %cont563, label %cont655

cont563:                                          ; preds = %if.else556
  br i1 %cmp565, label %if.then567, label %if.else632

if.then567:                                       ; preds = %cont563
  %121 = load i32* %dt, align 4, !tbaa !5
  %and568 = and i32 %121, 2
  %tobool569 = icmp eq i32 %and568, 0
  br i1 %tobool569, label %if.end611, label %if.then570

if.then570:                                       ; preds = %if.then567
  %122 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool573 = icmp eq i8* %122, null
  br i1 %tobool573, label %cond.false598, label %land.rhs574

land.rhs574:                                      ; preds = %if.then570
  %123 = load i8* %122, align 1, !tbaa !1
  %cmp576 = icmp eq i8 %123, 45
  br i1 %cmp576, label %cont586, label %cond.false598

cont586:                                          ; preds = %land.rhs574
  %add.ptr579 = getelementptr inbounds i8* %122, i32 1
  %124 = load i8* %add.ptr579, align 1, !tbaa !1
  %lnot581 = icmp eq i8 %124, 0
  br i1 %lnot581, label %cond.end593.thread, label %cond.false598

cond.end593.thread:                               ; preds = %cont586
  %call590 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8]* @.str31, i32 0, i32 0), i32 5) nounwind
  br label %cond.end601

cond.false598:                                    ; preds = %land.rhs574, %if.then570, %cont586
  %call592805 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8]* @.str32, i32 0, i32 0), i32 5) nounwind
  %125 = load i8** %local_file130, align 8, !tbaa !0
  %call600 = call i8* @quote(i8* %125) nounwind
  br label %cond.end601

cond.end601:                                      ; preds = %cond.end593.thread, %cond.false598
  %cond594802 = phi i8* [ %call592805, %cond.false598 ], [ %call590, %cond.end593.thread ]
  %cond602 = phi i8* [ %call600, %cond.false598 ], [ getelementptr inbounds ([1 x i8]* @.str27, i32 0, i32 0), %cond.end593.thread ]
  %126 = load i64* %len148, align 8, !tbaa !6
  %call604 = call i8* @number_to_static_string(i64 %126) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %cond594802, i8* %call168, i8* %call486, i8* %cond602, i8* %call604) nounwind
  %url607 = getelementptr inbounds %struct.url* %u, i32 0, i32 0
  %127 = load i8** %url607, align 4, !tbaa !0
  %128 = load i64* %len148, align 8, !tbaa !6
  %call609 = call i8* @number_to_static_string(i64 %128) nounwind
  %129 = load i8** %local_file130, align 8, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 2, i8* getelementptr inbounds ([29 x i8]* @.str33, i32 0, i32 0), i8* %call168, i8* %127, i8* %call609, i8* %129, i32 %28) nounwind
  br label %if.end611

if.end611:                                        ; preds = %if.then567, %cond.end601
  %130 = load i32* @numurls, align 4, !tbaa !5
  %131 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %130, i32 1)
  %132 = extractvalue { i32, i1 } %131, 0
  %133 = extractvalue { i32, i1 } %131, 1
  br i1 %133, label %ioc_bb612, label %cont613

ioc_bb612:                                        ; preds = %if.end611
  %134 = sext i32 %130 to i64
  call void @__ioc_report_add_overflow(i32 3183, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %134, i64 1, i8 13) nounwind
  br label %cont613

cont613:                                          ; preds = %if.end611, %ioc_bb612
  store i32 %132, i32* @numurls, align 4, !tbaa !5
  %135 = load i64* %rd_size, align 4, !tbaa !6
  %136 = load i64* @total_downloaded_bytes, align 8, !tbaa !6
  %137 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %136, i64 %135)
  %138 = extractvalue { i64, i1 } %137, 0
  %139 = extractvalue { i64, i1 } %137, 1
  br i1 %139, label %ioc_bb615, label %cont616

ioc_bb615:                                        ; preds = %cont613
  call void @__ioc_report_add_overflow(i32 3184, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %136, i64 %135, i8 14) nounwind
  br label %cont616

cont616:                                          ; preds = %cont613, %ioc_bb615
  store i64 %138, i64* @total_downloaded_bytes, align 8, !tbaa !6
  %140 = load i32* %dt, align 4, !tbaa !5
  %and617 = and i32 %140, 32
  %tobool618 = icmp eq i32 %and617, 0
  %141 = load i8** %local_file130, align 8, !tbaa !0
  br i1 %tobool618, label %cont626, label %cont621

cont621:                                          ; preds = %cont616
  %call623 = call i32 @downloaded_file(i32 2, i8* %141) nounwind
  br label %cont678

cont626:                                          ; preds = %cont616
  %call628 = call i32 @downloaded_file(i32 1, i8* %141) nounwind
  br label %cont678

if.else632:                                       ; preds = %cont563
  %cmp635 = icmp slt i64 %95, %96
  br i1 %cmp635, label %cont639, label %if.else643

cont639:                                          ; preds = %if.else632
  %call640 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8]* @.str34, i32 0, i32 0), i32 5) nounwind
  %142 = load i64* %len148, align 8, !tbaa !6
  %call642 = call i8* @number_to_static_string(i64 %142) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call640, i8* %call168, i8* %call486, i8* %call642) nounwind
  %143 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 2), align 4, !tbaa !5
  call void @printwhat(i32 %28, i32 %143) nounwind
  br label %do.cond

if.else643:                                       ; preds = %if.else632
  %144 = load i64* %restval149, align 8, !tbaa !6
  %cmp646 = icmp eq i64 %95, %144
  br i1 %cmp646, label %cont678, label %if.then648

if.then648:                                       ; preds = %if.else643
  call void @abort() noreturn nounwind
  unreachable

cont655:                                          ; preds = %if.else556
  br i1 %cmp565, label %cont661, label %cont667

cont661:                                          ; preds = %cont655
  %call662 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8]* @.str35, i32 0, i32 0), i32 5) nounwind
  %145 = load i64* %len148, align 8, !tbaa !6
  %call664 = call i8* @number_to_static_string(i64 %145) nounwind
  %146 = load i8** %rderrmsg, align 4, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call662, i8* %call168, i8* %call486, i8* %call664, i8* %146) nounwind
  %147 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 2), align 4, !tbaa !5
  call void @printwhat(i32 %28, i32 %147) nounwind
  br label %do.cond

cont667:                                          ; preds = %cont655
  %call668 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8]* @.str36, i32 0, i32 0), i32 5) nounwind
  %148 = load i64* %len148, align 8, !tbaa !6
  %call670 = call i8* @number_to_static_string(i64 %148) nounwind
  %149 = load i64* %contlen, align 8, !tbaa !6
  %call672 = call i8* @number_to_static_string(i64 %149) nounwind
  %150 = load i8** %rderrmsg, align 4, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call668, i8* %call168, i8* %call486, i8* %call670, i8* %call672, i8* %150) nounwind
  %151 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 2), align 4, !tbaa !5
  call void @printwhat(i32 %28, i32 %151) nounwind
  br label %do.cond

do.cond:                                          ; preds = %land.lhs.true257, %cont667, %cont661, %cont639, %if.end431, %sw.bb182
  %tmr.5 = phi i32 [ %tmr.4, %cont639 ], [ %tmr.4, %cont661 ], [ %tmr.4, %cont667 ], [ %tmr.1, %if.end431 ], [ %tmr.0, %sw.bb182 ], [ %tmr.0, %land.lhs.true257 ]
  %got_name.2 = phi i8 [ %got_name.1, %cont639 ], [ %got_name.1, %cont661 ], [ %got_name.1, %cont667 ], [ 1, %if.end431 ], [ %got_name.1, %sw.bb182 ], [ %got_name.1, %land.lhs.true257 ]
  %force_full_retrieve.5 = phi i8 [ %force_full_retrieve.1, %cont639 ], [ %force_full_retrieve.1, %cont661 ], [ %force_full_retrieve.1, %cont667 ], [ %force_full_retrieve.4, %if.end431 ], [ %force_full_retrieve.1, %sw.bb182 ], [ %force_full_retrieve.1, %land.lhs.true257 ]
  %time_came_from_head.3 = phi i8 [ %time_came_from_head.2, %cont639 ], [ %time_came_from_head.2, %cont661 ], [ %time_came_from_head.2, %cont667 ], [ %time_came_from_head.1, %if.end431 ], [ %time_came_from_head.0, %sw.bb182 ], [ %time_came_from_head.0, %land.lhs.true257 ]
  %got_head.2 = phi i8 [ %got_head.1, %cont639 ], [ %got_head.1, %cont661 ], [ %got_head.1, %cont667 ], [ 1, %if.end431 ], [ %got_head.0, %sw.bb182 ], [ 1, %land.lhs.true257 ]
  %count.1 = phi i32 [ %28, %cont639 ], [ %28, %cont661 ], [ %28, %cont667 ], [ 0, %if.end431 ], [ %28, %sw.bb182 ], [ %28, %land.lhs.true257 ]
  %152 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 2), align 4, !tbaa !5
  %tobool674 = icmp eq i32 %152, 0
  %cmp675 = icmp slt i32 %count.1, %152
  %or.cond781 = or i1 %tobool674, %cmp675
  br i1 %or.cond781, label %do.body, label %cont678.loopexit

cont678.loopexit:                                 ; preds = %do.cond, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174, %if.end174
  %ret.4.ph = phi i32 [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ %call166, %if.end174 ], [ 41, %do.cond ]
  br label %cont678

cont678:                                          ; preds = %if.end174, %cont678.loopexit, %if.then.i783, %if.then58, %cont210, %cont359, %cond.end428, %sw.bb229, %cont545, %cont550, %cont621, %cont626, %if.else643
  %ret.4 = phi i32 [ 31, %cont359 ], [ 31, %cond.end428 ], [ %call166, %cont210 ], [ %call166, %sw.bb229 ], [ 31, %cont545 ], [ 31, %cont550 ], [ 31, %cont621 ], [ 31, %cont626 ], [ 31, %if.else643 ], [ 31, %if.then58 ], [ 31, %if.then.i783 ], [ %ret.4.ph, %cont678.loopexit ], [ 31, %if.end174 ]
  %cmp679.not = icmp ne i32 %ret.4, 31
  %brmerge = or i1 %cmp679.not, %tobool791
  br i1 %brmerge, label %if.end686, label %if.then683

if.then683:                                       ; preds = %cont678
  %local_file684 = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  %153 = load i8** %local_file684, align 8, !tbaa !0
  %call685 = call noalias i8* @xstrdup(i8* %153) nounwind
  store i8* %call685, i8** %local_file, align 4, !tbaa !0
  br label %if.end686

if.end686:                                        ; preds = %cont678, %cont292, %cont186, %cont203, %cont216, %cont220, %cont233, %if.else297, %if.then683
  %ret.4811 = phi i32 [ 31, %if.then683 ], [ 34, %if.else297 ], [ 34, %cont233 ], [ 55, %cont220 ], [ 4, %cont216 ], [ 58, %cont203 ], [ %call166, %cont186 ], [ 34, %cont292 ], [ %ret.4, %cont678 ]
  %newloc.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 5
  %154 = load i8** %newloc.i, align 8, !tbaa !0
  %tobool.i786 = icmp eq i8* %154, null
  br i1 %tobool.i786, label %if.end.i787, label %if.else.i

if.else.i:                                        ; preds = %if.end686
  call void @free(i8* %154) nounwind
  br label %if.end.i787

if.end.i787:                                      ; preds = %if.end686, %if.else.i
  %remote_time.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 6
  %155 = load i8** %remote_time.i, align 4, !tbaa !0
  %tobool2.i = icmp eq i8* %155, null
  br i1 %tobool2.i, label %if.end6.i, label %if.else4.i

if.else4.i:                                       ; preds = %if.end.i787
  call void @free(i8* %155) nounwind
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else4.i, %if.end.i787
  %error.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 7
  %156 = load i8** %error.i, align 8, !tbaa !0
  %tobool7.i = icmp eq i8* %156, null
  br i1 %tobool7.i, label %if.end11.i, label %if.else9.i

if.else9.i:                                       ; preds = %if.end6.i
  call void @free(i8* %156) nounwind
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else9.i, %if.end6.i
  %rderrmsg.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 4
  %157 = load i8** %rderrmsg.i, align 4, !tbaa !0
  %tobool12.i = icmp eq i8* %157, null
  br i1 %tobool12.i, label %if.end16.i, label %if.else14.i

if.else14.i:                                      ; preds = %if.end11.i
  call void @free(i8* %157) nounwind
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.end11.i
  %local_file.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 13
  %158 = load i8** %local_file.i, align 8, !tbaa !0
  %tobool17.i = icmp eq i8* %158, null
  br i1 %tobool17.i, label %if.end21.i, label %if.else19.i

if.else19.i:                                      ; preds = %if.end16.i
  call void @free(i8* %158) nounwind
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i, %if.else19.i
  %orig_file_name.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 16
  %159 = load i8** %orig_file_name.i, align 8, !tbaa !0
  %tobool22.i = icmp eq i8* %159, null
  br i1 %tobool22.i, label %if.end26.i, label %if.else24.i

if.else24.i:                                      ; preds = %if.end21.i
  call void @free(i8* %159) nounwind
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else24.i, %if.end21.i
  %message.i = getelementptr inbounds %struct.http_stat* %hstat, i32 0, i32 9
  %160 = load i8** %message.i, align 8, !tbaa !0
  %tobool27.i = icmp eq i8* %160, null
  br i1 %tobool27.i, label %free_hstat.exit, label %if.else29.i

if.else29.i:                                      ; preds = %if.end26.i
  call void @free(i8* %160) nounwind
  br label %free_hstat.exit

free_hstat.exit:                                  ; preds = %if.end26.i, %if.else29.i
  ret i32 %ret.4811
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare noalias i8* @xstrdup(i8*)

declare zeroext i1 @has_wildcards_p(i8*)

declare void @logputs(i32, i8*)

declare i8* @dcgettext(i8*, i8*, i32) nounwind

declare i8* @url_file_name(%struct.url*, i8*)

declare zeroext i1 @file_exists_p(i8*)

declare void @free(i8* nocapture) nounwind

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @sleep_between_retrievals(i32)

declare i8* @datetime_str(i32)

declare i32 @time(i32*) nounwind

declare void @logprintf(i32, i8*, ...)

declare i8* @url_string(%struct.url*, i32)

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

define internal fastcc i32 @gethttp(%struct.url* %u, %struct.http_stat* %hs, i32* %dt, %struct.url* %proxy, %struct.iri* %iri, i32 %count) nounwind {
entry:
  %b.i2974 = alloca i8*, align 4
  %e.i2975 = alloca i8*, align 4
  %b.i2966 = alloca i8*, align 4
  %e.i2967 = alloca i8*, align 4
  %b.i2958 = alloca i8*, align 4
  %e.i2959 = alloca i8*, align 4
  %b.i2950 = alloca i8*, align 4
  %e.i2951 = alloca i8*, align 4
  %hdr.addr.i = alloca i8*, align 4
  %name.i = alloca %struct.param_token, align 4
  %value.i = alloca %struct.param_token, align 4
  %b.i2900 = alloca i8*, align 4
  %e.i2901 = alloca i8*, align 4
  %au.addr.i.i = alloca i8*, align 4
  %cnonce.i.i = alloca [16 x i8], align 1
  %name.i.i = alloca %struct.param_token, align 4
  %value.i.i2869 = alloca %struct.param_token, align 4
  %ctx.i.i = alloca %struct.md5_ctx, align 4
  %hash.i.i = alloca [16 x i8], align 1
  %a1buf.i.i = alloca [33 x i8], align 1
  %a2buf.i.i = alloca [33 x i8], align 1
  %response_digest.i.i = alloca [33 x i8], align 1
  %b.i2828 = alloca i8*, align 4
  %e.i2829 = alloca i8*, align 4
  %b.i2801 = alloca i8*, align 4
  %e.i2802 = alloca i8*, align 4
  %b.i2785 = alloca i8*, align 4
  %e.i2786 = alloca i8*, align 4
  %b.i = alloca i8*, align 4
  %e.i = alloca i8*, align 4
  %ip.i = alloca %struct.ip_address, align 4
  %user = alloca i8*, align 4
  %passwd = alloca i8*, align 4
  %hdrval = alloca [256 x i8], align 1
  %message = alloca i8*, align 4
  %warc_timestamp_str = alloca [21 x i8], align 1
  %warc_request_uuid = alloca [48 x i8], align 1
  %scbeg = alloca i8*, align 4
  %scend = alloca i8*, align 4
  %wabeg = alloca i8*, align 4
  %waend = alloca i8*, align 4
  %st = alloca %struct.stat, align 4
  %0 = load i32* %dt, align 4, !tbaa !5
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  %1 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 46), align 4, !tbaa !0
  %cmp = icmp ne i8* %1, null
  %2 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 67), align 4, !tbaa !3, !range !4
  %tobool5 = icmp eq i8 %2, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 5), align 2, !tbaa !3, !range !4
  %tobool6 = icmp ne i8 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i1 [ true, %entry ], [ %tobool6, %lor.rhs ]
  %scheme = getelementptr inbounds %struct.url* %u, i32 0, i32 1
  %5 = load i32* %scheme, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %5, 1
  br i1 %cmp11, label %if.then, label %if.end21

if.then:                                          ; preds = %lor.end
  %call = call zeroext i1 @ssl_init() nounwind
  br i1 %call, label %if.end21, label %cont15

cont15:                                           ; preds = %if.then
  call void @scheme_disable(i32 1) nounwind
  %call18 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8]* @.str42, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call18) nounwind
  br label %return

if.end21:                                         ; preds = %if.then, %lor.end
  %len = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 0
  store i64 0, i64* %len, align 4, !tbaa !6
  %contlen25 = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 1
  store i64 -1, i64* %contlen25, align 4, !tbaa !6
  %res = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 3
  store i32 -1, i32* %res, align 4, !tbaa !5
  %rderrmsg = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 4
  %newloc = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 5
  %remote_time = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 6
  %error = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 7
  %message28 = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 9
  store i8* null, i8** %message28, align 4, !tbaa !0
  %6 = bitcast i8** %rderrmsg to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 4, i1 false)
  %call.i = call noalias i8* @xcalloc(i32 1, i32 20) nounwind
  %7 = bitcast i8* %call.i to %struct.request*
  %hcapacity.i = getelementptr inbounds i8* %call.i, i32 16
  %8 = bitcast i8* %hcapacity.i to i32*
  store i32 8, i32* %8, align 4, !tbaa !5
  %call6.i = call noalias i8* @xmalloc(i32 96) nounwind
  %9 = bitcast i8* %call6.i to %struct.request_header*
  %headers.i = getelementptr inbounds i8* %call.i, i32 8
  %10 = bitcast i8* %headers.i to %struct.request_header**
  store %struct.request_header* %9, %struct.request_header** %10, align 4, !tbaa !0
  br i1 %tobool, label %if.end36, label %if.else

if.else:                                          ; preds = %if.end21
  %11 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  %tobool32 = icmp ne i8* %11, null
  %12 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  %tobool33 = icmp ne i8* %12, null
  %or.cond = or i1 %tobool32, %tobool33
  %. = select i1 %or.cond, i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end21
  %meth.0 = phi i8* [ getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0), %if.end21 ], [ %., %if.else ]
  %tobool37 = icmp ne %struct.url* %proxy, null
  br i1 %tobool37, label %cont40, label %if.else45

cont40:                                           ; preds = %if.end36
  %13 = load i32* %scheme, align 4, !tbaa !9
  %cmp41 = icmp eq i32 %13, 1
  br i1 %cmp41, label %if.else45, label %if.then43

if.then43:                                        ; preds = %cont40
  %url = getelementptr inbounds %struct.url* %u, i32 0, i32 0
  %14 = load i8** %url, align 4, !tbaa !0
  %call44 = call noalias i8* @xstrdup(i8* %14) nounwind
  br label %if.end47

if.else45:                                        ; preds = %cont40, %if.end36
  %call46 = call i8* @url_full_path(%struct.url* %u) nounwind
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then43
  %meth_arg.0 = phi i8* [ %call44, %if.then43 ], [ %call46, %if.else45 ]
  %method.i = bitcast i8* %call.i to i8**
  store i8* %meth.0, i8** %method.i, align 4, !tbaa !0
  %arg1.i = getelementptr inbounds i8* %call.i, i32 4
  %15 = bitcast i8* %arg1.i to i8**
  store i8* %meth_arg.0, i8** %15, align 4, !tbaa !0
  %referer = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 12
  %16 = load i8** %referer, align 4, !tbaa !0
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([8 x i8]* @.str46, i32 0, i32 0), i8* %16, i32 0)
  %17 = load i32* %dt, align 4, !tbaa !5
  %and50 = and i32 %17, 8
  %tobool51 = icmp eq i32 %and50, 0
  br i1 %tobool51, label %if.end57, label %cont54

cont54:                                           ; preds = %if.end47
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([14 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str48, i32 0, i32 0), i32 0)
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([7 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str50, i32 0, i32 0), i32 0)
  br label %if.end57

if.end57:                                         ; preds = %if.end47, %cont54
  %restval = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 2
  %18 = load i64* %restval, align 4, !tbaa !6
  %tobool58 = icmp eq i64 %18, 0
  br i1 %tobool58, label %do.body, label %if.then59

if.then59:                                        ; preds = %if.end57
  %call61 = call i8* @number_to_static_string(i64 %18) nounwind
  %call62 = call i8* (i8*, ...)* @aprintf(i8* getelementptr inbounds ([10 x i8]* @.str52, i32 0, i32 0), i8* %call61) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i8* %call62, i32 2)
  br label %do.body

do.body:                                          ; preds = %if.end57, %if.then59
  %19 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 94), align 4, !tbaa !0
  %tobool66 = icmp eq i8* %19, null
  br i1 %tobool66, label %if.then67, label %if.else71

if.then67:                                        ; preds = %do.body
  %20 = load i8** @version_string, align 4, !tbaa !0
  %call68 = call i8* (i8*, ...)* @aprintf(i8* getelementptr inbounds ([13 x i8]* @.str54, i32 0, i32 0), i8* %20, i8* getelementptr inbounds ([10 x i8]* @.str55, i32 0, i32 0)) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([11 x i8]* @.str53, i32 0, i32 0), i8* %call68, i32 2)
  br label %cont79

if.else71:                                        ; preds = %do.body
  %21 = load i8* %19, align 1, !tbaa !1
  %tobool72 = icmp eq i8 %21, 0
  br i1 %tobool72, label %cont79, label %cont75

cont75:                                           ; preds = %if.else71
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([11 x i8]* @.str53, i32 0, i32 0), i8* %19, i32 0)
  br label %cont79

cont79:                                           ; preds = %cont75, %if.then67, %if.else71
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([7 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str57, i32 0, i32 0), i32 0)
  %user80 = getelementptr inbounds %struct.url* %u, i32 0, i32 10
  %22 = load i8** %user80, align 4, !tbaa !0
  store i8* %22, i8** %user, align 4, !tbaa !0
  %passwd81 = getelementptr inbounds %struct.url* %u, i32 0, i32 11
  %23 = load i8** %passwd81, align 4, !tbaa !0
  store i8* %23, i8** %passwd, align 4, !tbaa !0
  %host = getelementptr inbounds %struct.url* %u, i32 0, i32 2
  %24 = load i8** %host, align 4, !tbaa !0
  call void @search_netrc(i8* %24, i8** %user, i8** %passwd, i32 0) nounwind
  %25 = load i8** %user, align 4, !tbaa !0
  %tobool82 = icmp eq i8* %25, null
  br i1 %tobool82, label %cond.false, label %cond.end86

cond.false:                                       ; preds = %cont79
  %26 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 64), align 4, !tbaa !0
  %tobool83 = icmp ne i8* %26, null
  %27 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 55), align 4, !tbaa !0
  %cond = select i1 %tobool83, i8* %26, i8* %27
  br label %cond.end86

cond.end86:                                       ; preds = %cont79, %cond.false
  %28 = phi i8* [ %cond, %cond.false ], [ %25, %cont79 ]
  store i8* %28, i8** %user, align 4, !tbaa !0
  %29 = load i8** %passwd, align 4, !tbaa !0
  %tobool88 = icmp eq i8* %29, null
  br i1 %tobool88, label %cond.false90, label %cond.end96

cond.false90:                                     ; preds = %cond.end86
  %30 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 65), align 4, !tbaa !0
  %tobool91 = icmp ne i8* %30, null
  %31 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 56), align 4, !tbaa !0
  %cond95 = select i1 %tobool91, i8* %30, i8* %31
  br label %cond.end96

cond.end96:                                       ; preds = %cond.end86, %cond.false90
  %cond97 = phi i8* [ %cond95, %cond.false90 ], [ %29, %cond.end86 ]
  store i8* %cond97, i8** %passwd, align 4, !tbaa !0
  %tobool98 = icmp eq i8* %28, null
  %tobool100 = icmp eq i8* %cond97, null
  %or.cond2647 = or i1 %tobool98, %tobool100
  br i1 %or.cond2647, label %if.end111, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %cond.end96
  %32 = load i8** %user80, align 4, !tbaa !0
  %tobool103 = icmp ne i8* %32, null
  %33 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 133), align 1, !tbaa !3, !range !4
  %tobool105 = icmp eq i8 %33, 0
  %or.cond2648 = and i1 %tobool103, %tobool105
  br i1 %or.cond2648, label %if.end111, label %if.then107

if.then107:                                       ; preds = %land.lhs.true101
  %34 = load i8** %host, align 4, !tbaa !0
  br i1 %tobool105, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then107
  %35 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool2.i = icmp eq i8 %35, 0
  br i1 %tobool2.i, label %if.then29.i, label %if.then3.i, !prof !10

if.then3.i:                                       ; preds = %do.body.i
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([56 x i8]* @.str171, i32 0, i32 0)) nounwind
  br label %if.then29.i

if.else.i:                                        ; preds = %if.then107
  %36 = load %struct.hash_table** @basic_authed_hosts, align 4, !tbaa !0
  %tobool4.i = icmp eq %struct.hash_table* %36, null
  br i1 %tobool4.i, label %do.body17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %call.i2702 = call i32 @hash_table_contains(%struct.hash_table* %36, i8* %34) nounwind
  %tobool5.i = icmp eq i32 %call.i2702, 0
  br i1 %tobool5.i, label %do.body17.i, label %do.body7.i

do.body7.i:                                       ; preds = %land.lhs.true.i
  %37 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool11.i = icmp eq i8 %37, 0
  br i1 %tobool11.i, label %if.then29.i, label %if.then12.i, !prof !10

if.then12.i:                                      ; preds = %do.body7.i
  %call13.i = call i8* @quote(i8* %34) nounwind
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([33 x i8]* @.str172, i32 0, i32 0), i8* %call13.i) nounwind
  br label %if.then29.i

do.body17.i:                                      ; preds = %land.lhs.true.i, %if.else.i
  %38 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool21.i = icmp eq i8 %38, 0
  br i1 %tobool21.i, label %if.end111, label %if.then22.i, !prof !10

if.then22.i:                                      ; preds = %do.body17.i
  %call23.i = call i8* @quote(i8* %34) nounwind
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([51 x i8]* @.str173, i32 0, i32 0), i8* %call23.i) nounwind
  br label %if.end111

if.then29.i:                                      ; preds = %if.then12.i, %do.body7.i, %if.then3.i, %do.body.i
  %call30.i = call fastcc i8* @basic_authentication_encode(i8* %28, i8* %cond97) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([14 x i8]* @.str76, i32 0, i32 0), i8* %call30.i, i32 2) nounwind
  br label %if.end111

if.end111:                                        ; preds = %if.then29.i, %if.then22.i, %do.body17.i, %land.lhs.true101, %cond.end96
  %basic_auth_finished.0 = phi i1 [ false, %cond.end96 ], [ false, %land.lhs.true101 ], [ true, %if.then29.i ], [ false, %do.body17.i ], [ false, %if.then22.i ]
  %port = getelementptr inbounds %struct.url* %u, i32 0, i32 3
  %39 = load i32* %port, align 4, !tbaa !5
  %40 = load i32* %scheme, align 4, !tbaa !9
  %call113 = call i32 @scheme_default_port(i32 %40) nounwind
  %cmp114 = icmp ne i32 %39, %call113
  %conv115 = zext i1 %cmp114 to i32
  %41 = load i8** %host, align 4, !tbaa !0
  %call117 = call i8* @strchr(i8* %41, i32 58) nounwind
  %cmp118 = icmp ne i8* %call117, null
  %conv119 = zext i1 %cmp118 to i32
  %arrayidx120 = getelementptr inbounds [2 x [2 x i8*]]* @gethttp.hfmt, i32 0, i32 %conv115, i32 %conv119
  %42 = load i8** %arrayidx120, align 4, !tbaa !0
  %43 = load i32* %port, align 4, !tbaa !5
  %call123 = call i8* (i8*, ...)* @aprintf(i8* %42, i8* %41, i32 %43) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([5 x i8]* @.str62, i32 0, i32 0), i8* %call123, i32 2)
  br i1 %4, label %cont129, label %if.else130

cont129:                                          ; preds = %if.end111
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([11 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str64, i32 0, i32 0), i32 0)
  br label %if.end142

if.else130:                                       ; preds = %if.end111
  %cmp131 = icmp eq %struct.url* %proxy, null
  br i1 %cmp131, label %cont135, label %cont138

cont135:                                          ; preds = %if.else130
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([11 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str65, i32 0, i32 0), i32 0)
  br label %if.end142

cont138:                                          ; preds = %if.else130
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([11 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str64, i32 0, i32 0), i32 0)
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([17 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str65, i32 0, i32 0), i32 0)
  br label %if.end142

if.end142:                                        ; preds = %cont135, %cont138, %cont129
  %44 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  %tobool143 = icmp ne i8* %44, null
  %45 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  %tobool145 = icmp ne i8* %45, null
  %or.cond2041 = or i1 %tobool143, %tobool145
  br i1 %or.cond2041, label %cont148, label %retry_with_auth.preheader

cont148:                                          ; preds = %if.end142
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([13 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str68, i32 0, i32 0), i32 0)
  %46 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  %tobool149 = icmp eq i8* %46, null
  br i1 %tobool149, label %if.else153, label %if.then150

if.then150:                                       ; preds = %cont148
  %call151 = call i32 @strlen(i8* %46) nounwind readonly
  %conv152 = zext i32 %call151 to i64
  br label %if.end168

if.else153:                                       ; preds = %cont148
  %47 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  %call154 = call i64 @file_size(i8* %47) nounwind
  %cmp158 = icmp eq i64 %call154, -1
  br i1 %cmp158, label %cont162, label %if.end168

cont162:                                          ; preds = %if.else153
  %call163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8]* @.str69, i32 0, i32 0), i32 5) nounwind
  %48 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  %call164 = call i8* @quote(i8* %48) nounwind
  %call165 = call i32* @__errno_location() nounwind readnone
  %49 = load i32* %call165, align 4, !tbaa !5
  %call166 = call i8* @rpl_strerror(i32 %49) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call163, i8* %call164, i8* %call166) nounwind
  br label %if.end168

if.end168:                                        ; preds = %if.else153, %cont162, %if.then150
  %post_data_size.0 = phi i64 [ %conv152, %if.then150 ], [ 0, %cont162 ], [ %call154, %if.else153 ]
  %call169 = call i8* @number_to_static_string(i64 %post_data_size.0) nounwind
  %call170 = call noalias i8* @xstrdup(i8* %call169) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([15 x i8]* @.str70, i32 0, i32 0), i8* %call170, i32 2)
  br label %retry_with_auth.preheader

retry_with_auth.preheader:                        ; preds = %if.end142, %if.end168
  %post_data_size.1.ph = phi i64 [ %post_data_size.0, %if.end168 ], [ 0, %if.end142 ]
  %user202 = getelementptr inbounds %struct.url* %proxy, i32 0, i32 10
  %passwd203 = getelementptr inbounds %struct.url* %proxy, i32 0, i32 11
  %cmp536 = icmp eq i64 %post_data_size.1.ph, 0
  %cmp118.i = icmp sgt i64 %post_data_size.1.ph, 0
  %cond583 = select i1 %tobool37, i8* getelementptr inbounds ([6 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str88, i32 0, i32 0)
  %arraydecay = getelementptr inbounds [21 x i8]* %warc_timestamp_str, i32 0, i32 0
  %arraydecay590 = getelementptr inbounds [48 x i8]* %warc_request_uuid, i32 0, i32 0
  %url591 = getelementptr inbounds %struct.url* %u, i32 0, i32 0
  %arraydecay733 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 0
  %50 = bitcast i8** %b.i to i8*
  %51 = bitcast i8** %e.i to i8*
  %52 = bitcast i8** %b.i2785 to i8*
  %53 = bitcast i8** %e.i2786 to i8*
  %54 = bitcast i8** %b.i2801 to i8*
  %55 = bitcast i8** %e.i2802 to i8*
  %56 = bitcast i8** %b.i2828 to i8*
  %57 = bitcast i8** %e.i2829 to i8*
  %58 = bitcast i8** %au.addr.i.i to i8*
  %59 = getelementptr inbounds [16 x i8]* %cnonce.i.i, i32 0, i32 0
  %60 = bitcast %struct.param_token* %name.i.i to i8*
  %61 = bitcast %struct.param_token* %value.i.i2869 to i8*
  %62 = bitcast %struct.md5_ctx* %ctx.i.i to i8*
  %63 = getelementptr inbounds [16 x i8]* %hash.i.i, i32 0, i32 0
  %64 = getelementptr inbounds [33 x i8]* %a1buf.i.i, i32 0, i32 0
  %65 = getelementptr inbounds [33 x i8]* %a2buf.i.i, i32 0, i32 0
  %66 = getelementptr inbounds [33 x i8]* %response_digest.i.i, i32 0, i32 0
  %e.i.i = getelementptr inbounds %struct.param_token* %name.i.i, i32 0, i32 1
  %b.i.i = getelementptr inbounds %struct.param_token* %name.i.i, i32 0, i32 0
  %b14.i.i = getelementptr inbounds %struct.param_token* %value.i.i2869, i32 0, i32 0
  %e15.i.i = getelementptr inbounds %struct.param_token* %value.i.i2869, i32 0, i32 1
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str140 to i32)) nounwind
  %path839 = getelementptr inbounds %struct.url* %u, i32 0, i32 4
  %post_data_size.1.off = add i64 %post_data_size.1.ph, 2147483648
  %68 = icmp ult i64 %post_data_size.1.off, 4294967296
  %conv503 = trunc i64 %post_data_size.1.ph to i32
  %69 = icmp ult i64 %post_data_size.1.ph, 4294967296
  %70 = bitcast %struct.ip_address* %ip.i to i8*
  %hcount.i = getelementptr inbounds i8* %call.i, i32 12
  %71 = bitcast i8* %hcount.i to i32*
  br label %retry_with_auth

retry_with_auth:                                  ; preds = %retry_with_auth.preheader, %resp_free.exit2894
  %72 = phi i8 [ 1, %resp_free.exit2894 ], [ 0, %retry_with_auth.preheader ]
  %warc_payload_offset.0 = phi i64 [ %warc_payload_offset.23083, %resp_free.exit2894 ], [ -1, %retry_with_auth.preheader ]
  %warc_ip.0 = phi %struct.ip_address* [ %warc_ip.1, %resp_free.exit2894 ], [ null, %retry_with_auth.preheader ]
  %warc_tmp.0 = phi %struct._IO_FILE* [ %warc_tmp.1, %resp_free.exit2894 ], [ null, %retry_with_auth.preheader ]
  %using_ssl.0 = phi i8 [ %using_ssl.2, %resp_free.exit2894 ], [ 0, %retry_with_auth.preheader ]
  %ntlm_seen.0 = phi i8 [ %ntlm_seen.1, %resp_free.exit2894 ], [ 0, %retry_with_auth.preheader ]
  %sock.0 = phi i32 [ %sock.3, %resp_free.exit2894 ], [ -1, %retry_with_auth.preheader ]
  %conn.0 = phi %struct.url* [ %conn.3, %resp_free.exit2894 ], [ %u, %retry_with_auth.preheader ]
  %73 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 117), align 4, !tbaa !3, !range !4
  %tobool174 = icmp eq i8 %73, 0
  br i1 %tobool174, label %if.end186, label %cont180

cont180:                                          ; preds = %retry_with_auth
  %74 = load i32* %scheme, align 4, !tbaa !9
  %75 = load i8** %path839, align 4, !tbaa !0
  %76 = load i32* %port, align 4, !tbaa !5
  %77 = load i8** %host, align 4, !tbaa !0
  %78 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %cmp181 = icmp eq i32 %74, 1
  %call183 = call i8* @cookie_header(%struct.cookie_jar* %78, i8* %77, i32 %76, i8* %75, i1 zeroext %cmp181) nounwind
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([7 x i8]* @.str71, i32 0, i32 0), i8* %call183, i32 2)
  br label %if.end186

if.end186:                                        ; preds = %retry_with_auth, %cont180
  %79 = load i8*** getelementptr inbounds (%struct.options* @opt, i32 0, i32 66), align 4, !tbaa !0
  %tobool187 = icmp eq i8** %79, null
  br i1 %tobool187, label %if.end194, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end186
  %80 = load i8** %79, align 4, !tbaa !0
  %tobool1903118 = icmp eq i8* %80, null
  br i1 %tobool1903118, label %if.end194, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %81 = phi i8* [ %86, %for.cond.backedge ], [ %80, %for.cond.preheader ]
  %i.03119 = phi i32 [ %83, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  call fastcc void @request_set_user_header(%struct.request* %7, i8* %81)
  %82 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.03119, i32 1)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb192, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb192
  %85 = load i8*** getelementptr inbounds (%struct.options* @opt, i32 0, i32 66), align 4, !tbaa !0
  %arrayidx189 = getelementptr inbounds i8** %85, i32 %83
  %86 = load i8** %arrayidx189, align 4, !tbaa !0
  %tobool190 = icmp eq i8* %86, null
  br i1 %tobool190, label %if.end194, label %for.body

ioc_bb192:                                        ; preds = %for.body
  %87 = sext i32 %i.03119 to i64
  call void @__ioc_report_add_overflow(i32 1698, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %87, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.end194:                                        ; preds = %for.cond.preheader, %for.cond.backedge, %if.end186
  br i1 %tobool37, label %if.then196, label %if.end220

if.then196:                                       ; preds = %if.end194
  %88 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 76), align 4, !tbaa !0
  %tobool197 = icmp ne i8* %88, null
  %89 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 77), align 4, !tbaa !0
  %tobool199 = icmp ne i8* %89, null
  %or.cond2042 = and i1 %tobool197, %tobool199
  br i1 %or.cond2042, label %if.end204, label %if.else201

if.else201:                                       ; preds = %if.then196
  %90 = load i8** %user202, align 4, !tbaa !0
  %91 = load i8** %passwd203, align 4, !tbaa !0
  br label %if.end204

if.end204:                                        ; preds = %if.then196, %if.else201
  %proxy_passwd.0 = phi i8* [ %91, %if.else201 ], [ %89, %if.then196 ]
  %proxy_user.0 = phi i8* [ %90, %if.else201 ], [ %88, %if.then196 ]
  %tobool205 = icmp eq i8* %proxy_user.0, null
  %tobool207 = icmp eq i8* %proxy_passwd.0, null
  %or.cond2649 = or i1 %tobool205, %tobool207
  br i1 %or.cond2649, label %cont213, label %if.then208

if.then208:                                       ; preds = %if.end204
  %call209 = call fastcc i8* @basic_authentication_encode(i8* %proxy_user.0, i8* %proxy_passwd.0)
  br label %cont213

cont213:                                          ; preds = %if.then208, %if.end204
  %proxyauth.0 = phi i8* [ %call209, %if.then208 ], [ null, %if.end204 ]
  %92 = load i32* %scheme, align 4, !tbaa !9
  %cmp214 = icmp eq i32 %92, 1
  br i1 %cmp214, label %if.end220, label %cont218

cont218:                                          ; preds = %cont213
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([20 x i8]* @.str72, i32 0, i32 0), i8* %proxyauth.0, i32 2)
  br label %if.end220

if.end220:                                        ; preds = %cont213, %cont218, %if.end194
  %conn.1 = phi %struct.url* [ %proxy, %cont218 ], [ %proxy, %cont213 ], [ %conn.0, %if.end194 ]
  %proxyauth.1 = phi i8* [ %proxyauth.0, %cont218 ], [ %proxyauth.0, %cont213 ], [ null, %if.end194 ]
  br i1 %4, label %if.end283, label %cont226

cont226:                                          ; preds = %if.end220
  %93 = load i32* %scheme, align 4, !tbaa !9
  %cmp227 = icmp eq i32 %93, 1
  %u.conn.1 = select i1 %cmp227, %struct.url* %u, %struct.url* %conn.1
  %host231 = getelementptr inbounds %struct.url* %u.conn.1, i32 0, i32 2
  %scheme233 = getelementptr inbounds %struct.url* %u.conn.1, i32 0, i32 1
  %port232 = getelementptr inbounds %struct.url* %u.conn.1, i32 0, i32 3
  %94 = load i32* %scheme233, align 4, !tbaa !9
  %95 = load i32* %port232, align 4, !tbaa !5
  %96 = load i8** %host231, align 4, !tbaa !0
  %cmp236 = icmp eq i32 %94, 1
  call void @llvm.lifetime.start(i64 -1, i8* %70) nounwind
  %.b.i = load i1* @pconn_active.b, align 1
  br i1 %.b.i, label %if.end.i, label %if.end283

if.end.i:                                         ; preds = %cont226
  %conv.i = zext i1 %cmp236 to i32
  %97 = load i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 3), align 4, !tbaa !3, !range !4
  %conv3.i = zext i8 %97 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv3.i
  %98 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 2), align 4, !tbaa !5
  %cmp7.i = icmp eq i32 %98, %95
  %or.cond.i = and i1 %cmp.i, %cmp7.i
  br i1 %or.cond.i, label %if.end10.i, label %if.end283

if.end10.i:                                       ; preds = %if.end.i
  %99 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  %call.i2703 = call i32 @strcasecmp(i8* %96, i8* %99) nounwind readonly
  %cmp11.i = icmp eq i32 %call.i2703, 0
  br i1 %cmp11.i, label %if.end29.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  br i1 %cmp236, label %if.end283, label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i
  %100 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %call17.i = call zeroext i1 @socket_ip_address(i32 %100, %struct.ip_address* %ip.i, i32 1) nounwind
  br i1 %call17.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  %101 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i.i = icmp eq i8 %101, 0
  br i1 %tobool1.i.i, label %invalidate_persistent.exit.i, label %if.then.i.i, !prof !10

if.then.i.i:                                      ; preds = %if.then18.i
  %102 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %102) nounwind
  br label %invalidate_persistent.exit.i

invalidate_persistent.exit.i:                     ; preds = %if.then.i.i, %if.then18.i
  store i1 false, i1* @pconn_active.b, align 1
  %103 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  call void @fd_close(i32 %103) nounwind
  %104 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %104) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end283

if.end19.i:                                       ; preds = %if.end16.i
  %call20.i = call %struct.address_list* @lookup_host(i8* %96, i32 0) nounwind
  %tobool21.i2704 = icmp eq %struct.address_list* %call20.i, null
  br i1 %tobool21.i2704, label %if.then273, label %if.end23.i

if.end23.i:                                       ; preds = %if.end19.i
  %call24.i = call zeroext i1 @address_list_contains(%struct.address_list* %call20.i, %struct.ip_address* %ip.i) nounwind
  call void @address_list_release(%struct.address_list* %call20.i) nounwind
  br i1 %call24.i, label %if.end29.i, label %if.end283

if.end29.i:                                       ; preds = %if.end23.i, %if.end10.i
  %105 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %call30.i2706 = call zeroext i1 @test_socket_open(i32 %105) nounwind
  br i1 %call30.i2706, label %if.then239, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  %106 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i37.i = icmp eq i8 %106, 0
  br i1 %tobool1.i37.i, label %invalidate_persistent.exit39.i, label %if.then.i38.i, !prof !10

if.then.i38.i:                                    ; preds = %if.then31.i
  %107 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %107) nounwind
  br label %invalidate_persistent.exit39.i

invalidate_persistent.exit39.i:                   ; preds = %if.then.i38.i, %if.then31.i
  store i1 false, i1* @pconn_active.b, align 1
  %108 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  call void @fd_close(i32 %108) nounwind
  %109 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %109) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end283

if.then239:                                       ; preds = %if.end29.i
  call void @llvm.lifetime.end(i64 -1, i8* %70) nounwind
  %110 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %call240 = call i32 @socket_family(i32 %110, i32 1) nounwind
  %111 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %112 = load i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 3), align 4, !tbaa !3, !range !4
  %cmp243 = icmp eq i32 %call240, 10
  br i1 %cmp243, label %cont247, label %cont254

cont247:                                          ; preds = %if.then239
  %call248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8]* @.str73, i32 0, i32 0), i32 5) nounwind
  %113 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  %call251 = call i8* @quotearg_style(i32 5, i8* %113) nounwind
  %114 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 2), align 4, !tbaa !5
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call248, i8* %call251, i32 %114) nounwind
  br label %do.body260

cont254:                                          ; preds = %if.then239
  %call255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8]* @.str74, i32 0, i32 0), i32 5) nounwind
  %115 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  %call258 = call i8* @quotearg_style(i32 5, i8* %115) nounwind
  %116 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 2), align 4, !tbaa !5
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call255, i8* %call258, i32 %116) nounwind
  br label %do.body260

do.body260:                                       ; preds = %cont247, %cont254
  %117 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool263 = icmp eq i8 %117, 0
  br i1 %tobool263, label %do.end266, label %if.then264, !prof !10

if.then264:                                       ; preds = %do.body260
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([16 x i8]* @.str75, i32 0, i32 0), i32 %111) nounwind
  br label %do.end266

do.end266:                                        ; preds = %do.body260, %if.then264
  %118 = load i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 4), align 1, !tbaa !3, !range !4
  %tobool267 = icmp eq i8 %118, 0
  br i1 %tobool267, label %if.end283, label %if.then268

if.then268:                                       ; preds = %do.end266
  %119 = load i32* %71, align 4, !tbaa !5
  %cmp5.i = icmp sgt i32 %119, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.end283

for.body.lr.ph.i:                                 ; preds = %if.then268
  %120 = load %struct.request_header** %10, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %151, %for.cond.backedge.i ]
  %arrayidx.i = getelementptr inbounds %struct.request_header* %120, i32 %i.06.i
  %name1.i = getelementptr inbounds %struct.request_header* %arrayidx.i, i32 0, i32 0
  %121 = load i8** %name1.i, align 4, !tbaa !0
  %call.i2708 = call i32 @strcasecmp(i8* getelementptr inbounds ([14 x i8]* @.str76, i32 0, i32 0), i8* %121) nounwind readonly
  %cmp2.i = icmp eq i32 %call.i2708, 0
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %release_policy.i.i = getelementptr inbounds %struct.request_header* %120, i32 %i.06.i, i32 2
  %122 = load i32* %release_policy.i.i, align 4, !tbaa !11
  switch i32 %122, label %release_header.exit.i [
    i32 3, label %sw.bb2.i.i
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @free(i8* %121) nounwind
  br label %release_header.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  %value.i.i = getelementptr inbounds %struct.request_header* %120, i32 %i.06.i, i32 1
  %123 = load i8** %value.i.i, align 4, !tbaa !0
  call void @free(i8* %123) nounwind
  br label %release_header.exit.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @free(i8* %121) nounwind
  %value4.i.i = getelementptr inbounds %struct.request_header* %120, i32 %i.06.i, i32 1
  %124 = load i8** %value4.i.i, align 4, !tbaa !0
  call void @free(i8* %124) nounwind
  br label %release_header.exit.i

release_header.exit.i:                            ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then.i
  %125 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %119, i32 1) nounwind
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  br i1 %127, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %release_header.exit.i
  %128 = sext i32 %119 to i64
  call void @__ioc_report_sub_overflow(i32 264, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %128, i64 1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %release_header.exit.i
  %cmp4.i = icmp slt i32 %i.06.i, %126
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i2709

if.then5.i:                                       ; preds = %cont.i
  %129 = bitcast %struct.request_header* %arrayidx.i to i8*
  %arrayidx.sum.i = add i32 %i.06.i, 1
  %add.ptr.i = getelementptr inbounds %struct.request_header* %120, i32 %arrayidx.sum.i
  %130 = bitcast %struct.request_header* %add.ptr.i to i8*
  %131 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %119, i32 %i.06.i) nounwind
  %132 = extractvalue { i32, i1 } %131, 0
  %133 = extractvalue { i32, i1 } %131, 1
  br i1 %133, label %ioc_bb7.i, label %cont8.i

ioc_bb7.i:                                        ; preds = %if.then5.i
  %134 = sext i32 %i.06.i to i64
  %135 = sext i32 %119 to i64
  call void @__ioc_report_sub_overflow(i32 265, i32 46, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %135, i64 %134, i8 13) nounwind
  br label %cont8.i

cont8.i:                                          ; preds = %ioc_bb7.i, %if.then5.i
  %136 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %132, i32 1) nounwind
  %137 = extractvalue { i32, i1 } %136, 0
  %138 = extractvalue { i32, i1 } %136, 1
  br i1 %138, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %cont8.i
  %139 = sext i32 %132 to i64
  call void @__ioc_report_sub_overflow(i32 265, i32 50, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %139, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %cont8.i
  %140 = icmp sgt i32 %137, -1
  br i1 %140, label %cont12.i, label %ioc_bb11.i

ioc_bb11.i:                                       ; preds = %cont10.i
  %141 = sext i32 %137 to i64
  call void @__ioc_report_conversion(i32 265, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %141, i8 1) nounwind
  br label %cont12.i

cont12.i:                                         ; preds = %ioc_bb11.i, %cont10.i
  %142 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %137, i32 12) nounwind
  %143 = extractvalue { i32, i1 } %142, 0
  %144 = extractvalue { i32, i1 } %142, 1
  br i1 %144, label %ioc_bb13.i, label %cont14.i

ioc_bb13.i:                                       ; preds = %cont12.i
  %145 = zext i32 %137 to i64
  call void @__ioc_report_mul_overflow(i32 265, i32 55, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %145, i64 12, i8 5) nounwind
  br label %cont14.i

cont14.i:                                         ; preds = %ioc_bb13.i, %cont12.i
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %129, i8* %130, i32 %143, i32 4, i1 false) nounwind
  br label %if.end.i2709

if.end.i2709:                                     ; preds = %cont14.i, %cont.i
  %146 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %119, i32 -1) nounwind
  %147 = extractvalue { i32, i1 } %146, 0
  %148 = extractvalue { i32, i1 } %146, 1
  br i1 %148, label %ioc_bb16.i, label %cont17.i

ioc_bb16.i:                                       ; preds = %if.end.i2709
  %149 = sext i32 %119 to i64
  call void @__ioc_report_add_overflow(i32 266, i32 7, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %149, i64 -1, i8 13) nounwind
  br label %cont17.i

cont17.i:                                         ; preds = %ioc_bb16.i, %if.end.i2709
  store i32 %147, i32* %71, align 4, !tbaa !5
  br label %if.end283

for.inc.i:                                        ; preds = %for.body.i
  %150 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.06.i, i32 1) nounwind
  %151 = extractvalue { i32, i1 } %150, 0
  %152 = extractvalue { i32, i1 } %150, 1
  br i1 %152, label %ioc_bb19.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb19.i, %for.inc.i
  %cmp.i2710 = icmp slt i32 %151, %119
  br i1 %cmp.i2710, label %for.body.i, label %if.end283

ioc_bb19.i:                                       ; preds = %for.inc.i
  %153 = sext i32 %i.06.i to i64
  call void @__ioc_report_add_overflow(i32 259, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %153, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

if.then273:                                       ; preds = %if.end19.i
  call fastcc void @request_free(%struct.request* %7)
  %call276 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8]* @.str77, i32 0, i32 0), i32 5) nounwind
  %154 = load i8** @exec_name, align 4, !tbaa !0
  %155 = load i8** %host231, align 4, !tbaa !0
  %call278 = call i8* @quote(i8* %155) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call276, i8* %154, i8* %call278) nounwind
  br label %return

if.end283:                                        ; preds = %for.cond.backedge.i, %if.end23.i, %if.then13.i, %if.end.i, %cont226, %invalidate_persistent.exit.i, %invalidate_persistent.exit39.i, %cont17.i, %if.then268, %if.end220, %do.end266
  %keep_alive.0 = phi i8 [ 1, %do.end266 ], [ 0, %if.end220 ], [ 1, %if.then268 ], [ 1, %cont17.i ], [ 1, %invalidate_persistent.exit39.i ], [ 1, %invalidate_persistent.exit.i ], [ 1, %cont226 ], [ 1, %if.end.i ], [ 1, %if.then13.i ], [ 1, %if.end23.i ], [ 1, %for.cond.backedge.i ]
  %using_ssl.1 = phi i8 [ %112, %do.end266 ], [ %using_ssl.0, %if.end220 ], [ %112, %if.then268 ], [ %112, %cont17.i ], [ %using_ssl.0, %invalidate_persistent.exit39.i ], [ %using_ssl.0, %invalidate_persistent.exit.i ], [ %using_ssl.0, %cont226 ], [ %using_ssl.0, %if.end.i ], [ %using_ssl.0, %if.then13.i ], [ %using_ssl.0, %if.end23.i ], [ %112, %for.cond.backedge.i ]
  %sock.1 = phi i32 [ %111, %do.end266 ], [ %sock.0, %if.end220 ], [ %111, %if.then268 ], [ %111, %cont17.i ], [ %sock.0, %invalidate_persistent.exit39.i ], [ %sock.0, %invalidate_persistent.exit.i ], [ %sock.0, %cont226 ], [ %sock.0, %if.end.i ], [ %sock.0, %if.then13.i ], [ %sock.0, %if.end23.i ], [ %111, %for.cond.backedge.i ]
  %cmp284 = icmp slt i32 %sock.1, 0
  br i1 %cmp284, label %if.then286, label %if.end459

if.then286:                                       ; preds = %if.end283
  %host287 = getelementptr inbounds %struct.url* %conn.1, i32 0, i32 2
  %156 = load i8** %host287, align 4, !tbaa !0
  %port288 = getelementptr inbounds %struct.url* %conn.1, i32 0, i32 3
  %157 = load i32* %port288, align 4, !tbaa !5
  %call289 = call i32 @connect_to_host(i8* %156, i32 %157) nounwind
  %cmp292 = icmp eq i32 %call289, -100
  br i1 %cmp292, label %if.then294, label %if.else297

if.then294:                                       ; preds = %if.then286
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.else297:                                       ; preds = %if.then286
  %cmp298 = icmp slt i32 %call289, 0
  br i1 %cmp298, label %if.then300, label %if.end308

if.then300:                                       ; preds = %if.else297
  call fastcc void @request_free(%struct.request* %7)
  %call301 = call i32* @__errno_location() nounwind readnone
  %158 = load i32* %call301, align 4, !tbaa !5
  %call302 = call zeroext i1 @retryable_socket_connect_error(i32 %158) nounwind
  %cond304 = select i1 %call302, i32 3, i32 5
  br label %return

if.end308:                                        ; preds = %if.else297
  br i1 %tobool37, label %cont313, label %cont441

cont313:                                          ; preds = %if.end308
  %159 = load i32* %scheme, align 4, !tbaa !9
  %cmp314 = icmp eq i32 %159, 1
  br i1 %cmp314, label %if.then316, label %cont441

if.then316:                                       ; preds = %cont313
  %call.i2711 = call noalias i8* @xcalloc(i32 1, i32 20) nounwind
  %160 = bitcast i8* %call.i2711 to %struct.request*
  %hcapacity.i2712 = getelementptr inbounds i8* %call.i2711, i32 16
  %161 = bitcast i8* %hcapacity.i2712 to i32*
  store i32 8, i32* %161, align 4, !tbaa !5
  %call6.i2713 = call noalias i8* @xmalloc(i32 96) nounwind
  %162 = bitcast i8* %call6.i2713 to %struct.request_header*
  %headers.i2714 = getelementptr inbounds i8* %call.i2711, i32 8
  %163 = bitcast i8* %headers.i2714 to %struct.request_header**
  store %struct.request_header* %162, %struct.request_header** %163, align 4, !tbaa !0
  %164 = load i8** %host, align 4, !tbaa !0
  %165 = load i32* %port, align 4, !tbaa !5
  %call320 = call i8* (i8*, ...)* @aprintf(i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0), i8* %164, i32 %165) nounwind
  %method.i2715 = bitcast i8* %call.i2711 to i8**
  store i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8** %method.i2715, align 4, !tbaa !0
  %arg1.i2716 = getelementptr inbounds i8* %call.i2711, i32 4
  %166 = bitcast i8* %arg1.i2716 to i8**
  store i8* %call320, i8** %166, align 4, !tbaa !0
  %167 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 94), align 4, !tbaa !0
  %tobool322 = icmp eq i8* %167, null
  br i1 %tobool322, label %if.then323, label %if.else327

if.then323:                                       ; preds = %if.then316
  %168 = load i8** @version_string, align 4, !tbaa !0
  %call324 = call i8* (i8*, ...)* @aprintf(i8* getelementptr inbounds ([13 x i8]* @.str54, i32 0, i32 0), i8* %168, i8* getelementptr inbounds ([10 x i8]* @.str55, i32 0, i32 0)) nounwind
  call fastcc void @request_set_header(%struct.request* %160, i8* getelementptr inbounds ([11 x i8]* @.str53, i32 0, i32 0), i8* %call324, i32 2)
  br label %do.end334

if.else327:                                       ; preds = %if.then316
  %169 = load i8* %167, align 1, !tbaa !1
  %tobool328 = icmp eq i8 %169, 0
  br i1 %tobool328, label %do.end334, label %cont331

cont331:                                          ; preds = %if.else327
  call fastcc void @request_set_header(%struct.request* %160, i8* getelementptr inbounds ([11 x i8]* @.str53, i32 0, i32 0), i8* %167, i32 0)
  br label %do.end334

do.end334:                                        ; preds = %if.else327, %if.then323, %cont331
  %tobool335 = icmp eq i8* %proxyauth.1, null
  br i1 %tobool335, label %if.end339, label %cont338

cont338:                                          ; preds = %do.end334
  call fastcc void @request_set_header(%struct.request* %160, i8* getelementptr inbounds ([20 x i8]* @.str72, i32 0, i32 0), i8* %proxyauth.1, i32 2)
  br label %if.end339

if.end339:                                        ; preds = %do.end334, %cont338
  %call340 = call fastcc i32 @request_send(%struct.request* %160, i32 %call289, %struct._IO_FILE* null)
  call fastcc void @request_free(%struct.request* %160)
  %cmp341 = icmp slt i32 %call340, 0
  br i1 %cmp341, label %do.body344, label %if.end358

do.body344:                                       ; preds = %if.end339
  %.b2641 = load i1* @pconn_active.b, align 1
  %170 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp348 = icmp eq i32 %call289, %170
  %or.cond2650 = and i1 %.b2641, %cmp348
  br i1 %or.cond2650, label %if.then350, label %if.else351

if.then350:                                       ; preds = %do.body344
  %171 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i = icmp eq i8 %171, 0
  br i1 %tobool1.i, label %invalidate_persistent.exit, label %if.then.i2717, !prof !10

if.then.i2717:                                    ; preds = %if.then350
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %call289) nounwind
  %.pre = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit

invalidate_persistent.exit:                       ; preds = %if.then350, %if.then.i2717
  %172 = phi i32 [ %call289, %if.then350 ], [ %.pre, %if.then.i2717 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %172) nounwind
  %173 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %173) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont354

if.else351:                                       ; preds = %do.body344
  call void @fd_close(i32 %call289) nounwind
  br label %cont354

cont354:                                          ; preds = %invalidate_persistent.exit, %if.else351
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end358:                                        ; preds = %if.end339
  %call.i2718 = call i8* @fd_read_hunk(i32 %call289, i8* (i8*, i8*, i32)* @response_head_terminator, i32 512, i32 65536) nounwind
  %tobool360 = icmp eq i8* %call.i2718, null
  br i1 %tobool360, label %cont363, label %if.end380

cont363:                                          ; preds = %if.end358
  %call364 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8]* @.str79, i32 0, i32 0), i32 5) nounwind
  %call365 = call i8* @fd_errstr(i32 %call289) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call364, i8* %call365) nounwind
  %.b2640 = load i1* @pconn_active.b, align 1
  %174 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp370 = icmp eq i32 %call289, %174
  %or.cond2651 = and i1 %.b2640, %cmp370
  br i1 %or.cond2651, label %if.then372, label %if.else373

if.then372:                                       ; preds = %cont363
  %175 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2719 = icmp eq i8 %175, 0
  br i1 %tobool1.i2719, label %invalidate_persistent.exit2721, label %if.then.i2720, !prof !10

if.then.i2720:                                    ; preds = %if.then372
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %call289) nounwind
  %.pre3461 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2721

invalidate_persistent.exit2721:                   ; preds = %if.then372, %if.then.i2720
  %176 = phi i32 [ %call289, %if.then372 ], [ %.pre3461, %if.then.i2720 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %176) nounwind
  %177 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %177) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont376

if.else373:                                       ; preds = %cont363
  call void @fd_close(i32 %call289) nounwind
  br label %cont376

cont376:                                          ; preds = %invalidate_persistent.exit2721, %if.else373
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end380:                                        ; preds = %if.end358
  store i8* null, i8** %message, align 4, !tbaa !0
  %178 = load i8* %call.i2718, align 1, !tbaa !1
  %tobool381 = icmp eq i8 %178, 0
  br i1 %tobool381, label %if.then382, label %do.body384

if.then382:                                       ; preds = %if.end380
  call void @free(i8* %call.i2718) nounwind
  br label %cont417

do.body384:                                       ; preds = %if.end380
  %179 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool388 = icmp eq i8 %179, 0
  br i1 %tobool388, label %do.end391, label %if.then389, !prof !10

if.then389:                                       ; preds = %do.body384
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([28 x i8]* @.str80, i32 0, i32 0), i8* %call.i2718) nounwind
  br label %do.end391

do.end391:                                        ; preds = %do.body384, %if.then389
  %call392 = call fastcc %struct.response* @resp_new(i8* %call.i2718)
  %call393 = call fastcc i32 @resp_status(%struct.response* %call392, i8** %message)
  %cmp394 = icmp slt i32 %call393, 0
  br i1 %cmp394, label %if.then396, label %if.end410

if.then396:                                       ; preds = %do.end391
  %call397 = call i32 @time(i32* null) nounwind
  %call398 = call i8* @datetime_str(i32 %call397) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([4 x i8]* @.str81, i32 0, i32 0), i32 %call393) nounwind
  %call403 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8]* @.str16, i32 0, i32 0), i32 5) nounwind
  %call406 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8]* @.str82, i32 0, i32 0), i32 5) nounwind
  %call407 = call i8* @quotearg_style(i32 5, i8* %call406) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call403, i8* %call398, i32 %call393, i8* %call407) nounwind
  call void @free(i8* %call.i2718) nounwind
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end410:                                        ; preds = %do.end391
  %180 = load i8** %message, align 4, !tbaa !0
  %call411 = call noalias i8* @xstrdup(i8* %180) nounwind
  store i8* %call411, i8** %message28, align 4, !tbaa !0
  %headers.i2722 = getelementptr inbounds %struct.response* %call392, i32 0, i32 1
  %181 = load i8*** %headers.i2722, align 4, !tbaa !0
  %tobool.i2723 = icmp eq i8** %181, null
  br i1 %tobool.i2723, label %resp_free.exit, label %if.else.i2724

if.else.i2724:                                    ; preds = %if.end410
  %182 = bitcast i8** %181 to i8*
  call void @free(i8* %182) nounwind
  br label %resp_free.exit

resp_free.exit:                                   ; preds = %if.end410, %if.else.i2724
  %183 = bitcast %struct.response* %call392 to i8*
  call void @free(i8* %183) nounwind
  call void @free(i8* %call.i2718) nounwind
  %cmp413 = icmp eq i32 %call393, 200
  br i1 %cmp413, label %if.end433, label %cont417

cont417:                                          ; preds = %resp_free.exit, %if.then382
  %call418 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8]* @.str83, i32 0, i32 0), i32 5) nounwind
  %184 = load i8** %message, align 4, !tbaa !0
  %tobool419 = icmp eq i8* %184, null
  br i1 %tobool419, label %cond.end425, label %cont422

cont422:                                          ; preds = %cont417
  %call423 = call i8* @quotearg_style(i32 5, i8* %184) nounwind
  br label %cond.end425

cond.end425:                                      ; preds = %cont417, %cont422
  %cond426 = phi i8* [ %call423, %cont422 ], [ getelementptr inbounds ([2 x i8]* @.str84, i32 0, i32 0), %cont417 ]
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call418, i8* %cond426) nounwind
  %185 = load i8** %message, align 4, !tbaa !0
  %tobool427 = icmp eq i8* %185, null
  br i1 %tobool427, label %if.end430, label %if.else429

if.else429:                                       ; preds = %cond.end425
  call void @free(i8* %185) nounwind
  br label %if.end430

if.end430:                                        ; preds = %cond.end425, %if.else429
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end433:                                        ; preds = %resp_free.exit
  %186 = load i8** %message, align 4, !tbaa !0
  %tobool434 = icmp eq i8* %186, null
  br i1 %tobool434, label %cont441, label %if.else436

if.else436:                                       ; preds = %if.end433
  call void @free(i8* %186) nounwind
  br label %cont441

cont441:                                          ; preds = %if.end308, %cont313, %if.end433, %if.else436
  %conn.2 = phi %struct.url* [ %conn.1, %cont313 ], [ %conn.1, %if.end308 ], [ %u, %if.end433 ], [ %u, %if.else436 ]
  %scheme439 = getelementptr inbounds %struct.url* %conn.2, i32 0, i32 1
  %187 = load i32* %scheme439, align 4, !tbaa !9
  %cmp442 = icmp eq i32 %187, 1
  br i1 %cmp442, label %if.then444, label %if.end459

if.then444:                                       ; preds = %cont441
  %188 = load i8** %host, align 4, !tbaa !0
  %call446 = call zeroext i1 @ssl_connect_wget(i32 %call289, i8* %188) nounwind
  br i1 %call446, label %if.else450, label %if.then447

if.then447:                                       ; preds = %if.then444
  call void @fd_close(i32 %call289) nounwind
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.else450:                                       ; preds = %if.then444
  %189 = load i8** %host, align 4, !tbaa !0
  %call452 = call zeroext i1 @ssl_check_certificate(i32 %call289, i8* %189) nounwind
  br i1 %call452, label %if.end459, label %if.then453

if.then453:                                       ; preds = %if.else450
  call void @fd_close(i32 %call289) nounwind
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end459:                                        ; preds = %if.else450, %cont441, %if.end283
  %using_ssl.2 = phi i8 [ %using_ssl.1, %cont441 ], [ %using_ssl.1, %if.end283 ], [ 1, %if.else450 ]
  %sock.2 = phi i32 [ %call289, %cont441 ], [ %sock.1, %if.end283 ], [ %call289, %if.else450 ]
  %conn.3 = phi %struct.url* [ %conn.2, %cont441 ], [ %conn.1, %if.end283 ], [ %conn.2, %if.else450 ]
  br i1 %cmp, label %if.then461, label %if.end485

if.then461:                                       ; preds = %if.end459
  %call462 = call %struct._IO_FILE* @warc_tempfile() nounwind
  %cmp463 = icmp eq %struct._IO_FILE* %call462, null
  br i1 %cmp463, label %do.body466, label %if.end480

do.body466:                                       ; preds = %if.then461
  %.b2639 = load i1* @pconn_active.b, align 1
  %190 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp470 = icmp eq i32 %sock.2, %190
  %or.cond2652 = and i1 %.b2639, %cmp470
  br i1 %or.cond2652, label %if.then472, label %if.else473

if.then472:                                       ; preds = %do.body466
  %191 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2726 = icmp eq i8 %191, 0
  br i1 %tobool1.i2726, label %invalidate_persistent.exit2728, label %if.then.i2727, !prof !10

if.then.i2727:                                    ; preds = %if.then472
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3462 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2728

invalidate_persistent.exit2728:                   ; preds = %if.then472, %if.then.i2727
  %192 = phi i32 [ %sock.2, %if.then472 ], [ %.pre3462, %if.then.i2727 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %192) nounwind
  %193 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %193) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont476

if.else473:                                       ; preds = %do.body466
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont476

cont476:                                          ; preds = %invalidate_persistent.exit2728, %if.else473
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.end480:                                        ; preds = %if.then461
  br i1 %tobool37, label %if.end485, label %if.then482

if.then482:                                       ; preds = %if.end480
  %194 = alloca %struct.ip_address, align 1
  %call483 = call zeroext i1 @socket_ip_address(i32 %sock.2, %struct.ip_address* %194, i32 1) nounwind
  br label %if.end485

if.end485:                                        ; preds = %if.end480, %if.then482, %if.end459
  %warc_ip.1 = phi %struct.ip_address* [ %warc_ip.0, %if.end480 ], [ %194, %if.then482 ], [ %warc_ip.0, %if.end459 ]
  %warc_tmp.1 = phi %struct._IO_FILE* [ %call462, %if.end480 ], [ %call462, %if.then482 ], [ %warc_tmp.0, %if.end459 ]
  %call486 = call fastcc i32 @request_send(%struct.request* %7, i32 %sock.2, %struct._IO_FILE* %warc_tmp.1)
  %cmp487 = icmp sgt i32 %call486, -1
  br i1 %cmp487, label %if.then489, label %do.body551

if.then489:                                       ; preds = %if.end485
  %195 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  %tobool490 = icmp eq i8* %195, null
  br i1 %tobool490, label %if.else533, label %do.body492

do.body492:                                       ; preds = %if.then489
  %196 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool496 = icmp eq i8 %196, 0
  br i1 %tobool496, label %do.end499, label %if.then497, !prof !10

if.then497:                                       ; preds = %do.body492
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([17 x i8]* @.str85, i32 0, i32 0), i8* %195) nounwind
  %.pre3488 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  br label %do.end499

do.end499:                                        ; preds = %do.body492, %if.then497
  %197 = phi i8* [ %195, %do.body492 ], [ %.pre3488, %if.then497 ]
  br i1 %68, label %cont502, label %ioc_bb501

ioc_bb501:                                        ; preds = %do.end499
  call void @__ioc_report_conversion(i32 1918, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %post_data_size.1.ph, i8 1) nounwind
  br label %cont502

cont502:                                          ; preds = %ioc_bb501, %do.end499
  %call507 = call i32 @fd_write(i32 %sock.2, i8* %197, i32 %conv503, double -1.000000e+00) nounwind
  %cmp508 = icmp slt i32 %call507, 0
  %cmp511 = icmp eq %struct._IO_FILE* %warc_tmp.1, null
  %or.cond2653 = or i1 %cmp508, %cmp511
  br i1 %or.cond2653, label %if.end547, label %if.then513

if.then513:                                       ; preds = %cont502
  %call514 = call i64 @ftello64(%struct._IO_FILE* %warc_tmp.1) nounwind
  %198 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 121), align 4, !tbaa !0
  br i1 %69, label %cont520, label %ioc_bb519

ioc_bb519:                                        ; preds = %if.then513
  call void @__ioc_report_conversion(i32 1923, i32 56, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %post_data_size.1.ph, i8 1) nounwind
  br label %cont520

cont520:                                          ; preds = %ioc_bb519, %if.then513
  %call522 = call i32 @fwrite(i8* %198, i32 1, i32 %conv503, %struct._IO_FILE* %warc_tmp.1) nounwind
  %199 = icmp sgt i32 %call522, -1
  br i1 %199, label %cont524, label %ioc_bb523

ioc_bb523:                                        ; preds = %cont520
  %200 = zext i32 %call522 to i64
  call void @__ioc_report_conversion(i32 1923, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %200, i8 0) nounwind
  br label %cont524

cont524:                                          ; preds = %ioc_bb523, %cont520
  %conv525 = sext i32 %call522 to i64
  %cmp526 = icmp eq i64 %conv525, %post_data_size.1.ph
  %call507. = select i1 %cmp526, i32 %call507, i32 -2
  br label %if.end547

if.else533:                                       ; preds = %if.then489
  %201 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  %tobool534 = icmp eq i8* %201, null
  %or.cond2654 = or i1 %tobool534, %cmp536
  br i1 %or.cond2654, label %if.end547, label %if.then538

if.then538:                                       ; preds = %if.else533
  %cmp539 = icmp eq %struct._IO_FILE* %warc_tmp.1, null
  br i1 %cmp539, label %if.end543, label %if.then541

if.then541:                                       ; preds = %if.then538
  %call542 = call i64 @ftello64(%struct._IO_FILE* %warc_tmp.1) nounwind
  %.pre3463 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 122), align 4, !tbaa !0
  br label %if.end543

if.end543:                                        ; preds = %if.then538, %if.then541
  %202 = phi i8* [ %.pre3463, %if.then541 ], [ %201, %if.then538 ]
  %warc_payload_offset.1 = phi i64 [ %call542, %if.then541 ], [ %warc_payload_offset.0, %if.then538 ]
  %203 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2729 = icmp eq i8 %203, 0
  br i1 %tobool1.i2729, label %do.end.i, label %if.then.i2730, !prof !10

if.then.i2730:                                    ; preds = %if.end543
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([27 x i8]* @.str159, i32 0, i32 0), i8* %202) nounwind
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i2730, %if.end543
  %call.i2731 = call %struct._IO_FILE* @fopen64(i8* %202, i8* getelementptr inbounds ([3 x i8]* @.str160, i32 0, i32 0)) nounwind
  %tobool2.i2732 = icmp eq %struct._IO_FILE* %call.i2731, null
  br i1 %tobool2.i2732, label %do.body551, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %do.end.i
  %call5116.i = call i32 @feof(%struct._IO_FILE* %call.i2731) nounwind
  %tobool6117.i = icmp eq i32 %call5116.i, 0
  %or.cond119.i = and i1 %tobool6117.i, %cmp118.i
  br i1 %or.cond119.i, label %cont9.i, label %while.end.i

cont9.i:                                          ; preds = %while.cond.preheader.i, %while.cond.backedge.i
  %written.0120.i = phi i64 [ %215, %while.cond.backedge.i ], [ 0, %while.cond.preheader.i ]
  %call10.i = call i32 @fread(i8* getelementptr inbounds ([8192 x i8]* @post_file.chunk, i32 0, i32 0), i32 1, i32 8192, %struct._IO_FILE* %call.i2731) nounwind
  %204 = icmp sgt i32 %call10.i, -1
  br i1 %204, label %cont12.i2733, label %cont12.thread.i

cont12.thread.i:                                  ; preds = %cont9.i
  %205 = zext i32 %call10.i to i64
  call void @__ioc_report_conversion(i32 440, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %205, i8 0) nounwind
  br label %if.end16.i2734

cont12.i2733:                                     ; preds = %cont9.i
  %cmp13.i = icmp eq i32 %call10.i, 0
  br i1 %cmp13.i, label %while.end.thread.i, label %if.end16.i2734

while.end.thread.i:                               ; preds = %cont12.i2733
  %call62130.i = call i32 @fclose(%struct._IO_FILE* %call.i2731) nounwind
  br label %if.then65.i

if.end16.i2734:                                   ; preds = %cont12.i2733, %cont12.thread.i
  %206 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %post_data_size.1.ph, i64 %written.0120.i) nounwind
  %207 = extractvalue { i64, i1 } %206, 0
  %208 = extractvalue { i64, i1 } %206, 1
  br i1 %208, label %cont18.i, label %cont18.thread.i

cont18.thread.i:                                  ; preds = %if.end16.i2734
  %conv19107.i = sext i32 %call10.i to i64
  %cmp20108.i = icmp sgt i64 %207, %conv19107.i
  %conv19.mux111.i = select i1 %cmp20108.i, i64 %conv19107.i, i64 %207
  br label %cond.end.i

cont18.i:                                         ; preds = %if.end16.i2734
  call void @__ioc_report_sub_overflow(i32 443, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %post_data_size.1.ph, i64 %written.0120.i, i8 14) nounwind
  %conv19.i = sext i32 %call10.i to i64
  %cmp20.i = icmp sgt i64 %207, %conv19.i
  %conv19.mux.i = select i1 %cmp20.i, i64 %conv19.i, i64 %207
  br i1 %cmp20.i, label %cond.end.i, label %ioc_bb23.i

ioc_bb23.i:                                       ; preds = %cont18.i
  call void @__ioc_report_sub_overflow(i32 443, i32 73, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %post_data_size.1.ph, i64 %written.0120.i, i8 14) nounwind
  br label %cond.end.i

cond.end.i:                                       ; preds = %ioc_bb23.i, %cont18.i, %cont18.thread.i
  %cond.i = phi i64 [ %207, %ioc_bb23.i ], [ %conv19.mux.i, %cont18.i ], [ %conv19.mux111.i, %cont18.thread.i ]
  %cond.off.i = add i64 %cond.i, 2147483648
  %209 = icmp ult i64 %cond.off.i, 4294967296
  br i1 %209, label %cont26.i, label %ioc_bb25.i

ioc_bb25.i:                                       ; preds = %cond.end.i
  call void @__ioc_report_conversion(i32 443, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %cond.i, i8 1) nounwind
  br label %cont26.i

cont26.i:                                         ; preds = %ioc_bb25.i, %cond.end.i
  %conv27.i = trunc i64 %cond.i to i32
  %call31.i = call i32 @fd_write(i32 %sock.2, i8* getelementptr inbounds ([8192 x i8]* @post_file.chunk, i32 0, i32 0), i32 %conv27.i, double -1.000000e+00) nounwind
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then34.i, label %if.end38.i

if.then34.i:                                      ; preds = %cont26.i
  %call35.i = call i32 @fclose(%struct._IO_FILE* %call.i2731) nounwind
  br label %do.body551

if.end38.i:                                       ; preds = %cont26.i
  br i1 %cmp539, label %if.end58.i, label %cont43.i

cont43.i:                                         ; preds = %if.end38.i
  %210 = icmp sgt i32 %conv27.i, -1
  br i1 %210, label %cont46.i, label %ioc_bb45.i

ioc_bb45.i:                                       ; preds = %cont43.i
  %211 = sext i32 %conv27.i to i64
  call void @__ioc_report_conversion(i32 451, i32 46, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %211, i8 1) nounwind
  br label %cont46.i

cont46.i:                                         ; preds = %ioc_bb45.i, %cont43.i
  %call47.i = call i32 @fwrite(i8* getelementptr inbounds ([8192 x i8]* @post_file.chunk, i32 0, i32 0), i32 1, i32 %conv27.i, %struct._IO_FILE* %warc_tmp.1) nounwind
  %212 = icmp sgt i32 %call47.i, -1
  br i1 %212, label %cont50.i, label %ioc_bb49.i

ioc_bb49.i:                                       ; preds = %cont46.i
  %213 = zext i32 %call47.i to i64
  call void @__ioc_report_conversion(i32 451, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %213, i8 0) nounwind
  br label %cont50.i

cont50.i:                                         ; preds = %ioc_bb49.i, %cont46.i
  %cmp51.i = icmp eq i32 %call47.i, %conv27.i
  br i1 %cmp51.i, label %if.end58.i, label %if.then53.i

if.then53.i:                                      ; preds = %cont50.i
  %call54.i = call i32 @fclose(%struct._IO_FILE* %call.i2731) nounwind
  br label %do.body551

if.end58.i:                                       ; preds = %cont50.i, %if.end38.i
  %conv59.i = sext i32 %conv27.i to i64
  %214 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %written.0120.i, i64 %conv59.i) nounwind
  %215 = extractvalue { i64, i1 } %214, 0
  %216 = extractvalue { i64, i1 } %214, 1
  br i1 %216, label %ioc_bb60.i, label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %ioc_bb60.i, %if.end58.i
  %call5.i = call i32 @feof(%struct._IO_FILE* %call.i2731) nounwind
  %tobool6.i = icmp eq i32 %call5.i, 0
  %cmp.i2735 = icmp slt i64 %215, %post_data_size.1.ph
  %or.cond.i2736 = and i1 %tobool6.i, %cmp.i2735
  br i1 %or.cond.i2736, label %cont9.i, label %while.end.i

ioc_bb60.i:                                       ; preds = %if.end58.i
  call void @__ioc_report_add_overflow(i32 457, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %written.0120.i, i64 %conv59.i, i8 14) nounwind
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %while.cond.backedge.i, %while.cond.preheader.i
  %cmp.lcssa.i = phi i1 [ %cmp118.i, %while.cond.preheader.i ], [ %cmp.i2735, %while.cond.backedge.i ]
  %written.0.lcssa.i = phi i64 [ 0, %while.cond.preheader.i ], [ %215, %while.cond.backedge.i ]
  %call62.i = call i32 @fclose(%struct._IO_FILE* %call.i2731) nounwind
  br i1 %cmp.lcssa.i, label %if.then65.i, label %if.end69.i

if.then65.i:                                      ; preds = %while.end.i, %while.end.thread.i
  %call66.i = call i32* @__errno_location() nounwind readnone
  store i32 22, i32* %call66.i, align 4, !tbaa !5
  br label %do.body551

if.end69.i:                                       ; preds = %while.end.i
  %cmp70.i = icmp eq i64 %written.0.lcssa.i, %post_data_size.1.ph
  br i1 %cmp70.i, label %do.body77.i, label %cont75.i

cont75.i:                                         ; preds = %if.end69.i
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str161, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 509, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.post_file, i32 0, i32 0)) noreturn nounwind
  unreachable

do.body77.i:                                      ; preds = %if.end69.i
  %217 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool81.i = icmp eq i8 %217, 0
  br i1 %tobool81.i, label %cont580, label %if.then82.i, !prof !10

if.then82.i:                                      ; preds = %do.body77.i
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([7 x i8]* @.str162, i32 0, i32 0)) nounwind
  br label %cont580

if.end547:                                        ; preds = %cont524, %cont502, %if.else533
  %warc_payload_offset.2 = phi i64 [ %warc_payload_offset.0, %cont502 ], [ %warc_payload_offset.0, %if.else533 ], [ %call514, %cont524 ]
  %write_error.0 = phi i32 [ %call507, %cont502 ], [ %call486, %if.else533 ], [ %call507., %cont524 ]
  %cmp548 = icmp slt i32 %write_error.0, 0
  br i1 %cmp548, label %do.body551, label %cont580

do.body551:                                       ; preds = %do.end.i, %if.end485, %if.end547, %if.then53.i, %if.then34.i, %if.then65.i
  %write_error.03079 = phi i32 [ -1, %if.then65.i ], [ -1, %if.then34.i ], [ -2, %if.then53.i ], [ -1, %do.end.i ], [ %call486, %if.end485 ], [ %write_error.0, %if.end547 ]
  %.b2638 = load i1* @pconn_active.b, align 1
  %218 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp555 = icmp eq i32 %sock.2, %218
  %or.cond2655 = and i1 %.b2638, %cmp555
  br i1 %or.cond2655, label %if.then557, label %if.else558

if.then557:                                       ; preds = %do.body551
  %219 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2738 = icmp eq i8 %219, 0
  br i1 %tobool1.i2738, label %invalidate_persistent.exit2741, label %if.then.i2739, !prof !10

if.then.i2739:                                    ; preds = %if.then557
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3489 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2741

invalidate_persistent.exit2741:                   ; preds = %if.then557, %if.then.i2739
  %220 = phi i32 [ %sock.2, %if.then557 ], [ %.pre3489, %if.then.i2739 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %220) nounwind
  %221 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %221) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont561

if.else558:                                       ; preds = %do.body551
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont561

cont561:                                          ; preds = %invalidate_persistent.exit2741, %if.else558
  call fastcc void @request_free(%struct.request* %7)
  %cmp563 = icmp eq %struct._IO_FILE* %warc_tmp.1, null
  br i1 %cmp563, label %cont569, label %if.then565

if.then565:                                       ; preds = %cont561
  %call566 = call i32 @fclose(%struct._IO_FILE* %warc_tmp.1) nounwind
  br label %cont569

cont569:                                          ; preds = %if.then565, %cont561
  %cmp570 = icmp eq i32 %write_error.03079, -2
  %.2699 = select i1 %cmp570, i32 60, i32 52
  ret i32 %.2699

cont580:                                          ; preds = %if.then82.i, %do.body77.i, %if.end547
  %warc_payload_offset.23083 = phi i64 [ %warc_payload_offset.2, %if.end547 ], [ %warc_payload_offset.1, %do.body77.i ], [ %warc_payload_offset.1, %if.then82.i ]
  %call581 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8]* @.str86, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call581, i8* %cond583) nounwind
  %222 = load i32* %dt, align 4, !tbaa !5
  %and587 = and i32 %222, -3
  store i32 %and587, i32* %dt, align 4, !tbaa !5
  br i1 %cmp, label %if.then589, label %read_header.preheader

read_header.preheader:                            ; preds = %if.then589, %cont580
  %call.i27463133 = call i8* @fd_read_hunk(i32 %sock.2, i8* (i8*, i8*, i32)* @response_head_terminator, i32 512, i32 65536) nounwind
  %tobool6153134 = icmp eq i8* %call.i27463133, null
  br i1 %tobool6153134, label %if.then616, label %do.body658

if.then589:                                       ; preds = %cont580
  call void @warc_timestamp(i8* %arraydecay) nounwind
  call void @warc_uuid_str(i8* %arraydecay590) nounwind
  %223 = load i8** %url591, align 4, !tbaa !0
  %call594 = call zeroext i1 @warc_write_request_record(i8* %223, i8* %arraydecay, i8* %arraydecay590, %struct.ip_address* %warc_ip.1, %struct._IO_FILE* %warc_tmp.1, i64 %warc_payload_offset.23083) nounwind
  br i1 %call594, label %read_header.preheader, label %do.body598

do.body598:                                       ; preds = %if.then589
  %.b2637 = load i1* @pconn_active.b, align 1
  %224 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp602 = icmp eq i32 %sock.2, %224
  %or.cond2656 = and i1 %.b2637, %cmp602
  br i1 %or.cond2656, label %if.then604, label %if.else605

if.then604:                                       ; preds = %do.body598
  %225 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2742 = icmp eq i8 %225, 0
  br i1 %tobool1.i2742, label %invalidate_persistent.exit2745, label %if.then.i2743, !prof !10

if.then.i2743:                                    ; preds = %if.then604
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3464 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2745

invalidate_persistent.exit2745:                   ; preds = %if.then604, %if.then.i2743
  %226 = phi i32 [ %sock.2, %if.then604 ], [ %.pre3464, %if.then.i2743 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %226) nounwind
  %227 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %227) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont608

if.else605:                                       ; preds = %do.body598
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont608

cont608:                                          ; preds = %invalidate_persistent.exit2745, %if.else605
  call fastcc void @request_free(%struct.request* %7)
  br label %return

if.then616:                                       ; preds = %read_header.preheader, %resp_free.exit2768
  %call617 = call i32* @__errno_location() nounwind readnone
  %228 = load i32* %call617, align 4, !tbaa !5
  %cmp618 = icmp eq i32 %228, 0
  br i1 %cmp618, label %cont622, label %cont640

cont622:                                          ; preds = %if.then616
  %call623 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8]* @.str89, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 1, i8* %call623) nounwind
  %.b2636 = load i1* @pconn_active.b, align 1
  %229 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp628 = icmp eq i32 %sock.2, %229
  %or.cond2657 = and i1 %.b2636, %cmp628
  br i1 %or.cond2657, label %if.then630, label %if.else631

if.then630:                                       ; preds = %cont622
  %230 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2747 = icmp eq i8 %230, 0
  br i1 %tobool1.i2747, label %invalidate_persistent.exit2750, label %if.then.i2748, !prof !10

if.then.i2748:                                    ; preds = %if.then630
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3465 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2750

invalidate_persistent.exit2750:                   ; preds = %if.then630, %if.then.i2748
  %231 = phi i32 [ %sock.2, %if.then630 ], [ %.pre3465, %if.then.i2748 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %231) nounwind
  %232 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %232) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont634

if.else631:                                       ; preds = %cont622
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont634

cont634:                                          ; preds = %invalidate_persistent.exit2750, %if.else631
  call fastcc void @request_free(%struct.request* %7)
  br label %return

cont640:                                          ; preds = %if.then616
  %call641 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8]* @.str90, i32 0, i32 0), i32 5) nounwind
  %call642 = call i8* @fd_errstr(i32 %sock.2) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call641, i8* %call642) nounwind
  %.b2635 = load i1* @pconn_active.b, align 1
  %233 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp647 = icmp eq i32 %sock.2, %233
  %or.cond2658 = and i1 %.b2635, %cmp647
  br i1 %or.cond2658, label %if.then649, label %if.else650

if.then649:                                       ; preds = %cont640
  %234 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2751 = icmp eq i8 %234, 0
  br i1 %tobool1.i2751, label %invalidate_persistent.exit2754, label %if.then.i2752, !prof !10

if.then.i2752:                                    ; preds = %if.then649
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3466 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2754

invalidate_persistent.exit2754:                   ; preds = %if.then649, %if.then.i2752
  %235 = phi i32 [ %sock.2, %if.then649 ], [ %.pre3466, %if.then.i2752 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %235) nounwind
  %236 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %236) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont653

if.else650:                                       ; preds = %cont640
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont653

cont653:                                          ; preds = %invalidate_persistent.exit2754, %if.else650
  call fastcc void @request_free(%struct.request* %7)
  br label %return

do.body658:                                       ; preds = %read_header.preheader, %resp_free.exit2768
  %call.i27463135 = phi i8* [ %call.i2746, %resp_free.exit2768 ], [ %call.i27463133, %read_header.preheader ]
  %237 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool662 = icmp eq i8 %237, 0
  br i1 %tobool662, label %do.end665, label %if.then663, !prof !10

if.then663:                                       ; preds = %do.body658
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([44 x i8]* @.str91, i32 0, i32 0), i8* %call.i27463135) nounwind
  br label %do.end665

do.end665:                                        ; preds = %do.body658, %if.then663
  %call666 = call fastcc %struct.response* @resp_new(i8* %call.i27463135)
  store i8* null, i8** %message, align 4, !tbaa !0
  %call667 = call fastcc i32 @resp_status(%struct.response* %call666, i8** %message)
  %cmp668 = icmp slt i32 %call667, 0
  br i1 %cmp668, label %if.then670, label %if.end697

if.then670:                                       ; preds = %do.end665
  %call672 = call i32 @time(i32* null) nounwind
  %call673 = call i8* @datetime_str(i32 %call672) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([4 x i8]* @.str81, i32 0, i32 0), i32 %call667) nounwind
  %call678 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8]* @.str16, i32 0, i32 0), i32 5) nounwind
  %call681 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8]* @.str82, i32 0, i32 0), i32 5) nounwind
  %call682 = call i8* @quotearg_style(i32 5, i8* %call681) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call678, i8* %call673, i32 %call667, i8* %call682) nounwind
  %.b2634 = load i1* @pconn_active.b, align 1
  %238 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp687 = icmp eq i32 %sock.2, %238
  %or.cond2659 = and i1 %.b2634, %cmp687
  br i1 %or.cond2659, label %if.then689, label %if.else690

if.then689:                                       ; preds = %if.then670
  %239 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2755 = icmp eq i8 %239, 0
  br i1 %tobool1.i2755, label %invalidate_persistent.exit2758, label %if.then.i2756, !prof !10

if.then.i2756:                                    ; preds = %if.then689
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3467 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2758

invalidate_persistent.exit2758:                   ; preds = %if.then689, %if.then.i2756
  %240 = phi i32 [ %sock.2, %if.then689 ], [ %.pre3467, %if.then.i2756 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %240) nounwind
  %241 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %241) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont693

if.else690:                                       ; preds = %if.then670
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont693

cont693:                                          ; preds = %invalidate_persistent.exit2758, %if.else690
  %headers.i2759 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %242 = load i8*** %headers.i2759, align 4, !tbaa !0
  %tobool.i2760 = icmp eq i8** %242, null
  br i1 %tobool.i2760, label %resp_free.exit2763, label %if.else.i2761

if.else.i2761:                                    ; preds = %cont693
  %243 = bitcast i8** %242 to i8*
  call void @free(i8* %243) nounwind
  br label %resp_free.exit2763

resp_free.exit2763:                               ; preds = %cont693, %if.else.i2761
  %244 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %244) nounwind
  call fastcc void @request_free(%struct.request* %7)
  call void @free(i8* %call.i27463135) nounwind
  br label %return

if.end697:                                        ; preds = %do.end665
  %call667.off = add i32 %call667, -100
  %245 = icmp ult i32 %call667.off, 100
  br i1 %245, label %do.body704, label %if.end712

do.body704:                                       ; preds = %if.end697
  %246 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool708 = icmp eq i8 %246, 0
  br i1 %tobool708, label %do.end711, label %if.then709, !prof !10

if.then709:                                       ; preds = %do.body704
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([19 x i8]* @.str92, i32 0, i32 0)) nounwind
  br label %do.end711

do.end711:                                        ; preds = %do.body704, %if.then709
  %headers.i2764 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %247 = load i8*** %headers.i2764, align 4, !tbaa !0
  %tobool.i2765 = icmp eq i8** %247, null
  br i1 %tobool.i2765, label %resp_free.exit2768, label %if.else.i2766

if.else.i2766:                                    ; preds = %do.end711
  %248 = bitcast i8** %247 to i8*
  call void @free(i8* %248) nounwind
  br label %resp_free.exit2768

resp_free.exit2768:                               ; preds = %do.end711, %if.else.i2766
  %249 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %249) nounwind
  call void @free(i8* %call.i27463135) nounwind
  %call.i2746 = call i8* @fd_read_hunk(i32 %sock.2, i8* (i8*, i8*, i32)* @response_head_terminator, i32 512, i32 65536) nounwind
  %tobool615 = icmp eq i8* %call.i2746, null
  br i1 %tobool615, label %if.then616, label %do.body658

if.end712:                                        ; preds = %if.end697
  %250 = load i8** %message, align 4, !tbaa !0
  %call713 = call noalias i8* @xstrdup(i8* %250) nounwind
  store i8* %call713, i8** %message28, align 4, !tbaa !0
  %251 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 87), align 4, !tbaa !3, !range !4
  %tobool715 = icmp eq i8 %251, 0
  br i1 %tobool715, label %cont718, label %cont729

cont718:                                          ; preds = %if.end712
  %252 = load i8** %message, align 4, !tbaa !0
  %tobool719 = icmp eq i8* %252, null
  br i1 %tobool719, label %cond.end725, label %cont722

cont722:                                          ; preds = %cont718
  %call723 = call i8* @quotearg_style(i32 5, i8* %252) nounwind
  br label %cond.end725

cond.end725:                                      ; preds = %cont718, %cont722
  %cond726 = phi i8* [ %call723, %cont722 ], [ getelementptr inbounds ([1 x i8]* @.str27, i32 0, i32 0), %cont718 ]
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([8 x i8]* @.str93, i32 0, i32 0), i32 %call667, i8* %cond726) nounwind
  br label %if.end730

cont729:                                          ; preds = %if.end712
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %headers.i2769 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %253 = load i8*** %headers.i2769, align 4, !tbaa !0
  %tobool.i2770 = icmp eq i8** %253, null
  br i1 %tobool.i2770, label %if.end730, label %for.cond.i

for.cond.i:                                       ; preds = %ioc_bb28.i, %if.end27.i, %cont729
  %i.0.i = phi i32 [ 0, %cont729 ], [ %255, %if.end27.i ], [ %255, %ioc_bb28.i ]
  %254 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0.i, i32 1) nounwind
  %255 = extractvalue { i32, i1 } %254, 0
  %256 = extractvalue { i32, i1 } %254, 1
  %257 = sext i32 %i.0.i to i64
  br i1 %256, label %ioc_bb.i2771, label %cont.i2774

ioc_bb.i2771:                                     ; preds = %for.cond.i
  call void @__ioc_report_add_overflow(i32 777, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %257, i64 1, i8 13) nounwind
  br label %cont.i2774

cont.i2774:                                       ; preds = %for.cond.i, %ioc_bb.i2771
  %258 = load i8*** %headers.i2769, align 4, !tbaa !0
  %arrayidx.i2772 = getelementptr inbounds i8** %258, i32 %255
  %259 = load i8** %arrayidx.i2772, align 4, !tbaa !0
  %tobool2.i2773 = icmp eq i8* %259, null
  br i1 %tobool2.i2773, label %if.end730, label %for.body.i2775

for.body.i2775:                                   ; preds = %cont.i2774
  %arrayidx4.i = getelementptr inbounds i8** %258, i32 %i.0.i
  %260 = load i8** %arrayidx4.i, align 4, !tbaa !0
  br i1 %256, label %ioc_bb5.i, label %cont6.i

ioc_bb5.i:                                        ; preds = %for.body.i2775
  call void @__ioc_report_add_overflow(i32 779, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %257, i64 1, i8 13) nounwind
  %.pre.i2776 = load i8*** %headers.i2769, align 4, !tbaa !0
  %arrayidx8.phi.trans.insert.i = getelementptr inbounds i8** %.pre.i2776, i32 %255
  %.pre1.i = load i8** %arrayidx8.phi.trans.insert.i, align 4, !tbaa !0
  br label %cont6.i

cont6.i:                                          ; preds = %ioc_bb5.i, %for.body.i2775
  %261 = phi i8* [ %259, %for.body.i2775 ], [ %.pre1.i, %ioc_bb5.i ]
  %cmp.i2777 = icmp ult i8* %260, %261
  br i1 %cmp.i2777, label %cont10.i2778, label %if.end15.i

cont10.i2778:                                     ; preds = %cont6.i
  %arrayidx11.i = getelementptr inbounds i8* %261, i32 -1
  %262 = load i8* %arrayidx11.i, align 1, !tbaa !1
  %cmp12.i = icmp eq i8 %262, 10
  %incdec.ptr..i = select i1 %cmp12.i, i8* %arrayidx11.i, i8* %261
  br label %if.end15.i

if.end15.i:                                       ; preds = %cont10.i2778, %cont6.i
  %e.0.i = phi i8* [ %261, %cont6.i ], [ %incdec.ptr..i, %cont10.i2778 ]
  %cmp16.i = icmp ult i8* %260, %e.0.i
  br i1 %cmp16.i, label %cont20.i, label %if.end27.i

cont20.i:                                         ; preds = %if.end15.i
  %arrayidx21.i = getelementptr inbounds i8* %e.0.i, i32 -1
  %263 = load i8* %arrayidx21.i, align 1, !tbaa !1
  %cmp23.i = icmp eq i8 %263, 13
  %incdec.ptr26.e.0.i = select i1 %cmp23.i, i8* %arrayidx21.i, i8* %e.0.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %cont20.i, %if.end15.i
  %e.1.i = phi i8* [ %e.0.i, %if.end15.i ], [ %incdec.ptr26.e.0.i, %cont20.i ]
  call fastcc void @print_response_line(i8* %260, i8* %e.1.i) nounwind
  br i1 %256, label %ioc_bb28.i, label %for.cond.i

ioc_bb28.i:                                       ; preds = %if.end27.i
  call void @__ioc_report_add_overflow(i32 777, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %257, i64 1, i8 13) nounwind
  br label %for.cond.i

if.end730:                                        ; preds = %cont.i2774, %cont729, %cond.end725
  %264 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 5), align 2, !tbaa !3, !range !4
  %tobool731 = icmp eq i8 %264, 0
  br i1 %tobool731, label %land.lhs.true732, label %if.end795

land.lhs.true732:                                 ; preds = %if.end730
  call void @llvm.lifetime.start(i64 -1, i8* %50) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %51) nounwind
  %call.i.i = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([15 x i8]* @.str70, i32 0, i32 0), i32 0, i8** %b.i, i8** %e.i) nounwind
  %cmp.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.end795, label %if.then1.i

if.then1.i:                                       ; preds = %land.lhs.true732
  %265 = load i8** %e.i, align 4, !tbaa !0
  %266 = load i8** %b.i, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %265 to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %266 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i2779 = icmp sgt i32 %sub.ptr.sub.i, 255
  br i1 %cmp.i2779, label %if.then738, label %cond.end.i2780

cond.end.i2780:                                   ; preds = %if.then1.i
  %267 = icmp sgt i32 %sub.ptr.sub.i, -1
  br i1 %267, label %if.then738, label %ioc_bb7.i2781

ioc_bb7.i2781:                                    ; preds = %cond.end.i2780
  %268 = sext i32 %sub.ptr.sub.i to i64
  call void @__ioc_report_conversion(i32 673, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %268, i8 1) nounwind
  br label %if.then738

if.then738:                                       ; preds = %if.then1.i, %cond.end.i2780, %ioc_bb7.i2781
  %cond1.i = phi i32 [ %sub.ptr.sub.i, %ioc_bb7.i2781 ], [ %sub.ptr.sub.i, %cond.end.i2780 ], [ 255, %if.then1.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay733, i8* %266, i32 %cond1.i, i32 1, i1 false) nounwind
  %arrayidx.i2782 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 %cond1.i
  store i8 0, i8* %arrayidx.i2782, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 -1, i8* %50) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %51) nounwind
  %call739 = call i32* @__errno_location() nounwind readnone
  store i32 0, i32* %call739, align 4, !tbaa !5
  %call741 = call i64 @strtoll(i8* nocapture %arraydecay733, i8** null, i32 10) nounwind
  call void @__ioc_report_shl_strict(i32 2049, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 -1, i64 63, i8 14) nounwind
  %cmp754 = icmp eq i64 %call741, 9223372036854775807
  br i1 %cmp754, label %land.lhs.true756, label %if.else764

land.lhs.true756:                                 ; preds = %if.then738
  %269 = load i32* %call739, align 4, !tbaa !5
  %cmp758 = icmp eq i32 %269, 34
  %brmerge3106 = or i1 %cmp758, %4
  %.mux3107 = select i1 %cmp758, i64 -1, i64 9223372036854775807
  br i1 %brmerge3106, label %if.end795, label %if.then782

if.else764:                                       ; preds = %if.then738
  %cmp765.old = icmp slt i64 %call741, 0
  %brmerge3105 = or i1 %cmp765.old, %4
  %.mux = select i1 %cmp765.old, i64 -1, i64 %call741
  br i1 %brmerge3105, label %if.end795, label %if.then782

if.then782:                                       ; preds = %land.lhs.true756, %if.else764
  call void @llvm.lifetime.start(i64 -1, i8* %52) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %53) nounwind
  %call.i.i2787 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([11 x i8]* @.str63, i32 0, i32 0), i32 0, i8** %b.i2785, i8** %e.i2786) nounwind
  %cmp.i.i2788 = icmp eq i32 %call.i.i2787, -1
  br i1 %cmp.i.i2788, label %if.end795, label %if.then1.i2793

if.then1.i2793:                                   ; preds = %if.then782
  %270 = load i8** %e.i2786, align 4, !tbaa !0
  %271 = load i8** %b.i2785, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i2789 = ptrtoint i8* %270 to i32
  %sub.ptr.rhs.cast.i2790 = ptrtoint i8* %271 to i32
  %sub.ptr.sub.i2791 = sub i32 %sub.ptr.lhs.cast.i2789, %sub.ptr.rhs.cast.i2790
  %cmp.i2792 = icmp sgt i32 %sub.ptr.sub.i2791, 255
  br i1 %cmp.i2792, label %if.then787, label %cond.end.i2794

cond.end.i2794:                                   ; preds = %if.then1.i2793
  %272 = icmp sgt i32 %sub.ptr.sub.i2791, -1
  br i1 %272, label %if.then787, label %ioc_bb7.i2795

ioc_bb7.i2795:                                    ; preds = %cond.end.i2794
  %273 = sext i32 %sub.ptr.sub.i2791 to i64
  call void @__ioc_report_conversion(i32 673, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %273, i8 1) nounwind
  br label %if.then787

if.then787:                                       ; preds = %if.then1.i2793, %cond.end.i2794, %ioc_bb7.i2795
  %cond1.i2796 = phi i32 [ %sub.ptr.sub.i2791, %ioc_bb7.i2795 ], [ %sub.ptr.sub.i2791, %cond.end.i2794 ], [ 255, %if.then1.i2793 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay733, i8* %271, i32 %cond1.i2796, i32 1, i1 false) nounwind
  %arrayidx.i2797 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 %cond1.i2796
  store i8 0, i8* %arrayidx.i2797, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 -1, i8* %52) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %53) nounwind
  %call789 = call i32 @strcasecmp(i8* %arraydecay733, i8* getelementptr inbounds ([6 x i8]* @.str64, i32 0, i32 0)) nounwind readonly
  %cmp790 = icmp eq i32 %call789, 0
  %.keep_alive.0 = select i1 %cmp790, i8 0, i8 %keep_alive.0
  br label %if.end795

if.end795:                                        ; preds = %land.lhs.true756, %if.else764, %if.then782, %land.lhs.true732, %if.end730, %if.then787
  %contlen.03086 = phi i64 [ %call741, %if.then787 ], [ -1, %if.end730 ], [ %.mux3107, %land.lhs.true756 ], [ %.mux, %if.else764 ], [ -1, %land.lhs.true732 ], [ %call741, %if.then782 ]
  %keep_alive.1 = phi i8 [ %.keep_alive.0, %if.then787 ], [ %keep_alive.0, %if.end730 ], [ %keep_alive.0, %land.lhs.true756 ], [ %keep_alive.0, %if.else764 ], [ %keep_alive.0, %land.lhs.true732 ], [ %keep_alive.0, %if.then782 ]
  call void @llvm.lifetime.start(i64 -1, i8* %54) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %55) nounwind
  %call.i.i2803 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([18 x i8]* @.str95, i32 0, i32 0), i32 0, i8** %b.i2801, i8** %e.i2802) nounwind
  %cmp.i.i2804 = icmp eq i32 %call.i.i2803, -1
  br i1 %cmp.i.i2804, label %if.end807, label %if.then1.i2809

if.then1.i2809:                                   ; preds = %if.end795
  %274 = load i8** %e.i2802, align 4, !tbaa !0
  %275 = load i8** %b.i2801, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i2805 = ptrtoint i8* %274 to i32
  %sub.ptr.rhs.cast.i2806 = ptrtoint i8* %275 to i32
  %sub.ptr.sub.i2807 = sub i32 %sub.ptr.lhs.cast.i2805, %sub.ptr.rhs.cast.i2806
  %cmp.i2808 = icmp sgt i32 %sub.ptr.sub.i2807, 255
  br i1 %cmp.i2808, label %land.lhs.true801, label %cond.end.i2810

cond.end.i2810:                                   ; preds = %if.then1.i2809
  %276 = icmp sgt i32 %sub.ptr.sub.i2807, -1
  br i1 %276, label %land.lhs.true801, label %ioc_bb7.i2811

ioc_bb7.i2811:                                    ; preds = %cond.end.i2810
  %277 = sext i32 %sub.ptr.sub.i2807 to i64
  call void @__ioc_report_conversion(i32 673, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %277, i8 1) nounwind
  br label %land.lhs.true801

land.lhs.true801:                                 ; preds = %if.then1.i2809, %cond.end.i2810, %ioc_bb7.i2811
  %cond1.i2812 = phi i32 [ %sub.ptr.sub.i2807, %ioc_bb7.i2811 ], [ %sub.ptr.sub.i2807, %cond.end.i2810 ], [ 255, %if.then1.i2809 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay733, i8* %275, i32 %cond1.i2812, i32 1, i1 false) nounwind
  %arrayidx.i2813 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 %cond1.i2812
  store i8 0, i8* %arrayidx.i2813, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 -1, i8* %54) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %55) nounwind
  %call803 = call i32 @strcasecmp(i8* %arraydecay733, i8* getelementptr inbounds ([8 x i8]* @.str96, i32 0, i32 0)) nounwind readonly
  %cmp804 = icmp eq i32 %call803, 0
  br label %if.end807

if.end807:                                        ; preds = %if.end795, %land.lhs.true801
  %chunked_transfer_encoding.0 = phi i1 [ %cmp804, %land.lhs.true801 ], [ false, %if.end795 ]
  %278 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 117), align 4, !tbaa !3, !range !4
  %tobool808 = icmp eq i8 %278, 0
  br i1 %tobool808, label %if.end844, label %if.then809

if.then809:                                       ; preds = %if.end807
  %279 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %cmp810 = icmp eq %struct.cookie_jar* %279, null
  br i1 %cmp810, label %cont815, label %for.cond817.preheader

for.cond817.preheader:                            ; preds = %if.then809
  %call8183136 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0), i32 0, i8** %scbeg, i8** %scend)
  %cmp8213137 = icmp eq i32 %call8183136, -1
  br i1 %cmp8213137, label %if.end844, label %do.body824

cont815:                                          ; preds = %if.then809
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 2301, i8* getelementptr inbounds ([89 x i8]* @__PRETTY_FUNCTION__.gethttp, i32 0, i32 0)) noreturn nounwind
  unreachable

do.body824:                                       ; preds = %for.cond817.preheader, %for.cond817.backedge
  %call8183138 = phi i32 [ %call818, %for.cond817.backedge ], [ %call8183136, %for.cond817.preheader ]
  %280 = load i8** %scbeg, align 4, !tbaa !0
  %281 = load i8** %scend, align 4, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %281 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %280 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %282 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %283 = extractvalue { i32, i1 } %282, 0
  %284 = extractvalue { i32, i1 } %282, 1
  %285 = sext i32 %sub.ptr.sub to i64
  br i1 %284, label %ioc_bb825, label %cont826

ioc_bb825:                                        ; preds = %do.body824
  call void @__ioc_report_add_overflow(i32 2088, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %285, i64 1, i8 13) nounwind
  br label %cont826

cont826:                                          ; preds = %do.body824, %ioc_bb825
  %286 = icmp sgt i32 %283, -1
  br i1 %286, label %cont829, label %ioc_bb828

ioc_bb828:                                        ; preds = %cont826
  %287 = sext i32 %283 to i64
  call void @__ioc_report_conversion(i32 2088, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %287, i8 1) nounwind
  br label %cont829

cont829:                                          ; preds = %ioc_bb828, %cont826
  %288 = alloca i8, i32 %283, align 1
  %289 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %289, label %cont832, label %ioc_bb831

ioc_bb831:                                        ; preds = %cont829
  call void @__ioc_report_conversion(i32 2089, i32 37, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %285, i8 1) nounwind
  br label %cont832

cont832:                                          ; preds = %ioc_bb831, %cont829
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %288, i8* %280, i32 %sub.ptr.sub, i32 1, i1 false)
  %arrayidx835 = getelementptr inbounds i8* %288, i32 %sub.ptr.sub
  store i8 0, i8* %arrayidx835, align 1, !tbaa !1
  %290 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %291 = load i8** %host, align 4, !tbaa !0
  %292 = load i32* %port, align 4, !tbaa !5
  %293 = load i8** %path839, align 4, !tbaa !0
  call void @cookie_handle_set_cookie(%struct.cookie_jar* %290, i8* %291, i32 %292, i8* %293, i8* %288) nounwind
  %294 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call8183138, i32 1)
  %295 = extractvalue { i32, i1 } %294, 0
  %296 = extractvalue { i32, i1 } %294, 1
  br i1 %296, label %ioc_bb841, label %for.cond817.backedge

for.cond817.backedge:                             ; preds = %cont832, %ioc_bb841
  %call818 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0), i32 %295, i8** %scbeg, i8** %scend)
  %cmp821 = icmp eq i32 %call818, -1
  br i1 %cmp821, label %if.end844, label %do.body824

ioc_bb841:                                        ; preds = %cont832
  %297 = sext i32 %call8183138 to i64
  call void @__ioc_report_add_overflow(i32 2082, i32 96, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %297, i64 1, i8 13) nounwind
  br label %for.cond817.backedge

if.end844:                                        ; preds = %for.cond817.preheader, %for.cond817.backedge, %if.end807
  %298 = and i8 %keep_alive.1, 1
  %tobool845 = icmp ne i8 %298, 0
  br i1 %tobool845, label %if.then846, label %if.end850

if.then846:                                       ; preds = %if.end844
  %host847 = getelementptr inbounds %struct.url* %conn.3, i32 0, i32 2
  %299 = load i8** %host847, align 4, !tbaa !0
  %port848 = getelementptr inbounds %struct.url* %conn.3, i32 0, i32 3
  %300 = load i32* %port848, align 4, !tbaa !5
  %301 = and i8 %using_ssl.2, 1
  %.b.i2817 = load i1* @pconn_active.b, align 1
  br i1 %.b.i2817, label %if.then.i2819, label %if.end2.i

if.then.i2819:                                    ; preds = %if.then846
  %302 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp.i2818 = icmp eq i32 %302, %sock.2
  br i1 %cmp.i2818, label %if.end850, label %if.else.i2821

if.else.i2821:                                    ; preds = %if.then.i2819
  %303 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i.i2820 = icmp eq i8 %303, 0
  br i1 %tobool1.i.i2820, label %invalidate_persistent.exit.i2824, label %if.then.i.i2823, !prof !10

if.then.i.i2823:                                  ; preds = %if.else.i2821
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %302) nounwind
  %.pre.i2822 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit.i2824

invalidate_persistent.exit.i2824:                 ; preds = %if.then.i.i2823, %if.else.i2821
  %304 = phi i32 [ %302, %if.else.i2821 ], [ %.pre.i2822, %if.then.i.i2823 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %304) nounwind
  %305 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %305) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end2.i

if.end2.i:                                        ; preds = %invalidate_persistent.exit.i2824, %if.then846
  store i1 true, i1* @pconn_active.b, align 1
  store i32 %sock.2, i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %call.i2825 = call noalias i8* @xstrdup(i8* %299) nounwind
  store i8* %call.i2825, i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  store i32 %300, i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 2), align 4, !tbaa !5
  store i8 %301, i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 3), align 4, !tbaa !3
  store i8 0, i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 4), align 1, !tbaa !3
  %306 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool6.i2826 = icmp eq i8 %306, 0
  br i1 %tobool6.i2826, label %if.end850, label %if.then7.i, !prof !10

if.then7.i:                                       ; preds = %if.end2.i
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([44 x i8]* @.str157, i32 0, i32 0), i32 %sock.2) nounwind
  br label %if.end850

if.end850:                                        ; preds = %if.then7.i, %if.end2.i, %if.then.i2819, %if.end844
  %cmp851 = icmp eq i32 %call667, 401
  br i1 %cmp851, label %if.then853, label %if.else1145

if.then853:                                       ; preds = %if.end850
  br i1 %cmp, label %if.then855, label %if.else910

if.then855:                                       ; preds = %if.then853
  call void @llvm.lifetime.start(i64 -1, i8* %56) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %57) nounwind
  %call.i.i2830 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([13 x i8]* @.str67, i32 0, i32 0), i32 0, i8** %b.i2828, i8** %e.i2829) nounwind
  %cmp.i.i2831 = icmp eq i32 %call.i.i2830, -1
  br i1 %cmp.i.i2831, label %resp_header_strdup.exit, label %if.end.i2832

if.end.i2832:                                     ; preds = %if.then855
  %307 = load i8** %b.i2828, align 4, !tbaa !0
  %308 = load i8** %e.i2829, align 4, !tbaa !0
  %call1.i = call i8* @strdupdelim(i8* %307, i8* %308) nounwind
  br label %resp_header_strdup.exit

resp_header_strdup.exit:                          ; preds = %if.then855, %if.end.i2832
  %retval.0.i2833 = phi i8* [ %call1.i, %if.end.i2832 ], [ null, %if.then855 ]
  call void @llvm.lifetime.end(i64 -1, i8* %56) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %57) nounwind
  %309 = load i8** %url591, align 4, !tbaa !0
  %call862 = call fastcc i32 @read_response_body(%struct.http_stat* %hs, i32 %sock.2, %struct._IO_FILE* null, i64 %contlen.03086, i64 0, i1 zeroext %chunked_transfer_encoding.0, i8* %309, i8* %arraydecay, i8* %arraydecay590, %struct.ip_address* %warc_ip.1, i8* %retval.0.i2833, i32 401, i8* %call.i27463135)
  %tobool863 = icmp eq i8* %retval.0.i2833, null
  br i1 %tobool863, label %if.end866, label %if.else865

if.else865:                                       ; preds = %resp_header_strdup.exit
  call void @free(i8* %retval.0.i2833) nounwind
  br label %if.end866

if.end866:                                        ; preds = %resp_header_strdup.exit, %if.else865
  %cmp867 = icmp eq i32 %call862, 39
  br i1 %cmp867, label %lor.lhs.false869, label %do.body874

lor.lhs.false869:                                 ; preds = %if.end866
  %310 = load i32* %res, align 4, !tbaa !5
  %cmp871 = icmp slt i32 %310, 0
  br i1 %cmp871, label %do.body874, label %do.body894

do.body874:                                       ; preds = %if.end866, %lor.lhs.false869
  %call862.lcssa = phi i32 [ %call862, %if.end866 ], [ 39, %lor.lhs.false869 ]
  %.b2633 = load i1* @pconn_active.b, align 1
  %311 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp878 = icmp eq i32 %sock.2, %311
  %or.cond2662 = and i1 %.b2633, %cmp878
  br i1 %or.cond2662, label %if.then880, label %if.else881

if.then880:                                       ; preds = %do.body874
  %312 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2834 = icmp eq i8 %312, 0
  br i1 %tobool1.i2834, label %invalidate_persistent.exit2837, label %if.then.i2835, !prof !10

if.then.i2835:                                    ; preds = %if.then880
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3469 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2837

invalidate_persistent.exit2837:                   ; preds = %if.then880, %if.then.i2835
  %313 = phi i32 [ %sock.2, %if.then880 ], [ %.pre3469, %if.then.i2835 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %313) nounwind
  %314 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %314) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont884

if.else881:                                       ; preds = %do.body874
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont884

cont884:                                          ; preds = %invalidate_persistent.exit2837, %if.else881
  call fastcc void @request_free(%struct.request* %7)
  %315 = load i8** %message, align 4, !tbaa !0
  %tobool886 = icmp eq i8* %315, null
  br i1 %tobool886, label %if.end889, label %if.else888

if.else888:                                       ; preds = %cont884
  call void @free(i8* %315) nounwind
  br label %if.end889

if.end889:                                        ; preds = %cont884, %if.else888
  %headers.i2838 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %316 = load i8*** %headers.i2838, align 4, !tbaa !0
  %tobool.i2839 = icmp eq i8** %316, null
  br i1 %tobool.i2839, label %resp_free.exit2842, label %if.else.i2840

if.else.i2840:                                    ; preds = %if.end889
  %317 = bitcast i8** %316 to i8*
  call void @free(i8* %317) nounwind
  br label %resp_free.exit2842

resp_free.exit2842:                               ; preds = %if.end889, %if.else.i2840
  %318 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %318) nounwind
  call void @free(i8* %call.i27463135) nounwind
  %319 = icmp sgt i32 %call862.lcssa, -1
  br i1 %319, label %return, label %ioc_bb891

ioc_bb891:                                        ; preds = %resp_free.exit2842
  %320 = sext i32 %call862.lcssa to i64
  call void @__ioc_report_conversion(i32 2126, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i64 %320, i8 1) nounwind
  br label %return

do.body894:                                       ; preds = %lor.lhs.false869
  br i1 %tobool845, label %if.end949, label %if.then896

if.then896:                                       ; preds = %do.body894
  %.b2632 = load i1* @pconn_active.b, align 1
  %321 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp900 = icmp eq i32 %sock.2, %321
  %or.cond2663 = and i1 %.b2632, %cmp900
  br i1 %or.cond2663, label %if.then902, label %if.else903

if.then902:                                       ; preds = %if.then896
  %322 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2843 = icmp eq i8 %322, 0
  br i1 %tobool1.i2843, label %invalidate_persistent.exit2846, label %if.then.i2844, !prof !10

if.then.i2844:                                    ; preds = %if.then902
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3468 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2846

invalidate_persistent.exit2846:                   ; preds = %if.then902, %if.then.i2844
  %323 = phi i32 [ %sock.2, %if.then902 ], [ %.pre3468, %if.then.i2844 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %323) nounwind
  %324 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %324) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end949

if.else903:                                       ; preds = %if.then896
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end949

if.else910:                                       ; preds = %if.then853
  %tobool845.not = xor i1 %tobool845, true
  %brmerge = or i1 %tobool, %tobool845.not
  br i1 %brmerge, label %do.body936, label %land.lhs.true915

land.lhs.true915:                                 ; preds = %if.else910
  %call917 = call fastcc zeroext i1 @skip_short_body(i32 %sock.2, i64 %contlen.03086, i1 zeroext %chunked_transfer_encoding.0)
  br i1 %call917, label %do.body920, label %do.body936

do.body920:                                       ; preds = %land.lhs.true915
  br i1 %tobool845, label %if.end949, label %if.then922

if.then922:                                       ; preds = %do.body920
  %.b2631 = load i1* @pconn_active.b, align 1
  %325 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp926 = icmp eq i32 %sock.2, %325
  %or.cond2664 = and i1 %.b2631, %cmp926
  br i1 %or.cond2664, label %if.then928, label %if.else929

if.then928:                                       ; preds = %if.then922
  %326 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2847 = icmp eq i8 %326, 0
  br i1 %tobool1.i2847, label %invalidate_persistent.exit2850, label %if.then.i2848, !prof !10

if.then.i2848:                                    ; preds = %if.then928
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3471 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2850

invalidate_persistent.exit2850:                   ; preds = %if.then928, %if.then.i2848
  %327 = phi i32 [ %sock.2, %if.then928 ], [ %.pre3471, %if.then.i2848 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %327) nounwind
  %328 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %328) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end949

if.else929:                                       ; preds = %if.then922
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end949

do.body936:                                       ; preds = %land.lhs.true915, %if.else910
  %.b2630 = load i1* @pconn_active.b, align 1
  %329 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp940 = icmp eq i32 %sock.2, %329
  %or.cond2665 = and i1 %.b2630, %cmp940
  br i1 %or.cond2665, label %if.then942, label %if.else943

if.then942:                                       ; preds = %do.body936
  %330 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i2851 = icmp eq i8 %330, 0
  br i1 %tobool1.i2851, label %invalidate_persistent.exit2854, label %if.then.i2852, !prof !10

if.then.i2852:                                    ; preds = %if.then942
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3470 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit2854

invalidate_persistent.exit2854:                   ; preds = %if.then942, %if.then.i2852
  %331 = phi i32 [ %sock.2, %if.then942 ], [ %.pre3470, %if.then.i2852 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %331) nounwind
  %332 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %332) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end949

if.else943:                                       ; preds = %do.body936
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end949

if.end949:                                        ; preds = %if.else943, %invalidate_persistent.exit2854, %do.body920, %if.else929, %invalidate_persistent.exit2850, %do.body894, %if.else903, %invalidate_persistent.exit2846
  %sock.3 = phi i32 [ %sock.2, %do.body894 ], [ %sock.2, %invalidate_persistent.exit2846 ], [ -1, %if.else903 ], [ %sock.2, %do.body920 ], [ %sock.2, %invalidate_persistent.exit2850 ], [ -1, %if.else929 ], [ -1, %invalidate_persistent.exit2854 ], [ -1, %if.else943 ]
  store i8 0, i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 4), align 1, !tbaa !3
  %tobool950 = icmp eq i8 %72, 0
  br i1 %tobool950, label %land.lhs.true951, label %cont1137

land.lhs.true951:                                 ; preds = %if.end949
  %333 = load i8** %user, align 4, !tbaa !0
  %tobool952 = icmp eq i8* %333, null
  br i1 %tobool952, label %cont1137, label %land.lhs.true953

land.lhs.true953:                                 ; preds = %land.lhs.true951
  %334 = load i8** %passwd, align 4, !tbaa !0
  %tobool954 = icmp eq i8* %334, null
  br i1 %tobool954, label %cont1137, label %for.cond956.preheader

for.cond956.preheader:                            ; preds = %land.lhs.true953
  %call9573139 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([17 x i8]* @.str99, i32 0, i32 0), i32 0, i8** %wabeg, i8** %waend)
  %cmp9603140 = icmp eq i32 %call9573139, -1
  br i1 %cmp9603140, label %cont992, label %for.body962

for.body962:                                      ; preds = %for.cond956.preheader, %for.cond956.backedge
  %call9573141 = phi i32 [ %call957, %for.cond956.backedge ], [ %call9573139, %for.cond956.preheader ]
  %335 = load i8** %wabeg, align 4, !tbaa !0
  %336 = load i8** %waend, align 4, !tbaa !0
  %cmp.i2855 = icmp ugt i8* %336, %335
  br i1 %cmp.i2855, label %land.lhs.true.i2859, label %for.inc985

land.lhs.true.i2859:                              ; preds = %for.body962
  %sub.ptr.lhs.cast.i2856 = ptrtoint i8* %336 to i32
  %sub.ptr.rhs.cast.i2857 = ptrtoint i8* %335 to i32
  %sub.ptr.sub.i2858 = sub i32 %sub.ptr.lhs.cast.i2856, %sub.ptr.rhs.cast.i2857
  %337 = sext i32 %sub.ptr.sub.i2858 to i64
  %338 = icmp sgt i32 %sub.ptr.sub.i2858, -1
  br i1 %338, label %cont4.i, label %ioc_bb.i2860

ioc_bb.i2860:                                     ; preds = %land.lhs.true.i2859
  call void @__ioc_report_conversion(i32 3513, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %337, i8 1) nounwind
  br label %cont4.i

cont4.i:                                          ; preds = %ioc_bb.i2860, %land.lhs.true.i2859
  %cmp5.i2861 = icmp ugt i32 %sub.ptr.sub.i2858, 4
  br i1 %cmp5.i2861, label %cont10.i2864, label %land.lhs.true47.i

cont10.i2864:                                     ; preds = %cont4.i
  %call.i2862 = call i32 @strncasecmp(i8* %335, i8* getelementptr inbounds ([6 x i8]* @.str101, i32 0, i32 0), i32 5) nounwind readonly
  %cmp11.i2863 = icmp eq i32 %call.i2862, 0
  br i1 %cmp11.i2863, label %land.lhs.true12.i, label %land.lhs.true47.i

land.lhs.true12.i:                                ; preds = %cont10.i2864
  br i1 %338, label %cont22.i, label %ioc_bb17.i

ioc_bb17.i:                                       ; preds = %land.lhs.true12.i
  call void @__ioc_report_conversion(i32 3513, i32 152, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %337, i8 1) nounwind
  br label %cont22.i

cont22.i:                                         ; preds = %ioc_bb17.i, %land.lhs.true12.i
  %cmp23.i2865 = icmp eq i32 %sub.ptr.sub.i2858, 5
  br i1 %cmp23.i2865, label %do.body965, label %cont27.i

cont27.i:                                         ; preds = %cont22.i
  %arrayidx.i2866 = getelementptr inbounds i8* %335, i32 5
  %339 = load i8* %arrayidx.i2866, align 1, !tbaa !1
  switch i8 %339, label %land.lhs.true47.i [
    i8 32, label %do.body965
    i8 13, label %do.body965
    i8 12, label %do.body965
    i8 11, label %do.body965
    i8 10, label %do.body965
    i8 9, label %do.body965
  ]

land.lhs.true47.i:                                ; preds = %cont27.i, %cont10.i2864, %cont4.i
  br i1 %338, label %cont57.i, label %ioc_bb52.i

ioc_bb52.i:                                       ; preds = %land.lhs.true47.i
  call void @__ioc_report_conversion(i32 3513, i32 269, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %337, i8 1) nounwind
  br label %cont57.i

cont57.i:                                         ; preds = %ioc_bb52.i, %land.lhs.true47.i
  %cmp58.i = icmp ugt i32 %sub.ptr.sub.i2858, 5
  br i1 %cmp58.i, label %cont64.i, label %for.inc985

cont64.i:                                         ; preds = %cont57.i
  %call65.i = call i32 @strncasecmp(i8* %335, i8* getelementptr inbounds ([7 x i8]* @.str150, i32 0, i32 0), i32 6) nounwind readonly
  %cmp66.i = icmp eq i32 %call65.i, 0
  br i1 %cmp66.i, label %land.rhs.i, label %for.inc985

land.rhs.i:                                       ; preds = %cont64.i
  br i1 %338, label %cont77.i, label %ioc_bb72.i

ioc_bb72.i:                                       ; preds = %land.rhs.i
  call void @__ioc_report_conversion(i32 3513, i32 384, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %337, i8 1) nounwind
  br label %cont77.i

cont77.i:                                         ; preds = %ioc_bb72.i, %land.rhs.i
  %cmp78.i = icmp eq i32 %sub.ptr.sub.i2858, 6
  br i1 %cmp78.i, label %do.body965, label %cont85.i

cont85.i:                                         ; preds = %cont77.i
  %arrayidx86.i = getelementptr inbounds i8* %335, i32 6
  %340 = load i8* %arrayidx86.i, align 1, !tbaa !1
  %switch.tableidx.i = add i8 %340, -9
  %341 = icmp ult i8 %switch.tableidx.i, 24
  br i1 %341, label %known_authentication_scheme_p.exit, label %for.inc985

known_authentication_scheme_p.exit:               ; preds = %cont85.i
  %switch.cast.i = zext i8 %switch.tableidx.i to i24
  %switch.downshift.i = lshr i24 -8388577, %switch.cast.i
  %342 = and i24 %switch.downshift.i, 1
  %switch.masked.i = icmp eq i24 %342, 0
  br i1 %switch.masked.i, label %for.inc985, label %do.body965

do.body965:                                       ; preds = %known_authentication_scheme_p.exit, %cont27.i, %cont27.i, %cont27.i, %cont27.i, %cont27.i, %cont27.i, %cont77.i, %cont22.i
  %343 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub.i2858, i32 1)
  %344 = extractvalue { i32, i1 } %343, 0
  %345 = extractvalue { i32, i1 } %343, 1
  br i1 %345, label %ioc_bb972, label %cont973

ioc_bb972:                                        ; preds = %do.body965
  call void @__ioc_report_add_overflow(i32 2177, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %337, i64 1, i8 13) nounwind
  br label %cont973

cont973:                                          ; preds = %do.body965, %ioc_bb972
  %346 = icmp sgt i32 %344, -1
  br i1 %346, label %cont976, label %ioc_bb975

ioc_bb975:                                        ; preds = %cont973
  %347 = sext i32 %344 to i64
  call void @__ioc_report_conversion(i32 2177, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %347, i8 1) nounwind
  br label %cont976

cont976:                                          ; preds = %ioc_bb975, %cont973
  %348 = alloca i8, i32 %344, align 1
  br i1 %338, label %if.else994, label %ioc_bb978

ioc_bb978:                                        ; preds = %cont976
  call void @__ioc_report_conversion(i32 2178, i32 41, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %337, i8 1) nounwind
  br label %if.else994

for.inc985:                                       ; preds = %known_authentication_scheme_p.exit, %cont85.i, %for.body962, %cont57.i, %cont64.i
  %349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call9573141, i32 1)
  %350 = extractvalue { i32, i1 } %349, 0
  %351 = extractvalue { i32, i1 } %349, 1
  br i1 %351, label %ioc_bb986, label %for.cond956.backedge

for.cond956.backedge:                             ; preds = %for.inc985, %ioc_bb986
  %call957 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([17 x i8]* @.str99, i32 0, i32 0), i32 %350, i8** %wabeg, i8** %waend)
  %cmp960 = icmp eq i32 %call957, -1
  br i1 %cmp960, label %cont992, label %for.body962

ioc_bb986:                                        ; preds = %for.inc985
  %352 = sext i32 %call9573141 to i64
  call void @__ioc_report_add_overflow(i32 2171, i32 104, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %352, i64 1, i8 13) nounwind
  br label %for.cond956.backedge

cont992:                                          ; preds = %for.cond956.preheader, %for.cond956.backedge
  %call993 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8]* @.str100, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 1, i8* %call993) nounwind
  br label %cont1137

if.else994:                                       ; preds = %ioc_bb978, %cont976
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %348, i8* %335, i32 %sub.ptr.sub.i2858, i32 1, i1 false)
  %arrayidx982 = getelementptr inbounds i8* %348, i32 %sub.ptr.sub.i2858
  store i8 0, i8* %arrayidx982, align 1, !tbaa !1
  br i1 %basic_auth_finished.0, label %cont1000, label %if.then1035

cont1000:                                         ; preds = %if.else994
  %call1001 = call i32 @strncasecmp(i8* %348, i8* getelementptr inbounds ([6 x i8]* @.str101, i32 0, i32 0), i32 5) nounwind readonly
  %tobool1002 = icmp eq i32 %call1001, 0
  br i1 %tobool1002, label %cont1007, label %if.then1035

cont1007:                                         ; preds = %cont1000
  %arrayidx1008 = getelementptr inbounds i8* %348, i32 5
  %353 = load i8* %arrayidx1008, align 1, !tbaa !1
  switch i8 %353, label %if.then1035 [
    i8 32, label %cont1137
    i8 13, label %cont1137
    i8 12, label %cont1137
    i8 11, label %cont1137
    i8 10, label %cont1137
    i8 9, label %cont1137
    i8 0, label %cont1137
  ]

if.then1035:                                      ; preds = %cont1007, %cont1000, %if.else994
  %call1036 = call i8* @url_full_path(%struct.url* %u) nounwind
  %354 = load i8** %user, align 4, !tbaa !0
  %355 = load i8** %passwd, align 4, !tbaa !0
  %356 = load i8** %method.i, align 4, !tbaa !0
  %357 = load i8* %348, align 1, !tbaa !1
  %conv.i2870 = sext i8 %357 to i32
  %.off.i = add i8 %357, -97
  %358 = icmp ult i8 %.off.i, 26
  br i1 %358, label %cond.true.i, label %cond.end.i2874

cond.true.i:                                      ; preds = %if.then1035
  %359 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv.i2870, i32 97) nounwind
  %360 = extractvalue { i32, i1 } %359, 0
  %361 = extractvalue { i32, i1 } %359, 1
  br i1 %361, label %ioc_bb.i2871, label %cont.i2872

ioc_bb.i2871:                                     ; preds = %cond.true.i
  %362 = sext i8 %357 to i64
  call void @__ioc_report_sub_overflow(i32 3530, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %362, i64 97, i8 13) nounwind
  br label %cont.i2872

cont.i2872:                                       ; preds = %ioc_bb.i2871, %cond.true.i
  %363 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 65) nounwind
  %364 = extractvalue { i32, i1 } %363, 0
  %365 = extractvalue { i32, i1 } %363, 1
  br i1 %365, label %ioc_bb4.i, label %cond.end.i2874

ioc_bb4.i:                                        ; preds = %cont.i2872
  %366 = sext i32 %360 to i64
  call void @__ioc_report_add_overflow(i32 3530, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %366, i64 65, i8 13) nounwind
  br label %cond.end.i2874

cond.end.i2874:                                   ; preds = %ioc_bb4.i, %cont.i2872, %if.then1035
  %cond.i2873 = phi i32 [ %364, %ioc_bb4.i ], [ %364, %cont.i2872 ], [ %conv.i2870, %if.then1035 ]
  switch i32 %cond.i2873, label %sw.default.i [
    i32 66, label %sw.bb.i
    i32 68, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %cond.end.i2874
  %call.i2875 = call fastcc i8* @basic_authentication_encode(i8* %354, i8* %355) nounwind
  br label %create_authorization_line.exit

sw.bb6.i:                                         ; preds = %cond.end.i2874
  call void @llvm.lifetime.start(i64 -1, i8* %58) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %59) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %60) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %61) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %62) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %63) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %64) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %65) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %66) nounwind
  call void @llvm.memset.p0i8.i32(i8* %59, i8 0, i32 16, i32 1, i1 false) nounwind
  store i8* null, i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  store i8* null, i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  store i8* null, i8** @digest_authentication_encode.opaque, align 4, !tbaa !0
  store i8* null, i8** @digest_authentication_encode.realm, align 4, !tbaa !0
  %add.ptr.i.i = getelementptr inbounds i8* %348, i32 6
  store i8* %add.ptr.i.i, i8** %au.addr.i.i, align 4, !tbaa !0
  %call474.i.i = call zeroext i1 @extract_param(i8** %au.addr.i.i, %struct.param_token* %name.i.i, %struct.param_token* %value.i.i2869, i8 signext 44) nounwind
  br i1 %call474.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %sw.bb6.i, %cont.backedge.i.i
  %367 = load i8** %e.i.i, align 4, !tbaa !0
  %368 = load i8** %b.i.i, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i.i = ptrtoint i8* %367 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %368 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %369 = icmp sgt i32 %sub.ptr.sub.i.i, -1
  br i1 %369, label %for.body.i.i, label %ioc_bb1.i.i

ioc_bb1.i.i:                                      ; preds = %while.body.i.i
  %370 = sext i32 %sub.ptr.sub.i.i to i64
  call void @__ioc_report_conversion(i32 3393, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %370, i8 1) nounwind
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ioc_bb1.i.i, %while.body.i.i, %for.cond.backedge.i.i
  %i.0473.i.i = phi i32 [ %376, %for.cond.backedge.i.i ], [ 0, %while.body.i.i ], [ 0, %ioc_bb1.i.i ]
  %name6.i.i = getelementptr inbounds [4 x %struct.anon.1]* @digest_authentication_encode.options, i32 0, i32 %i.0473.i.i, i32 0
  %371 = load i8** %name6.i.i, align 4, !tbaa !0
  %call7.i.i = call i32 @strlen(i8* %371) nounwind readonly
  %cmp8.i.i = icmp eq i32 %sub.ptr.sub.i.i, %call7.i.i
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %call12.i.i = call i32 @strncmp(i8* %368, i8* %371, i32 %sub.ptr.sub.i.i) nounwind readonly
  %cmp13.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.then.i.i2876, label %for.inc.i.i

if.then.i.i2876:                                  ; preds = %land.lhs.true.i.i
  %372 = load i8** %b14.i.i, align 4, !tbaa !0
  %373 = load i8** %e15.i.i, align 4, !tbaa !0
  %call16.i.i = call i8* @strdupdelim(i8* %372, i8* %373) nounwind
  %variable.i.i = getelementptr inbounds [4 x %struct.anon.1]* @digest_authentication_encode.options, i32 0, i32 %i.0473.i.i, i32 1
  %374 = load i8*** %variable.i.i, align 4, !tbaa !0
  store i8* %call16.i.i, i8** %374, align 4, !tbaa !0
  br label %cont.backedge.i.i

cont.backedge.i.i:                                ; preds = %for.cond.backedge.i.i, %if.then.i.i2876
  %call.i.i2877 = call zeroext i1 @extract_param(i8** %au.addr.i.i, %struct.param_token* %name.i.i, %struct.param_token* %value.i.i2869, i8 signext 44) nounwind
  br i1 %call.i.i2877, label %while.body.i.i, label %while.end.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i
  %375 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0473.i.i, i32 1) nounwind
  %376 = extractvalue { i32, i1 } %375, 0
  %377 = extractvalue { i32, i1 } %375, 1
  br i1 %377, label %ioc_bb18.i.i, label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %ioc_bb18.i.i, %for.inc.i.i
  %cmp.i.i2878 = icmp ult i32 %376, 4
  br i1 %cmp.i.i2878, label %for.body.i.i, label %cont.backedge.i.i

ioc_bb18.i.i:                                     ; preds = %for.inc.i.i
  %378 = zext i32 %i.0473.i.i to i64
  call void @__ioc_report_add_overflow(i32 3394, i32 60, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %378, i64 1, i8 5) nounwind
  br label %for.cond.backedge.i.i

while.end.i.i:                                    ; preds = %cont.backedge.i.i, %sw.bb6.i
  %379 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %cmp20.i.i = icmp eq i8* %379, null
  br i1 %cmp20.i.i, label %if.end82.i.i, label %land.lhs.true21.i.i

land.lhs.true21.i.i:                              ; preds = %while.end.i.i
  %380 = extractvalue { i32, i1 } %67, 1
  br i1 %380, label %ioc_bb22.i.i, label %cont25.i.i

ioc_bb22.i.i:                                     ; preds = %land.lhs.true21.i.i
  call void @__ioc_report_sub_overflow(i32 3400, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str140 to i32) to i64), i8 5) nounwind
  %.pre.i.i = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  br label %cont25.i.i

cont25.i.i:                                       ; preds = %ioc_bb22.i.i, %land.lhs.true21.i.i
  %381 = phi i8* [ %.pre.i.i, %ioc_bb22.i.i ], [ %379, %land.lhs.true21.i.i ]
  %call77.i.i = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 0)) nounwind
  %tobool.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool.i.i, label %if.end82.i.i, label %cont80.i.i

cont80.i.i:                                       ; preds = %cont25.i.i
  %call81.i.i = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8]* @.str141, i32 0, i32 0), i32 5) nounwind
  %382 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call81.i.i, i8* %382) nounwind
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %cont80.i.i, %cont25.i.i, %while.end.i.i
  %user.addr.0.i.i = phi i8* [ null, %cont80.i.i ], [ %354, %cont25.i.i ], [ %354, %while.end.i.i ]
  %383 = load i8** @digest_authentication_encode.realm, align 4, !tbaa !0
  %384 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  %notlhs.i.i = icmp eq i8* %383, null
  %notrhs.i.i = icmp eq i8* %384, null
  %or.cond.not.i.i = or i1 %notrhs.i.i, %notlhs.i.i
  %tobool86.i.i = icmp eq i8* %user.addr.0.i.i, null
  %or.cond434.i.i = or i1 %or.cond.not.i.i, %tobool86.i.i
  %tobool88.i.i = icmp eq i8* %355, null
  %or.cond435.i.i = or i1 %or.cond434.i.i, %tobool88.i.i
  %tobool90.i.i = icmp eq i8* %call1036, null
  %or.cond436.i.i = or i1 %or.cond435.i.i, %tobool90.i.i
  %tobool92.i.i = icmp eq i8* %356, null
  %or.cond437.i.i = or i1 %or.cond436.i.i, %tobool92.i.i
  br i1 %or.cond437.i.i, label %if.then93.i.i, label %if.end109.i.i

if.then93.i.i:                                    ; preds = %if.end82.i.i
  br i1 %notlhs.i.i, label %if.end96.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then93.i.i
  call void @free(i8* %383) nounwind
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.else.i.i, %if.then93.i.i
  %385 = load i8** @digest_authentication_encode.opaque, align 4, !tbaa !0
  %tobool97.i.i = icmp eq i8* %385, null
  br i1 %tobool97.i.i, label %if.end100.i.i, label %if.else99.i.i

if.else99.i.i:                                    ; preds = %if.end96.i.i
  call void @free(i8* %385) nounwind
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.end96.i.i, %if.else99.i.i
  %386 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  %tobool101.i.i = icmp eq i8* %386, null
  br i1 %tobool101.i.i, label %if.end104.i.i, label %if.else103.i.i

if.else103.i.i:                                   ; preds = %if.end100.i.i
  call void @free(i8* %386) nounwind
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.end100.i.i, %if.else103.i.i
  %387 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %tobool105.i.i = icmp eq i8* %387, null
  br i1 %tobool105.i.i, label %create_authorization_line.exit, label %if.else107.i.i

if.else107.i.i:                                   ; preds = %if.end104.i.i
  call void @free(i8* %387) nounwind
  br label %create_authorization_line.exit

if.end109.i.i:                                    ; preds = %if.end82.i.i
  call void @md5_init_ctx(%struct.md5_ctx* %ctx.i.i) nounwind
  %call110.i.i = call i32 @strlen(i8* %user.addr.0.i.i) nounwind readonly
  call void @md5_process_bytes(i8* %user.addr.0.i.i, i32 %call110.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %388 = load i8** @digest_authentication_encode.realm, align 4, !tbaa !0
  %call113.i.i = call i32 @strlen(i8* %388) nounwind readonly
  call void @md5_process_bytes(i8* %388, i32 %call113.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %call116.i.i = call i32 @strlen(i8* %355) nounwind readonly
  call void @md5_process_bytes(i8* %355, i32 %call116.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  %call117.i.i = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx.i.i, i8* %63) nounwind
  br label %cont.i.i.i

cont.i.i.i:                                       ; preds = %cont19.i.i.i, %if.end109.i.i
  %i.031.i.i.i = phi i32 [ 0, %if.end109.i.i ], [ %393, %cont19.i.i.i ]
  %hash.addr.030.i.i.i = phi i8* [ %63, %if.end109.i.i ], [ %incdec.ptr20.i.i.i, %cont19.i.i.i ]
  %buf.addr.029.i.i.i = phi i8* [ %64, %if.end109.i.i ], [ %incdec.ptr17.i.i.i, %cont19.i.i.i ]
  %389 = load i8* %hash.addr.030.i.i.i, align 1, !tbaa !1
  %conv.i.i.i = zext i8 %389 to i32
  %shr28.i.i.i = lshr i32 %conv.i.i.i, 4
  %arrayidx.i.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %shr28.i.i.i
  %390 = load i8* %arrayidx.i.i.i, align 1, !tbaa !1
  %incdec.ptr.i.i.i = getelementptr inbounds i8* %buf.addr.029.i.i.i, i32 1
  store i8 %390, i8* %buf.addr.029.i.i.i, align 1, !tbaa !1
  %and.i.i.i = and i32 %conv.i.i.i, 15
  %arrayidx8.i.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %and.i.i.i
  %391 = load i8* %arrayidx8.i.i.i, align 1, !tbaa !1
  %incdec.ptr17.i.i.i = getelementptr inbounds i8* %buf.addr.029.i.i.i, i32 2
  store i8 %391, i8* %incdec.ptr.i.i.i, align 1, !tbaa !1
  %392 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.031.i.i.i, i32 1) nounwind
  %393 = extractvalue { i32, i1 } %392, 0
  %394 = extractvalue { i32, i1 } %392, 1
  br i1 %394, label %ioc_bb18.i.i.i, label %cont19.i.i.i

ioc_bb18.i.i.i:                                   ; preds = %cont.i.i.i
  %395 = sext i32 %i.031.i.i.i to i64
  call void @__ioc_report_add_overflow(i32 3365, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %395, i64 1, i8 13) nounwind
  br label %cont19.i.i.i

cont19.i.i.i:                                     ; preds = %ioc_bb18.i.i.i, %cont.i.i.i
  %incdec.ptr20.i.i.i = getelementptr inbounds i8* %hash.addr.030.i.i.i, i32 1
  %cmp.i.i.i = icmp slt i32 %393, 16
  br i1 %cmp.i.i.i, label %cont.i.i.i, label %dump_hash.exit.i.i

dump_hash.exit.i.i:                               ; preds = %cont19.i.i.i
  store i8 0, i8* %incdec.ptr17.i.i.i, align 1, !tbaa !1
  call void @md5_init_ctx(%struct.md5_ctx* %ctx.i.i) nounwind
  %call120.i.i = call i32 @strlen(i8* %356) nounwind readonly
  call void @md5_process_bytes(i8* %356, i32 %call120.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %call123.i.i = call i32 @strlen(i8* %call1036) nounwind readonly
  call void @md5_process_bytes(i8* %call1036, i32 %call123.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  %call125.i.i = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx.i.i, i8* %63) nounwind
  br label %cont.i449.i.i

cont.i449.i.i:                                    ; preds = %cont19.i453.i.i, %dump_hash.exit.i.i
  %i.031.i438.i.i = phi i32 [ 0, %dump_hash.exit.i.i ], [ %400, %cont19.i453.i.i ]
  %hash.addr.030.i439.i.i = phi i8* [ %63, %dump_hash.exit.i.i ], [ %incdec.ptr20.i451.i.i, %cont19.i453.i.i ]
  %buf.addr.029.i440.i.i = phi i8* [ %65, %dump_hash.exit.i.i ], [ %incdec.ptr17.i448.i.i, %cont19.i453.i.i ]
  %396 = load i8* %hash.addr.030.i439.i.i, align 1, !tbaa !1
  %conv.i441.i.i = zext i8 %396 to i32
  %shr28.i442.i.i = lshr i32 %conv.i441.i.i, 4
  %arrayidx.i443.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %shr28.i442.i.i
  %397 = load i8* %arrayidx.i443.i.i, align 1, !tbaa !1
  %incdec.ptr.i444.i.i = getelementptr inbounds i8* %buf.addr.029.i440.i.i, i32 1
  store i8 %397, i8* %buf.addr.029.i440.i.i, align 1, !tbaa !1
  %and.i446.i.i = and i32 %conv.i441.i.i, 15
  %arrayidx8.i447.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %and.i446.i.i
  %398 = load i8* %arrayidx8.i447.i.i, align 1, !tbaa !1
  %incdec.ptr17.i448.i.i = getelementptr inbounds i8* %buf.addr.029.i440.i.i, i32 2
  store i8 %398, i8* %incdec.ptr.i444.i.i, align 1, !tbaa !1
  %399 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.031.i438.i.i, i32 1) nounwind
  %400 = extractvalue { i32, i1 } %399, 0
  %401 = extractvalue { i32, i1 } %399, 1
  br i1 %401, label %ioc_bb18.i450.i.i, label %cont19.i453.i.i

ioc_bb18.i450.i.i:                                ; preds = %cont.i449.i.i
  %402 = sext i32 %i.031.i438.i.i to i64
  call void @__ioc_report_add_overflow(i32 3365, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %402, i64 1, i8 13) nounwind
  br label %cont19.i453.i.i

cont19.i453.i.i:                                  ; preds = %ioc_bb18.i450.i.i, %cont.i449.i.i
  %incdec.ptr20.i451.i.i = getelementptr inbounds i8* %hash.addr.030.i439.i.i, i32 1
  %cmp.i452.i.i = icmp slt i32 %400, 16
  br i1 %cmp.i452.i.i, label %cont.i449.i.i, label %dump_hash.exit454.i.i

dump_hash.exit454.i.i:                            ; preds = %cont19.i453.i.i
  store i8 0, i8* %incdec.ptr17.i448.i.i, align 1, !tbaa !1
  %403 = extractvalue { i32, i1 } %67, 1
  br i1 %403, label %ioc_bb130.i.i, label %cont133.i.i

ioc_bb130.i.i:                                    ; preds = %dump_hash.exit454.i.i
  call void @__ioc_report_sub_overflow(i32 3447, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str140 to i32) to i64), i8 5) nounwind
  br label %cont133.i.i

cont133.i.i:                                      ; preds = %ioc_bb130.i.i, %dump_hash.exit454.i.i
  %404 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %call192.i.i = call i32 @strcmp(i8* %404, i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 0)) nounwind
  %tobool195.i.i = icmp eq i32 %call192.i.i, 0
  br i1 %tobool195.i.i, label %if.then196.i.i, label %if.else231.i.i

if.then196.i.i:                                   ; preds = %cont133.i.i
  %call198.i.i = call i32 @random_number(i32 2147483647) nounwind
  %call199.i.i = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %59, i32 16, i8* getelementptr inbounds ([5 x i8]* @.str143, i32 0, i32 0), i32 %call198.i.i) nounwind
  call void @md5_init_ctx(%struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* %64, i32 32, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %405 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  %call208.i.i = call i32 @strlen(i8* %405) nounwind readonly
  call void @md5_process_bytes(i8* %405, i32 %call208.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([9 x i8]* @.str144, i32 0, i32 0), i32 8, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %call217.i.i = call i32 @strlen(i8* %59) nounwind readonly
  call void @md5_process_bytes(i8* %59, i32 %call217.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %406 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %call220.i.i = call i32 @strlen(i8* %406) nounwind readonly
  call void @md5_process_bytes(i8* %406, i32 %call220.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* %65, i32 32, %struct.md5_ctx* %ctx.i.i) nounwind
  %call230.i.i = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx.i.i, i8* %63) nounwind
  br label %cont.i466.i.i

if.else231.i.i:                                   ; preds = %cont133.i.i
  call void @md5_init_ctx(%struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* %64, i32 32, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  %407 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  %call240.i.i = call i32 @strlen(i8* %407) nounwind readonly
  call void @md5_process_bytes(i8* %407, i32 %call240.i.i, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* getelementptr inbounds ([2 x i8]* @.str142, i32 0, i32 0), i32 1, %struct.md5_ctx* %ctx.i.i) nounwind
  call void @md5_process_bytes(i8* %65, i32 32, %struct.md5_ctx* %ctx.i.i) nounwind
  %call250.i.i = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx.i.i, i8* %63) nounwind
  br label %cont.i466.i.i

cont.i466.i.i:                                    ; preds = %if.else231.i.i, %if.then196.i.i, %cont19.i470.i.i
  %i.031.i455.i.i = phi i32 [ %412, %cont19.i470.i.i ], [ 0, %if.then196.i.i ], [ 0, %if.else231.i.i ]
  %hash.addr.030.i456.i.i = phi i8* [ %incdec.ptr20.i468.i.i, %cont19.i470.i.i ], [ %63, %if.then196.i.i ], [ %63, %if.else231.i.i ]
  %buf.addr.029.i457.i.i = phi i8* [ %incdec.ptr17.i465.i.i, %cont19.i470.i.i ], [ %66, %if.then196.i.i ], [ %66, %if.else231.i.i ]
  %408 = load i8* %hash.addr.030.i456.i.i, align 1, !tbaa !1
  %conv.i458.i.i = zext i8 %408 to i32
  %shr28.i459.i.i = lshr i32 %conv.i458.i.i, 4
  %arrayidx.i460.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %shr28.i459.i.i
  %409 = load i8* %arrayidx.i460.i.i, align 1, !tbaa !1
  %incdec.ptr.i461.i.i = getelementptr inbounds i8* %buf.addr.029.i457.i.i, i32 1
  store i8 %409, i8* %buf.addr.029.i457.i.i, align 1, !tbaa !1
  %and.i463.i.i = and i32 %conv.i458.i.i, 15
  %arrayidx8.i464.i.i = getelementptr inbounds [17 x i8]* @.str149, i32 0, i32 %and.i463.i.i
  %410 = load i8* %arrayidx8.i464.i.i, align 1, !tbaa !1
  %incdec.ptr17.i465.i.i = getelementptr inbounds i8* %buf.addr.029.i457.i.i, i32 2
  store i8 %410, i8* %incdec.ptr.i461.i.i, align 1, !tbaa !1
  %411 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.031.i455.i.i, i32 1) nounwind
  %412 = extractvalue { i32, i1 } %411, 0
  %413 = extractvalue { i32, i1 } %411, 1
  br i1 %413, label %ioc_bb18.i467.i.i, label %cont19.i470.i.i

ioc_bb18.i467.i.i:                                ; preds = %cont.i466.i.i
  %414 = sext i32 %i.031.i455.i.i to i64
  call void @__ioc_report_add_overflow(i32 3365, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %414, i64 1, i8 13) nounwind
  br label %cont19.i470.i.i

cont19.i470.i.i:                                  ; preds = %ioc_bb18.i467.i.i, %cont.i466.i.i
  %incdec.ptr20.i468.i.i = getelementptr inbounds i8* %hash.addr.030.i456.i.i, i32 1
  %cmp.i469.i.i = icmp slt i32 %412, 16
  br i1 %cmp.i469.i.i, label %cont.i466.i.i, label %dump_hash.exit471.i.i

dump_hash.exit471.i.i:                            ; preds = %cont19.i470.i.i
  store i8 0, i8* %incdec.ptr17.i465.i.i, align 1, !tbaa !1
  %call254.i.i = call i32 @strlen(i8* %user.addr.0.i.i) nounwind readonly
  %415 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call254.i.i, i32 %call254.i.i) nounwind
  %416 = extractvalue { i32, i1 } %415, 0
  %417 = extractvalue { i32, i1 } %415, 1
  %418 = zext i32 %call254.i.i to i64
  br i1 %417, label %ioc_bb256.i.i, label %cont257.i.i

ioc_bb256.i.i:                                    ; preds = %dump_hash.exit471.i.i
  call void @__ioc_report_add_overflow(i32 3479, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %418, i64 %418, i8 5) nounwind
  br label %cont257.i.i

cont257.i.i:                                      ; preds = %ioc_bb256.i.i, %dump_hash.exit471.i.i
  %419 = load i8** @digest_authentication_encode.realm, align 4, !tbaa !0
  %call258.i.i = call i32 @strlen(i8* %419) nounwind readonly
  %420 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 %call258.i.i) nounwind
  %421 = extractvalue { i32, i1 } %420, 0
  %422 = extractvalue { i32, i1 } %420, 1
  br i1 %422, label %ioc_bb259.i.i, label %cont260.i.i

ioc_bb259.i.i:                                    ; preds = %cont257.i.i
  %423 = zext i32 %call258.i.i to i64
  %424 = zext i32 %416 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %424, i64 %423, i8 5) nounwind
  br label %cont260.i.i

cont260.i.i:                                      ; preds = %ioc_bb259.i.i, %cont257.i.i
  %425 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  %call261.i.i = call i32 @strlen(i8* %425) nounwind readonly
  %426 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %421, i32 %call261.i.i) nounwind
  %427 = extractvalue { i32, i1 } %426, 0
  %428 = extractvalue { i32, i1 } %426, 1
  br i1 %428, label %ioc_bb262.i.i, label %cont263.i.i

ioc_bb262.i.i:                                    ; preds = %cont260.i.i
  %429 = zext i32 %call261.i.i to i64
  %430 = zext i32 %421 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 60, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %430, i64 %429, i8 5) nounwind
  br label %cont263.i.i

cont263.i.i:                                      ; preds = %ioc_bb262.i.i, %cont260.i.i
  %call264.i.i = call i32 @strlen(i8* %call1036) nounwind readonly
  %431 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %427, i32 %call264.i.i) nounwind
  %432 = extractvalue { i32, i1 } %431, 0
  %433 = extractvalue { i32, i1 } %431, 1
  br i1 %433, label %ioc_bb265.i.i, label %cont271.i.i

ioc_bb265.i.i:                                    ; preds = %cont263.i.i
  %434 = zext i32 %call264.i.i to i64
  %435 = zext i32 %427 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 76, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %435, i64 %434, i8 5) nounwind
  br label %cont271.i.i

cont271.i.i:                                      ; preds = %ioc_bb265.i.i, %cont263.i.i
  %436 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %432, i32 32) nounwind
  %437 = extractvalue { i32, i1 } %436, 0
  %438 = extractvalue { i32, i1 } %436, 1
  br i1 %438, label %ioc_bb272.i.i, label %cont273.i.i

ioc_bb272.i.i:                                    ; preds = %cont271.i.i
  %439 = zext i32 %432 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 91, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %439, i64 32, i8 5) nounwind
  br label %cont273.i.i

cont273.i.i:                                      ; preds = %ioc_bb272.i.i, %cont271.i.i
  %440 = load i8** @digest_authentication_encode.opaque, align 4, !tbaa !0
  %tobool274.i.i = icmp eq i8* %440, null
  br i1 %tobool274.i.i, label %cond.end280.i.i, label %cond.true275.i.i

cond.true275.i.i:                                 ; preds = %cont273.i.i
  %call276.i.i = call i32 @strlen(i8* %440) nounwind readonly
  br label %cond.end280.i.i

cond.end280.i.i:                                  ; preds = %cond.true275.i.i, %cont273.i.i
  %cond281.i.i = phi i32 [ %call276.i.i, %cond.true275.i.i ], [ 0, %cont273.i.i ]
  %441 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %437, i32 %cond281.i.i) nounwind
  %442 = extractvalue { i32, i1 } %441, 0
  %443 = extractvalue { i32, i1 } %441, 1
  br i1 %443, label %ioc_bb282.i.i, label %cont283.i.i

ioc_bb282.i.i:                                    ; preds = %cond.end280.i.i
  %444 = zext i32 %cond281.i.i to i64
  %445 = zext i32 %437 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 102, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %445, i64 %444, i8 5) nounwind
  br label %cont283.i.i

cont283.i.i:                                      ; preds = %ioc_bb282.i.i, %cond.end280.i.i
  %446 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %tobool284.i.i = icmp ne i8* %446, null
  %cond285.i.i = select i1 %tobool284.i.i, i32 128, i32 0
  %447 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %cond285.i.i) nounwind
  %448 = extractvalue { i32, i1 } %447, 0
  %449 = extractvalue { i32, i1 } %447, 1
  br i1 %449, label %ioc_bb289.i.i, label %cont292.i.i

ioc_bb289.i.i:                                    ; preds = %cont283.i.i
  %450 = zext i32 %cond285.i.i to i64
  %451 = zext i32 %442 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 134, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %451, i64 %450, i8 5) nounwind
  br label %cont292.i.i

cont292.i.i:                                      ; preds = %ioc_bb289.i.i, %cont283.i.i
  %452 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %448, i32 128) nounwind
  %453 = extractvalue { i32, i1 } %452, 0
  %454 = extractvalue { i32, i1 } %452, 1
  br i1 %454, label %ioc_bb293.i.i, label %cont294.i.i

ioc_bb293.i.i:                                    ; preds = %cont292.i.i
  %455 = zext i32 %448 to i64
  call void @__ioc_report_add_overflow(i32 3479, i32 152, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %455, i64 128, i8 5) nounwind
  br label %cont294.i.i

cont294.i.i:                                      ; preds = %ioc_bb293.i.i, %cont292.i.i
  %call295.i.i = call noalias i8* @xmalloc(i32 %453) nounwind
  br i1 %403, label %ioc_bb298.i.i, label %cont301.i.i

ioc_bb298.i.i:                                    ; preds = %cont294.i.i
  call void @__ioc_report_sub_overflow(i32 3482, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str140 to i32) to i64), i8 5) nounwind
  br label %cont301.i.i

cont301.i.i:                                      ; preds = %ioc_bb298.i.i, %cont294.i.i
  %456 = load i8** @digest_authentication_encode.qop, align 4, !tbaa !0
  %call360.i.i = call i32 @strcmp(i8* %456, i8* getelementptr inbounds ([5 x i8]* @.str140, i32 0, i32 0)) nounwind
  %tobool363.i.i = icmp eq i32 %call360.i.i, 0
  %457 = load i8** @digest_authentication_encode.realm, align 4, !tbaa !0
  %458 = load i8** @digest_authentication_encode.nonce, align 4, !tbaa !0
  br i1 %tobool363.i.i, label %if.then364.i.i, label %if.else368.i.i

if.then364.i.i:                                   ; preds = %cont301.i.i
  %call367.i.i = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %call295.i.i, i32 %453, i8* getelementptr inbounds ([106 x i8]* @.str145, i32 0, i32 0), i8* %user.addr.0.i.i, i8* %457, i8* %458, i8* %call1036, i8* %66, i8* %59) nounwind
  br label %if.end371.i.i

if.else368.i.i:                                   ; preds = %cont301.i.i
  %call370.i.i = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %call295.i.i, i32 %453, i8* getelementptr inbounds ([70 x i8]* @.str146, i32 0, i32 0), i8* %user.addr.0.i.i, i8* %457, i8* %458, i8* %call1036, i8* %66) nounwind
  br label %if.end371.i.i

if.end371.i.i:                                    ; preds = %if.else368.i.i, %if.then364.i.i
  %459 = load i8** @digest_authentication_encode.opaque, align 4, !tbaa !0
  %tobool372.i.i = icmp eq i8* %459, null
  br i1 %tobool372.i.i, label %create_authorization_line.exit, label %if.then373.i.i

if.then373.i.i:                                   ; preds = %if.end371.i.i
  %call374.i.i = call i32 @strlen(i8* %call295.i.i) nounwind readonly
  %add.ptr375.i.i = getelementptr inbounds i8* %call295.i.i, i32 %call374.i.i
  %strlen.i.i = call i32 @strlen(i8* %add.ptr375.i.i) nounwind
  %add.ptr375.sum.i.i = add i32 %strlen.i.i, %call374.i.i
  %endptr.i.i = getelementptr i8* %call295.i.i, i32 %add.ptr375.sum.i.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %endptr.i.i, i8* getelementptr inbounds ([11 x i8]* @.str147, i32 0, i32 0), i32 11, i32 1, i1 false) nounwind
  %call377.i.i = call i8* @strcat(i8* %add.ptr375.i.i, i8* %459) nounwind
  %strlen431.i.i = call i32 @strlen(i8* %add.ptr375.i.i) nounwind
  %add.ptr375.sum433.i.i = add i32 %strlen431.i.i, %call374.i.i
  %endptr432.i.i = getelementptr i8* %call295.i.i, i32 %add.ptr375.sum433.i.i
  %460 = bitcast i8* %endptr432.i.i to i16*
  store i16 34, i16* %460, align 1
  br label %create_authorization_line.exit

sw.default.i:                                     ; preds = %cond.end.i2874
  call void @abort() noreturn nounwind
  unreachable

create_authorization_line.exit:                   ; preds = %sw.bb.i, %if.end104.i.i, %if.else107.i.i, %if.end371.i.i, %if.then373.i.i
  %retval.0.i2879 = phi i8* [ %call.i2875, %sw.bb.i ], [ null, %if.end104.i.i ], [ null, %if.else107.i.i ], [ %call295.i.i, %if.end371.i.i ], [ %call295.i.i, %if.then373.i.i ]
  call fastcc void @request_set_header(%struct.request* %7, i8* getelementptr inbounds ([14 x i8]* @.str76, i32 0, i32 0), i8* %retval.0.i2879, i32 2)
  %call1045 = call i32 @strncasecmp(i8* %348, i8* getelementptr inbounds ([5 x i8]* @.str102, i32 0, i32 0), i32 4) nounwind readonly
  %tobool1046 = icmp eq i32 %call1045, 0
  br i1 %tobool1046, label %cont1052, label %if.else1081

cont1052:                                         ; preds = %create_authorization_line.exit
  %arrayidx1053 = getelementptr inbounds i8* %348, i32 4
  %461 = load i8* %arrayidx1053, align 1, !tbaa !1
  switch i8 %461, label %if.else1081 [
    i8 32, label %if.end1127
    i8 13, label %if.end1127
    i8 12, label %if.end1127
    i8 11, label %if.end1127
    i8 10, label %if.end1127
    i8 9, label %if.end1127
    i8 0, label %if.end1127
  ]

if.else1081:                                      ; preds = %cont1052, %create_authorization_line.exit
  %462 = load i8** %user80, align 4, !tbaa !0
  %tobool1083 = icmp eq i8* %462, null
  br i1 %tobool1083, label %cont1088, label %if.end1127

cont1088:                                         ; preds = %if.else1081
  %call1089 = call i32 @strncasecmp(i8* %348, i8* getelementptr inbounds ([6 x i8]* @.str101, i32 0, i32 0), i32 5) nounwind readonly
  %tobool1090 = icmp eq i32 %call1089, 0
  br i1 %tobool1090, label %cont1096, label %if.end1127

cont1096:                                         ; preds = %cont1088
  %arrayidx1097 = getelementptr inbounds i8* %348, i32 5
  %463 = load i8* %arrayidx1097, align 1, !tbaa !1
  switch i8 %463, label %if.end1127 [
    i8 32, label %if.then1124
    i8 13, label %if.then1124
    i8 12, label %if.then1124
    i8 11, label %if.then1124
    i8 10, label %if.then1124
    i8 9, label %if.then1124
    i8 0, label %if.then1124
  ]

if.then1124:                                      ; preds = %cont1096, %cont1096, %cont1096, %cont1096, %cont1096, %cont1096, %cont1096
  %464 = load i8** %host, align 4, !tbaa !0
  %465 = load %struct.hash_table** @basic_authed_hosts, align 4, !tbaa !0
  %tobool.i2880 = icmp eq %struct.hash_table* %465, null
  br i1 %tobool.i2880, label %if.then.i2882, label %if.end.i2885

if.then.i2882:                                    ; preds = %if.then1124
  %call.i2881 = call %struct.hash_table* @make_nocase_string_hash_table(i32 1) nounwind
  store %struct.hash_table* %call.i2881, %struct.hash_table** @basic_authed_hosts, align 4, !tbaa !0
  br label %if.end.i2885

if.end.i2885:                                     ; preds = %if.then.i2882, %if.then1124
  %466 = phi %struct.hash_table* [ %465, %if.then1124 ], [ %call.i2881, %if.then.i2882 ]
  %call1.i2883 = call i32 @hash_table_contains(%struct.hash_table* %466, i8* %464) nounwind
  %tobool2.i2884 = icmp eq i32 %call1.i2883, 0
  br i1 %tobool2.i2884, label %if.then3.i2887, label %if.end1127

if.then3.i2887:                                   ; preds = %if.end.i2885
  %467 = load %struct.hash_table** @basic_authed_hosts, align 4, !tbaa !0
  %call4.i = call noalias i8* @xstrdup(i8* %464) nounwind
  call void @hash_table_put(%struct.hash_table* %467, i8* %call4.i, i8* null) nounwind
  %468 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool6.i2886 = icmp eq i8 %468, 0
  br i1 %tobool6.i2886, label %if.end1127, label %if.then7.i2888, !prof !10

if.then7.i2888:                                   ; preds = %if.then3.i2887
  %call8.i = call i8* @quote(i8* %464) nounwind
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([37 x i8]* @.str135, i32 0, i32 0), i8* %call8.i) nounwind
  br label %if.end1127

if.end1127:                                       ; preds = %cont1096, %cont1052, %cont1052, %cont1052, %cont1052, %cont1052, %cont1052, %cont1052, %if.then7.i2888, %if.then3.i2887, %if.end.i2885, %cont1088, %if.else1081
  %ntlm_seen.1 = phi i8 [ %ntlm_seen.0, %if.else1081 ], [ %ntlm_seen.0, %cont1088 ], [ 1, %cont1052 ], [ 1, %cont1052 ], [ 1, %cont1052 ], [ 1, %cont1052 ], [ 1, %cont1052 ], [ 1, %cont1052 ], [ %ntlm_seen.0, %if.end.i2885 ], [ %ntlm_seen.0, %if.then3.i2887 ], [ %ntlm_seen.0, %if.then7.i2888 ], [ 1, %cont1052 ], [ %ntlm_seen.0, %cont1096 ]
  call void @free(i8* %call1036) nounwind
  %469 = load i8** %message, align 4, !tbaa !0
  %tobool1128 = icmp eq i8* %469, null
  br i1 %tobool1128, label %if.end1131, label %if.else1130

if.else1130:                                      ; preds = %if.end1127
  call void @free(i8* %469) nounwind
  br label %if.end1131

if.end1131:                                       ; preds = %if.end1127, %if.else1130
  %headers.i2890 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %470 = load i8*** %headers.i2890, align 4, !tbaa !0
  %tobool.i2891 = icmp eq i8** %470, null
  br i1 %tobool.i2891, label %resp_free.exit2894, label %if.else.i2892

if.else.i2892:                                    ; preds = %if.end1131
  %471 = bitcast i8** %470 to i8*
  call void @free(i8* %471) nounwind
  br label %resp_free.exit2894

resp_free.exit2894:                               ; preds = %if.end1131, %if.else.i2892
  %472 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %472) nounwind
  call void @free(i8* %call.i27463135) nounwind
  br label %retry_with_auth

cont1137:                                         ; preds = %cont1007, %cont1007, %cont1007, %cont1007, %cont1007, %cont1007, %cont1007, %if.end949, %land.lhs.true951, %land.lhs.true953, %cont992
  %call1138 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8]* @.str103, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 1, i8* %call1138) nounwind
  call fastcc void @request_free(%struct.request* %7)
  %473 = load i8** %message, align 4, !tbaa !0
  %tobool1139 = icmp eq i8* %473, null
  br i1 %tobool1139, label %if.end1142, label %if.else1141

if.else1141:                                      ; preds = %cont1137
  call void @free(i8* %473) nounwind
  br label %if.end1142

if.end1142:                                       ; preds = %cont1137, %if.else1141
  %headers.i2895 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %474 = load i8*** %headers.i2895, align 4, !tbaa !0
  %tobool.i2896 = icmp eq i8** %474, null
  br i1 %tobool.i2896, label %resp_free.exit2899, label %if.else.i2897

if.else.i2897:                                    ; preds = %if.end1142
  %475 = bitcast i8** %474 to i8*
  call void @free(i8* %475) nounwind
  br label %resp_free.exit2899

resp_free.exit2899:                               ; preds = %if.end1142, %if.else.i2897
  %476 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %476) nounwind
  call void @free(i8* %call.i27463135) nounwind
  br label %return

if.else1145:                                      ; preds = %if.end850
  %477 = and i8 %ntlm_seen.0, 1
  %tobool1146 = icmp eq i8 %477, 0
  br i1 %tobool1146, label %if.end1149, label %if.then1147

if.then1147:                                      ; preds = %if.else1145
  store i8 1, i8* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 4), align 1, !tbaa !3
  br label %if.end1149

if.end1149:                                       ; preds = %if.else1145, %if.then1147
  %local_file = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 13
  %478 = load i8** %local_file, align 4, !tbaa !0
  %tobool1150 = icmp eq i8* %478, null
  br i1 %tobool1150, label %if.then1151, label %if.end1177

if.then1151:                                      ; preds = %if.end1149
  %479 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 132), align 4, !tbaa !3, !range !4
  %tobool1153 = icmp eq i8 %479, 0
  br i1 %tobool1153, label %if.then1162, label %cont1157

cont1157:                                         ; preds = %if.then1151
  %480 = bitcast i8** %b.i2900 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %480) nounwind
  %481 = bitcast i8** %e.i2901 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %481) nounwind
  %call.i.i2902 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([20 x i8]* @.str104, i32 0, i32 0), i32 0, i8** %b.i2900, i8** %e.i2901) nounwind
  %cmp.i.i2903 = icmp eq i32 %call.i.i2902, -1
  br i1 %cmp.i.i2903, label %if.then1162, label %if.then1.i2908

if.then1.i2908:                                   ; preds = %cont1157
  %482 = load i8** %e.i2901, align 4, !tbaa !0
  %483 = load i8** %b.i2900, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i2904 = ptrtoint i8* %482 to i32
  %sub.ptr.rhs.cast.i2905 = ptrtoint i8* %483 to i32
  %sub.ptr.sub.i2906 = sub i32 %sub.ptr.lhs.cast.i2904, %sub.ptr.rhs.cast.i2905
  %cmp.i2907 = icmp sgt i32 %sub.ptr.sub.i2906, 255
  br i1 %cmp.i2907, label %lor.lhs.false1159, label %cond.end.i2909

cond.end.i2909:                                   ; preds = %if.then1.i2908
  %484 = icmp sgt i32 %sub.ptr.sub.i2906, -1
  br i1 %484, label %lor.lhs.false1159, label %ioc_bb7.i2910

ioc_bb7.i2910:                                    ; preds = %cond.end.i2909
  %485 = sext i32 %sub.ptr.sub.i2906 to i64
  call void @__ioc_report_conversion(i32 673, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %485, i8 1) nounwind
  br label %lor.lhs.false1159

lor.lhs.false1159:                                ; preds = %if.then1.i2908, %cond.end.i2909, %ioc_bb7.i2910
  %cond1.i2911 = phi i32 [ %sub.ptr.sub.i2906, %ioc_bb7.i2910 ], [ %sub.ptr.sub.i2906, %cond.end.i2909 ], [ 255, %if.then1.i2908 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay733, i8* %483, i32 %cond1.i2911, i32 1, i1 false) nounwind
  %arrayidx.i2912 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 %cond1.i2911
  store i8 0, i8* %arrayidx.i2912, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 -1, i8* %480) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %481) nounwind
  %486 = bitcast i8** %hdr.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %486) nounwind
  %487 = bitcast %struct.param_token* %name.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %487) nounwind
  %488 = bitcast %struct.param_token* %value.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %488) nounwind
  store i8* %arraydecay733, i8** %hdr.addr.i, align 4, !tbaa !0
  %call84.i = call zeroext i1 @extract_param(i8** %hdr.addr.i, %struct.param_token* %name.i, %struct.param_token* %value.i, i8 signext 59) nounwind
  br i1 %call84.i, label %while.body.lr.ph.i, label %parse_content_disposition.exit

while.body.lr.ph.i:                               ; preds = %lor.lhs.false1159
  %e.i2916 = getelementptr inbounds %struct.param_token* %name.i, i32 0, i32 1
  %b.i2917 = getelementptr inbounds %struct.param_token* %name.i, i32 0, i32 0
  %b14.i = getelementptr inbounds %struct.param_token* %value.i, i32 0, i32 0
  %e17.i = getelementptr inbounds %struct.param_token* %value.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cont.backedge.i, %while.body.lr.ph.i
  %489 = phi i8* [ %495, %cont.backedge.i ], [ null, %while.body.lr.ph.i ]
  %490 = load i8** %e.i2916, align 4, !tbaa !0
  %491 = load i8** %b.i2917, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i2918 = ptrtoint i8* %490 to i32
  %sub.ptr.rhs.cast.i2919 = ptrtoint i8* %491 to i32
  %sub.ptr.sub.i2920 = sub i32 %sub.ptr.lhs.cast.i2918, %sub.ptr.rhs.cast.i2919
  %492 = icmp sgt i32 %sub.ptr.sub.i2920, -1
  br i1 %492, label %cont6.i2922, label %ioc_bb1.i

ioc_bb1.i:                                        ; preds = %while.body.i
  %493 = sext i32 %sub.ptr.sub.i2920 to i64
  call void @__ioc_report_conversion(i32 1088, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %493, i8 1) nounwind
  br label %cont6.i2922

cont6.i2922:                                      ; preds = %ioc_bb1.i, %while.body.i
  %cmp.i2921 = icmp eq i32 %sub.ptr.sub.i2920, 8
  br i1 %cmp.i2921, label %land.rhs.i2923, label %cont.backedge.i

land.rhs.i2923:                                   ; preds = %cont6.i2922
  %call12.i = call i32 @strncasecmp(i8* %491, i8* getelementptr inbounds ([9 x i8]* @.str134, i32 0, i32 0), i32 8) nounwind readonly
  %lnot.i = icmp eq i32 %call12.i, 0
  br i1 %lnot.i, label %land.lhs.true.i2924, label %cont.backedge.i

land.lhs.true.i2924:                              ; preds = %land.rhs.i2923
  %494 = load i8** %b14.i, align 4, !tbaa !0
  %cmp15.i = icmp eq i8* %494, null
  br i1 %cmp15.i, label %cont.backedge.i, label %if.then.i2926

cont.backedge.i:                                  ; preds = %if.else60.i, %append_value_to_filename.exit.i, %if.end52.i, %land.lhs.true.i2924, %land.rhs.i2923, %cont6.i2922
  %495 = phi i8* [ %call63.i, %if.else60.i ], [ %call14.i.i, %append_value_to_filename.exit.i ], [ %489, %if.end52.i ], [ %489, %land.lhs.true.i2924 ], [ %489, %land.rhs.i2923 ], [ %489, %cont6.i2922 ]
  %call.i2925 = call zeroext i1 @extract_param(i8** %hdr.addr.i, %struct.param_token* %name.i, %struct.param_token* %value.i, i8 signext 59) nounwind
  br i1 %call.i2925, label %while.body.i, label %parse_content_disposition.exit

if.then.i2926:                                    ; preds = %land.lhs.true.i2924
  %496 = load i8** %e17.i, align 4, !tbaa !0
  %sub.ptr.lhs.cast19.i = ptrtoint i8* %496 to i32
  %sub.ptr.rhs.cast20.i = ptrtoint i8* %494 to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  %497 = icmp sgt i32 %sub.ptr.sub21.i, -1
  br i1 %497, label %cont24.thread.i, label %ioc_bb33.i

cont24.thread.i:                                  ; preds = %if.then.i2926
  %call2585.i = call i8* @memrchr(i8* %494, i32 47, i32 %sub.ptr.sub21.i) nounwind readonly
  br label %cont34.i

ioc_bb33.i:                                       ; preds = %if.then.i2926
  %498 = sext i32 %sub.ptr.sub21.i to i64
  call void @__ioc_report_conversion(i32 1091, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %498, i8 1) nounwind
  %call25.i = call i8* @memrchr(i8* %494, i32 47, i32 %sub.ptr.sub21.i) nounwind readonly
  call void @__ioc_report_conversion(i32 1092, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %498, i8 1) nounwind
  br label %cont34.i

cont34.i:                                         ; preds = %ioc_bb33.i, %cont24.thread.i
  %call2586.i = phi i8* [ %call2585.i, %cont24.thread.i ], [ %call25.i, %ioc_bb33.i ]
  %call35.i2927 = call i8* @memrchr(i8* %494, i32 92, i32 %sub.ptr.sub21.i) nounwind readonly
  %tobool36.i = icmp ne i8* %call2586.i, null
  %tobool36.not.i = xor i1 %tobool36.i, true
  %tobool38.i = icmp eq i8* %call35.i2927, null
  %or.cond.i2928 = or i1 %tobool38.i, %tobool36.not.i
  br i1 %or.cond.i2928, label %if.else.i2931, label %if.then39.i

if.then39.i:                                      ; preds = %cont34.i
  %cmp40.i = icmp ugt i8* %call2586.i, %call35.i2927
  %cond.i2929 = select i1 %cmp40.i, i8* %call2586.i, i8* %call35.i2927
  %add.ptr.i2930 = getelementptr inbounds i8* %cond.i2929, i32 1
  store i8* %add.ptr.i2930, i8** %b14.i, align 4, !tbaa !0
  br label %if.end52.i

if.else.i2931:                                    ; preds = %cont34.i
  %or.cond83.i = and i1 %tobool38.i, %tobool36.not.i
  br i1 %or.cond83.i, label %if.end52.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.else.i2931
  %cond49.i = select i1 %tobool36.i, i8* %call2586.i, i8* %call35.i2927
  %add.ptr50.i = getelementptr inbounds i8* %cond49.i, i32 1
  store i8* %add.ptr50.i, i8** %b14.i, align 4, !tbaa !0
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then44.i, %if.else.i2931, %if.then39.i
  %499 = phi i8* [ %494, %if.else.i2931 ], [ %add.ptr50.i, %if.then44.i ], [ %add.ptr.i2930, %if.then39.i ]
  %cmp55.i = icmp eq i8* %499, %496
  br i1 %cmp55.i, label %cont.backedge.i, label %if.end57.i

if.end57.i:                                       ; preds = %if.end52.i
  %tobool58.i = icmp eq i8* %489, null
  br i1 %tobool58.i, label %if.else60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end57.i
  %call.i.i2932 = call i32 @strlen(i8* %489) nounwind readonly
  %500 = icmp sgt i32 %call.i.i2932, -1
  br i1 %500, label %cont.i.i, label %ioc_bb.i.i

ioc_bb.i.i:                                       ; preds = %if.then59.i
  %501 = zext i32 %call.i.i2932 to i64
  call void @__ioc_report_conversion(i32 1056, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %501, i8 0) nounwind
  br label %cont.i.i

cont.i.i:                                         ; preds = %ioc_bb.i.i, %if.then59.i
  %call1.i.i = call i32 @strlen(i8* %489) nounwind readonly
  %sub.ptr.rhs.cast.i.i2934 = ptrtoint i8* %499 to i32
  %sub.ptr.sub.i.i2935 = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast.i.i2934
  %502 = icmp sgt i32 %sub.ptr.sub.i.i2935, -1
  br i1 %502, label %cont3.i.i, label %ioc_bb2.i.i

ioc_bb2.i.i:                                      ; preds = %cont.i.i
  %503 = sext i32 %sub.ptr.sub.i.i2935 to i64
  call void @__ioc_report_conversion(i32 1057, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %503, i8 1) nounwind
  br label %cont3.i.i

cont3.i.i:                                        ; preds = %ioc_bb2.i.i, %cont.i.i
  %504 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call1.i.i, i32 %sub.ptr.sub.i.i2935) nounwind
  %505 = extractvalue { i32, i1 } %504, 0
  %506 = extractvalue { i32, i1 } %504, 1
  br i1 %506, label %ioc_bb4.i.i, label %cont5.i.i

ioc_bb4.i.i:                                      ; preds = %cont3.i.i
  %507 = zext i32 %sub.ptr.sub.i.i2935 to i64
  %508 = zext i32 %call1.i.i to i64
  call void @__ioc_report_add_overflow(i32 1057, i32 42, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %508, i64 %507, i8 5) nounwind
  br label %cont5.i.i

cont5.i.i:                                        ; preds = %ioc_bb4.i.i, %cont3.i.i
  %509 = icmp sgt i32 %505, -1
  br i1 %509, label %cont8.i.i, label %ioc_bb7.i.i

ioc_bb7.i.i:                                      ; preds = %cont5.i.i
  %510 = zext i32 %505 to i64
  call void @__ioc_report_conversion(i32 1057, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %510, i8 0) nounwind
  br label %cont8.i.i

cont8.i.i:                                        ; preds = %ioc_bb7.i.i, %cont5.i.i
  %511 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 1) nounwind
  %512 = extractvalue { i32, i1 } %511, 0
  %513 = extractvalue { i32, i1 } %511, 1
  br i1 %513, label %ioc_bb9.i.i, label %cont10.i.i

ioc_bb9.i.i:                                      ; preds = %cont8.i.i
  %514 = sext i32 %505 to i64
  call void @__ioc_report_add_overflow(i32 1058, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %514, i64 1, i8 13) nounwind
  br label %cont10.i.i

cont10.i.i:                                       ; preds = %ioc_bb9.i.i, %cont8.i.i
  %515 = icmp sgt i32 %512, -1
  br i1 %515, label %cont13.i.i, label %ioc_bb12.i.i

ioc_bb12.i.i:                                     ; preds = %cont10.i.i
  %516 = sext i32 %512 to i64
  call void @__ioc_report_conversion(i32 1058, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %516, i8 1) nounwind
  br label %cont13.i.i

cont13.i.i:                                       ; preds = %ioc_bb12.i.i, %cont10.i.i
  %call14.i.i = call i8* @xrealloc(i8* %489, i32 %512) nounwind
  %add.ptr.i.i2936 = getelementptr inbounds i8* %call14.i.i, i32 %call.i.i2932
  br i1 %502, label %append_value_to_filename.exit.i, label %ioc_bb22.i.i2937

ioc_bb22.i.i2937:                                 ; preds = %cont13.i.i
  %517 = sext i32 %sub.ptr.sub.i.i2935 to i64
  call void @__ioc_report_conversion(i32 1059, i32 54, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %517, i8 1) nounwind
  br label %append_value_to_filename.exit.i

append_value_to_filename.exit.i:                  ; preds = %ioc_bb22.i.i2937, %cont13.i.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr.i.i2936, i8* %499, i32 %sub.ptr.sub.i.i2935, i32 1, i1 false) nounwind
  %arrayidx.i.i = getelementptr inbounds i8* %call14.i.i, i32 %505
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !1
  br label %cont.backedge.i

if.else60.i:                                      ; preds = %if.end57.i
  %call63.i = call i8* @strdupdelim(i8* %499, i8* %496) nounwind
  br label %cont.backedge.i

parse_content_disposition.exit:                   ; preds = %cont.backedge.i, %lor.lhs.false1159
  %518 = phi i8* [ null, %lor.lhs.false1159 ], [ %495, %cont.backedge.i ]
  %not.tobool66.i = icmp eq i8* %518, null
  call void @llvm.lifetime.end(i64 -1, i8* %486) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %487) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %488) nounwind
  br i1 %not.tobool66.i, label %if.then1162, label %do.body1166

if.then1162:                                      ; preds = %parse_content_disposition.exit, %cont1157, %if.then1151
  %call1163 = call i8* @url_file_name(%struct.url* %u, i8* null) nounwind
  store i8* %call1163, i8** %local_file, align 4, !tbaa !0
  br label %if.end1177

do.body1166:                                      ; preds = %parse_content_disposition.exit
  %519 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1170 = icmp eq i8 %519, 0
  br i1 %tobool1170, label %do.end1173, label %if.then1171, !prof !10

if.then1171:                                      ; preds = %do.body1166
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([46 x i8]* @.str105, i32 0, i32 0), i8* %518) nounwind
  br label %do.end1173

do.end1173:                                       ; preds = %do.body1166, %if.then1171
  %call1174 = call i8* @url_file_name(%struct.url* %u, i8* %518) nounwind
  store i8* %call1174, i8** %local_file, align 4, !tbaa !0
  br label %if.end1177

if.end1177:                                       ; preds = %if.end1149, %if.then1162, %do.end1173
  %520 = phi i8* [ %478, %if.end1149 ], [ %call1163, %if.then1162 ], [ %call1174, %do.end1173 ]
  %existence_checked = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 14
  %521 = load i8* %existence_checked, align 1, !tbaa !3, !range !4
  %tobool1178 = icmp eq i8 %521, 0
  br i1 %tobool1178, label %land.lhs.true1179, label %if.end1222

land.lhs.true1179:                                ; preds = %if.end1177
  %call1181 = call zeroext i1 @file_exists_p(i8* %520) nounwind
  br i1 %call1181, label %if.then1183, label %if.end1222

if.then1183:                                      ; preds = %land.lhs.true1179
  %522 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 17), align 2, !tbaa !3, !range !4
  %tobool1184.not = icmp eq i8 %522, 0
  %523 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool1187 = icmp ne i8* %523, null
  %or.cond2056 = or i1 %tobool1187, %tobool1184.not
  br i1 %or.cond2056, label %if.else1196, label %if.then1188

if.then1188:                                      ; preds = %if.then1183
  %524 = load i8** %local_file, align 4, !tbaa !0
  %call.i2939 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8]* @.str174, i32 0, i32 0), i32 5) nounwind
  %call1.i2940 = call i8* @quote(i8* %524) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call.i2939, i8* %call1.i2940) nounwind
  %525 = load i32* %dt, align 4, !tbaa !5
  %or.i = or i32 %525, 2
  store i32 %or.i, i32* %dt, align 4, !tbaa !5
  %call2.i = call zeroext i1 @has_html_suffix_p(i8* %524) nounwind
  br i1 %call2.i, label %if.then.i2941, label %get_file_flags.exit

if.then.i2941:                                    ; preds = %if.then1188
  %526 = load i32* %dt, align 4, !tbaa !5
  %or3.i = or i32 %526, 1
  store i32 %or3.i, i32* %dt, align 4, !tbaa !5
  br label %get_file_flags.exit

get_file_flags.exit:                              ; preds = %if.then1188, %if.then.i2941
  call fastcc void @request_free(%struct.request* %7)
  %headers.i2943 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %527 = load i8*** %headers.i2943, align 4, !tbaa !0
  %tobool.i2944 = icmp eq i8** %527, null
  br i1 %tobool.i2944, label %resp_free.exit2947, label %if.else.i2945

if.else.i2945:                                    ; preds = %get_file_flags.exit
  %528 = bitcast i8** %527 to i8*
  call void @free(i8* %528) nounwind
  br label %resp_free.exit2947

resp_free.exit2947:                               ; preds = %get_file_flags.exit, %if.else.i2945
  %529 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %529) nounwind
  call void @free(i8* %call.i27463135) nounwind
  %530 = load i8** %message, align 4, !tbaa !0
  %tobool1190 = icmp eq i8* %530, null
  br i1 %tobool1190, label %return, label %if.else1192

if.else1192:                                      ; preds = %resp_free.exit2947
  call void @free(i8* %530) nounwind
  br label %return

if.else1196:                                      ; preds = %if.then1183
  %531 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 58), align 1, !tbaa !3, !range !4
  %532 = or i8 %531, %522
  %533 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %534 = or i8 %532, %533
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %lor.lhs.false1205, label %if.end1222

lor.lhs.false1205:                                ; preds = %if.else1196
  %536 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 12), align 4, !tbaa !3, !range !4
  %tobool1206 = icmp ne i8 %536, 0
  %or.cond2057 = or i1 %tobool1206, %tobool1187
  br i1 %or.cond2057, label %if.end1222, label %if.then1210

if.then1210:                                      ; preds = %lor.lhs.false1205
  %537 = load i8** %local_file, align 4, !tbaa !0
  %call1212 = call i8* @unique_name(i8* %537, i1 zeroext true) nounwind
  %538 = load i8** %local_file, align 4, !tbaa !0
  %cmp1214 = icmp eq i8* %call1212, %538
  br i1 %cmp1214, label %if.end1218, label %if.then1216

if.then1216:                                      ; preds = %if.then1210
  call void @free(i8* %538) nounwind
  br label %if.end1218

if.end1218:                                       ; preds = %if.then1210, %if.then1216
  store i8* %call1212, i8** %local_file, align 4, !tbaa !0
  br label %if.end1222

if.end1222:                                       ; preds = %if.else1196, %if.end1177, %if.end1218, %lor.lhs.false1205, %land.lhs.true1179
  store i8 1, i8* %existence_checked, align 1, !tbaa !3
  %539 = load i16* bitcast (i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91) to i16*), align 4
  %540 = trunc i16 %539 to i8
  %tobool1224 = icmp eq i8 %540, 0
  %541 = lshr i16 %539, 8
  %542 = trunc i16 %541 to i8
  br i1 %tobool1224, label %if.end1257, label %land.lhs.true1226

land.lhs.true1226:                                ; preds = %if.end1222
  %timestamp_checked = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 15
  %543 = load i8* %timestamp_checked, align 1, !tbaa !3, !range !4
  %tobool1227 = icmp eq i8 %543, 0
  br i1 %tobool1227, label %if.then1228, label %if.end1257

if.then1228:                                      ; preds = %land.lhs.true1226
  %544 = load i8** %local_file, align 4, !tbaa !0
  %call1230 = call i32 @strlen(i8* %544) nounwind readonly
  %545 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call1230, i32 6)
  %546 = extractvalue { i32, i1 } %545, 0
  %547 = extractvalue { i32, i1 } %545, 1
  br i1 %547, label %ioc_bb1231, label %cont1232

ioc_bb1231:                                       ; preds = %if.then1228
  %548 = zext i32 %call1230 to i64
  call void @__ioc_report_add_overflow(i32 2277, i32 70, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %548, i64 6, i8 5) nounwind
  %.pre3487 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 92), align 1, !tbaa !3
  br label %cont1232

cont1232:                                         ; preds = %if.then1228, %ioc_bb1231
  %549 = phi i8 [ %542, %if.then1228 ], [ %.pre3487, %ioc_bb1231 ]
  %550 = alloca i8, i32 %546, align 1
  %tobool1233 = icmp eq i8 %549, 0
  br i1 %tobool1233, label %cont1232.if.then1243_crit_edge, label %if.end1241

cont1232.if.then1243_crit_edge:                   ; preds = %cont1232
  %.pre3490 = bitcast %struct.stat* %st to %struct.stat64*
  br label %if.then1243

if.end1241:                                       ; preds = %cont1232
  %551 = load i8** %local_file, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %550, i8* %551, i32 %call1230, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %550, i32 %call1230
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str106, i32 0, i32 0), i32 6, i32 1, i1 false)
  %552 = bitcast %struct.stat* %st to %struct.stat64*
  %call.i2948 = call i32 @__xstat64(i32 3, i8* %550, %struct.stat64* %552) nounwind
  %cmp1237 = icmp eq i32 %call.i2948, 0
  %.2670 = select i1 %cmp1237, i8* %550, i8* null
  br i1 %cmp1237, label %if.end1251, label %if.then1243

if.then1243:                                      ; preds = %if.end1241, %cont1232.if.then1243_crit_edge
  %.pre-phi = phi %struct.stat64* [ %.pre3490, %cont1232.if.then1243_crit_edge ], [ %552, %if.end1241 ]
  %local_filename.03090 = phi i8* [ null, %cont1232.if.then1243_crit_edge ], [ %.2670, %if.end1241 ]
  %553 = load i8** %local_file, align 4, !tbaa !0
  %call.i2949 = call i32 @__xstat64(i32 3, i8* %553, %struct.stat64* %.pre-phi) nounwind
  %cmp1246 = icmp eq i32 %call.i2949, 0
  br i1 %cmp1246, label %if.then1248, label %if.end1251

if.then1248:                                      ; preds = %if.then1243
  %554 = load i8** %local_file, align 4, !tbaa !0
  br label %if.end1251

if.end1251:                                       ; preds = %if.then1243, %if.then1248, %if.end1241
  %local_filename.1 = phi i8* [ %.2670, %if.end1241 ], [ %554, %if.then1248 ], [ %local_filename.03090, %if.then1243 ]
  %cmp1252 = icmp eq i8* %local_filename.1, null
  br i1 %cmp1252, label %if.end1257, label %if.then1254

if.then1254:                                      ; preds = %if.end1251
  %call1255 = call noalias i8* @xstrdup(i8* %local_filename.1) nounwind
  %orig_file_name = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 16
  store i8* %call1255, i8** %orig_file_name, align 4, !tbaa !0
  %st_size = getelementptr inbounds %struct.stat* %st, i32 0, i32 9
  %555 = load i64* %st_size, align 4, !tbaa !6
  %orig_file_size = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 17
  store i64 %555, i64* %orig_file_size, align 4, !tbaa !6
  %tv_sec = getelementptr inbounds %struct.stat* %st, i32 0, i32 13, i32 0
  %556 = load i32* %tv_sec, align 4, !tbaa !7
  %orig_file_tstamp = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 18
  store i32 %556, i32* %orig_file_tstamp, align 4, !tbaa !7
  br label %if.end1257

if.end1257:                                       ; preds = %if.end1251, %land.lhs.true1226, %if.end1222, %if.then1254
  call fastcc void @request_free(%struct.request* %7)
  %statcode1258 = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 8
  store i32 %call667, i32* %statcode1258, align 4, !tbaa !5
  %cmp1261 = icmp eq i32 %call667, -1
  br i1 %cmp1261, label %if.then1263, label %if.else1267

if.then1263:                                      ; preds = %if.end1257
  %call1264 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8]* @.str82, i32 0, i32 0), i32 5) nounwind
  %call1265 = call noalias i8* @xstrdup(i8* %call1264) nounwind
  store i8* %call1265, i8** %error, align 4, !tbaa !0
  br label %if.end1277

if.else1267:                                      ; preds = %if.end1257
  %557 = load i8** %message, align 4, !tbaa !0
  %558 = load i8* %557, align 1, !tbaa !1
  %tobool1268 = icmp eq i8 %558, 0
  br i1 %tobool1268, label %if.then1269, label %if.else1273

if.then1269:                                      ; preds = %if.else1267
  %call1270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8]* @.str107, i32 0, i32 0), i32 5) nounwind
  %call1271 = call noalias i8* @xstrdup(i8* %call1270) nounwind
  store i8* %call1271, i8** %error, align 4, !tbaa !0
  br label %if.end1277

if.else1273:                                      ; preds = %if.else1267
  %call1274 = call noalias i8* @xstrdup(i8* %557) nounwind
  store i8* %call1274, i8** %error, align 4, !tbaa !0
  br label %if.end1277

if.end1277:                                       ; preds = %if.then1269, %if.else1273, %if.then1263
  %559 = load i8** %message, align 4, !tbaa !0
  %tobool1278 = icmp eq i8* %559, null
  br i1 %tobool1278, label %if.end1281, label %if.else1280

if.else1280:                                      ; preds = %if.end1277
  call void @free(i8* %559) nounwind
  br label %if.end1281

if.end1281:                                       ; preds = %if.end1277, %if.else1280
  %560 = bitcast i8** %b.i2950 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %560) nounwind
  %561 = bitcast i8** %e.i2951 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %561) nounwind
  %call.i.i2952 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([13 x i8]* @.str67, i32 0, i32 0), i32 0, i8** %b.i2950, i8** %e.i2951) nounwind
  %cmp.i.i2953 = icmp eq i32 %call.i.i2952, -1
  br i1 %cmp.i.i2953, label %if.end1329, label %resp_header_strdup.exit2957

resp_header_strdup.exit2957:                      ; preds = %if.end1281
  %562 = load i8** %b.i2950, align 4, !tbaa !0
  %563 = load i8** %e.i2951, align 4, !tbaa !0
  %call1.i2954 = call i8* @strdupdelim(i8* %562, i8* %563) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %560) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %561) nounwind
  %tobool1283 = icmp eq i8* %call1.i2954, null
  br i1 %tobool1283, label %if.end1329, label %if.then1284

if.then1284:                                      ; preds = %resp_header_strdup.exit2957
  %call1285 = call i8* @strchr(i8* %call1.i2954, i32 59) nounwind
  %tobool1286 = icmp eq i8* %call1285, null
  br i1 %tobool1286, label %if.end1329, label %if.then1287

if.then1287:                                      ; preds = %if.then1284
  %add.ptr1289 = getelementptr inbounds i8* %call1285, i32 1
  %cmp12903114 = icmp ugt i8* %call1285, %call1.i2954
  br i1 %cmp12903114, label %cont1295, label %cont1317

cont1295:                                         ; preds = %if.then1287, %while.cond.backedge
  %tmp.03115 = phi i8* [ %arrayidx1296, %while.cond.backedge ], [ %call1285, %if.then1287 ]
  %arrayidx1296 = getelementptr inbounds i8* %tmp.03115, i32 -1
  %564 = load i8* %arrayidx1296, align 1, !tbaa !1
  switch i8 %564, label %cont1317 [
    i8 32, label %while.cond.backedge
    i8 13, label %while.cond.backedge
    i8 12, label %while.cond.backedge
    i8 11, label %while.cond.backedge
    i8 10, label %while.cond.backedge
    i8 9, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %cont1295, %cont1295, %cont1295, %cont1295, %cont1295, %cont1295
  %cmp1290 = icmp ugt i8* %arrayidx1296, %call1.i2954
  br i1 %cmp1290, label %cont1295, label %cont1317

cont1317:                                         ; preds = %while.cond.backedge, %cont1295, %if.then1287
  %tmp.0.lcssa = phi i8* [ %call1285, %if.then1287 ], [ %tmp.03115, %cont1295 ], [ %arrayidx1296, %while.cond.backedge ]
  store i8 0, i8* %tmp.0.lcssa, align 1, !tbaa !1
  %565 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 134), align 2, !tbaa !3, !range !4
  %tobool1318.not = icmp eq i8 %565, 0
  %566 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 135), align 4, !tbaa !0
  %tobool1321 = icmp ne i8* %566, null
  %or.cond2062 = or i1 %tobool1318.not, %tobool1321
  br i1 %or.cond2062, label %if.end1329, label %if.then1322

if.then1322:                                      ; preds = %cont1317
  %call1323 = call i8* @parse_charset(i8* %add.ptr1289) nounwind
  %tobool1324 = icmp eq i8* %call1323, null
  br i1 %tobool1324, label %if.end1329, label %if.then1325

if.then1325:                                      ; preds = %if.then1322
  call void @set_content_encoding(%struct.iri* %iri, i8* %call1323) nounwind
  br label %if.end1329

if.end1329:                                       ; preds = %resp_header_strdup.exit2957, %if.end1281, %if.then1322, %if.then1284, %if.then1325, %cont1317
  %tobool12833096 = phi i1 [ true, %if.then1322 ], [ true, %if.then1284 ], [ true, %if.then1325 ], [ true, %cont1317 ], [ false, %resp_header_strdup.exit2957 ], [ false, %if.end1281 ]
  %retval.0.i29563092 = phi i8* [ %call1.i2954, %if.then1322 ], [ %call1.i2954, %if.then1284 ], [ %call1.i2954, %if.then1325 ], [ %call1.i2954, %cont1317 ], [ null, %resp_header_strdup.exit2957 ], [ null, %if.end1281 ]
  %567 = bitcast i8** %b.i2958 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %567) nounwind
  %568 = bitcast i8** %e.i2959 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %568) nounwind
  %call.i.i2960 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([9 x i8]* @.str108, i32 0, i32 0), i32 0, i8** %b.i2958, i8** %e.i2959) nounwind
  %cmp.i.i2961 = icmp eq i32 %call.i.i2960, -1
  br i1 %cmp.i.i2961, label %resp_header_strdup.exit2965, label %if.end.i2963

if.end.i2963:                                     ; preds = %if.end1329
  %569 = load i8** %b.i2958, align 4, !tbaa !0
  %570 = load i8** %e.i2959, align 4, !tbaa !0
  %call1.i2962 = call i8* @strdupdelim(i8* %569, i8* %570) nounwind
  br label %resp_header_strdup.exit2965

resp_header_strdup.exit2965:                      ; preds = %if.end1329, %if.end.i2963
  %retval.0.i2964 = phi i8* [ %call1.i2962, %if.end.i2963 ], [ null, %if.end1329 ]
  call void @llvm.lifetime.end(i64 -1, i8* %567) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %568) nounwind
  store i8* %retval.0.i2964, i8** %newloc, align 4, !tbaa !0
  %571 = bitcast i8** %b.i2966 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %571) nounwind
  %572 = bitcast i8** %e.i2967 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %572) nounwind
  %call.i.i2968 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([14 x i8]* @.str109, i32 0, i32 0), i32 0, i8** %b.i2966, i8** %e.i2967) nounwind
  %cmp.i.i2969 = icmp eq i32 %call.i.i2968, -1
  br i1 %cmp.i.i2969, label %resp_header_strdup.exit2973, label %if.end.i2971

if.end.i2971:                                     ; preds = %resp_header_strdup.exit2965
  %573 = load i8** %b.i2966, align 4, !tbaa !0
  %574 = load i8** %e.i2967, align 4, !tbaa !0
  %call1.i2970 = call i8* @strdupdelim(i8* %573, i8* %574) nounwind
  br label %resp_header_strdup.exit2973

resp_header_strdup.exit2973:                      ; preds = %resp_header_strdup.exit2965, %if.end.i2971
  %retval.0.i2972 = phi i8* [ %call1.i2970, %if.end.i2971 ], [ null, %resp_header_strdup.exit2965 ]
  call void @llvm.lifetime.end(i64 -1, i8* %571) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %572) nounwind
  store i8* %retval.0.i2972, i8** %remote_time, align 4, !tbaa !0
  %575 = bitcast i8** %b.i2974 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %575) nounwind
  %576 = bitcast i8** %e.i2975 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %576) nounwind
  %call.i.i2976 = call fastcc i32 @resp_header_locate(%struct.response* %call666, i8* getelementptr inbounds ([14 x i8]* @.str110, i32 0, i32 0), i32 0, i8** %b.i2974, i8** %e.i2975) nounwind
  %cmp.i.i2977 = icmp eq i32 %call.i.i2976, -1
  br i1 %cmp.i.i2977, label %if.end1350, label %if.then1.i2982

if.then1.i2982:                                   ; preds = %resp_header_strdup.exit2973
  %577 = load i8** %e.i2975, align 4, !tbaa !0
  %578 = load i8** %b.i2974, align 4, !tbaa !0
  %sub.ptr.lhs.cast.i2978 = ptrtoint i8* %577 to i32
  %sub.ptr.rhs.cast.i2979 = ptrtoint i8* %578 to i32
  %sub.ptr.sub.i2980 = sub i32 %sub.ptr.lhs.cast.i2978, %sub.ptr.rhs.cast.i2979
  %cmp.i2981 = icmp sgt i32 %sub.ptr.sub.i2980, 255
  br i1 %cmp.i2981, label %if.then1338, label %cond.end.i2983

cond.end.i2983:                                   ; preds = %if.then1.i2982
  %579 = icmp sgt i32 %sub.ptr.sub.i2980, -1
  br i1 %579, label %if.then1338, label %ioc_bb7.i2984

ioc_bb7.i2984:                                    ; preds = %cond.end.i2983
  %580 = sext i32 %sub.ptr.sub.i2980 to i64
  call void @__ioc_report_conversion(i32 673, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %580, i8 1) nounwind
  br label %if.then1338

if.then1338:                                      ; preds = %if.then1.i2982, %cond.end.i2983, %ioc_bb7.i2984
  %cond1.i2985 = phi i32 [ %sub.ptr.sub.i2980, %ioc_bb7.i2984 ], [ %sub.ptr.sub.i2980, %cond.end.i2983 ], [ 255, %if.then1.i2982 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay733, i8* %578, i32 %cond1.i2985, i32 1, i1 false) nounwind
  %arrayidx.i2986 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 %cond1.i2985
  store i8 0, i8* %arrayidx.i2986, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 -1, i8* %575) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %576) nounwind
  %call.i2990 = call i32 @strncasecmp(i8* %arraydecay733, i8* getelementptr inbounds ([6 x i8]* @.str133, i32 0, i32 0), i32 5) nounwind readonly
  %cmp.i2991 = icmp eq i32 %call.i2990, 0
  br i1 %cmp.i2991, label %if.then.i2993, label %entry.if.end23_crit_edge.i

entry.if.end23_crit_edge.i:                       ; preds = %if.then1338
  %.pre208.i = load i8* %arraydecay733, align 1, !tbaa !1
  br label %if.end23.i2996

if.then.i2993:                                    ; preds = %if.then1338
  %add.ptr.i2992 = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 5
  %581 = load i8* %add.ptr.i2992, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %581, 58
  %incdec.ptr.i = getelementptr inbounds [256 x i8]* %hdrval, i32 0, i32 6
  %incdec.ptr.add.ptr.i = select i1 %cmp1.i, i8* %incdec.ptr.i, i8* %add.ptr.i2992
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i2994, %if.then.i2993
  %hdr.addr.0.i = phi i8* [ %incdec.ptr20.i, %while.body.i2994 ], [ %incdec.ptr.add.ptr.i, %if.then.i2993 ]
  %582 = load i8* %hdr.addr.0.i, align 1, !tbaa !1
  switch i8 %582, label %if.end23.i2996 [
    i8 32, label %while.body.i2994
    i8 12, label %while.body.i2994
    i8 11, label %while.body.i2994
    i8 10, label %while.body.i2994
    i8 9, label %while.body.i2994
    i8 13, label %while.body.i2994
    i8 0, label %if.end1350
  ]

while.body.i2994:                                 ; preds = %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i
  %incdec.ptr20.i = getelementptr inbounds i8* %hdr.addr.0.i, i32 1
  br label %while.cond.i

if.end23.i2996:                                   ; preds = %while.cond.i, %entry.if.end23_crit_edge.i
  %583 = phi i8 [ %.pre208.i, %entry.if.end23_crit_edge.i ], [ %582, %while.cond.i ]
  %hdr.addr.1.i = phi i8* [ %arraydecay733, %entry.if.end23_crit_edge.i ], [ %hdr.addr.0.i, %while.cond.i ]
  %.off.i2995 = add i8 %583, -48
  %584 = icmp ult i8 %.off.i2995, 10
  br i1 %584, label %for.body.i2997, label %if.end1350

for.body.i2997:                                   ; preds = %if.end23.i2996, %cont47.i
  %585 = phi i8 [ %597, %cont47.i ], [ %583, %if.end23.i2996 ]
  %hdr.addr.2195.i = phi i8* [ %incdec.ptr48.i, %cont47.i ], [ %hdr.addr.1.i, %if.end23.i2996 ]
  %num.0194.i = phi i64 [ %595, %cont47.i ], [ 0, %if.end23.i2996 ]
  %586 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %num.0194.i, i64 10) nounwind
  %587 = extractvalue { i64, i1 } %586, 0
  %588 = extractvalue { i64, i1 } %586, 1
  br i1 %588, label %ioc_bb40.i, label %cont41.i

ioc_bb40.i:                                       ; preds = %for.body.i2997
  call void @__ioc_report_mul_overflow(i32 811, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 10, i64 %num.0194.i, i8 14) nounwind
  %.pre207.i = load i8* %hdr.addr.2195.i, align 1, !tbaa !1
  br label %cont41.i

cont41.i:                                         ; preds = %ioc_bb40.i, %for.body.i2997
  %589 = phi i8 [ %585, %for.body.i2997 ], [ %.pre207.i, %ioc_bb40.i ]
  %conv42.i = sext i8 %589 to i32
  %590 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv42.i, i32 48) nounwind
  %591 = extractvalue { i32, i1 } %590, 0
  %592 = extractvalue { i32, i1 } %590, 1
  br i1 %592, label %ioc_bb43.i, label %cont44.i

ioc_bb43.i:                                       ; preds = %cont41.i
  %593 = sext i8 %589 to i64
  call void @__ioc_report_sub_overflow(i32 811, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %593, i64 48, i8 13) nounwind
  br label %cont44.i

cont44.i:                                         ; preds = %ioc_bb43.i, %cont41.i
  %conv45.i = sext i32 %591 to i64
  %594 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %587, i64 %conv45.i) nounwind
  %595 = extractvalue { i64, i1 } %594, 0
  %596 = extractvalue { i64, i1 } %594, 1
  br i1 %596, label %ioc_bb46.i, label %cont47.i

ioc_bb46.i:                                       ; preds = %cont44.i
  call void @__ioc_report_add_overflow(i32 811, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %587, i64 %conv45.i, i8 14) nounwind
  br label %cont47.i

cont47.i:                                         ; preds = %ioc_bb46.i, %cont44.i
  %incdec.ptr48.i = getelementptr inbounds i8* %hdr.addr.2195.i, i32 1
  %597 = load i8* %incdec.ptr48.i, align 1, !tbaa !1
  %.off178.i = add i8 %597, -48
  %598 = icmp ult i8 %.off178.i, 10
  br i1 %598, label %for.body.i2997, label %for.end.i

for.end.i:                                        ; preds = %cont47.i
  %cmp50.i = icmp eq i8 %597, 45
  br i1 %cmp50.i, label %lor.lhs.false52.i, label %if.end1350

lor.lhs.false52.i:                                ; preds = %for.end.i
  %add.ptr54.i = getelementptr inbounds i8* %hdr.addr.2195.i, i32 2
  %599 = load i8* %add.ptr54.i, align 1, !tbaa !1
  %.off179.i = add i8 %599, -48
  %600 = icmp ult i8 %.off179.i, 10
  br i1 %600, label %for.body74.i, label %if.end1350

for.body74.i:                                     ; preds = %lor.lhs.false52.i, %cont82.i
  %601 = phi i8 [ %613, %cont82.i ], [ %599, %lor.lhs.false52.i ]
  %hdr.addr.3188.i = phi i8* [ %incdec.ptr84.i, %cont82.i ], [ %add.ptr54.i, %lor.lhs.false52.i ]
  %num.1187.i = phi i64 [ %611, %cont82.i ], [ 0, %lor.lhs.false52.i ]
  %602 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %num.1187.i, i64 10) nounwind
  %603 = extractvalue { i64, i1 } %602, 0
  %604 = extractvalue { i64, i1 } %602, 1
  br i1 %604, label %ioc_bb75.i, label %cont76.i

ioc_bb75.i:                                       ; preds = %for.body74.i
  call void @__ioc_report_mul_overflow(i32 817, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 10, i64 %num.1187.i, i8 14) nounwind
  %.pre206.i = load i8* %hdr.addr.3188.i, align 1, !tbaa !1
  br label %cont76.i

cont76.i:                                         ; preds = %ioc_bb75.i, %for.body74.i
  %605 = phi i8 [ %601, %for.body74.i ], [ %.pre206.i, %ioc_bb75.i ]
  %conv77.i = sext i8 %605 to i32
  %606 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv77.i, i32 48) nounwind
  %607 = extractvalue { i32, i1 } %606, 0
  %608 = extractvalue { i32, i1 } %606, 1
  br i1 %608, label %ioc_bb78.i, label %cont79.i

ioc_bb78.i:                                       ; preds = %cont76.i
  %609 = sext i8 %605 to i64
  call void @__ioc_report_sub_overflow(i32 817, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %609, i64 48, i8 13) nounwind
  br label %cont79.i

cont79.i:                                         ; preds = %ioc_bb78.i, %cont76.i
  %conv80.i = sext i32 %607 to i64
  %610 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %603, i64 %conv80.i) nounwind
  %611 = extractvalue { i64, i1 } %610, 0
  %612 = extractvalue { i64, i1 } %610, 1
  br i1 %612, label %ioc_bb81.i, label %cont82.i

ioc_bb81.i:                                       ; preds = %cont79.i
  call void @__ioc_report_add_overflow(i32 817, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %603, i64 %conv80.i, i8 14) nounwind
  br label %cont82.i

cont82.i:                                         ; preds = %ioc_bb81.i, %cont79.i
  %incdec.ptr84.i = getelementptr inbounds i8* %hdr.addr.3188.i, i32 1
  %613 = load i8* %incdec.ptr84.i, align 1, !tbaa !1
  %.off180.i = add i8 %613, -48
  %614 = icmp ult i8 %.off180.i, 10
  br i1 %614, label %for.body74.i, label %for.end85.i

for.end85.i:                                      ; preds = %cont82.i
  %cmp87.i = icmp eq i8 %613, 47
  br i1 %cmp87.i, label %lor.lhs.false89.i, label %if.end1350

lor.lhs.false89.i:                                ; preds = %for.end85.i
  %add.ptr91.i = getelementptr inbounds i8* %hdr.addr.3188.i, i32 2
  %615 = load i8* %add.ptr91.i, align 1, !tbaa !1
  %.off181.i = add i8 %615, -48
  %616 = icmp ult i8 %.off181.i, 10
  br i1 %616, label %for.body118.i, label %if.end1350

for.body118.i:                                    ; preds = %lor.lhs.false89.i, %cont126.i
  %617 = phi i8 [ %629, %cont126.i ], [ %615, %lor.lhs.false89.i ]
  %hdr.addr.4185.i = phi i8* [ %incdec.ptr128.i, %cont126.i ], [ %add.ptr91.i, %lor.lhs.false89.i ]
  %num.2184.i = phi i64 [ %627, %cont126.i ], [ 0, %lor.lhs.false89.i ]
  %618 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %num.2184.i, i64 10) nounwind
  %619 = extractvalue { i64, i1 } %618, 0
  %620 = extractvalue { i64, i1 } %618, 1
  br i1 %620, label %ioc_bb119.i, label %cont120.i

ioc_bb119.i:                                      ; preds = %for.body118.i
  call void @__ioc_report_mul_overflow(i32 826, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 10, i64 %num.2184.i, i8 14) nounwind
  %.pre.i2998 = load i8* %hdr.addr.4185.i, align 1, !tbaa !1
  br label %cont120.i

cont120.i:                                        ; preds = %ioc_bb119.i, %for.body118.i
  %621 = phi i8 [ %617, %for.body118.i ], [ %.pre.i2998, %ioc_bb119.i ]
  %conv121.i = sext i8 %621 to i32
  %622 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv121.i, i32 48) nounwind
  %623 = extractvalue { i32, i1 } %622, 0
  %624 = extractvalue { i32, i1 } %622, 1
  br i1 %624, label %ioc_bb122.i, label %cont123.i

ioc_bb122.i:                                      ; preds = %cont120.i
  %625 = sext i8 %621 to i64
  call void @__ioc_report_sub_overflow(i32 826, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %625, i64 48, i8 13) nounwind
  br label %cont123.i

cont123.i:                                        ; preds = %ioc_bb122.i, %cont120.i
  %conv124.i = sext i32 %623 to i64
  %626 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %619, i64 %conv124.i) nounwind
  %627 = extractvalue { i64, i1 } %626, 0
  %628 = extractvalue { i64, i1 } %626, 1
  br i1 %628, label %ioc_bb125.i, label %cont126.i

ioc_bb125.i:                                      ; preds = %cont123.i
  call void @__ioc_report_add_overflow(i32 826, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %619, i64 %conv124.i, i8 14) nounwind
  br label %cont126.i

cont126.i:                                        ; preds = %ioc_bb125.i, %cont123.i
  %incdec.ptr128.i = getelementptr inbounds i8* %hdr.addr.4185.i, i32 1
  %629 = load i8* %incdec.ptr128.i, align 1, !tbaa !1
  %.off182.i = add i8 %629, -48
  %630 = icmp ult i8 %.off182.i, 10
  br i1 %630, label %for.body118.i, label %if.then1344

if.then1344:                                      ; preds = %cont126.i
  %631 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %611, i64 %595)
  %632 = extractvalue { i64, i1 } %631, 0
  %633 = extractvalue { i64, i1 } %631, 1
  br i1 %633, label %ioc_bb1345, label %cont1346

ioc_bb1345:                                       ; preds = %if.then1344
  call void @__ioc_report_sub_overflow(i32 2361, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %611, i64 %595, i8 14) nounwind
  br label %cont1346

cont1346:                                         ; preds = %if.then1344, %ioc_bb1345
  %634 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %632, i64 1)
  %635 = extractvalue { i64, i1 } %634, 0
  %636 = extractvalue { i64, i1 } %634, 1
  br i1 %636, label %ioc_bb1347, label %if.end1350

ioc_bb1347:                                       ; preds = %cont1346
  call void @__ioc_report_add_overflow(i32 2361, i32 48, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %632, i64 1, i8 14) nounwind
  br label %if.end1350

if.end1350:                                       ; preds = %while.cond.i, %resp_header_strdup.exit2973, %lor.lhs.false89.i, %for.end85.i, %lor.lhs.false52.i, %for.end.i, %if.end23.i2996, %ioc_bb1347, %cont1346
  %contrange.0 = phi i64 [ %595, %cont1346 ], [ %595, %ioc_bb1347 ], [ 0, %if.end23.i2996 ], [ 0, %for.end.i ], [ 0, %lor.lhs.false52.i ], [ 0, %for.end85.i ], [ 0, %lor.lhs.false89.i ], [ 0, %resp_header_strdup.exit2973 ], [ 0, %while.cond.i ]
  %contlen.1 = phi i64 [ %635, %cont1346 ], [ %635, %ioc_bb1347 ], [ %contlen.03086, %if.end23.i2996 ], [ %contlen.03086, %for.end.i ], [ %contlen.03086, %lor.lhs.false52.i ], [ %contlen.03086, %for.end85.i ], [ %contlen.03086, %lor.lhs.false89.i ], [ %contlen.03086, %resp_header_strdup.exit2973 ], [ %contlen.03086, %while.cond.i ]
  %headers.i3000 = getelementptr inbounds %struct.response* %call666, i32 0, i32 1
  %637 = load i8*** %headers.i3000, align 4, !tbaa !0
  %tobool.i3001 = icmp eq i8** %637, null
  br i1 %tobool.i3001, label %resp_free.exit3004, label %if.else.i3002

if.else.i3002:                                    ; preds = %if.end1350
  %638 = bitcast i8** %637 to i8*
  call void @free(i8* %638) nounwind
  br label %resp_free.exit3004

resp_free.exit3004:                               ; preds = %if.end1350, %if.else.i3002
  %639 = bitcast %struct.response* %call666 to i8*
  call void @free(i8* %639) nounwind
  %call667.off2642 = add i32 %call667, -200
  %640 = icmp ult i32 %call667.off2642, 100
  br i1 %640, label %if.then1356, label %if.end1357

if.then1356:                                      ; preds = %resp_free.exit3004
  %641 = load i32* %dt, align 4, !tbaa !5
  %or = or i32 %641, 2
  store i32 %or, i32* %dt, align 4, !tbaa !5
  br label %if.end1357

if.end1357:                                       ; preds = %if.then1356, %resp_free.exit3004
  %call667.off2643 = add i32 %call667, -301
  %642 = icmp ult i32 %call667.off2643, 3
  %cmp1367 = icmp eq i32 %call667, 307
  %or.cond2066 = or i1 %642, %cmp1367
  %cmp1370 = icmp eq i32 %call667, 300
  %or.cond2067 = or i1 %or.cond2066, %cmp1370
  br i1 %or.cond2067, label %if.then1372, label %if.end1508

if.then1372:                                      ; preds = %if.end1357
  br i1 %cmp1370, label %land.lhs.true1375, label %cont1382

land.lhs.true1375:                                ; preds = %if.then1372
  %643 = load i8** %newloc, align 4, !tbaa !0
  %tobool1377 = icmp eq i8* %643, null
  br i1 %tobool1377, label %if.then1378, label %cont1382

if.then1378:                                      ; preds = %land.lhs.true1375
  %644 = load i32* %dt, align 4, !tbaa !5
  %or1379 = or i32 %644, 2
  store i32 %or1379, i32* %dt, align 4, !tbaa !5
  br label %if.end1508

cont1382:                                         ; preds = %if.then1372, %land.lhs.true1375
  %call1383 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8]* @.str111, i32 0, i32 0), i32 5) nounwind
  %645 = load i8** %newloc, align 4, !tbaa !0
  %tobool1385 = icmp eq i8* %645, null
  br i1 %tobool1385, label %cond.false1389, label %cond.true1386

cond.true1386:                                    ; preds = %cont1382
  %call1388 = call i8* @escnonprint_uri(i8* %645) nounwind
  br label %cond.end1391

cond.false1389:                                   ; preds = %cont1382
  %call1390 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8]* @.str112, i32 0, i32 0), i32 5) nounwind
  br label %cond.end1391

cond.end1391:                                     ; preds = %cond.false1389, %cond.true1386
  %cond1392 = phi i8* [ %call1388, %cond.true1386 ], [ %call1390, %cond.false1389 ]
  %646 = load i8** %newloc, align 4, !tbaa !0
  %tobool1394 = icmp eq i8* %646, null
  br i1 %tobool1394, label %cond.end1398, label %cond.true1395

cond.true1395:                                    ; preds = %cond.end1391
  %call1396 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8]* @.str113, i32 0, i32 0), i32 5) nounwind
  br label %cond.end1398

cond.end1398:                                     ; preds = %cond.end1391, %cond.true1395
  %cond1399 = phi i8* [ %call1396, %cond.true1395 ], [ getelementptr inbounds ([1 x i8]* @.str27, i32 0, i32 0), %cond.end1391 ]
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call1383, i8* %cond1392, i8* %cond1399) nounwind
  store i64 0, i64* %len, align 4, !tbaa !6
  store i32 0, i32* %res, align 4, !tbaa !5
  store i64 0, i64* %restval, align 4, !tbaa !6
  br i1 %cmp, label %if.then1404, label %if.else1455

if.then1404:                                      ; preds = %cond.end1398
  %647 = load i8** %url591, align 4, !tbaa !0
  %call1411 = call fastcc i32 @read_response_body(%struct.http_stat* %hs, i32 %sock.2, %struct._IO_FILE* null, i64 %contlen.1, i64 0, i1 zeroext %chunked_transfer_encoding.0, i8* %647, i8* %arraydecay, i8* %arraydecay590, %struct.ip_address* %warc_ip.1, i8* %retval.0.i29563092, i32 %call667, i8* %call.i27463135)
  %cmp1412 = icmp eq i32 %call1411, 39
  br i1 %cmp1412, label %lor.lhs.false1414, label %do.body1419

lor.lhs.false1414:                                ; preds = %if.then1404
  %648 = load i32* %res, align 4, !tbaa !5
  %cmp1416 = icmp slt i32 %648, 0
  br i1 %cmp1416, label %do.body1419, label %do.body1439

do.body1419:                                      ; preds = %if.then1404, %lor.lhs.false1414
  %.b2629 = load i1* @pconn_active.b, align 1
  %649 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1423 = icmp eq i32 %sock.2, %649
  %or.cond2671 = and i1 %.b2629, %cmp1423
  br i1 %or.cond2671, label %if.then1425, label %if.else1426

if.then1425:                                      ; preds = %do.body1419
  %650 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3005 = icmp eq i8 %650, 0
  br i1 %tobool1.i3005, label %invalidate_persistent.exit3008, label %if.then.i3006, !prof !10

if.then.i3006:                                    ; preds = %if.then1425
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3473 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3008

invalidate_persistent.exit3008:                   ; preds = %if.then1425, %if.then.i3006
  %651 = phi i32 [ %sock.2, %if.then1425 ], [ %.pre3473, %if.then.i3006 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %651) nounwind
  %652 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %652) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1429

if.else1426:                                      ; preds = %do.body1419
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1429

cont1429:                                         ; preds = %invalidate_persistent.exit3008, %if.else1426
  br i1 %tobool12833096, label %if.else1433, label %if.end1434

if.else1433:                                      ; preds = %cont1429
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %if.end1434

if.end1434:                                       ; preds = %cont1429, %if.else1433
  call void @free(i8* %call.i27463135) nounwind
  %653 = icmp sgt i32 %call1411, -1
  br i1 %653, label %return, label %ioc_bb1436

ioc_bb1436:                                       ; preds = %if.end1434
  %654 = sext i32 %call1411 to i64
  call void @__ioc_report_conversion(i32 2400, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i64 %654, i8 1) nounwind
  br label %return

do.body1439:                                      ; preds = %lor.lhs.false1414
  br i1 %tobool845, label %if.end1494, label %if.then1441

if.then1441:                                      ; preds = %do.body1439
  %.b2628 = load i1* @pconn_active.b, align 1
  %655 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1445 = icmp eq i32 %sock.2, %655
  %or.cond2672 = and i1 %.b2628, %cmp1445
  br i1 %or.cond2672, label %if.then1447, label %if.else1448

if.then1447:                                      ; preds = %if.then1441
  %656 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3009 = icmp eq i8 %656, 0
  br i1 %tobool1.i3009, label %invalidate_persistent.exit3012, label %if.then.i3010, !prof !10

if.then.i3010:                                    ; preds = %if.then1447
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3472 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3012

invalidate_persistent.exit3012:                   ; preds = %if.then1447, %if.then.i3010
  %657 = phi i32 [ %sock.2, %if.then1447 ], [ %.pre3472, %if.then.i3010 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %657) nounwind
  %658 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %658) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1494

if.else1448:                                      ; preds = %if.then1441
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1494

if.else1455:                                      ; preds = %cond.end1398
  %tobool845.not2673 = xor i1 %tobool845, true
  %brmerge2674 = or i1 %tobool, %tobool845.not2673
  br i1 %brmerge2674, label %do.body1481, label %land.lhs.true1460

land.lhs.true1460:                                ; preds = %if.else1455
  %call1462 = call fastcc zeroext i1 @skip_short_body(i32 %sock.2, i64 %contlen.1, i1 zeroext %chunked_transfer_encoding.0)
  br i1 %call1462, label %do.body1465, label %do.body1481

do.body1465:                                      ; preds = %land.lhs.true1460
  br i1 %tobool845, label %if.end1494, label %if.then1467

if.then1467:                                      ; preds = %do.body1465
  %.b2627 = load i1* @pconn_active.b, align 1
  %659 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1471 = icmp eq i32 %sock.2, %659
  %or.cond2675 = and i1 %.b2627, %cmp1471
  br i1 %or.cond2675, label %if.then1473, label %if.else1474

if.then1473:                                      ; preds = %if.then1467
  %660 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3013 = icmp eq i8 %660, 0
  br i1 %tobool1.i3013, label %invalidate_persistent.exit3016, label %if.then.i3014, !prof !10

if.then.i3014:                                    ; preds = %if.then1473
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3475 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3016

invalidate_persistent.exit3016:                   ; preds = %if.then1473, %if.then.i3014
  %661 = phi i32 [ %sock.2, %if.then1473 ], [ %.pre3475, %if.then.i3014 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %661) nounwind
  %662 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %662) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1494

if.else1474:                                      ; preds = %if.then1467
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1494

do.body1481:                                      ; preds = %if.else1455, %land.lhs.true1460
  %.b2626 = load i1* @pconn_active.b, align 1
  %663 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1485 = icmp eq i32 %sock.2, %663
  %or.cond2676 = and i1 %.b2626, %cmp1485
  br i1 %or.cond2676, label %if.then1487, label %if.else1488

if.then1487:                                      ; preds = %do.body1481
  %664 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3017 = icmp eq i8 %664, 0
  br i1 %tobool1.i3017, label %invalidate_persistent.exit3020, label %if.then.i3018, !prof !10

if.then.i3018:                                    ; preds = %if.then1487
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3474 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3020

invalidate_persistent.exit3020:                   ; preds = %if.then1487, %if.then.i3018
  %665 = phi i32 [ %sock.2, %if.then1487 ], [ %.pre3474, %if.then.i3018 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %665) nounwind
  %666 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %666) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1494

if.else1488:                                      ; preds = %do.body1481
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1494

if.end1494:                                       ; preds = %if.else1488, %invalidate_persistent.exit3020, %do.body1465, %if.else1474, %invalidate_persistent.exit3016, %do.body1439, %if.else1448, %invalidate_persistent.exit3012
  br i1 %tobool12833096, label %if.else1497, label %if.end1498

if.else1497:                                      ; preds = %if.end1494
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %if.end1498

if.end1498:                                       ; preds = %if.end1494, %if.else1497
  call void @free(i8* %call.i27463135) nounwind
  %.2701 = select i1 %cmp1367, i32 56, i32 6
  br label %return

if.end1508:                                       ; preds = %if.end1357, %if.then1378
  br i1 %tobool12833096, label %lor.lhs.false1510, label %if.then1518

lor.lhs.false1510:                                ; preds = %if.end1508
  %call1511 = call i32 @strncasecmp(i8* %retval.0.i29563092, i8* getelementptr inbounds ([10 x i8]* @.str114, i32 0, i32 0), i32 9) nounwind readonly
  %cmp1512 = icmp eq i32 %call1511, 0
  br i1 %cmp1512, label %if.then1518, label %lor.lhs.false1514

lor.lhs.false1514:                                ; preds = %lor.lhs.false1510
  %call1515 = call i32 @strncasecmp(i8* %retval.0.i29563092, i8* getelementptr inbounds ([22 x i8]* @.str115, i32 0, i32 0), i32 21) nounwind readonly
  %cmp1516 = icmp eq i32 %call1515, 0
  br i1 %cmp1516, label %if.then1518, label %if.else1520

if.then1518:                                      ; preds = %lor.lhs.false1514, %lor.lhs.false1510, %if.end1508
  %667 = load i32* %dt, align 4, !tbaa !5
  %or1519 = or i32 %667, 1
  br label %if.end1522

if.else1520:                                      ; preds = %lor.lhs.false1514
  %668 = load i32* %dt, align 4, !tbaa !5
  %and1521 = and i32 %668, -2
  br label %if.end1522

if.end1522:                                       ; preds = %if.else1520, %if.then1518
  %669 = phi i32 [ %or1519, %if.then1518 ], [ %and1521, %if.else1520 ]
  store i32 %669, i32* %dt, align 4
  br i1 %tobool12833096, label %land.lhs.true1524, label %if.else1530

land.lhs.true1524:                                ; preds = %if.end1522
  %call1525 = call i32 @strncasecmp(i8* %retval.0.i29563092, i8* getelementptr inbounds ([9 x i8]* @.str116, i32 0, i32 0), i32 8) nounwind readonly
  %cmp1526 = icmp eq i32 %call1525, 0
  br i1 %cmp1526, label %if.then1528, label %if.else1530

if.then1528:                                      ; preds = %land.lhs.true1524
  %or1529 = or i32 %669, 64
  br label %if.end1532

if.else1530:                                      ; preds = %land.lhs.true1524, %if.end1522
  %and1531 = and i32 %669, -65
  br label %if.end1532

if.end1532:                                       ; preds = %if.else1530, %if.then1528
  %storemerge2644 = phi i32 [ %and1531, %if.else1530 ], [ %or1529, %if.then1528 ]
  store i32 %storemerge2644, i32* %dt, align 4
  %670 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 104), align 1, !tbaa !3, !range !4
  %tobool1533 = icmp eq i8 %670, 0
  br i1 %tobool1533, label %if.end1544, label %if.then1534

if.then1534:                                      ; preds = %if.end1532
  %and1535 = and i32 %storemerge2644, 1
  %tobool1536 = icmp eq i32 %and1535, 0
  br i1 %tobool1536, label %if.else1538, label %if.then1537

if.then1537:                                      ; preds = %if.then1534
  call fastcc void @ensure_extension(%struct.http_stat* %hs, i8* getelementptr inbounds ([6 x i8]* @.str117, i32 0, i32 0), i32* %dt)
  br label %if.end1544

if.else1538:                                      ; preds = %if.then1534
  %and1539 = and i32 %storemerge2644, 64
  %tobool1540 = icmp eq i32 %and1539, 0
  br i1 %tobool1540, label %if.end1544, label %if.then1541

if.then1541:                                      ; preds = %if.else1538
  call fastcc void @ensure_extension(%struct.http_stat* %hs, i8* getelementptr inbounds ([5 x i8]* @.str118, i32 0, i32 0), i32* %dt)
  br label %if.end1544

if.end1544:                                       ; preds = %if.else1538, %if.end1532, %if.then1537, %if.then1541
  %cmp1545 = icmp eq i32 %call667, 416
  br i1 %cmp1545, label %cont1568, label %lor.lhs.false1547

lor.lhs.false1547:                                ; preds = %if.end1544
  %671 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %tobool1548 = icmp eq i8 %671, 0
  br i1 %tobool1548, label %land.lhs.true1549, label %if.end1591

land.lhs.true1549:                                ; preds = %lor.lhs.false1547
  %672 = load i64* %restval, align 4, !tbaa !6
  %cmp1551 = icmp sgt i64 %672, 0
  %cmp1554 = icmp eq i32 %call667, 200
  %or.cond2677 = and i1 %cmp1551, %cmp1554
  %cmp1557 = icmp eq i64 %contrange.0, 0
  %or.cond2678 = and i1 %or.cond2677, %cmp1557
  %cmp1560 = icmp sgt i64 %contlen.1, -1
  %or.cond2679 = and i1 %or.cond2678, %cmp1560
  %or.cond2679.not = xor i1 %or.cond2679, true
  %cmp1564 = icmp slt i64 %672, %contlen.1
  %or.cond2680 = or i1 %cmp1564, %or.cond2679.not
  br i1 %or.cond2680, label %if.end1591, label %cont1568

cont1568:                                         ; preds = %if.end1544, %land.lhs.true1549
  %call1569 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8]* @.str119, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call1569) nounwind
  store i64 %contlen.1, i64* %len, align 4, !tbaa !6
  store i32 0, i32* %res, align 4, !tbaa !5
  %673 = load i32* %dt, align 4, !tbaa !5
  %or1572 = or i32 %673, 2
  store i32 %or1572, i32* %dt, align 4, !tbaa !5
  br i1 %tobool12833096, label %if.else1575, label %do.body1577

if.else1575:                                      ; preds = %cont1568
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %do.body1577

do.body1577:                                      ; preds = %if.else1575, %cont1568
  %.b2625 = load i1* @pconn_active.b, align 1
  %674 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1581 = icmp eq i32 %sock.2, %674
  %or.cond2681 = and i1 %.b2625, %cmp1581
  br i1 %or.cond2681, label %if.then1583, label %if.else1584

if.then1583:                                      ; preds = %do.body1577
  %675 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3021 = icmp eq i8 %675, 0
  br i1 %tobool1.i3021, label %invalidate_persistent.exit3024, label %if.then.i3022, !prof !10

if.then.i3022:                                    ; preds = %if.then1583
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3476 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3024

invalidate_persistent.exit3024:                   ; preds = %if.then1583, %if.then.i3022
  %676 = phi i32 [ %sock.2, %if.then1583 ], [ %.pre3476, %if.then.i3022 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %676) nounwind
  %677 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %677) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1587

if.else1584:                                      ; preds = %do.body1577
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1587

cont1587:                                         ; preds = %invalidate_persistent.exit3024, %if.else1584
  call void @free(i8* %call.i27463135) nounwind
  br label %return

if.end1591:                                       ; preds = %land.lhs.true1549, %lor.lhs.false1547
  %cmp1592 = icmp ne i64 %contrange.0, 0
  br i1 %cmp1592, label %land.lhs.true1594, label %lor.lhs.false1598

land.lhs.true1594:                                ; preds = %if.end1591
  %678 = load i64* %restval, align 4, !tbaa !6
  %cmp1596 = icmp eq i64 %contrange.0, %678
  br i1 %cmp1596, label %cont1624, label %if.then1603

lor.lhs.false1598:                                ; preds = %if.end1591
  %cmp1599.not = icmp eq i32 %call667, 206
  br i1 %cmp1599.not, label %if.then1603, label %cont1624

if.then1603:                                      ; preds = %lor.lhs.false1598, %land.lhs.true1594
  br i1 %tobool12833096, label %if.else1606, label %do.body1608

if.else1606:                                      ; preds = %if.then1603
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %do.body1608

do.body1608:                                      ; preds = %if.else1606, %if.then1603
  %.b2624 = load i1* @pconn_active.b, align 1
  %679 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1612 = icmp eq i32 %sock.2, %679
  %or.cond2683 = and i1 %.b2624, %cmp1612
  br i1 %or.cond2683, label %if.then1614, label %if.else1615

if.then1614:                                      ; preds = %do.body1608
  %680 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3025 = icmp eq i8 %680, 0
  br i1 %tobool1.i3025, label %invalidate_persistent.exit3028, label %if.then.i3026, !prof !10

if.then.i3026:                                    ; preds = %if.then1614
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3486 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3028

invalidate_persistent.exit3028:                   ; preds = %if.then1614, %if.then.i3026
  %681 = phi i32 [ %sock.2, %if.then1614 ], [ %.pre3486, %if.then.i3026 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %681) nounwind
  %682 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %682) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1618

if.else1615:                                      ; preds = %do.body1608
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1618

cont1618:                                         ; preds = %invalidate_persistent.exit3028, %if.else1615
  call void @free(i8* %call.i27463135) nounwind
  br label %return

cont1624:                                         ; preds = %lor.lhs.false1598, %land.lhs.true1594
  %cmp1626 = icmp eq i64 %contlen.1, -1
  br i1 %cmp1626, label %if.end1637, label %if.else1633

if.else1633:                                      ; preds = %cont1624
  %683 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %contlen.1, i64 %contrange.0)
  %684 = extractvalue { i64, i1 } %683, 0
  %685 = extractvalue { i64, i1 } %683, 1
  br i1 %685, label %ioc_bb1634, label %if.end1637

ioc_bb1634:                                       ; preds = %if.else1633
  call void @__ioc_report_add_overflow(i32 2524, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %contlen.1, i64 %contrange.0, i8 14) nounwind
  br label %if.end1637

if.end1637:                                       ; preds = %ioc_bb1634, %if.else1633, %cont1624
  %storemerge2645 = phi i64 [ -1, %cont1624 ], [ %684, %if.else1633 ], [ %684, %ioc_bb1634 ]
  store i64 %storemerge2645, i64* %contlen25, align 4
  %686 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 0), align 4, !tbaa !5
  %tobool1638 = icmp eq i32 %686, 0
  br i1 %tobool1638, label %if.end1709, label %if.then1639

if.then1639:                                      ; preds = %if.end1637
  %687 = load i32* %dt, align 4, !tbaa !5
  %and1640 = and i32 %687, 2
  %tobool1641 = icmp eq i32 %and1640, 0
  br i1 %tobool1641, label %if.end1709, label %cont1644

cont1644:                                         ; preds = %if.then1639
  %call1645 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8]* @.str120, i32 0, i32 0), i32 5) nounwind
  call void @logputs(i32 0, i8* %call1645) nounwind
  br i1 %cmp1626, label %cont1687, label %cont1653

cont1653:                                         ; preds = %cont1644
  %688 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %contlen.1, i64 %contrange.0)
  %689 = extractvalue { i64, i1 } %688, 0
  %690 = extractvalue { i64, i1 } %688, 1
  br i1 %690, label %ioc_bb1654, label %cont1658.critedge

ioc_bb1654:                                       ; preds = %cont1653
  call void @__ioc_report_add_overflow(i32 2532, i32 62, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %contlen.1, i64 %contrange.0, i8 14) nounwind
  %call1656 = call i8* @number_to_static_string(i64 %689) nounwind
  call void @logputs(i32 0, i8* %call1656) nounwind
  call void @__ioc_report_add_overflow(i32 2533, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %contlen.1, i64 %contrange.0, i8 14) nounwind
  br label %cont1658

cont1658.critedge:                                ; preds = %cont1653
  %call1656.c = call i8* @number_to_static_string(i64 %689) nounwind
  call void @logputs(i32 0, i8* %call1656.c) nounwind
  br label %cont1658

cont1658:                                         ; preds = %cont1658.critedge, %ioc_bb1654
  %cmp1659 = icmp sgt i64 %689, 1023
  br i1 %cmp1659, label %cont1663, label %if.end1667

cont1663:                                         ; preds = %cont1658
  br i1 %690, label %ioc_bb1664, label %cont1665

ioc_bb1664:                                       ; preds = %cont1663
  call void @__ioc_report_add_overflow(i32 2534, i32 64, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %contlen.1, i64 %contrange.0, i8 14) nounwind
  br label %cont1665

cont1665:                                         ; preds = %cont1663, %ioc_bb1664
  %call1666 = call i8* @human_readable(i64 %689) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([6 x i8]* @.str121, i32 0, i32 0), i8* %call1666) nounwind
  br label %if.end1667

if.end1667:                                       ; preds = %cont1665, %cont1658
  br i1 %cmp1592, label %if.then1669, label %if.end1696

if.then1669:                                      ; preds = %if.end1667
  %cmp1670 = icmp sgt i64 %contlen.1, 1023
  br i1 %cmp1670, label %cont1674, label %cont1680

cont1674:                                         ; preds = %if.then1669
  %call1675 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8]* @.str122, i32 0, i32 0), i32 5) nounwind
  %call1676 = call i8* @number_to_static_string(i64 %contlen.1) nounwind
  %call1677 = call i8* @human_readable(i64 %contlen.1) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call1675, i8* %call1676, i8* %call1677) nounwind
  br label %if.end1696

cont1680:                                         ; preds = %if.then1669
  %call1681 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8]* @.str123, i32 0, i32 0), i32 5) nounwind
  %call1682 = call i8* @number_to_static_string(i64 %contlen.1) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call1681, i8* %call1682) nounwind
  br label %if.end1696

cont1687:                                         ; preds = %cont1644
  %691 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 5), align 2, !tbaa !3, !range !4
  %tobool1688 = icmp eq i8 %691, 0
  br i1 %tobool1688, label %cond.false1692, label %cond.true1690

cond.true1690:                                    ; preds = %cont1687
  %call1691 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8]* @.str124, i32 0, i32 0), i32 5) nounwind
  br label %cond.end1694

cond.false1692:                                   ; preds = %cont1687
  %call1693 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8]* @.str112, i32 0, i32 0), i32 5) nounwind
  br label %cond.end1694

cond.end1694:                                     ; preds = %cond.false1692, %cond.true1690
  %cond1695 = phi i8* [ %call1691, %cond.true1690 ], [ %call1693, %cond.false1692 ]
  call void @logputs(i32 0, i8* %cond1695) nounwind
  br label %if.end1696

if.end1696:                                       ; preds = %if.end1667, %cont1680, %cont1674, %cond.end1694
  br i1 %tobool12833096, label %cont1702, label %cont1706

cont1702:                                         ; preds = %if.end1696
  %call1703 = call i8* @quotearg_style(i32 5, i8* %retval.0.i29563092) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* getelementptr inbounds ([7 x i8]* @.str125, i32 0, i32 0), i8* %call1703) nounwind
  br label %if.end1709

cont1706:                                         ; preds = %if.end1696
  call void @logputs(i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %if.end1709

if.end1709:                                       ; preds = %if.end1637, %if.then1639, %cont1706, %cont1702
  %tobool12833097 = phi i1 [ %tobool12833096, %if.then1639 ], [ false, %cont1706 ], [ true, %cont1702 ], [ %tobool12833096, %if.end1637 ]
  %692 = load i32* %dt, align 4, !tbaa !5
  %and1710 = and i32 %692, 2
  %tobool1711 = icmp eq i32 %and1710, 0
  %693 = load i16* bitcast (i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 89) to i16*), align 2
  %694 = trunc i16 %693 to i8
  %tobool1713 = icmp eq i8 %694, 0
  %or.cond2684 = and i1 %tobool1711, %tobool1713
  %brmerge2685 = or i1 %or.cond2684, %tobool
  br i1 %brmerge2685, label %if.then1717, label %if.end1836

if.then1717:                                      ; preds = %if.end1709
  store i64 0, i64* %len, align 4, !tbaa !6
  store i32 0, i32* %res, align 4, !tbaa !5
  store i64 0, i64* %restval, align 4, !tbaa !6
  br i1 %cmp, label %if.then1722, label %if.else1773

if.then1722:                                      ; preds = %if.then1717
  %695 = load i8** %url591, align 4, !tbaa !0
  %call1729 = call fastcc i32 @read_response_body(%struct.http_stat* %hs, i32 %sock.2, %struct._IO_FILE* null, i64 %contlen.1, i64 0, i1 zeroext %chunked_transfer_encoding.0, i8* %695, i8* %arraydecay, i8* %arraydecay590, %struct.ip_address* %warc_ip.1, i8* %retval.0.i29563092, i32 %call667, i8* %call.i27463135)
  %cmp1730 = icmp eq i32 %call1729, 39
  br i1 %cmp1730, label %lor.lhs.false1732, label %do.body1737

lor.lhs.false1732:                                ; preds = %if.then1722
  %696 = load i32* %res, align 4, !tbaa !5
  %cmp1734 = icmp slt i32 %696, 0
  br i1 %cmp1734, label %do.body1737, label %do.body1757

do.body1737:                                      ; preds = %if.then1722, %lor.lhs.false1732
  %.b2623 = load i1* @pconn_active.b, align 1
  %697 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1741 = icmp eq i32 %sock.2, %697
  %or.cond2686 = and i1 %.b2623, %cmp1741
  br i1 %or.cond2686, label %if.then1743, label %if.else1744

if.then1743:                                      ; preds = %do.body1737
  %698 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3029 = icmp eq i8 %698, 0
  br i1 %tobool1.i3029, label %invalidate_persistent.exit3032, label %if.then.i3030, !prof !10

if.then.i3030:                                    ; preds = %if.then1743
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3478 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3032

invalidate_persistent.exit3032:                   ; preds = %if.then1743, %if.then.i3030
  %699 = phi i32 [ %sock.2, %if.then1743 ], [ %.pre3478, %if.then.i3030 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %699) nounwind
  %700 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %700) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1747

if.else1744:                                      ; preds = %do.body1737
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1747

cont1747:                                         ; preds = %invalidate_persistent.exit3032, %if.else1744
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1751, label %if.end1752

if.else1751:                                      ; preds = %cont1747
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %if.end1752

if.end1752:                                       ; preds = %cont1747, %if.else1751
  %701 = icmp sgt i32 %call1729, -1
  br i1 %701, label %return, label %ioc_bb1754

ioc_bb1754:                                       ; preds = %if.end1752
  %702 = sext i32 %call1729 to i64
  call void @__ioc_report_conversion(i32 2573, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i64 %702, i8 1) nounwind
  br label %return

do.body1757:                                      ; preds = %lor.lhs.false1732
  br i1 %tobool845, label %if.end1829, label %if.then1759

if.then1759:                                      ; preds = %do.body1757
  %.b2622 = load i1* @pconn_active.b, align 1
  %703 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1763 = icmp eq i32 %sock.2, %703
  %or.cond2687 = and i1 %.b2622, %cmp1763
  br i1 %or.cond2687, label %if.then1765, label %if.else1766

if.then1765:                                      ; preds = %if.then1759
  %704 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3033 = icmp eq i8 %704, 0
  br i1 %tobool1.i3033, label %invalidate_persistent.exit3036, label %if.then.i3034, !prof !10

if.then.i3034:                                    ; preds = %if.then1765
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3477 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3036

invalidate_persistent.exit3036:                   ; preds = %if.then1765, %if.then.i3034
  %705 = phi i32 [ %sock.2, %if.then1765 ], [ %.pre3477, %if.then.i3034 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %705) nounwind
  %706 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %706) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1829

if.else1766:                                      ; preds = %if.then1759
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1829

if.else1773:                                      ; preds = %if.then1717
  br i1 %tobool, label %do.body1776, label %if.else1791

do.body1776:                                      ; preds = %if.else1773
  br i1 %tobool845, label %if.end1829, label %if.then1778

if.then1778:                                      ; preds = %do.body1776
  %.b2621 = load i1* @pconn_active.b, align 1
  %707 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1782 = icmp eq i32 %sock.2, %707
  %or.cond2688 = and i1 %.b2621, %cmp1782
  br i1 %or.cond2688, label %if.then1784, label %if.else1785

if.then1784:                                      ; preds = %if.then1778
  %tobool1.i3037 = icmp ult i16 %693, 256
  br i1 %tobool1.i3037, label %invalidate_persistent.exit3040, label %if.then.i3038, !prof !10

if.then.i3038:                                    ; preds = %if.then1784
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3479 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3040

invalidate_persistent.exit3040:                   ; preds = %if.then1784, %if.then.i3038
  %708 = phi i32 [ %sock.2, %if.then1784 ], [ %.pre3479, %if.then.i3038 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %708) nounwind
  %709 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %709) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1829

if.else1785:                                      ; preds = %if.then1778
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1829

if.else1791:                                      ; preds = %if.else1773
  br i1 %tobool845, label %land.lhs.true1794, label %do.body1815

land.lhs.true1794:                                ; preds = %if.else1791
  %call1796 = call fastcc zeroext i1 @skip_short_body(i32 %sock.2, i64 %contlen.1, i1 zeroext %chunked_transfer_encoding.0)
  br i1 %call1796, label %if.end1829, label %do.body1815

do.body1815:                                      ; preds = %if.else1791, %land.lhs.true1794
  %.b2619 = load i1* @pconn_active.b, align 1
  %710 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1819 = icmp eq i32 %sock.2, %710
  %or.cond2690 = and i1 %.b2619, %cmp1819
  br i1 %or.cond2690, label %if.then1821, label %if.else1822

if.then1821:                                      ; preds = %do.body1815
  %711 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3045 = icmp eq i8 %711, 0
  br i1 %tobool1.i3045, label %invalidate_persistent.exit3048, label %if.then.i3046, !prof !10

if.then.i3046:                                    ; preds = %if.then1821
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3480 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3048

invalidate_persistent.exit3048:                   ; preds = %if.then1821, %if.then.i3046
  %712 = phi i32 [ %sock.2, %if.then1821 ], [ %.pre3480, %if.then.i3046 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %712) nounwind
  %713 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %713) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end1829

if.else1822:                                      ; preds = %do.body1815
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end1829

if.end1829:                                       ; preds = %land.lhs.true1794, %if.else1822, %invalidate_persistent.exit3048, %do.body1776, %if.else1785, %invalidate_persistent.exit3040, %do.body1757, %if.else1766, %invalidate_persistent.exit3036
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1832, label %return

if.else1832:                                      ; preds = %if.end1829
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %return

if.end1836:                                       ; preds = %if.end1709
  %714 = load %struct._IO_FILE** @output_stream, align 4, !tbaa !0
  %tobool1837 = icmp eq %struct._IO_FILE* %714, null
  br i1 %tobool1837, label %if.then1838, label %if.end1970

if.then1838:                                      ; preds = %if.end1836
  %715 = load i8** %local_file, align 4, !tbaa !0
  %call1840 = call i32 @mkalldirs(i8* %715) nounwind
  %716 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 93), align 2, !tbaa !3, !range !4
  %tobool1841 = icmp eq i8 %716, 0
  br i1 %tobool1841, label %if.end1844, label %if.then1842

if.then1842:                                      ; preds = %if.then1838
  %717 = load i8** %local_file, align 4, !tbaa !0
  call void @rotate_backups(i8* %717) nounwind
  br label %if.end1844

if.end1844:                                       ; preds = %if.then1838, %if.then1842
  %718 = load i64* %restval, align 4, !tbaa !6
  %tobool1846 = icmp eq i64 %718, 0
  br i1 %tobool1846, label %if.else1850, label %if.then1847

if.then1847:                                      ; preds = %if.end1844
  %719 = load i8** %local_file, align 4, !tbaa !0
  %call1849 = call %struct._IO_FILE* @fopen64(i8* %719, i8* getelementptr inbounds ([3 x i8]* @.str126, i32 0, i32 0)) nounwind
  br label %if.end1942

if.else1850:                                      ; preds = %if.end1844
  %720 = load i16* bitcast (i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 17) to i16*), align 2
  %721 = trunc i16 %720 to i8
  %722 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 58), align 1, !tbaa !3, !range !4
  %723 = or i8 %722, %721
  %724 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %725 = or i8 %723, %724
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %lor.lhs.false1859, label %if.then1867

lor.lhs.false1859:                                ; preds = %if.else1850
  %727 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 12), align 4, !tbaa !3, !range !4
  %tobool1860 = icmp ne i8 %727, 0
  %728 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool1863 = icmp ne i8* %728, null
  %or.cond2068 = or i1 %tobool1860, %tobool1863
  %cmp1865 = icmp sgt i32 %count, 0
  %or.cond2693 = or i1 %or.cond2068, %cmp1865
  br i1 %or.cond2693, label %if.then1867, label %if.else1909

if.then1867:                                      ; preds = %if.else1850, %lor.lhs.false1859
  %tobool1868 = icmp ult i16 %720, 256
  br i1 %tobool1868, label %if.end1906, label %land.lhs.true1870

land.lhs.true1870:                                ; preds = %if.then1867
  %729 = load i8** %local_file, align 4, !tbaa !0
  %call1872 = call zeroext i1 @file_exists_p(i8* %729) nounwind
  br i1 %call1872, label %if.then1874, label %if.end1906

if.then1874:                                      ; preds = %land.lhs.true1870
  %730 = load i8** %local_file, align 4, !tbaa !0
  %call1878 = call i32 @unlink(i8* %730) nounwind
  %cmp1879 = icmp slt i32 %call1878, 0
  br i1 %cmp1879, label %cont1883, label %if.end1906

cont1883:                                         ; preds = %if.then1874
  %731 = load i8** %local_file, align 4, !tbaa !0
  %call1885 = call i32* @__errno_location() nounwind readnone
  %732 = load i32* %call1885, align 4, !tbaa !5
  %call1886 = call i8* @rpl_strerror(i32 %732) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* getelementptr inbounds ([8 x i8]* @.str127, i32 0, i32 0), i8* %731, i8* %call1886) nounwind
  %.b2618 = load i1* @pconn_active.b, align 1
  %733 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1891 = icmp eq i32 %sock.2, %733
  %or.cond2694 = and i1 %.b2618, %cmp1891
  br i1 %or.cond2694, label %if.then1893, label %if.else1894

if.then1893:                                      ; preds = %cont1883
  %734 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3049 = icmp eq i8 %734, 0
  br i1 %tobool1.i3049, label %invalidate_persistent.exit3052, label %if.then.i3050, !prof !10

if.then.i3050:                                    ; preds = %if.then1893
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3482 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3052

invalidate_persistent.exit3052:                   ; preds = %if.then1893, %if.then.i3050
  %735 = phi i32 [ %sock.2, %if.then1893 ], [ %.pre3482, %if.then.i3050 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %735) nounwind
  %736 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %736) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1897

if.else1894:                                      ; preds = %cont1883
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1897

cont1897:                                         ; preds = %invalidate_persistent.exit3052, %if.else1894
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1901, label %return

if.else1901:                                      ; preds = %cont1897
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %return

if.end1906:                                       ; preds = %if.then1867, %if.then1874, %land.lhs.true1870
  %737 = load i8** %local_file, align 4, !tbaa !0
  %call1908 = call %struct._IO_FILE* @fopen64(i8* %737, i8* getelementptr inbounds ([3 x i8]* @.str128, i32 0, i32 0)) nounwind
  br label %if.end1942

if.else1909:                                      ; preds = %lor.lhs.false1859
  %738 = load i8** %local_file, align 4, !tbaa !0
  %call1911 = call %struct._IO_FILE* @fopen_excl(i8* %738, i32 1) nounwind
  %tobool1912 = icmp eq %struct._IO_FILE* %call1911, null
  br i1 %tobool1912, label %land.lhs.true1913, label %if.end1970

land.lhs.true1913:                                ; preds = %if.else1909
  %call1914 = call i32* @__errno_location() nounwind readnone
  %739 = load i32* %call1914, align 4, !tbaa !5
  %cmp1915 = icmp eq i32 %739, 17
  br i1 %cmp1915, label %cont1919, label %cont1946

cont1919:                                         ; preds = %land.lhs.true1913
  %call1920 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8]* @.str129, i32 0, i32 0), i32 5) nounwind
  %740 = load i8** %local_file, align 4, !tbaa !0
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call1920, i8* %740) nounwind
  %.b2617 = load i1* @pconn_active.b, align 1
  %741 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1926 = icmp eq i32 %sock.2, %741
  %or.cond2695 = and i1 %.b2617, %cmp1926
  br i1 %or.cond2695, label %if.then1928, label %if.else1929

if.then1928:                                      ; preds = %cont1919
  %742 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3053 = icmp eq i8 %742, 0
  br i1 %tobool1.i3053, label %invalidate_persistent.exit3056, label %if.then.i3054, !prof !10

if.then.i3054:                                    ; preds = %if.then1928
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3481 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3056

invalidate_persistent.exit3056:                   ; preds = %if.then1928, %if.then.i3054
  %743 = phi i32 [ %sock.2, %if.then1928 ], [ %.pre3481, %if.then.i3054 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %743) nounwind
  %744 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %744) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1932

if.else1929:                                      ; preds = %cont1919
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1932

cont1932:                                         ; preds = %invalidate_persistent.exit3056, %if.else1929
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1936, label %return

if.else1936:                                      ; preds = %cont1932
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %return

if.end1942:                                       ; preds = %if.end1906, %if.then1847
  %fp.0 = phi %struct._IO_FILE* [ %call1849, %if.then1847 ], [ %call1908, %if.end1906 ]
  %tobool1943 = icmp eq %struct._IO_FILE* %fp.0, null
  br i1 %tobool1943, label %if.end1942.cont1946_crit_edge, label %if.end1970

if.end1942.cont1946_crit_edge:                    ; preds = %if.end1942
  %call1948.pre = call i32* @__errno_location() nounwind readnone
  br label %cont1946

cont1946:                                         ; preds = %if.end1942.cont1946_crit_edge, %land.lhs.true1913
  %call1948.pre-phi = phi i32* [ %call1948.pre, %if.end1942.cont1946_crit_edge ], [ %call1914, %land.lhs.true1913 ]
  %745 = load i8** %local_file, align 4, !tbaa !0
  %746 = load i32* %call1948.pre-phi, align 4, !tbaa !5
  %call1949 = call i8* @rpl_strerror(i32 %746) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* getelementptr inbounds ([8 x i8]* @.str127, i32 0, i32 0), i8* %745, i8* %call1949) nounwind
  %.b2616 = load i1* @pconn_active.b, align 1
  %747 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp1954 = icmp eq i32 %sock.2, %747
  %or.cond2696 = and i1 %.b2616, %cmp1954
  br i1 %or.cond2696, label %if.then1956, label %if.else1957

if.then1956:                                      ; preds = %cont1946
  %748 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3057 = icmp eq i8 %748, 0
  br i1 %tobool1.i3057, label %invalidate_persistent.exit3060, label %if.then.i3058, !prof !10

if.then.i3058:                                    ; preds = %if.then1956
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3483 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3060

invalidate_persistent.exit3060:                   ; preds = %if.then1956, %if.then.i3058
  %749 = phi i32 [ %sock.2, %if.then1956 ], [ %.pre3483, %if.then.i3058 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %749) nounwind
  %750 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %750) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %cont1960

if.else1957:                                      ; preds = %cont1946
  call void @fd_close(i32 %sock.2) nounwind
  br label %cont1960

cont1960:                                         ; preds = %invalidate_persistent.exit3060, %if.else1957
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1964, label %return

if.else1964:                                      ; preds = %cont1960
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %return

if.end1970:                                       ; preds = %if.end1942, %if.else1909, %if.end1836
  %fp.1 = phi %struct._IO_FILE* [ %714, %if.end1836 ], [ %call1911, %if.else1909 ], [ %fp.0, %if.end1942 ]
  %751 = load i32* getelementptr inbounds (%struct.options* @opt, i32 0, i32 0), align 4, !tbaa !5
  %tobool1971 = icmp eq i32 %751, 0
  br i1 %tobool1971, label %if.end1991, label %cont1974

cont1974:                                         ; preds = %if.end1970
  %call1975 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8]* @.str130, i32 0, i32 0), i32 5) nounwind
  %752 = load i8** %local_file, align 4, !tbaa !0
  %753 = load i8* %752, align 1, !tbaa !1
  %cmp1978 = icmp eq i8 %753, 45
  br i1 %cmp1978, label %land.lhs.true1980, label %cond.false1986

land.lhs.true1980:                                ; preds = %cont1974
  %add.ptr1982 = getelementptr inbounds i8* %752, i32 1
  %754 = load i8* %add.ptr1982, align 1, !tbaa !1
  %tobool1983 = icmp eq i8 %754, 0
  br i1 %tobool1983, label %cond.true1984, label %cond.false1986

cond.true1984:                                    ; preds = %land.lhs.true1980
  %call1985 = call i8* @quote(i8* getelementptr inbounds ([7 x i8]* @.str131, i32 0, i32 0)) nounwind
  br label %cond.end1989

cond.false1986:                                   ; preds = %land.lhs.true1980, %cont1974
  %call1988 = call i8* @quote(i8* %752) nounwind
  br label %cond.end1989

cond.end1989:                                     ; preds = %cond.false1986, %cond.true1984
  %cond1990 = phi i8* [ %call1985, %cond.true1984 ], [ %call1988, %cond.false1986 ]
  call void (i32, i8*, ...)* @logprintf(i32 1, i8* %call1975, i8* %cond1990) nounwind
  br label %if.end1991

if.end1991:                                       ; preds = %if.end1970, %cond.end1989
  %755 = load i8** %url591, align 4, !tbaa !0
  %call1996 = call fastcc i32 @read_response_body(%struct.http_stat* %hs, i32 %sock.2, %struct._IO_FILE* %fp.1, i64 %contlen.1, i64 %contrange.0, i1 zeroext %chunked_transfer_encoding.0, i8* %755, i8* %arraydecay, i8* %arraydecay590, %struct.ip_address* %warc_ip.1, i8* %retval.0.i29563092, i32 %call667, i8* %call.i27463135)
  call void @free(i8* %call.i27463135) nounwind
  br i1 %tobool12833097, label %if.else1999, label %if.end2000

if.else1999:                                      ; preds = %if.end1991
  call void @free(i8* %retval.0.i29563092) nounwind
  br label %if.end2000

if.end2000:                                       ; preds = %if.end1991, %if.else1999
  %756 = load i32* %res, align 4, !tbaa !5
  %cmp2002 = icmp sgt i32 %756, -1
  br i1 %cmp2002, label %do.body2005, label %do.body2021

do.body2005:                                      ; preds = %if.end2000
  br i1 %tobool845, label %if.end2033, label %if.then2007

if.then2007:                                      ; preds = %do.body2005
  %.b2615 = load i1* @pconn_active.b, align 1
  %757 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp2011 = icmp eq i32 %sock.2, %757
  %or.cond2697 = and i1 %.b2615, %cmp2011
  br i1 %or.cond2697, label %if.then2013, label %if.else2014

if.then2013:                                      ; preds = %if.then2007
  %758 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3061 = icmp eq i8 %758, 0
  br i1 %tobool1.i3061, label %invalidate_persistent.exit3064, label %if.then.i3062, !prof !10

if.then.i3062:                                    ; preds = %if.then2013
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3484 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3064

invalidate_persistent.exit3064:                   ; preds = %if.then2013, %if.then.i3062
  %759 = phi i32 [ %sock.2, %if.then2013 ], [ %.pre3484, %if.then.i3062 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %759) nounwind
  %760 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %760) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end2033

if.else2014:                                      ; preds = %if.then2007
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end2033

do.body2021:                                      ; preds = %if.end2000
  %.b = load i1* @pconn_active.b, align 1
  %761 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  %cmp2025 = icmp eq i32 %sock.2, %761
  %or.cond2698 = and i1 %.b, %cmp2025
  br i1 %or.cond2698, label %if.then2027, label %if.else2028

if.then2027:                                      ; preds = %do.body2021
  %762 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool1.i3065 = icmp eq i8 %762, 0
  br i1 %tobool1.i3065, label %invalidate_persistent.exit3068, label %if.then.i3066, !prof !10

if.then.i3066:                                    ; preds = %if.then2027
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([39 x i8]* @.str164, i32 0, i32 0), i32 %sock.2) nounwind
  %.pre3485 = load i32* getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 0), align 4, !tbaa !5
  br label %invalidate_persistent.exit3068

invalidate_persistent.exit3068:                   ; preds = %if.then2027, %if.then.i3066
  %763 = phi i32 [ %sock.2, %if.then2027 ], [ %.pre3485, %if.then.i3066 ]
  store i1 false, i1* @pconn_active.b, align 1
  call void @fd_close(i32 %763) nounwind
  %764 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  call void @free(i8* %764) nounwind
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.anon* @pconn to i8*), i8 0, i32 16, i32 4, i1 false) nounwind
  br label %if.end2033

if.else2028:                                      ; preds = %do.body2021
  call void @fd_close(i32 %sock.2) nounwind
  br label %if.end2033

if.end2033:                                       ; preds = %if.else2028, %invalidate_persistent.exit3068, %invalidate_persistent.exit3064, %if.else2014, %do.body2005
  %765 = load %struct._IO_FILE** @output_stream, align 4, !tbaa !0
  %tobool2034 = icmp eq %struct._IO_FILE* %765, null
  br i1 %tobool2034, label %if.then2035, label %if.end2037

if.then2035:                                      ; preds = %if.end2033
  %call2036 = call i32 @fclose(%struct._IO_FILE* %fp.1) nounwind
  br label %if.end2037

if.end2037:                                       ; preds = %if.end2033, %if.then2035
  %766 = icmp sgt i32 %call1996, -1
  br i1 %766, label %return, label %ioc_bb2039

ioc_bb2039:                                       ; preds = %if.end2037
  %767 = sext i32 %call1996 to i64
  call void @__ioc_report_conversion(i32 2752, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i64 %767, i8 1) nounwind
  br label %return

return:                                           ; preds = %if.end1498, %if.end2037, %ioc_bb2039, %cont1960, %if.else1964, %cont1932, %if.else1936, %cont1897, %if.else1901, %if.end1829, %if.else1832, %if.end1752, %ioc_bb1754, %if.end1434, %ioc_bb1436, %resp_free.exit2947, %if.else1192, %resp_free.exit2842, %ioc_bb891, %cont1618, %cont1587, %resp_free.exit2899, %resp_free.exit2763, %cont653, %cont634, %cont608, %cont476, %if.then453, %if.then447, %if.end430, %if.then396, %cont376, %cont354, %if.then300, %if.then294, %if.then273, %cont15
  %retval.0 = phi i32 [ 1, %if.then294 ], [ %cond304, %if.then300 ], [ 52, %cont354 ], [ 30, %if.then396 ], [ 4, %if.end430 ], [ 59, %cont476 ], [ 30, %resp_free.exit2763 ], [ 50, %resp_free.exit2899 ], [ 38, %cont1587 ], [ 44, %cont1618 ], [ 29, %cont634 ], [ 30, %cont653 ], [ 58, %cont608 ], [ 54, %if.then453 ], [ 4, %if.then447 ], [ 30, %cont376 ], [ 1, %if.then273 ], [ 53, %cont15 ], [ %call862.lcssa, %ioc_bb891 ], [ %call862.lcssa, %resp_free.exit2842 ], [ 38, %if.else1192 ], [ 38, %resp_free.exit2947 ], [ %call1411, %ioc_bb1436 ], [ %call1411, %if.end1434 ], [ %call1729, %ioc_bb1754 ], [ %call1729, %if.end1752 ], [ 39, %if.else1832 ], [ 39, %if.end1829 ], [ 55, %if.else1901 ], [ 55, %cont1897 ], [ 25, %if.else1936 ], [ 25, %cont1932 ], [ 24, %if.else1964 ], [ 24, %cont1960 ], [ %call1996, %ioc_bb2039 ], [ %call1996, %if.end2037 ], [ %.2701, %if.end1498 ]
  ret i32 %retval.0
}

declare void @printwhat(i32, i32)

declare i8* @quote(i8*)

declare i8* @rpl_strerror(i32)

declare i32* @__errno_location() nounwind readnone

declare void @abort() noreturn nounwind

declare void @nonexisting_url(i8*)

declare i8* @quotearg_style(i32, i8*)

define i32 @http_atotm(i8* %time_string) nounwind {
entry:
  %savedlocale = alloca [256 x i8], align 1
  %t = alloca %struct.tm, align 4
  %call = call i8* @setlocale(i32 2, i8* null) nounwind
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cont11, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @strlen(i8* %call) nounwind readonly
  %0 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call1, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.then
  %3 = zext i32 %call1 to i64
  call void @__ioc_report_add_overflow(i32 3302, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind
  br label %cont5

cont5:                                            ; preds = %if.then, %ioc_bb4
  %cmp = icmp ugt i32 %1, 255
  %arrayidx = getelementptr inbounds [256 x i8]* %savedlocale, i32 0, i32 0
  br i1 %cmp, label %cont8, label %if.else

cont8:                                            ; preds = %cont5
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end13

if.else:                                          ; preds = %cont5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx, i8* %call, i32 %1, i32 1, i1 false)
  br label %if.end13

cont11:                                           ; preds = %entry
  %arrayidx12 = getelementptr inbounds [256 x i8]* %savedlocale, i32 0, i32 0
  store i8 0, i8* %arrayidx12, align 1, !tbaa !1
  br label %if.end13

if.end13:                                         ; preds = %cont8, %if.else, %cont11
  %call14 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0)) nounwind
  %4 = bitcast %struct.tm* %t to i8*
  br label %for.body

for.body:                                         ; preds = %if.end13, %for.cond.backedge
  %i.045 = phi i32 [ 0, %if.end13 ], [ %10, %for.cond.backedge ]
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 44, i32 4, i1 false)
  %arrayidx19 = getelementptr inbounds [4 x i8*]* @http_atotm.time_formats, i32 0, i32 %i.045
  %5 = load i8** %arrayidx19, align 4, !tbaa !0
  %call20 = call i8* @strptime(i8* %time_string, i8* %5, %struct.tm* %t) nounwind
  %tobool.i = icmp eq i8* %call20, null
  br i1 %tobool.i, label %for.inc, label %while.cond.i

while.cond.i:                                     ; preds = %for.body, %while.body.i
  %p.addr.0.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %call20, %for.body ]
  %6 = load i8* %p.addr.0.i, align 1, !tbaa !1
  switch i8 %6, label %for.inc [
    i8 32, label %while.body.i
    i8 12, label %while.body.i
    i8 11, label %while.body.i
    i8 10, label %while.body.i
    i8 9, label %while.body.i
    i8 13, label %while.body.i
    i8 0, label %if.then22
    i8 71, label %land.lhs.true.i
    i8 43, label %land.lhs.true39.i
    i8 45, label %land.lhs.true39.i
  ]

while.body.i:                                     ; preds = %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.0.i, i32 1
  br label %while.cond.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %arrayidx20.i = getelementptr inbounds i8* %p.addr.0.i, i32 1
  %7 = load i8* %arrayidx20.i, align 1, !tbaa !1
  %cmp22.i = icmp eq i8 %7, 77
  br i1 %cmp22.i, label %land.lhs.true24.i, label %for.inc

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %arrayidx25.i = getelementptr inbounds i8* %p.addr.0.i, i32 2
  %8 = load i8* %arrayidx25.i, align 1, !tbaa !1
  %cmp27.i = icmp eq i8 %8, 84
  br i1 %cmp27.i, label %if.then22, label %for.inc

land.lhs.true39.i:                                ; preds = %while.cond.i, %while.cond.i
  %arrayidx41.i.phi.trans.insert = getelementptr inbounds i8* %p.addr.0.i, i32 1
  %.pre = load i8* %arrayidx41.i.phi.trans.insert, align 1, !tbaa !1
  %phitmp = add i8 %.pre, -48
  %phitmp53 = icmp ult i8 %phitmp, 10
  br i1 %phitmp53, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true39.i, %land.lhs.true24.i, %while.cond.i
  %call23 = call i32 @timegm(%struct.tm* %t) nounwind
  br label %for.end

for.inc:                                          ; preds = %while.cond.i, %land.lhs.true24.i, %land.lhs.true.i, %land.lhs.true39.i, %for.body
  %9 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.045, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb25, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb25
  %cmp18 = icmp ult i32 %10, 4
  br i1 %cmp18, label %for.body, label %for.end

ioc_bb25:                                         ; preds = %for.inc
  %12 = zext i32 %i.045 to i64
  call void @__ioc_report_add_overflow(i32 3311, i32 68, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %if.then22
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ -1, %for.cond.backedge ]
  %arrayidx27 = getelementptr inbounds [256 x i8]* %savedlocale, i32 0, i32 0
  %13 = load i8* %arrayidx27, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %13, 0
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %for.end
  %call30 = call i8* @setlocale(i32 2, i8* %arrayidx27) nounwind
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.then29
  ret i32 %ret.0
}

declare i8* @number_to_static_string(i64)

declare void @set_local_file(i8**, i8*)

declare void @touch(i8*, i32)

declare i8* @retr_rate(i64, double)

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i32 @downloaded_file(i32, i8*)

declare i8* @setlocale(i32, i8*) nounwind

declare i32 @strlen(i8* nocapture) nounwind readonly

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @strptime(i8*, i8*, %struct.tm*) nounwind

declare i32 @timegm(%struct.tm*) nounwind

define void @save_cookies() nounwind {
entry:
  %0 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %tobool = icmp eq %struct.cookie_jar* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 119), align 4, !tbaa !0
  tail call void @cookie_jar_save(%struct.cookie_jar* %0, i8* %1) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

declare void @cookie_jar_save(%struct.cookie_jar*, i8*)

define void @http_cleanup() nounwind {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @pconn, i32 0, i32 1), align 4, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @free(i8* %0) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %1 = load %struct.cookie_jar** @wget_cookie_jar, align 4, !tbaa !0
  %tobool1 = icmp eq %struct.cookie_jar* %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @cookie_jar_delete(%struct.cookie_jar* %1) nounwind
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

declare void @cookie_jar_delete(%struct.cookie_jar*)

declare %struct.cookie_jar* @cookie_jar_new()

declare void @cookie_jar_load(%struct.cookie_jar*, i8*)

declare zeroext i1 @ssl_init()

declare void @scheme_disable(i32)

declare i8* @url_full_path(%struct.url*)

define internal fastcc void @request_set_header(%struct.request* nocapture %req, i8* %name, i8* %value, i32 %release_policy) nounwind {
entry:
  %tobool = icmp eq i8* %value, null
  br i1 %tobool, label %cont, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %hcount = getelementptr inbounds %struct.request* %req, i32 0, i32 3
  %0 = load i32* %hcount, align 4, !tbaa !5
  %cmp672 = icmp sgt i32 %0, 0
  br i1 %cmp672, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %headers = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  br label %for.body

cont:                                             ; preds = %entry
  switch i32 %release_policy, label %return [
    i32 1, label %if.then4
    i32 3, label %if.then4
  ]

if.then4:                                         ; preds = %cont, %cont
  tail call void @free(i8* %name) nounwind
  br label %return

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %10, %for.cond.backedge ]
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %8, %for.cond.backedge ]
  %2 = load %struct.request_header** %headers, align 4, !tbaa !0
  %name7 = getelementptr inbounds %struct.request_header* %2, i32 %i.073, i32 0
  %3 = load i8** %name7, align 4, !tbaa !0
  %call = tail call i32 @strcasecmp(i8* %name, i8* %3) nounwind readonly
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %release_policy.i = getelementptr inbounds %struct.request_header* %2, i32 %i.073, i32 2
  %4 = load i32* %release_policy.i, align 4, !tbaa !11
  switch i32 %4, label %release_header.exit [
    i32 3, label %sw.bb2.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then9
  tail call void @free(i8* %3) nounwind
  br label %release_header.exit

sw.bb1.i:                                         ; preds = %if.then9
  %value.i = getelementptr inbounds %struct.request_header* %2, i32 %i.073, i32 1
  %5 = load i8** %value.i, align 4, !tbaa !0
  tail call void @free(i8* %5) nounwind
  br label %release_header.exit

sw.bb2.i:                                         ; preds = %if.then9
  tail call void @free(i8* %3) nounwind
  %value4.i = getelementptr inbounds %struct.request_header* %2, i32 %i.073, i32 1
  %6 = load i8** %value4.i, align 4, !tbaa !0
  tail call void @free(i8* %6) nounwind
  br label %release_header.exit

release_header.exit:                              ; preds = %if.then9, %sw.bb.i, %sw.bb1.i, %sw.bb2.i
  store i8* %name, i8** %name7, align 4, !tbaa !0
  %value11 = getelementptr inbounds %struct.request_header* %2, i32 %i.073, i32 1
  store i8* %value, i8** %value11, align 4, !tbaa !0
  store i32 %release_policy, i32* %release_policy.i, align 4, !tbaa !11
  br label %return

for.inc:                                          ; preds = %for.body
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.073, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb14, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb14
  %10 = phi i32 [ %1, %for.inc ], [ %.pre82, %ioc_bb14 ]
  %cmp6 = icmp slt i32 %8, %10
  br i1 %cmp6, label %for.body, label %for.end

ioc_bb14:                                         ; preds = %for.inc
  %11 = sext i32 %i.073 to i64
  tail call void @__ioc_report_add_overflow(i32 208, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  %.pre82 = load i32* %hcount, align 4, !tbaa !5
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %12 = phi i32 [ %0, %for.cond.preheader ], [ %10, %for.cond.backedge ]
  %hcapacity = getelementptr inbounds %struct.request* %req, i32 0, i32 4
  %13 = load i32* %hcapacity, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %if.end32, label %if.then18

if.then18:                                        ; preds = %for.end
  %14 = icmp ult i32 %13, 1073741824
  br i1 %14, label %cont23, label %ioc_bb22

ioc_bb22:                                         ; preds = %if.then18
  %15 = sext i32 %13 to i64
  tail call void @__ioc_report_shl_strict(i32 221, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i64 %15, i64 1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %if.then18, %ioc_bb22
  %shl = shl i32 %13, 1
  store i32 %shl, i32* %hcapacity, align 4, !tbaa !5
  %headers24 = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  %16 = load %struct.request_header** %headers24, align 4, !tbaa !0
  %17 = bitcast %struct.request_header* %16 to i8*
  %18 = icmp sgt i32 %shl, -1
  br i1 %18, label %cont27, label %ioc_bb26

ioc_bb26:                                         ; preds = %cont23
  %19 = sext i32 %shl to i64
  tail call void @__ioc_report_conversion(i32 222, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont27

cont27:                                           ; preds = %ioc_bb26, %cont23
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 12)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb28, label %cont29

ioc_bb28:                                         ; preds = %cont27
  %23 = zext i32 %shl to i64
  tail call void @__ioc_report_mul_overflow(i32 222, i32 68, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %23, i64 12, i8 5) nounwind
  br label %cont29

cont29:                                           ; preds = %cont27, %ioc_bb28
  %call30 = tail call i8* @xrealloc(i8* %17, i32 %21) nounwind
  %24 = bitcast i8* %call30 to %struct.request_header*
  store %struct.request_header* %24, %struct.request_header** %headers24, align 4, !tbaa !0
  %.pre = load i32* %hcount, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %for.end, %cont29
  %25 = phi i32 [ %12, %for.end ], [ %.pre, %cont29 ]
  %26 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %if.end32
  %29 = sext i32 %25 to i64
  tail call void @__ioc_report_add_overflow(i32 224, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %29, i64 1, i8 13) nounwind
  br label %cont35

cont35:                                           ; preds = %if.end32, %ioc_bb34
  store i32 %27, i32* %hcount, align 4, !tbaa !5
  %headers36 = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  %30 = load %struct.request_header** %headers36, align 4, !tbaa !0
  %name38 = getelementptr inbounds %struct.request_header* %30, i32 %25, i32 0
  store i8* %name, i8** %name38, align 4, !tbaa !0
  %value39 = getelementptr inbounds %struct.request_header* %30, i32 %25, i32 1
  store i8* %value, i8** %value39, align 4, !tbaa !0
  %release_policy40 = getelementptr inbounds %struct.request_header* %30, i32 %25, i32 2
  store i32 %release_policy, i32* %release_policy40, align 4, !tbaa !11
  br label %return

return:                                           ; preds = %cont, %if.then4, %cont35, %release_header.exit
  ret void
}

declare i8* @aprintf(i8*, ...)

declare void @search_netrc(i8*, i8**, i8**, i32)

declare i32 @scheme_default_port(i32)

declare i8* @strchr(i8*, i32) nounwind readonly

declare i64 @file_size(i8*)

declare i8* @cookie_header(%struct.cookie_jar*, i8*, i32, i8*, i1 zeroext)

define internal fastcc void @request_set_user_header(%struct.request* nocapture %req, i8* %header) nounwind {
entry:
  %call = call i8* @strchr(i8* %header, i32 58) nounwind
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %return, label %do.body

do.body:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %header to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  %3 = sext i32 %sub.ptr.sub to i64
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %do.body
  call void @__ioc_report_add_overflow(i32 244, i32 45, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %do.body, %ioc_bb
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %5 = sext i32 %1 to i64
  call void @__ioc_report_conversion(i32 244, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %6 = alloca i8, i32 %1, align 1
  %7 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %7, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont2
  call void @__ioc_report_conversion(i32 245, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %header, i32 %sub.ptr.sub, i32 1, i1 false)
  %arrayidx = getelementptr inbounds i8* %6, i32 %sub.ptr.sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %cont5
  %call.pn = phi i8* [ %call, %cont5 ], [ %p.0, %while.cond ], [ %p.0, %while.cond ], [ %p.0, %while.cond ], [ %p.0, %while.cond ], [ %p.0, %while.cond ], [ %p.0, %while.cond ]
  %p.0 = getelementptr inbounds i8* %call.pn, i32 1
  %8 = load i8* %p.0, align 1, !tbaa !1
  switch i8 %8, label %while.end [
    i8 32, label %while.cond
    i8 13, label %while.cond
    i8 12, label %while.cond
    i8 11, label %while.cond
    i8 10, label %while.cond
    i8 9, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %call23 = call noalias i8* @xstrdup(i8* %6) nounwind
  call fastcc void @request_set_header(%struct.request* %req, i8* %call23, i8* %p.0, i32 1)
  br label %return

return:                                           ; preds = %entry, %while.end
  ret void
}

define internal fastcc i8* @basic_authentication_encode(i8* %user, i8* %passwd) nounwind {
entry:
  %call = call i32 @strlen(i8* %user) nounwind readonly
  %0 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %entry
  %3 = zext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 3345, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %entry, %ioc_bb1
  %call3 = call i32 @strlen(i8* %passwd) nounwind readonly
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %call3)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %cont2
  %7 = zext i32 %call3 to i64
  %8 = zext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 3345, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %8, i64 %7, i8 5) nounwind
  br label %cont5

cont5:                                            ; preds = %cont2, %ioc_bb4
  %9 = icmp sgt i32 %5, -1
  br i1 %9, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cont5
  %10 = zext i32 %5 to i64
  call void @__ioc_report_conversion(i32 3345, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %10, i8 0) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cont5
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  %14 = sext i32 %5 to i64
  br i1 %13, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  call void @__ioc_report_add_overflow(i32 3346, i32 41, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  %15 = icmp sgt i32 %12, -1
  br i1 %15, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %cont9
  %16 = sext i32 %12 to i64
  call void @__ioc_report_conversion(i32 3346, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %cont9
  %17 = alloca i8, i32 %12, align 1
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8]* @.str169, i32 0, i32 0), i8* %user, i8* %passwd) nounwind
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 2)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb13, label %cont16

ioc_bb13:                                         ; preds = %cont11
  call void @__ioc_report_add_overflow(i32 3348, i32 47, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %14, i64 2, i8 13) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb13, %cont11
  %div = sdiv i32 %19, 3
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %div, i32 4)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb17, label %cont18

ioc_bb17:                                         ; preds = %cont16
  %24 = sext i32 %div to i64
  call void @__ioc_report_mul_overflow(i32 3348, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 4, i64 %24, i8 13) nounwind
  br label %cont18

cont18:                                           ; preds = %cont16, %ioc_bb17
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %cont18
  %28 = sext i32 %22 to i64
  call void @__ioc_report_add_overflow(i32 3348, i32 57, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont20

cont20:                                           ; preds = %cont18, %ioc_bb19
  %29 = icmp sgt i32 %26, -1
  br i1 %29, label %cont23, label %ioc_bb22

ioc_bb22:                                         ; preds = %cont20
  %30 = sext i32 %26 to i64
  call void @__ioc_report_conversion(i32 3348, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %30, i8 1) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb22, %cont20
  %31 = alloca i8, i32 %26, align 1
  %call24 = call i32 @base64_encode(i8* %17, i32 %5, i8* %31) nounwind
  %call25 = call i8* (i8*, ...)* @concat_strings(i8* getelementptr inbounds ([7 x i8]* @.str170, i32 0, i32 0), i8* %31, i8* null) nounwind
  ret i8* %call25
}

declare i32 @socket_family(i32, i32)

declare void @debug_logprintf(i8*, ...)

define internal fastcc void @request_free(%struct.request* nocapture %req) nounwind {
entry:
  %arg = getelementptr inbounds %struct.request* %req, i32 0, i32 1
  %0 = load i8** %arg, align 4, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %for.cond.preheader, label %if.else

if.else:                                          ; preds = %entry
  tail call void @free(i8* %0) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.else
  %hcount = getelementptr inbounds %struct.request* %req, i32 0, i32 3
  %1 = load i32* %hcount, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %1, 0
  %headers = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  %2 = load %struct.request_header** %headers, align 4, !tbaa !0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %3 = phi %struct.request_header* [ %13, %for.cond.backedge ], [ %2, %for.cond.preheader ]
  %i.017 = phi i32 [ %10, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.request_header* %3, i32 %i.017
  %release_policy.i = getelementptr inbounds %struct.request_header* %3, i32 %i.017, i32 2
  %4 = load i32* %release_policy.i, align 4, !tbaa !11
  switch i32 %4, label %release_header.exit [
    i32 3, label %sw.bb2.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %for.body
  %name.i = getelementptr inbounds %struct.request_header* %arrayidx, i32 0, i32 0
  %5 = load i8** %name.i, align 4, !tbaa !0
  tail call void @free(i8* %5) nounwind
  br label %release_header.exit

sw.bb1.i:                                         ; preds = %for.body
  %value.i = getelementptr inbounds %struct.request_header* %3, i32 %i.017, i32 1
  %6 = load i8** %value.i, align 4, !tbaa !0
  tail call void @free(i8* %6) nounwind
  br label %release_header.exit

sw.bb2.i:                                         ; preds = %for.body
  %name3.i = getelementptr inbounds %struct.request_header* %arrayidx, i32 0, i32 0
  %7 = load i8** %name3.i, align 4, !tbaa !0
  tail call void @free(i8* %7) nounwind
  %value4.i = getelementptr inbounds %struct.request_header* %3, i32 %i.017, i32 1
  %8 = load i8** %value4.i, align 4, !tbaa !0
  tail call void @free(i8* %8) nounwind
  br label %release_header.exit

release_header.exit:                              ; preds = %for.body, %sw.bb.i, %sw.bb1.i, %sw.bb2.i
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.017, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %release_header.exit, %ioc_bb
  %12 = load i32* %hcount, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %12
  %13 = load %struct.request_header** %headers, align 4, !tbaa !0
  br i1 %cmp, label %for.body, label %for.end

ioc_bb:                                           ; preds = %release_header.exit
  %14 = sext i32 %i.017 to i64
  tail call void @__ioc_report_add_overflow(i32 359, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %.lcssa = phi %struct.request_header* [ %2, %for.cond.preheader ], [ %13, %for.cond.backedge ]
  %tobool3 = icmp eq %struct.request_header* %.lcssa, null
  br i1 %tobool3, label %if.end7, label %if.else5

if.else5:                                         ; preds = %for.end
  %15 = bitcast %struct.request_header* %.lcssa to i8*
  tail call void @free(i8* %15) nounwind
  br label %if.end7

if.end7:                                          ; preds = %for.end, %if.else5
  %16 = bitcast %struct.request* %req to i8*
  tail call void @free(i8* %16) nounwind
  ret void
}

declare i32 @connect_to_host(i8*, i32)

declare zeroext i1 @retryable_socket_connect_error(i32)

define internal fastcc i32 @request_send(%struct.request* nocapture %req, i32 %fd, %struct._IO_FILE* %warc_tmp) nounwind {
entry:
  %method = getelementptr inbounds %struct.request* %req, i32 0, i32 0
  %0 = load i8** %method, align 4, !tbaa !0
  %call = call i32 @strlen(i8* %0) nounwind readonly
  %1 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 291, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %entry, %ioc_bb1
  %arg = getelementptr inbounds %struct.request* %req, i32 0, i32 1
  %5 = load i8** %arg, align 4, !tbaa !0
  %call3 = call i32 @strlen(i8* %5) nounwind readonly
  %6 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %call3)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb4, label %cont7

ioc_bb4:                                          ; preds = %cont2
  %9 = zext i32 %call3 to i64
  %10 = zext i32 %2 to i64
  call void @__ioc_report_add_overflow(i32 291, i32 37, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %10, i64 %9, i8 5) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb4, %cont2
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb8, label %cont11

ioc_bb8:                                          ; preds = %cont7
  %14 = zext i32 %7 to i64
  call void @__ioc_report_add_overflow(i32 291, i32 60, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %14, i64 1, i8 5) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb8, %cont7
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 8)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb12, label %cont15

ioc_bb12:                                         ; preds = %cont11
  %18 = zext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 291, i32 64, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %18, i64 8, i8 5) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb12, %cont11
  %19 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 2)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb16, label %for.cond.preheader

ioc_bb16:                                         ; preds = %cont15
  %22 = zext i32 %16 to i64
  call void @__ioc_report_add_overflow(i32 291, i32 68, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %22, i64 2, i8 5) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ioc_bb16, %cont15
  %hcount = getelementptr inbounds %struct.request* %req, i32 0, i32 3
  %23 = load i32* %hcount, align 4, !tbaa !5
  %cmp229 = icmp sgt i32 %23, 0
  br i1 %cmp229, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %headers = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %i.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %46, %for.cond.backedge ]
  %size.0230 = phi i32 [ %20, %for.body.lr.ph ], [ %41, %for.cond.backedge ]
  %24 = load %struct.request_header** %headers, align 4, !tbaa !0
  %name = getelementptr inbounds %struct.request_header* %24, i32 %i.0231, i32 0
  %25 = load i8** %name, align 4, !tbaa !0
  %call20 = call i32 @strlen(i8* %25) nounwind readonly
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call20, i32 2)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %for.body
  %29 = zext i32 %call20 to i64
  call void @__ioc_report_add_overflow(i32 295, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %29, i64 2, i8 5) nounwind
  br label %cont24

cont24:                                           ; preds = %for.body, %ioc_bb23
  %value = getelementptr inbounds %struct.request_header* %24, i32 %i.0231, i32 1
  %30 = load i8** %value, align 4, !tbaa !0
  %call25 = call i32 @strlen(i8* %30) nounwind readonly
  %31 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 %call25)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb26, label %cont29

ioc_bb26:                                         ; preds = %cont24
  %34 = zext i32 %call25 to i64
  %35 = zext i32 %27 to i64
  call void @__ioc_report_add_overflow(i32 295, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %35, i64 %34, i8 5) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb26, %cont24
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 2)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb30, label %cont31

ioc_bb30:                                         ; preds = %cont29
  %39 = zext i32 %32 to i64
  call void @__ioc_report_add_overflow(i32 295, i32 64, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %39, i64 2, i8 5) nounwind
  br label %cont31

cont31:                                           ; preds = %cont29, %ioc_bb30
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %size.0230, i32 %37)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %cont31
  %43 = sext i32 %37 to i64
  %44 = sext i32 %size.0230 to i64
  call void @__ioc_report_add_overflow(i32 295, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %44, i64 %43, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %cont31, %ioc_bb32
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0231, i32 1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb34, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont33, %ioc_bb34
  %48 = load i32* %hcount, align 4, !tbaa !5
  %cmp = icmp slt i32 %46, %48
  br i1 %cmp, label %for.body, label %for.end

ioc_bb34:                                         ; preds = %cont33
  %49 = sext i32 %i.0231 to i64
  call void @__ioc_report_add_overflow(i32 292, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %49, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %size.0.lcssa = phi i32 [ %20, %for.cond.preheader ], [ %41, %for.cond.backedge ]
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %size.0.lcssa, i32 3)
  %51 = extractvalue { i32, i1 } %50, 0
  %52 = extractvalue { i32, i1 } %50, 1
  br i1 %52, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %for.end
  %53 = sext i32 %size.0.lcssa to i64
  call void @__ioc_report_add_overflow(i32 298, i32 8, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %53, i64 3, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %for.end, %ioc_bb36
  %54 = sext i32 %51 to i64
  %55 = icmp sgt i32 %51, -1
  br i1 %55, label %cont41, label %ioc_bb38

ioc_bb38:                                         ; preds = %cont37
  call void @__ioc_report_conversion(i32 299, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %54, i8 1) nounwind
  br label %cont41

cont41:                                           ; preds = %cont37, %ioc_bb38
  %56 = alloca i8, i32 %51, align 1
  %57 = load i8** %method, align 4, !tbaa !0
  %call43 = call i32 @strlen(i8* %57) nounwind readonly
  %58 = icmp sgt i32 %call43, -1
  br i1 %58, label %cont49, label %ioc_bb48

ioc_bb48:                                         ; preds = %cont41
  %59 = zext i32 %call43 to i64
  call void @__ioc_report_conversion(i32 302, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %59, i8 0) nounwind
  %60 = load i8** %method, align 4, !tbaa !0
  %61 = sext i32 %call43 to i64
  call void @__ioc_report_conversion(i32 303, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %61, i8 1) nounwind
  br label %cont49

cont49:                                           ; preds = %cont41, %ioc_bb48
  %62 = phi i8* [ %60, %ioc_bb48 ], [ %57, %cont41 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %62, i32 %call43, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %56, i32 %call43
  %add.ptr.sum = add i32 %call43, 1
  %incdec.ptr = getelementptr inbounds i8* %56, i32 %add.ptr.sum
  store i8 32, i8* %add.ptr, align 1, !tbaa !1
  %63 = load i8** %arg, align 4, !tbaa !0
  %call55 = call i32 @strlen(i8* %63) nounwind readonly
  %64 = icmp sgt i32 %call55, -1
  br i1 %64, label %cont62, label %ioc_bb61

ioc_bb61:                                         ; preds = %cont49
  %65 = zext i32 %call55 to i64
  call void @__ioc_report_conversion(i32 308, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %65, i8 0) nounwind
  %66 = load i8** %arg, align 4, !tbaa !0
  %67 = sext i32 %call55 to i64
  call void @__ioc_report_conversion(i32 309, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %67, i8 1) nounwind
  br label %cont62

cont62:                                           ; preds = %cont49, %ioc_bb61
  %68 = phi i8* [ %66, %ioc_bb61 ], [ %63, %cont49 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %incdec.ptr, i8* %68, i32 %call55, i32 1, i1 false)
  %incdec.ptr.sum = add i32 %call55, %add.ptr.sum
  %add.ptr63 = getelementptr inbounds i8* %56, i32 %incdec.ptr.sum
  store i8 32, i8* %add.ptr63, align 1, !tbaa !1
  %add.ptr63.sum = add i32 %incdec.ptr.sum, 1
  %incdec.ptr67 = getelementptr inbounds i8* %56, i32 %add.ptr63.sum
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %incdec.ptr67, i8* getelementptr inbounds ([11 x i8]* @.str165, i32 0, i32 0), i32 10, i32 1, i1 false)
  %incdec.ptr67.sum = add i32 %incdec.ptr.sum, 11
  %add.ptr70 = getelementptr inbounds i8* %56, i32 %incdec.ptr67.sum
  %69 = load i32* %hcount, align 4, !tbaa !5
  %cmp73226 = icmp sgt i32 %69, 0
  br i1 %cmp73226, label %for.body74.lr.ph, label %cont121

for.body74.lr.ph:                                 ; preds = %cont62
  %headers76 = getelementptr inbounds %struct.request* %req, i32 0, i32 2
  br label %for.body74

for.body74:                                       ; preds = %for.cond71.backedge, %for.body74.lr.ph
  %p.0228 = phi i8* [ %add.ptr70, %for.body74.lr.ph ], [ %incdec.ptr115, %for.cond71.backedge ]
  %i.1227 = phi i32 [ 0, %for.body74.lr.ph ], [ %84, %for.cond71.backedge ]
  %70 = load %struct.request_header** %headers76, align 4, !tbaa !0
  %name80 = getelementptr inbounds %struct.request_header* %70, i32 %i.1227, i32 0
  %71 = load i8** %name80, align 4, !tbaa !0
  %call81 = call i32 @strlen(i8* %71) nounwind readonly
  %72 = icmp sgt i32 %call81, -1
  br i1 %72, label %cont88, label %ioc_bb87

ioc_bb87:                                         ; preds = %for.body74
  %73 = zext i32 %call81 to i64
  call void @__ioc_report_conversion(i32 318, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %73, i8 0) nounwind
  %74 = load i8** %name80, align 4, !tbaa !0
  %75 = sext i32 %call81 to i64
  call void @__ioc_report_conversion(i32 319, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %75, i8 1) nounwind
  br label %cont88

cont88:                                           ; preds = %for.body74, %ioc_bb87
  %76 = phi i8* [ %74, %ioc_bb87 ], [ %71, %for.body74 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p.0228, i8* %76, i32 %call81, i32 1, i1 false)
  %add.ptr89 = getelementptr inbounds i8* %p.0228, i32 %call81
  store i8 58, i8* %add.ptr89, align 1, !tbaa !1
  %add.ptr89.sum = add i32 %call81, 1
  %incdec.ptr93 = getelementptr inbounds i8* %p.0228, i32 %add.ptr89.sum
  %incdec.ptr93.sum = add i32 %call81, 2
  %incdec.ptr96 = getelementptr inbounds i8* %p.0228, i32 %incdec.ptr93.sum
  store i8 32, i8* %incdec.ptr93, align 1, !tbaa !1
  %value99 = getelementptr inbounds %struct.request_header* %70, i32 %i.1227, i32 1
  %77 = load i8** %value99, align 4, !tbaa !0
  %call100 = call i32 @strlen(i8* %77) nounwind readonly
  %78 = icmp sgt i32 %call100, -1
  br i1 %78, label %cont107, label %ioc_bb106

ioc_bb106:                                        ; preds = %cont88
  %79 = zext i32 %call100 to i64
  call void @__ioc_report_conversion(i32 324, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %79, i8 0) nounwind
  %80 = load i8** %value99, align 4, !tbaa !0
  %81 = sext i32 %call100 to i64
  call void @__ioc_report_conversion(i32 325, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont107

cont107:                                          ; preds = %cont88, %ioc_bb106
  %82 = phi i8* [ %80, %ioc_bb106 ], [ %77, %cont88 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %incdec.ptr96, i8* %82, i32 %call100, i32 1, i1 false)
  %incdec.ptr96.sum = add i32 %call100, %incdec.ptr93.sum
  %add.ptr108 = getelementptr inbounds i8* %p.0228, i32 %incdec.ptr96.sum
  store i8 13, i8* %add.ptr108, align 1, !tbaa !1
  %add.ptr108.sum = add i32 %incdec.ptr96.sum, 1
  %incdec.ptr112 = getelementptr inbounds i8* %p.0228, i32 %add.ptr108.sum
  %incdec.ptr112.sum = add i32 %incdec.ptr96.sum, 2
  %incdec.ptr115 = getelementptr inbounds i8* %p.0228, i32 %incdec.ptr112.sum
  store i8 10, i8* %incdec.ptr112, align 1, !tbaa !1
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1227, i32 1)
  %84 = extractvalue { i32, i1 } %83, 0
  %85 = extractvalue { i32, i1 } %83, 1
  br i1 %85, label %ioc_bb117, label %for.cond71.backedge

for.cond71.backedge:                              ; preds = %cont107, %ioc_bb117
  %86 = load i32* %hcount, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %84, %86
  br i1 %cmp73, label %for.body74, label %cont121

ioc_bb117:                                        ; preds = %cont107
  %87 = sext i32 %i.1227 to i64
  call void @__ioc_report_add_overflow(i32 315, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %87, i64 1, i8 13) nounwind
  br label %for.cond71.backedge

cont121:                                          ; preds = %for.cond71.backedge, %cont62
  %p.0.lcssa = phi i8* [ %add.ptr70, %cont62 ], [ %incdec.ptr115, %for.cond71.backedge ]
  store i8 13, i8* %p.0.lcssa, align 1, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8* %p.0.lcssa, i32 1
  store i8 10, i8* %incdec.ptr122, align 1, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i8* %p.0.lcssa, i32 2
  %incdec.ptr128 = getelementptr inbounds i8* %p.0.lcssa, i32 3
  store i8 0, i8* %incdec.ptr125, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr128 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp129 = icmp eq i32 %sub.ptr.sub, %51
  br i1 %cmp129, label %do.body132, label %cont131

cont131:                                          ; preds = %cont121
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str166, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__.request_send, i32 0, i32 0)) noreturn nounwind
  unreachable

do.body132:                                       ; preds = %cont121
  %88 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool133 = icmp eq i8 %88, 0
  br i1 %tobool133, label %do.end134, label %if.then, !prof !10

if.then:                                          ; preds = %do.body132
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([42 x i8]* @.str167, i32 0, i32 0), i8* %56) nounwind
  br label %do.end134

do.end134:                                        ; preds = %do.body132, %if.then
  %89 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %51, i32 1)
  %90 = extractvalue { i32, i1 } %89, 0
  %91 = extractvalue { i32, i1 } %89, 1
  br i1 %91, label %ioc_bb135, label %cont138

ioc_bb135:                                        ; preds = %do.end134
  call void @__ioc_report_sub_overflow(i32 339, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %cont138

cont138:                                          ; preds = %ioc_bb135, %do.end134
  %call140 = call i32 @fd_write(i32 %fd, i8* %56, i32 %90, double -1.000000e+00) nounwind
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %cont145, label %if.else

cont145:                                          ; preds = %cont138
  %call146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8]* @.str168, i32 0, i32 0), i32 5) nounwind
  %call147 = call i8* @fd_errstr(i32 %fd) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call146, i8* %call147) nounwind
  br label %if.end171

if.else:                                          ; preds = %cont138
  %cmp148 = icmp eq %struct._IO_FILE* %warc_tmp, null
  br i1 %cmp148, label %if.end171, label %cont152

cont152:                                          ; preds = %if.else
  br i1 %91, label %ioc_bb153, label %cont154

ioc_bb153:                                        ; preds = %cont152
  call void @__ioc_report_sub_overflow(i32 344, i32 59, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %cont154

cont154:                                          ; preds = %cont152, %ioc_bb153
  %92 = icmp sgt i32 %90, -1
  br i1 %92, label %cont157, label %ioc_bb156

ioc_bb156:                                        ; preds = %cont154
  %93 = sext i32 %90 to i64
  call void @__ioc_report_conversion(i32 344, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %93, i8 1) nounwind
  br label %cont157

cont157:                                          ; preds = %ioc_bb156, %cont154
  %call158 = call i32 @fwrite(i8* %56, i32 1, i32 %90, %struct._IO_FILE* %warc_tmp) nounwind
  %94 = icmp sgt i32 %call158, -1
  br i1 %94, label %cont161, label %ioc_bb160

ioc_bb160:                                        ; preds = %cont157
  %95 = zext i32 %call158 to i64
  call void @__ioc_report_conversion(i32 344, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %95, i8 0) nounwind
  br label %cont161

cont161:                                          ; preds = %ioc_bb160, %cont157
  br i1 %91, label %ioc_bb162, label %cont163

ioc_bb162:                                        ; preds = %cont161
  call void @__ioc_report_sub_overflow(i32 345, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %cont163

cont163:                                          ; preds = %cont161, %ioc_bb162
  %cmp164 = icmp eq i32 %call158, %90
  br i1 %cmp164, label %if.end171, label %return

if.end171:                                        ; preds = %cont163, %if.else, %cont145
  br label %return

return:                                           ; preds = %cont163, %if.end171
  %retval.0 = phi i32 [ %call140, %if.end171 ], [ -2, %cont163 ]
  ret i32 %retval.0
}

declare void @fd_close(i32)

declare i8* @fd_errstr(i32)

define internal fastcc noalias %struct.response* @resp_new(i8* %head) nounwind {
entry:
  %call = tail call noalias i8* @xcalloc(i32 1, i32 8) nounwind
  %0 = bitcast i8* %call to %struct.response*
  %data = bitcast i8* %call to i8**
  store i8* %head, i8** %data, align 4, !tbaa !0
  %1 = load i8* %head, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %return, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %headers26 = getelementptr inbounds i8* %call, i32 4
  %2 = bitcast i8* %headers26 to i8***
  br label %do.body

do.body:                                          ; preds = %do.cond, %do.body.preheader
  %size.0 = phi i32 [ 0, %do.body.preheader ], [ %size.1.lcssa133, %do.cond ]
  %count.0 = phi i32 [ 0, %do.body.preheader ], [ %4, %do.cond ]
  %hdr.0 = phi i8* [ %head, %do.body.preheader ], [ %hdr.2, %do.cond ]
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  %6 = sext i32 %count.0 to i64
  br i1 %5, label %ioc_bb2, label %while.cond4.preheader

ioc_bb2:                                          ; preds = %do.body
  tail call void @__ioc_report_add_overflow(i32 570, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %do.body, %ioc_bb2
  %cmp5127 = icmp slt i32 %size.0, %4
  br i1 %cmp5127, label %while.body7, label %do.end

while.body7:                                      ; preds = %while.cond4.preheader, %cont11
  %size.1128 = phi i32 [ %.shl, %cont11 ], [ %size.0, %while.cond4.preheader ]
  %7 = icmp ult i32 %size.1128, 1073741824
  br i1 %7, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %while.body7
  %8 = sext i32 %size.1128 to i64
  tail call void @__ioc_report_shl_strict(i32 573, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %while.body7
  %shl = shl i32 %size.1128, 1
  %cmp12 = icmp slt i32 %shl, 16
  %.shl = select i1 %cmp12, i32 16, i32 %shl
  %cmp5 = icmp slt i32 %.shl, %4
  br i1 %cmp5, label %while.body7, label %while.end

while.end:                                        ; preds = %cont11
  %tobool = icmp eq i32 %.shl, 0
  br i1 %tobool, label %do.end, label %if.then16

if.then16:                                        ; preds = %while.end
  %9 = load i8*** %2, align 4, !tbaa !0
  %10 = bitcast i8** %9 to i8*
  %11 = icmp sgt i32 %.shl, -1
  br i1 %11, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %if.then16
  %12 = sext i32 %.shl to i64
  tail call void @__ioc_report_conversion(i32 579, i32 56, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %if.then16
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.shl, i32 4)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %cont18
  %16 = zext i32 %.shl to i64
  tail call void @__ioc_report_mul_overflow(i32 579, i32 67, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %16, i64 4, i8 5) nounwind
  br label %cont20

cont20:                                           ; preds = %cont18, %ioc_bb19
  %call21 = tail call i8* @xrealloc(i8* %10, i32 %14) nounwind
  %17 = bitcast i8* %call21 to i8**
  store i8** %17, i8*** %2, align 4, !tbaa !0
  br label %do.end

do.end:                                           ; preds = %while.cond4.preheader, %while.end, %cont20
  %size.1.lcssa133 = phi i32 [ 0, %while.end ], [ %.shl, %cont20 ], [ %size.0, %while.cond4.preheader ]
  br i1 %5, label %ioc_bb24, label %cont25

ioc_bb24:                                         ; preds = %do.end
  tail call void @__ioc_report_add_overflow(i32 581, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont25

cont25:                                           ; preds = %do.end, %ioc_bb24
  %18 = load i8*** %2, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %18, i32 %count.0
  store i8* %hdr.0, i8** %arrayidx, align 4, !tbaa !0
  %19 = load i8* %hdr.0, align 1, !tbaa !1
  switch i8 %19, label %do.body44 [
    i8 0, label %do.body59
    i8 13, label %land.lhs.true
    i8 10, label %do.body59
  ]

land.lhs.true:                                    ; preds = %cont25
  %arrayidx33 = getelementptr inbounds i8* %hdr.0, i32 1
  %20 = load i8* %arrayidx33, align 1, !tbaa !1
  %cmp35 = icmp eq i8 %20, 10
  br i1 %cmp35, label %do.body59, label %do.body44

do.body44:                                        ; preds = %cont25, %land.lhs.true, %do.cond, %do.cond
  %hdr.1 = phi i8* [ %hdr.2, %do.cond ], [ %hdr.2, %do.cond ], [ %hdr.0, %land.lhs.true ], [ %hdr.0, %cont25 ]
  %call45 = tail call i8* @strchr(i8* %hdr.1, i32 10) nounwind
  %tobool46 = icmp eq i8* %call45, null
  br i1 %tobool46, label %if.else, label %if.then47

if.then47:                                        ; preds = %do.body44
  %add.ptr = getelementptr inbounds i8* %call45, i32 1
  br label %do.cond

if.else:                                          ; preds = %do.body44
  %call48 = tail call i32 @strlen(i8* %hdr.1) nounwind readonly
  %add.ptr49 = getelementptr inbounds i8* %hdr.1, i32 %call48
  br label %do.cond

do.cond:                                          ; preds = %if.then47, %if.else
  %hdr.2 = phi i8* [ %add.ptr, %if.then47 ], [ %add.ptr49, %if.else ]
  %21 = load i8* %hdr.2, align 1, !tbaa !1
  switch i8 %21, label %do.body [
    i8 32, label %do.body44
    i8 9, label %do.body44
  ]

do.body59:                                        ; preds = %cont25, %cont25, %land.lhs.true
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb61, label %while.cond.preheader

ioc_bb61:                                         ; preds = %do.body59
  %25 = sext i32 %4 to i64
  tail call void @__ioc_report_add_overflow(i32 595, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body59, %ioc_bb61
  %cmp64125 = icmp slt i32 %size.1.lcssa133, %23
  br i1 %cmp64125, label %while.body66, label %do.end90

while.body66:                                     ; preds = %while.cond.preheader, %cont71
  %size.2126 = phi i32 [ %.shl72, %cont71 ], [ %size.1.lcssa133, %while.cond.preheader ]
  %26 = icmp ult i32 %size.2126, 1073741824
  br i1 %26, label %cont71, label %ioc_bb70

ioc_bb70:                                         ; preds = %while.body66
  %27 = sext i32 %size.2126 to i64
  tail call void @__ioc_report_shl_strict(i32 598, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %27, i64 1, i8 13) nounwind
  br label %cont71

cont71:                                           ; preds = %ioc_bb70, %while.body66
  %shl72 = shl i32 %size.2126, 1
  %cmp73 = icmp slt i32 %shl72, 16
  %.shl72 = select i1 %cmp73, i32 16, i32 %shl72
  %cmp64 = icmp slt i32 %.shl72, %23
  br i1 %cmp64, label %while.body66, label %while.end77

while.end77:                                      ; preds = %cont71
  %tobool78 = icmp eq i32 %.shl72, 0
  br i1 %tobool78, label %do.end90, label %if.then79

if.then79:                                        ; preds = %while.end77
  %28 = bitcast i8** %18 to i8*
  %29 = icmp sgt i32 %.shl72, -1
  br i1 %29, label %cont83, label %ioc_bb82

ioc_bb82:                                         ; preds = %if.then79
  %30 = sext i32 %.shl72 to i64
  tail call void @__ioc_report_conversion(i32 604, i32 54, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %30, i8 1) nounwind
  br label %cont83

cont83:                                           ; preds = %ioc_bb82, %if.then79
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.shl72, i32 4)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb84, label %cont85

ioc_bb84:                                         ; preds = %cont83
  %34 = zext i32 %.shl72 to i64
  tail call void @__ioc_report_mul_overflow(i32 604, i32 65, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %34, i64 4, i8 5) nounwind
  br label %cont85

cont85:                                           ; preds = %cont83, %ioc_bb84
  %call86 = tail call i8* @xrealloc(i8* %28, i32 %32) nounwind
  %35 = bitcast i8* %call86 to i8**
  store i8** %35, i8*** %2, align 4, !tbaa !0
  br label %do.end90

do.end90:                                         ; preds = %while.cond.preheader, %while.end77, %cont85
  %36 = phi i8** [ %18, %while.end77 ], [ %35, %cont85 ], [ %18, %while.cond.preheader ]
  %arrayidx92 = getelementptr inbounds i8** %36, i32 %4
  store i8* null, i8** %arrayidx92, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %do.end90
  ret %struct.response* %0
}

define internal fastcc i32 @resp_status(%struct.response* nocapture %resp, i8** %message) nounwind {
entry:
  %headers = getelementptr inbounds %struct.response* %resp, i32 0, i32 1
  %0 = load i8*** %headers, align 4, !tbaa !0
  %tobool = icmp eq i8** %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8** %message, null
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8]* @.str163, i32 0, i32 0), i32 5) nounwind
  %call3 = tail call noalias i8* @xstrdup(i8* %call) nounwind
  store i8* %call3, i8** %message, align 4, !tbaa !0
  br label %return

if.end4:                                          ; preds = %entry
  %1 = load i8** %0, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds i8** %0, i32 1
  %2 = load i8** %arrayidx7, align 4, !tbaa !0
  %tobool8 = icmp eq i8* %2, null
  br i1 %tobool8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end4
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i32 %sub.ptr.sub, 4
  br i1 %cmp, label %return, label %cont12

cont12:                                           ; preds = %if.end10
  %call13 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str88, i32 0, i32 0), i32 4) nounwind readonly
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end18, label %return

if.end18:                                         ; preds = %cont12
  %add.ptr = getelementptr inbounds i8* %1, i32 4
  %cmp19 = icmp ult i8* %add.ptr, %2
  br i1 %cmp19, label %land.lhs.true, label %while.cond59.preheader

while.cond59.preheader:                           ; preds = %while.cond42, %land.rhs45, %land.lhs.true, %if.end18
  %p.2.ph = phi i8* [ %add.ptr, %if.end18 ], [ %add.ptr, %land.lhs.true ], [ %p.1, %land.rhs45 ], [ %p.1, %while.cond42 ]
  %cmp60304 = icmp ult i8* %p.2.ph, %2
  br i1 %cmp60304, label %land.rhs62, label %while.end84

land.lhs.true:                                    ; preds = %if.end18
  %3 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %3, 47
  br i1 %cmp20, label %if.then22, label %while.cond59.preheader

if.then22:                                        ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8* %1, i32 5
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.then22
  %p.0 = phi i8* [ %incdec.ptr, %if.then22 ], [ %incdec.ptr32, %land.rhs ]
  %cmp23 = icmp ult i8* %p.0, %2
  br i1 %cmp23, label %land.rhs, label %while.cond42

land.rhs:                                         ; preds = %while.cond
  %4 = load i8* %p.0, align 1, !tbaa !1
  %.off298 = add i8 %4, -48
  %5 = icmp ult i8 %.off298, 10
  %incdec.ptr32 = getelementptr inbounds i8* %p.0, i32 1
  br i1 %5, label %while.cond, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.rhs
  %cmp37 = icmp eq i8 %4, 46
  %incdec.ptr40.p.0 = select i1 %cmp37, i8* %incdec.ptr32, i8* %p.0
  br label %while.cond42

while.cond42:                                     ; preds = %land.lhs.true35, %while.cond, %land.rhs45
  %p.1 = phi i8* [ %incdec.ptr56, %land.rhs45 ], [ %incdec.ptr40.p.0, %land.lhs.true35 ], [ %p.0, %while.cond ]
  %cmp43 = icmp ult i8* %p.1, %2
  br i1 %cmp43, label %land.rhs45, label %while.cond59.preheader

land.rhs45:                                       ; preds = %while.cond42
  %6 = load i8* %p.1, align 1, !tbaa !1
  %.off297 = add i8 %6, -48
  %7 = icmp ult i8 %.off297, 10
  %incdec.ptr56 = getelementptr inbounds i8* %p.1, i32 1
  br i1 %7, label %while.cond42, label %while.cond59.preheader

land.rhs62:                                       ; preds = %while.body82, %while.cond59.preheader
  %p.2305 = phi i8* [ %p.2.ph, %while.cond59.preheader ], [ %incdec.ptr83, %while.body82 ]
  %8 = load i8* %p.2305, align 1, !tbaa !1
  switch i8 %8, label %while.end84 [
    i8 32, label %while.body82
    i8 13, label %while.body82
    i8 12, label %while.body82
    i8 11, label %while.body82
    i8 10, label %while.body82
    i8 9, label %while.body82
  ]

while.body82:                                     ; preds = %land.rhs62, %land.rhs62, %land.rhs62, %land.rhs62, %land.rhs62, %land.rhs62
  %incdec.ptr83 = getelementptr inbounds i8* %p.2305, i32 1
  %cmp60 = icmp ult i8* %incdec.ptr83, %2
  br i1 %cmp60, label %land.rhs62, label %while.end84

while.end84:                                      ; preds = %while.body82, %land.rhs62, %while.cond59.preheader
  %p.2.lcssa = phi i8* [ %p.2.ph, %while.cond59.preheader ], [ %p.2305, %land.rhs62 ], [ %incdec.ptr83, %while.body82 ]
  %sub.ptr.rhs.cast86 = ptrtoint i8* %p.2.lcssa to i32
  %sub.ptr.sub87 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast86
  %cmp88 = icmp slt i32 %sub.ptr.sub87, 3
  br i1 %cmp88, label %return, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %while.end84
  %9 = load i8* %p.2.lcssa, align 1, !tbaa !1
  %conv93 = sext i8 %9 to i32
  %.off = add i8 %9, -48
  %10 = icmp ult i8 %.off, 10
  br i1 %10, label %lor.lhs.false100, label %return

lor.lhs.false100:                                 ; preds = %lor.lhs.false90
  %arrayidx102 = getelementptr inbounds i8* %p.2.lcssa, i32 1
  %11 = load i8* %arrayidx102, align 1, !tbaa !1
  %.off295 = add i8 %11, -48
  %12 = icmp ult i8 %.off295, 10
  br i1 %12, label %lor.lhs.false110, label %return

lor.lhs.false110:                                 ; preds = %lor.lhs.false100
  %arrayidx112 = getelementptr inbounds i8* %p.2.lcssa, i32 2
  %13 = load i8* %arrayidx112, align 1, !tbaa !1
  %.off296 = add i8 %13, -48
  %14 = icmp ult i8 %.off296, 10
  br i1 %14, label %if.end123, label %return

if.end123:                                        ; preds = %lor.lhs.false110
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv93, i32 48)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb126, label %cont127

ioc_bb126:                                        ; preds = %if.end123
  %18 = sext i8 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 729, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %18, i64 48, i8 13) nounwind
  br label %cont127

cont127:                                          ; preds = %if.end123, %ioc_bb126
  %19 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %16, i32 100)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb128, label %cont129

ioc_bb128:                                        ; preds = %cont127
  %22 = sext i32 %16 to i64
  tail call void @__ioc_report_mul_overflow(i32 729, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 100, i64 %22, i8 13) nounwind
  br label %cont129

cont129:                                          ; preds = %cont127, %ioc_bb128
  %23 = load i8* %arrayidx102, align 1, !tbaa !1
  %conv131 = sext i8 %23 to i32
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv131, i32 48)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb132, label %cont133

ioc_bb132:                                        ; preds = %cont129
  %27 = sext i8 %23 to i64
  tail call void @__ioc_report_sub_overflow(i32 729, i32 43, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 48, i8 13) nounwind
  br label %cont133

cont133:                                          ; preds = %cont129, %ioc_bb132
  %28 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %25, i32 10)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb134, label %cont135

ioc_bb134:                                        ; preds = %cont133
  %31 = sext i32 %25 to i64
  tail call void @__ioc_report_mul_overflow(i32 729, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 10, i64 %31, i8 13) nounwind
  br label %cont135

cont135:                                          ; preds = %cont133, %ioc_bb134
  %32 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %29)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb136, label %cont137

ioc_bb136:                                        ; preds = %cont135
  %35 = sext i32 %29 to i64
  %36 = sext i32 %20 to i64
  tail call void @__ioc_report_add_overflow(i32 729, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %36, i64 %35, i8 13) nounwind
  br label %cont137

cont137:                                          ; preds = %cont135, %ioc_bb136
  %37 = load i8* %arrayidx112, align 1, !tbaa !1
  %conv139 = sext i8 %37 to i32
  %38 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv139, i32 48)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb140, label %cont141

ioc_bb140:                                        ; preds = %cont137
  %41 = sext i8 %37 to i64
  tail call void @__ioc_report_sub_overflow(i32 729, i32 57, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %41, i64 48, i8 13) nounwind
  br label %cont141

cont141:                                          ; preds = %cont137, %ioc_bb140
  %42 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 %39)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb142, label %cont143

ioc_bb142:                                        ; preds = %cont141
  %45 = sext i32 %39 to i64
  %46 = sext i32 %33 to i64
  tail call void @__ioc_report_add_overflow(i32 729, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %46, i64 %45, i8 13) nounwind
  br label %cont143

cont143:                                          ; preds = %cont141, %ioc_bb142
  %add.ptr144 = getelementptr inbounds i8* %p.2.lcssa, i32 3
  %tobool145 = icmp eq i8** %message, null
  br i1 %tobool145, label %return, label %while.cond147.preheader

while.cond147.preheader:                          ; preds = %cont143
  %cmp148301 = icmp ult i8* %add.ptr144, %2
  br i1 %cmp148301, label %land.rhs150, label %while.cond175.preheader

land.rhs150:                                      ; preds = %while.cond147.preheader, %while.body172
  %p.3302 = phi i8* [ %incdec.ptr173, %while.body172 ], [ %add.ptr144, %while.cond147.preheader ]
  %47 = load i8* %p.3302, align 1, !tbaa !1
  switch i8 %47, label %while.cond175.preheader [
    i8 32, label %while.body172
    i8 13, label %while.body172
    i8 12, label %while.body172
    i8 11, label %while.body172
    i8 10, label %while.body172
    i8 9, label %while.body172
  ]

while.cond175.preheader:                          ; preds = %while.body172, %land.rhs150, %while.cond147.preheader
  %p.3.lcssa = phi i8* [ %add.ptr144, %while.cond147.preheader ], [ %p.3302, %land.rhs150 ], [ %incdec.ptr173, %while.body172 ]
  %cmp176299 = icmp ult i8* %p.3.lcssa, %2
  br i1 %cmp176299, label %cont181, label %while.end205

while.body172:                                    ; preds = %land.rhs150, %land.rhs150, %land.rhs150, %land.rhs150, %land.rhs150, %land.rhs150
  %incdec.ptr173 = getelementptr inbounds i8* %p.3302, i32 1
  %cmp148 = icmp ult i8* %incdec.ptr173, %2
  br i1 %cmp148, label %land.rhs150, label %while.cond175.preheader

cont181:                                          ; preds = %while.cond175.preheader, %while.cond175.backedge
  %end.0300 = phi i8* [ %arrayidx182, %while.cond175.backedge ], [ %2, %while.cond175.preheader ]
  %arrayidx182 = getelementptr inbounds i8* %end.0300, i32 -1
  %48 = load i8* %arrayidx182, align 1, !tbaa !1
  switch i8 %48, label %while.end205 [
    i8 32, label %while.cond175.backedge
    i8 13, label %while.cond175.backedge
    i8 12, label %while.cond175.backedge
    i8 11, label %while.cond175.backedge
    i8 10, label %while.cond175.backedge
    i8 9, label %while.cond175.backedge
  ]

while.cond175.backedge:                           ; preds = %cont181, %cont181, %cont181, %cont181, %cont181, %cont181
  %cmp176 = icmp ult i8* %p.3.lcssa, %arrayidx182
  br i1 %cmp176, label %cont181, label %while.end205

while.end205:                                     ; preds = %while.cond175.backedge, %cont181, %while.cond175.preheader
  %end.0.lcssa = phi i8* [ %2, %while.cond175.preheader ], [ %end.0300, %cont181 ], [ %arrayidx182, %while.cond175.backedge ]
  %call206 = tail call i8* @strdupdelim(i8* %p.3.lcssa, i8* %end.0.lcssa) nounwind
  store i8* %call206, i8** %message, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %while.end205, %cont143, %lor.lhs.false110, %lor.lhs.false100, %lor.lhs.false90, %while.end84, %cont12, %if.end10, %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ 200, %if.then ], [ 200, %if.then2 ], [ -1, %if.end4 ], [ -1, %if.end10 ], [ -1, %cont12 ], [ -1, %while.end84 ], [ -1, %lor.lhs.false90 ], [ -1, %lor.lhs.false100 ], [ -1, %lor.lhs.false110 ], [ %43, %cont143 ], [ %43, %while.end205 ]
  ret i32 %retval.0
}

declare zeroext i1 @ssl_connect_wget(i32, i8*)

declare zeroext i1 @ssl_check_certificate(i32, i8*)

declare %struct._IO_FILE* @warc_tempfile()

declare zeroext i1 @socket_ip_address(i32, %struct.ip_address*, i32)

declare i32 @fd_write(i32, i8*, i32, double)

declare i64 @ftello64(%struct._IO_FILE*)

declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

declare i32 @fclose(%struct._IO_FILE* nocapture) nounwind

declare void @warc_timestamp(i8*)

declare void @warc_uuid_str(i8*)

declare zeroext i1 @warc_write_request_record(i8*, i8*, i8*, %struct.ip_address*, %struct._IO_FILE*, i64)

declare i64 @strtoll(i8*, i8** nocapture, i32) nounwind

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @strcasecmp(i8* nocapture, i8* nocapture) nounwind readonly

define internal fastcc i32 @resp_header_locate(%struct.response* nocapture %resp, i8* nocapture %name, i32 %start, i8** nocapture %begptr, i8** nocapture %endptr) nounwind {
entry:
  %headers1 = getelementptr inbounds %struct.response* %resp, i32 0, i32 1
  %0 = load i8*** %headers1, align 4, !tbaa !0
  %tobool = icmp eq i8** %0, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %0, i32 1
  %1 = load i8** %arrayidx, align 4, !tbaa !0
  %tobool2 = icmp eq i8* %1, null
  br i1 %tobool2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @strlen(i8* %name) nounwind readonly
  %2 = icmp sgt i32 %call, -1
  br i1 %2, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.end
  %3 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 626, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.end
  %cmp = icmp slt i32 %start, 1
  %start. = select i1 %cmp, i32 1, i32 %start
  %4 = sext i32 %call to i64
  br label %for.cond

for.cond:                                         ; preds = %ioc_bb79, %for.inc, %cont4
  %i.0 = phi i32 [ %start., %cont4 ], [ %6, %for.inc ], [ %6, %ioc_bb79 ]
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  %8 = sext i32 %i.0 to i64
  br i1 %7, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %for.cond
  tail call void @__ioc_report_add_overflow(i32 631, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %for.cond, %ioc_bb7
  %arrayidx9 = getelementptr inbounds i8** %0, i32 %6
  %9 = load i8** %arrayidx9, align 4, !tbaa !0
  %tobool10 = icmp eq i8* %9, null
  br i1 %tobool10, label %return, label %for.body

for.body:                                         ; preds = %cont8
  %arrayidx11 = getelementptr inbounds i8** %0, i32 %i.0
  %10 = load i8** %arrayidx11, align 4, !tbaa !0
  br i1 %7, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %for.body
  tail call void @__ioc_report_add_overflow(i32 633, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  %.pre = load i8** %arrayidx9, align 4, !tbaa !0
  br label %cont13

cont13:                                           ; preds = %for.body, %ioc_bb12
  %11 = phi i8* [ %9, %for.body ], [ %.pre, %ioc_bb12 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp15 = icmp sgt i32 %sub.ptr.sub, %call
  br i1 %cmp15, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %cont13
  %arrayidx16 = getelementptr inbounds i8* %10, i32 %call
  %12 = load i8* %arrayidx16, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %12, 58
  br i1 %cmp17, label %land.lhs.true19, label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true
  br i1 %2, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %land.lhs.true19
  tail call void @__ioc_report_conversion(i32 634, i32 75, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %land.lhs.true19
  %call22 = tail call i32 @strncasecmp(i8* %10, i8* %name, i32 %call) nounwind readonly
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %for.inc

if.then25:                                        ; preds = %cont21
  %13 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb26, label %cont27

ioc_bb26:                                         ; preds = %if.then25
  tail call void @__ioc_report_add_overflow(i32 635, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont27

cont27:                                           ; preds = %if.then25, %ioc_bb26
  %add.ptr = getelementptr inbounds i8* %10, i32 %14
  %cmp28130 = icmp ult i8* %add.ptr, %11
  br i1 %cmp28130, label %land.rhs, label %while.cond47.preheader

land.rhs:                                         ; preds = %cont27, %while.body
  %b.0131 = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr, %cont27 ]
  %16 = load i8* %b.0131, align 1, !tbaa !1
  switch i8 %16, label %while.cond47.preheader [
    i8 32, label %while.body
    i8 13, label %while.body
    i8 12, label %while.body
    i8 11, label %while.body
    i8 10, label %while.body
    i8 9, label %while.body
  ]

while.cond47.preheader:                           ; preds = %while.body, %land.rhs, %cont27
  %b.0.lcssa = phi i8* [ %add.ptr, %cont27 ], [ %b.0131, %land.rhs ], [ %incdec.ptr, %while.body ]
  %cmp48128 = icmp ult i8* %b.0.lcssa, %11
  br i1 %cmp48128, label %cont53, label %while.end77

while.body:                                       ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %b.0131, i32 1
  %cmp28 = icmp ult i8* %incdec.ptr, %11
  br i1 %cmp28, label %land.rhs, label %while.cond47.preheader

cont53:                                           ; preds = %while.cond47.preheader, %while.cond47.backedge
  %e.0129 = phi i8* [ %arrayidx54, %while.cond47.backedge ], [ %11, %while.cond47.preheader ]
  %arrayidx54 = getelementptr inbounds i8* %e.0129, i32 -1
  %17 = load i8* %arrayidx54, align 1, !tbaa !1
  switch i8 %17, label %while.end77 [
    i8 32, label %while.cond47.backedge
    i8 13, label %while.cond47.backedge
    i8 12, label %while.cond47.backedge
    i8 11, label %while.cond47.backedge
    i8 10, label %while.cond47.backedge
    i8 9, label %while.cond47.backedge
  ]

while.cond47.backedge:                            ; preds = %cont53, %cont53, %cont53, %cont53, %cont53, %cont53
  %cmp48 = icmp ult i8* %b.0.lcssa, %arrayidx54
  br i1 %cmp48, label %cont53, label %while.end77

while.end77:                                      ; preds = %while.cond47.backedge, %cont53, %while.cond47.preheader
  %e.0.lcssa = phi i8* [ %11, %while.cond47.preheader ], [ %e.0129, %cont53 ], [ %arrayidx54, %while.cond47.backedge ]
  store i8* %b.0.lcssa, i8** %begptr, align 4, !tbaa !0
  store i8* %e.0.lcssa, i8** %endptr, align 4, !tbaa !0
  br label %return

for.inc:                                          ; preds = %cont13, %land.lhs.true, %cont21
  br i1 %7, label %ioc_bb79, label %for.cond

ioc_bb79:                                         ; preds = %for.inc
  tail call void @__ioc_report_add_overflow(i32 631, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %for.cond

return:                                           ; preds = %cont8, %lor.lhs.false, %entry, %while.end77
  %retval.0 = phi i32 [ %i.0, %while.end77 ], [ -1, %entry ], [ -1, %lor.lhs.false ], [ -1, %cont8 ]
  ret i32 %retval.0
}

declare void @cookie_handle_set_cookie(%struct.cookie_jar*, i8*, i32, i8*, i8*)

define internal fastcc i32 @read_response_body(%struct.http_stat* %hs, i32 %sock, %struct._IO_FILE* %fp, i64 %contlen, i64 %contrange, i1 zeroext %chunked_transfer_encoding, i8* %url, i8* %warc_timestamp_str, i8* %warc_request_uuid, %struct.ip_address* %warc_ip, i8* %type, i32 %statcode, i8* nocapture %head) nounwind {
entry:
  %0 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 46), align 4, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct._IO_FILE* @warc_tempfile() nounwind
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  %. = select i1 %cmp1, i32 59, i32 0
  br i1 %cmp1, label %return, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @strlen(i8* %head) nounwind readonly
  %1 = icmp sgt i32 %call5, -1
  br i1 %1, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %if.then4
  %2 = zext i32 %call5 to i64
  tail call void @__ioc_report_conversion(i32 1420, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %2, i8 0) nounwind
  %3 = sext i32 %call5 to i64
  tail call void @__ioc_report_conversion(i32 1421, i32 45, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %if.then4, %ioc_bb8
  %call10 = tail call i32 @fwrite(i8* %head, i32 1, i32 %call5, %struct._IO_FILE* %call) nounwind
  %4 = icmp sgt i32 %call10, -1
  br i1 %4, label %if.end17, label %ioc_bb12

ioc_bb12:                                         ; preds = %cont9
  %5 = zext i32 %call10 to i64
  tail call void @__ioc_report_conversion(i32 1421, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %if.end17

if.end17:                                         ; preds = %cont9, %ioc_bb12
  %cmp14 = icmp eq i32 %call10, %call5
  %.. = select i1 %cmp14, i32 %., i32 60
  %cmp18 = icmp eq i32 %.., 0
  br i1 %cmp18, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end17
  br i1 %cmp1, label %return, label %if.then21

if.then21:                                        ; preds = %if.then19
  %call22 = tail call i32 @fclose(%struct._IO_FILE* %call) nounwind
  br label %return

if.end25:                                         ; preds = %if.end17, %entry
  %warc_tmp.0 = phi %struct._IO_FILE* [ %call, %if.end17 ], [ null, %entry ]
  %warc_payload_offset.1 = phi i32 [ %call5, %if.end17 ], [ 0, %entry ]
  %cmp26 = icmp ne %struct._IO_FILE* %fp, null
  %cmp26.not = xor i1 %cmp26, true
  %6 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 88), align 1, !tbaa !3, !range !4
  %tobool = icmp eq i8 %6, 0
  %or.cond = or i1 %tobool, %cmp26.not
  br i1 %or.cond, label %cont37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25
  %restval = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 2
  %7 = load i64* %restval, align 4, !tbaa !6
  %cmp28 = icmp eq i64 %7, 0
  br i1 %cmp28, label %cont31, label %cont37

cont31:                                           ; preds = %land.lhs.true
  %call32 = tail call i32 @strlen(i8* %head) nounwind readonly
  %call33 = tail call i32 @fwrite(i8* %head, i32 1, i32 %call32, %struct._IO_FILE* %fp) nounwind
  br label %cont37

cont37:                                           ; preds = %cont31, %land.lhs.true, %if.end25
  %cmp38 = icmp ne i64 %contlen, -1
  %.140 = zext i1 %cmp38 to i32
  %restval45 = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 2
  %8 = load i64* %restval45, align 4, !tbaa !6
  br i1 %cmp26, label %land.lhs.true44, label %if.end53

land.lhs.true44:                                  ; preds = %cont37
  %cmp46 = icmp sgt i64 %8, 0
  %cmp49 = icmp eq i64 %contrange, 0
  %or.cond141 = and i1 %cmp46, %cmp49
  %or52 = or i32 %.140, 2
  %or52..140 = select i1 %or.cond141, i32 %or52, i32 %.140
  br label %if.end53

if.end53:                                         ; preds = %cont37, %land.lhs.true44
  %flags.1 = phi i32 [ %or52..140, %land.lhs.true44 ], [ %.140, %cont37 ]
  %or56 = or i32 %flags.1, 4
  %flags.2 = select i1 %chunked_transfer_encoding, i32 %or56, i32 %flags.1
  %len = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 0
  store i64 %8, i64* %len, align 4, !tbaa !6
  %rd_size = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 10
  store i64 0, i64* %rd_size, align 4, !tbaa !6
  %cond = select i1 %cmp38, i64 %contlen, i64 0
  %dltime = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 11
  %call67 = tail call i32 @fd_read_body(i32 %sock, %struct._IO_FILE* %fp, i64 %cond, i64 %8, i64* %rd_size, i64* %len, double* %dltime, i32 %flags.2, %struct._IO_FILE* %warc_tmp.0) nounwind
  %res = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 3
  store i32 %call67, i32* %res, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %call67, -1
  %cmp72 = icmp ne %struct._IO_FILE* %warc_tmp.0, null
  br i1 %cmp69, label %if.then71, label %if.end82

if.then71:                                        ; preds = %if.end53
  br i1 %cmp72, label %if.then74, label %if.end81

if.then74:                                        ; preds = %if.then71
  %conv75 = sext i32 %warc_payload_offset.1 to i64
  %newloc = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 5
  %9 = load i8** %newloc, align 4, !tbaa !0
  %call76 = tail call zeroext i1 @warc_write_response_record(i8* %url, i8* %warc_timestamp_str, i8* %warc_request_uuid, %struct.ip_address* %warc_ip, %struct._IO_FILE* %warc_tmp.0, i64 %conv75, i8* %type, i32 %statcode, i8* %9) nounwind
  br i1 %call76, label %if.end81, label %return

if.end81:                                         ; preds = %if.then74, %if.then71
  br label %return

if.end82:                                         ; preds = %if.end53
  br i1 %cmp72, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end82
  %call86 = tail call i32 @fclose(%struct._IO_FILE* %warc_tmp.0) nounwind
  %.pre = load i32* %res, align 4, !tbaa !5
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end82
  %10 = phi i32 [ %.pre, %if.then85 ], [ %call67, %if.end82 ]
  %cmp91 = icmp eq i32 %10, -2
  br i1 %cmp91, label %return, label %if.else

if.else:                                          ; preds = %if.end87
  %cmp97 = icmp eq i32 %10, -3
  br i1 %cmp97, label %return, label %if.else100

if.else100:                                       ; preds = %if.else
  %call101 = tail call i8* @fd_errstr(i32 %sock) nounwind
  %call102 = tail call noalias i8* @xstrdup(i8* %call101) nounwind
  %rderrmsg = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 4
  store i8* %call102, i8** %rderrmsg, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then, %if.else, %if.end87, %if.then74, %if.then21, %if.then19, %if.else100, %if.end81
  %retval.0 = phi i32 [ 39, %if.end81 ], [ 39, %if.else100 ], [ %.., %if.then19 ], [ %.., %if.then21 ], [ 58, %if.then74 ], [ 26, %if.end87 ], [ 60, %if.else ], [ %., %if.then ]
  ret i32 %retval.0
}

define internal fastcc zeroext i1 @skip_short_body(i32 %fd, i64 %contlen, i1 zeroext %chunked) nounwind {
entry:
  %dlbuf = alloca [513 x i8], align 1
  %endl = alloca i8*, align 4
  %arrayidx = getelementptr inbounds [513 x i8]* %dlbuf, i32 0, i32 512
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %cmp6 = icmp sgt i64 %contlen, 4096
  br i1 %cmp6, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp8141 = icmp sgt i64 %contlen, 0
  %brmerge142 = or i1 %cmp8141, %chunked
  br i1 %brmerge142, label %while.body.lr.ph, label %do.body105

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arraydecay = getelementptr inbounds [513 x i8]* %dlbuf, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %contlen.addr.0144 = phi i64 [ %contlen, %while.body.lr.ph ], [ %4, %while.cond.backedge ]
  %remaining_chunk_size.0143 = phi i64 [ 0, %while.body.lr.ph ], [ %remaining_chunk_size.3, %while.cond.backedge ]
  br i1 %chunked, label %if.then13, label %do.body

if.then13:                                        ; preds = %while.body
  %cmp14 = icmp eq i64 %remaining_chunk_size.0143, 0
  br i1 %cmp14, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.then13
  %call = call i8* @fd_read_line(i32 %fd) nounwind
  %cmp17 = icmp eq i8* %call, null
  br i1 %cmp17, label %do.body105, label %if.end20

if.end20:                                         ; preds = %if.then16
  %call21 = call i32 @strtol(i8* %call, i8** %endl, i32 16) nounwind
  %conv22 = sext i32 %call21 to i64
  call void @free(i8* %call) nounwind
  %cmp23 = icmp eq i32 %call21, 0
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end20
  %call26 = call i8* @fd_read_line(i32 %fd) nounwind
  %tobool27 = icmp eq i8* %call26, null
  br i1 %tobool27, label %do.body105, label %if.else

if.else:                                          ; preds = %if.then25
  call void @free(i8* %call26) nounwind
  br label %do.body105

if.end31:                                         ; preds = %if.end20, %if.then13
  %remaining_chunk_size.1 = phi i64 [ %conv22, %if.end20 ], [ %remaining_chunk_size.0143, %if.then13 ]
  %cmp32 = icmp sgt i64 %remaining_chunk_size.1, 512
  %cond = select i1 %cmp32, i64 512, i64 %remaining_chunk_size.1
  br label %do.body

do.body:                                          ; preds = %while.body, %if.end31
  %remaining_chunk_size.2 = phi i64 [ %remaining_chunk_size.1, %if.end31 ], [ %remaining_chunk_size.0143, %while.body ]
  %contlen.addr.1 = phi i64 [ %cond, %if.end31 ], [ %contlen.addr.0144, %while.body ]
  %0 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool40 = icmp eq i8 %0, 0
  br i1 %tobool40, label %do.end, label %if.then41, !prof !10

if.then41:                                        ; preds = %do.body
  %call42 = call i8* @number_to_static_string(i64 %contlen.addr.1) nounwind
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([29 x i8]* @.str152, i32 0, i32 0), i8* %call42) nounwind
  br label %do.end

do.end:                                           ; preds = %do.body, %if.then41
  %cmp44 = icmp sgt i64 %contlen.addr.1, 512
  %cond49 = select i1 %cmp44, i64 512, i64 %contlen.addr.1
  %cond49.off = add i64 %cond49, 2147483648
  %1 = icmp ult i64 %cond49.off, 4294967296
  br i1 %1, label %cont51, label %ioc_bb50

ioc_bb50:                                         ; preds = %do.end
  call void @__ioc_report_conversion(i32 880, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %cond49, i8 1) nounwind
  br label %cont51

cont51:                                           ; preds = %ioc_bb50, %do.end
  %conv52 = trunc i64 %cond49 to i32
  %call56 = call i32 @fd_read(i32 %fd, i8* %arraydecay, i32 %conv52, double -1.000000e+00) nounwind
  %cmp57 = icmp slt i32 %call56, 1
  br i1 %cmp57, label %do.body60, label %if.end75

do.body60:                                        ; preds = %cont51
  %2 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool64 = icmp eq i8 %2, 0
  br i1 %tobool64, label %return, label %if.then65, !prof !10

if.then65:                                        ; preds = %do.body60
  %cmp66 = icmp slt i32 %call56, 0
  br i1 %cmp66, label %cond.true68, label %cond.end71

cond.true68:                                      ; preds = %if.then65
  %call69 = call i8* @fd_errstr(i32 %fd) nounwind
  br label %cond.end71

cond.end71:                                       ; preds = %if.then65, %cond.true68
  %cond72 = phi i8* [ %call69, %cond.true68 ], [ getelementptr inbounds ([13 x i8]* @.str154, i32 0, i32 0), %if.then65 ]
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([18 x i8]* @.str153, i32 0, i32 0), i8* %cond72) nounwind
  br label %return

if.end75:                                         ; preds = %cont51
  %conv76 = sext i32 %call56 to i64
  %3 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %contlen.addr.1, i64 %conv76)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = extractvalue { i64, i1 } %3, 1
  br i1 %5, label %ioc_bb77, label %cont78

ioc_bb77:                                         ; preds = %if.end75
  call void @__ioc_report_sub_overflow(i32 891, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %contlen.addr.1, i64 %conv76, i8 14) nounwind
  br label %cont78

cont78:                                           ; preds = %if.end75, %ioc_bb77
  br i1 %chunked, label %if.then80, label %do.body96

if.then80:                                        ; preds = %cont78
  %6 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %remaining_chunk_size.2, i64 %conv76)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %ioc_bb82, label %cont83

ioc_bb82:                                         ; preds = %if.then80
  call void @__ioc_report_sub_overflow(i32 893, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %remaining_chunk_size.2, i64 %conv76, i8 14) nounwind
  br label %cont83

cont83:                                           ; preds = %if.then80, %ioc_bb82
  %cmp84 = icmp eq i64 %7, 0
  br i1 %cmp84, label %if.then86, label %do.body96

if.then86:                                        ; preds = %cont83
  %call88 = call i8* @fd_read_line(i32 %fd) nounwind
  %cmp89 = icmp eq i8* %call88, null
  br i1 %cmp89, label %return, label %if.else92

if.else92:                                        ; preds = %if.then86
  call void @free(i8* %call88) nounwind
  br label %do.body96

do.body96:                                        ; preds = %cont78, %if.else92, %cont83
  %remaining_chunk_size.3 = phi i64 [ 0, %if.else92 ], [ %7, %cont83 ], [ %remaining_chunk_size.2, %cont78 ]
  %9 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool100 = icmp eq i8 %9, 0
  br i1 %tobool100, label %while.cond.backedge, label %if.then101, !prof !10

if.then101:                                       ; preds = %do.body96
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([5 x i8]* @.str155, i32 0, i32 0), i32 %call56, i8* %arraydecay) nounwind
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then101, %do.body96
  %cmp8 = icmp sgt i64 %4, 0
  %brmerge = or i1 %cmp8, %chunked
  br i1 %brmerge, label %while.body, label %do.body105

do.body105:                                       ; preds = %while.cond.preheader, %if.then16, %while.cond.backedge, %if.then25, %if.else
  %10 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !3, !range !4
  %tobool109 = icmp eq i8 %10, 0
  br i1 %tobool109, label %return, label %if.then110, !prof !10

if.then110:                                       ; preds = %do.body105
  call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([9 x i8]* @.str156, i32 0, i32 0)) nounwind
  br label %return

return:                                           ; preds = %if.then86, %if.then110, %do.body105, %cond.end71, %do.body60, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %do.body60 ], [ false, %cond.end71 ], [ true, %do.body105 ], [ true, %if.then110 ], [ false, %if.then86 ]
  ret i1 %retval.0
}

declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @unique_name(i8*, i1 zeroext)

declare i8* @parse_charset(i8*)

declare void @set_content_encoding(%struct.iri*, i8*)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare i8* @escnonprint_uri(i8*)

define internal fastcc void @ensure_extension(%struct.http_stat* nocapture %hs, i8* %ext, i32* nocapture %dt) nounwind {
entry:
  %shortext = alloca [8 x i8], align 1
  %local_file = getelementptr inbounds %struct.http_stat* %hs, i32 0, i32 13
  %0 = load i8** %local_file, align 4, !tbaa !0
  %call = call i8* @strrchr(i8* %0, i32 46) nounwind readonly
  %call1 = call i32 @strlen(i8* %ext) nounwind readonly
  %1 = icmp sgt i32 %call1, -1
  br i1 %1, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__ioc_report_conversion(i32 3585, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %if.end

cont:                                             ; preds = %entry
  %cmp = icmp eq i32 %call1, 5
  br i1 %cmp, label %cont10, label %if.end

cont10:                                           ; preds = %cont
  %arraydecay = getelementptr inbounds [8 x i8]* %shortext, i32 0, i32 0
  %call6 = call i8* @strncpy(i8* %arraydecay, i8* %ext, i32 4) nounwind
  %arrayidx = getelementptr inbounds [8 x i8]* %shortext, i32 0, i32 4
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %cont.thread, %cont10, %cont
  %cmp11 = icmp eq i8* %call, null
  br i1 %cmp11, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [8 x i8]* %shortext, i32 0, i32 0
  %call13 = call i32 @strcasecmp(i8* %call, i8* %arraydecay12) nounwind readonly
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end55, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = call i32 @strcasecmp(i8* %call, i8* %ext) nounwind readonly
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end55, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15, %if.end
  %3 = load i8** %local_file, align 4, !tbaa !0
  %call20 = call i32 @strlen(i8* %3) nounwind readonly
  %4 = icmp sgt i32 %call20, -1
  br i1 %4, label %cont23, label %ioc_bb22

ioc_bb22:                                         ; preds = %if.then18
  %5 = zext i32 %call20 to i64
  call void @__ioc_report_conversion(i32 3591, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %5, i8 0) nounwind
  %.pre = load i8** %local_file, align 4, !tbaa !0
  br label %cont23

cont23:                                           ; preds = %ioc_bb22, %if.then18
  %6 = phi i8* [ %.pre, %ioc_bb22 ], [ %3, %if.then18 ]
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call20, i32 24)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %cont23
  %10 = sext i32 %call20 to i64
  call void @__ioc_report_add_overflow(i32 3594, i32 73, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %10, i64 24, i8 13) nounwind
  br label %cont26

cont26:                                           ; preds = %cont23, %ioc_bb25
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %call1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb27, label %cont28

ioc_bb27:                                         ; preds = %cont26
  %14 = sext i32 %call1 to i64
  %15 = sext i32 %8 to i64
  call void @__ioc_report_add_overflow(i32 3594, i32 78, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %15, i64 %14, i8 13) nounwind
  br label %cont28

cont28:                                           ; preds = %cont26, %ioc_bb27
  %16 = icmp sgt i32 %12, -1
  br i1 %16, label %cont31, label %ioc_bb30

ioc_bb30:                                         ; preds = %cont28
  %17 = sext i32 %12 to i64
  call void @__ioc_report_conversion(i32 3594, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb30, %cont28
  %call32 = call i8* @xrealloc(i8* %6, i32 %12) nounwind
  store i8* %call32, i8** %local_file, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call32, i32 %call20
  %call35 = call i8* @strcpy(i8* %add.ptr, i8* %ext) nounwind
  %18 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 17), align 2, !tbaa !3, !range !4
  %19 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 58), align 1, !tbaa !3, !range !4
  %20 = or i8 %19, %18
  %21 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 91), align 4, !tbaa !3, !range !4
  %22 = or i8 %20, %21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %lor.lhs.false40, label %if.end54

lor.lhs.false40:                                  ; preds = %cont31
  %24 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 12), align 4, !tbaa !3, !range !4
  %tobool41 = icmp ne i8 %24, 0
  %25 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 45), align 4, !tbaa !0
  %tobool43 = icmp ne i8* %25, null
  %or.cond = or i1 %tobool41, %tobool43
  br i1 %or.cond, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false40
  %26 = load i8** %local_file, align 4, !tbaa !0
  %call45 = call zeroext i1 @file_exists_p(i8* %26) nounwind
  br i1 %call45, label %do.body, label %if.end54

do.body:                                          ; preds = %land.lhs.true, %cont50
  %ext_num.0 = phi i32 [ %29, %cont50 ], [ 1, %land.lhs.true ]
  %27 = load i8** %local_file, align 4, !tbaa !0
  %add.ptr48 = getelementptr inbounds i8* %27, i32 %call20
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ext_num.0, i32 1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %do.body
  %31 = sext i32 %ext_num.0 to i64
  call void @__ioc_report_add_overflow(i32 3601, i32 70, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %do.body, %ioc_bb49
  %call51 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr48, i8* getelementptr inbounds ([6 x i8]* @.str132, i32 0, i32 0), i32 %ext_num.0, i8* %ext) nounwind
  %32 = load i8** %local_file, align 4, !tbaa !0
  %call53 = call zeroext i1 @file_exists_p(i8* %32) nounwind
  br i1 %call53, label %do.body, label %if.end54

if.end54:                                         ; preds = %cont50, %cont31, %land.lhs.true, %lor.lhs.false40
  %33 = load i32* %dt, align 4, !tbaa !5
  %or = or i32 %33, 32
  store i32 %or, i32* %dt, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %lor.lhs.false15, %lor.lhs.false
  ret void
}

declare i8* @human_readable(i64)

declare i32 @mkalldirs(i8*)

declare void @rotate_backups(i8*)

declare %struct._IO_FILE* @fopen64(i8*, i8*)

declare i32 @unlink(i8* nocapture) nounwind

declare %struct._IO_FILE* @fopen_excl(i8*, i32)

declare i8* @strrchr(i8*, i32) nounwind readonly

declare i8* @strncpy(i8*, i8* nocapture, i32) nounwind

declare i8* @xrealloc(i8*, i32)

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

declare i8* @memrchr(i8*, i32, i32) nounwind readonly

declare i8* @strdupdelim(i8*, i8*)

declare %struct.hash_table* @make_nocase_string_hash_table(i32)

declare i32 @hash_table_contains(%struct.hash_table*, i8*)

declare void @hash_table_put(%struct.hash_table*, i8*, i8*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @md5_init_ctx(%struct.md5_ctx*) nounwind

declare void @md5_process_bytes(i8*, i32, %struct.md5_ctx*) nounwind

declare i8* @md5_finish_ctx(%struct.md5_ctx*, i8*) nounwind

declare i32 @snprintf(i8* nocapture, i32, i8* nocapture, ...) nounwind

declare i32 @random_number(i32)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare noalias i8* @xmalloc(i32)

declare i8* @strcat(i8*, i8* nocapture) nounwind

declare i8* @fd_read_line(i32)

declare i32 @strtol(i8*, i8** nocapture, i32) nounwind

declare i32 @fd_read(i32, i8*, i32, double)

declare i32 @fd_read_body(i32, %struct._IO_FILE*, i64, i64, i64*, i64*, double*, i32, %struct._IO_FILE*)

declare zeroext i1 @warc_write_response_record(i8*, i8*, i8*, %struct.ip_address*, %struct._IO_FILE*, i64, i8*, i32, i8*)

define internal fastcc void @print_response_line(i8* %b, i8* %e) nounwind {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %e to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %b to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  %3 = sext i32 %sub.ptr.sub to i64
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_add_overflow(i32 763, i32 45, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %5 = sext i32 %1 to i64
  call void @__ioc_report_conversion(i32 763, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %6 = alloca i8, i32 %1, align 1
  %7 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %7, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont2
  call void @__ioc_report_conversion(i32 764, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %b, i32 %sub.ptr.sub, i32 1, i1 false)
  %arrayidx = getelementptr inbounds i8* %6, i32 %sub.ptr.sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %call = call i8* @quotearg_style(i32 5, i8* %6) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 3, i8* getelementptr inbounds ([6 x i8]* @.str158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str94, i32 0, i32 0), i8* %call) nounwind
  ret void
}

declare i32 @feof(%struct._IO_FILE* nocapture) nounwind

declare i32 @fread(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

declare noalias i8* @xcalloc(i32, i32)

declare i8* @fd_read_hunk(i32, i8* (i8*, i8*, i32)*, i32, i32)

define internal i8* @response_head_terminator(i8* %start, i8* %peeked, i32 %peeklen) nounwind {
entry:
  %cmp = icmp eq i8* %start, %peeked
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %peeklen, 4
  %cond = select i1 %cmp1, i32 4, i32 %peeklen
  %0 = icmp sgt i32 %cond, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %land.lhs.true
  %1 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 487, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %land.lhs.true
  %call = tail call i32 @memcmp(i8* %start, i8* getelementptr inbounds ([5 x i8]* @.str88, i32 0, i32 0), i32 %cond) nounwind readonly
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end, label %return

if.end:                                           ; preds = %cont, %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %peeked to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %start to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp slt i32 %sub.ptr.sub, 2
  %add.ptr = getelementptr inbounds i8* %peeked, i32 -2
  %cond7 = select i1 %cmp3, i8* %start, i8* %add.ptr
  %add.ptr8.sum = add i32 %peeklen, -2
  %add.ptr9 = getelementptr inbounds i8* %peeked, i32 %add.ptr8.sum
  %cmp1067 = icmp ult i8* %cond7, %add.ptr9
  %2 = load i8* %cond7, align 1, !tbaa !1
  %cmp1168 = icmp eq i8 %2, 10
  br i1 %cmp1067, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %cmp1171 = phi i1 [ %cmp11, %for.inc ], [ %cmp1168, %if.end ]
  %p.069 = phi i8* [ %incdec.ptr, %for.inc ], [ %cond7, %if.end ]
  %arrayidx = getelementptr inbounds i8* %p.069, i32 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  br i1 %cmp1171, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  switch i8 %3, label %for.inc [
    i8 13, label %land.lhs.true17
    i8 10, label %if.then28
  ]

land.lhs.true17:                                  ; preds = %if.then13
  %arrayidx18 = getelementptr inbounds i8* %p.069, i32 2
  %4 = load i8* %arrayidx18, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %4, 10
  br i1 %cmp20, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true17
  %add.ptr23 = getelementptr inbounds i8* %p.069, i32 3
  br label %return

if.then28:                                        ; preds = %if.then13
  %add.ptr29 = getelementptr inbounds i8* %p.069, i32 2
  br label %return

for.inc:                                          ; preds = %if.then13, %for.body, %land.lhs.true17
  %5 = phi i8 [ 13, %land.lhs.true17 ], [ %3, %for.body ], [ %3, %if.then13 ]
  %incdec.ptr = getelementptr inbounds i8* %p.069, i32 1
  %cmp10 = icmp ult i8* %incdec.ptr, %add.ptr9
  %cmp11 = icmp eq i8 %5, 10
  br i1 %cmp10, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %cmp11.lcssa = phi i1 [ %cmp1168, %if.end ], [ %cmp11, %for.inc ]
  %p.0.lcssa = phi i8* [ %cond7, %if.end ], [ %incdec.ptr, %for.inc ]
  br i1 %cmp11.lcssa, label %land.lhs.true37, label %return

land.lhs.true37:                                  ; preds = %for.end
  %arrayidx38 = getelementptr inbounds i8* %p.0.lcssa, i32 1
  %6 = load i8* %arrayidx38, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %6, 10
  %add.ptr43 = getelementptr inbounds i8* %p.0.lcssa, i32 2
  %add.ptr43. = select i1 %cmp40, i8* %add.ptr43, i8* null
  ret i8* %add.ptr43.

return:                                           ; preds = %for.end, %cont, %if.then28, %if.then22
  %retval.0 = phi i8* [ %add.ptr23, %if.then22 ], [ %add.ptr29, %if.then28 ], [ %start, %cont ], [ null, %for.end ]
  ret i8* %retval.0
}

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare %struct.address_list* @lookup_host(i8*, i32)

declare zeroext i1 @address_list_contains(%struct.address_list*, %struct.ip_address*)

declare void @address_list_release(%struct.address_list*)

declare zeroext i1 @test_socket_open(i32)

declare i32 @base64_encode(i8*, i32, i8*)

declare i8* @concat_strings(i8*, ...)

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare zeroext i1 @has_html_suffix_p(i8*)

declare i8* @memchr(i8*, i32, i32) nounwind readonly

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"_Bool", metadata !1}
!4 = metadata !{i8 0, i8 2}
!5 = metadata !{metadata !"int", metadata !1}
!6 = metadata !{metadata !"long long", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
!8 = metadata !{metadata !"double", metadata !1}
!9 = metadata !{metadata !"_ZTS10url_scheme", metadata !1}
!10 = metadata !{metadata !"branch_weights", i32 64, i32 4}
!11 = metadata !{metadata !"_ZTS2rp", metadata !1}
