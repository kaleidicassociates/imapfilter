import core.stdc.config;
import core.stdc.stdarg: va_list;
struct __locale_data { int dummy; }

alias _Bool = bool;

extern(C)
{
    struct CallInfo;
    struct regmatch_t;
    alias __sigset_t = _Anonymous_1;
    struct _Anonymous_1
    {
        c_ulong[16] __val;
    }
    alias __FILE = _IO_FILE;


    alias timer_t = void*;


    alias time_t = c_long;


    alias clockid_t = int;
    alias FILE = _IO_FILE;
    struct tm
    {
        int tm_sec;
        int tm_min;
        int tm_hour;
        int tm_mday;
        int tm_mon;
        int tm_year;
        int tm_wday;
        int tm_yday;
        int tm_isdst;
        c_long tm_gmtoff;
        const(char)* tm_zone;
    }
    alias clock_t = c_long;
    alias sigset_t = __sigset_t;


    struct itimerspec
    {
        timespec it_interval;
        timespec it_value;
    }
    struct timespec
    {
        __time_t tv_sec;
        __syscall_slong_t tv_nsec;
    }
    struct timeval
    {
        __time_t tv_sec;
        __suseconds_t tv_usec;
    }
    struct session
    {
        const(char)* server;
        const(char)* port;
        const(char)* sslproto;
        const(char)* username;
        const(char)* password;
        const(char)* oauth2;
        int socket;
        SSL* sslconn;
        uint protocol;
        uint capabilities;
        struct _Anonymous_2
        {
            char* prefix;
            char delim;
        }
        _Anonymous_2 ns;
        char* selected;
    }
    struct _Anonymous_3
    {
        int __count;
        union _Anonymous_4
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_4 __value;
    }
    alias __mbstate_t = _Anonymous_3;
    alias OPENSSL_STACK = stack_st;
    struct stack_st;
    int luaopen_base(lua_State*, );
    alias OPENSSL_sk_compfunc = int function(const(void)*, const(void)*);
    alias OPENSSL_sk_freefunc = void function(void*);
    int luaopen_coroutine(lua_State*, );
    alias OPENSSL_sk_copyfunc = void* function(const(void)*);
    struct _Anonymous_5
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    alias _G_fpos_t = _Anonymous_5;
    COMP_CTX* COMP_CTX_new(COMP_METHOD*, );




    int OPENSSL_sk_num(const(OPENSSL_STACK)*, );


    size_t HMAC_size(const(HMAC_CTX)*, );
    HMAC_CTX* HMAC_CTX_new();






    alias uint8_t = ubyte;
    void* OPENSSL_sk_value(const(OPENSSL_STACK)*, int, );
    alias int8_t = byte;
    alias OPENSSL_LH_NODE = lhash_node_st;




    struct lhash_node_st;
    int luaopen_table(lua_State*, );




    const(COMP_METHOD)* COMP_CTX_get_method(const(COMP_CTX)*, );
    alias locale_t = __locale_struct*;
    alias OPENSSL_LH_COMPFUNC = int function(const(void)*, const(void)*);
    alias int16_t = short;


    alias uint16_t = ushort;




    int HMAC_CTX_reset(HMAC_CTX*, );
    int COMP_CTX_get_type(const(COMP_CTX)*, );




    alias OPENSSL_LH_HASHFUNC = c_ulong function(const(void)*);
    void* OPENSSL_sk_set(OPENSSL_STACK*, int, const(void)*, );
    alias int32_t = int;




    extern __gshared int sys_nerr;
    alias uint32_t = uint;




    int COMP_get_type(const(COMP_METHOD)*, );
    void HMAC_CTX_free(HMAC_CTX*, );
    extern __gshared const(const(char)*)[0] sys_errlist;
    alias uint64_t = c_ulong;
    alias int64_t = c_long;


    alias _G_fpos64_t = _Anonymous_6;
    struct _Anonymous_6
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    alias pthread_t = c_ulong;
    int luaopen_io(lua_State*, );


    const(char)* COMP_get_name(const(COMP_METHOD)*, );






    alias OPENSSL_LH_DOALL_FUNC = void function(void*);


    void COMP_CTX_free(COMP_CTX*, );


    alias OPENSSL_LH_DOALL_FUNCARG = void function(void*, void*);






    int HMAC_Init(HMAC_CTX*, const(void)*, int, const(EVP_MD)*, );
    struct __locale_struct
    {
        __locale_data*[13] __locales;
        const(ushort)* __ctype_b;
        const(int)* __ctype_tolower;
        const(int)* __ctype_toupper;
        const(char)*[13] __names;
    }




    OPENSSL_STACK* OPENSSL_sk_new(OPENSSL_sk_compfunc, );
    OPENSSL_STACK* OPENSSL_sk_new_null();


    struct lhash_st;
    alias OPENSSL_LHASH = lhash_st;




    int COMP_compress_block(COMP_CTX*, ubyte*, int, ubyte*, int, );
    session* session_new();
    alias ct_log_entry_type_t = _Anonymous_7;
    enum _Anonymous_7
    {
        CT_LOG_ENTRY_TYPE_NOT_SET = -1,
        CT_LOG_ENTRY_TYPE_X509 = 0,
        CT_LOG_ENTRY_TYPE_PRECERT = 1,
    }
    enum CT_LOG_ENTRY_TYPE_NOT_SET = _Anonymous_7.CT_LOG_ENTRY_TYPE_NOT_SET;
    enum CT_LOG_ENTRY_TYPE_X509 = _Anonymous_7.CT_LOG_ENTRY_TYPE_X509;
    enum CT_LOG_ENTRY_TYPE_PRECERT = _Anonymous_7.CT_LOG_ENTRY_TYPE_PRECERT;
    void OPENSSL_sk_free(OPENSSL_STACK*, );
    alias __u_char = ubyte;


    int luaopen_os(lua_State*, );
    alias PKCS7_ISSUER_AND_SERIAL = pkcs7_issuer_and_serial_st;
    struct async_job_st;
    alias __jmp_buf = c_long[8];




    alias ASYNC_JOB = async_job_st;
    struct pkcs7_issuer_and_serial_st
    {
        X509_NAME* issuer;
        ASN1_INTEGER* serial;
    }
    alias __u_short = ushort;




    void session_destroy(session*, );
    int HMAC_Init_ex(HMAC_CTX*, const(void)*, int, const(EVP_MD)*, ENGINE*, );
    void OPENSSL_sk_pop_free(OPENSSL_STACK*, void function(void*), );
    alias __cpu_mask = c_ulong;


    alias ASYNC_WAIT_CTX = async_wait_ctx_st;




    void* alloca(size_t, );
    __uint16_t __uint16_identity(__uint16_t, );
    alias __u_int = uint;
    struct async_wait_ctx_st;


    alias pthread_mutexattr_t = _Anonymous_8;
    union _Anonymous_8
    {
        char[4] __size;
        int __align;
    }
    OPENSSL_STACK* OPENSSL_sk_deep_copy(const(OPENSSL_STACK)*, OPENSSL_sk_copyfunc, OPENSSL_sk_freefunc, );






    int COMP_expand_block(COMP_CTX*, ubyte*, int, ubyte*, int, );




    alias __u_long = c_ulong;


    int OPENSSL_sk_insert(OPENSSL_STACK*, const(void)*, int, );






    alias u_char = ubyte;
    enum _Anonymous_9
    {
        PTHREAD_CREATE_JOINABLE = 0,
        PTHREAD_CREATE_DETACHED = 1,
    }
    enum PTHREAD_CREATE_JOINABLE = _Anonymous_9.PTHREAD_CREATE_JOINABLE;
    enum PTHREAD_CREATE_DETACHED = _Anonymous_9.PTHREAD_CREATE_DETACHED;
    int HMAC_Update(HMAC_CTX*, const(ubyte)*, size_t, );
    int luaopen_string(lua_State*, );




    void* OPENSSL_sk_delete(OPENSSL_STACK*, int, );




    alias __gwchar_t = int;
    alias u_short = ushort;
    struct SHAstate_st
    {
        uint h0;
        uint h1;
        uint h2;
        uint h3;
        uint h4;
        uint Nl;
        uint Nh;
        uint[16] data;
        uint num;
    }
    alias SHA_CTX = SHAstate_st;
    alias u_int = uint;






    void* OPENSSL_sk_delete_ptr(OPENSSL_STACK*, const(void)*, );
    int HMAC_Final(HMAC_CTX*, ubyte*, uint*, );
    COMP_METHOD* COMP_zlib();






    alias sct_version_t = _Anonymous_10;
    enum _Anonymous_10
    {
        SCT_VERSION_NOT_SET = -1,
        SCT_VERSION_V1 = 0,
    }
    enum SCT_VERSION_NOT_SET = _Anonymous_10.SCT_VERSION_NOT_SET;
    enum SCT_VERSION_V1 = _Anonymous_10.SCT_VERSION_V1;
    int luaopen_utf8(lua_State*, );
    alias u_long = c_ulong;
    int OPENSSL_sk_find(OPENSSL_STACK*, const(void)*, );




    alias PKCS7_SIGNER_INFO = pkcs7_signer_info_st;
    struct pkcs7_signer_info_st
    {
        ASN1_INTEGER* version_;
        PKCS7_ISSUER_AND_SERIAL* issuer_and_serial;
        X509_ALGOR* digest_alg;
        stack_st_X509_ATTRIBUTE* auth_attr;
        X509_ALGOR* digest_enc_alg;
        ASN1_OCTET_STRING* enc_digest;
        stack_st_X509_ATTRIBUTE* unauth_attr;
        EVP_PKEY* pkey;
    }







    alias __int8_t = byte;
    alias __uint8_t = ubyte;


    alias quad_t = c_long;


    struct buf_mem_st
    {
        size_t length;
        char* data;
        size_t max;
        c_ulong flags;
    }
    int OPENSSL_sk_find_ex(OPENSSL_STACK*, const(void)*, );


    ubyte* HMAC(const(EVP_MD)*, const(void)*, int, const(ubyte)*, size_t, ubyte*, uint*, );






    __uint32_t __uint32_identity(__uint32_t, );
    int OPENSSL_sk_push(OPENSSL_STACK*, const(void)*, );


    alias __int16_t = short;
    int SSL_CTX_set_tlsext_use_srtp(SSL_CTX*, const(char)*, );
    alias u_quad_t = c_ulong;
    int luaopen_bit32(lua_State*, );
    struct _Anonymous_11
    {
        __cpu_mask[16] __bits;
    }
    int ASYNC_init_thread(size_t, size_t, );
    int OPENSSL_sk_unshift(OPENSSL_STACK*, const(void)*, );


    alias __uint16_t = ushort;


    alias fsid_t = __fsid_t;


    int SSL_set_tlsext_use_srtp(SSL*, const(char)*, );
    alias cpu_set_t = _Anonymous_11;
    int HMAC_CTX_copy(HMAC_CTX*, HMAC_CTX*, );
    void ASYNC_cleanup_thread();


    alias ASN1_INTEGER = asn1_string_st;






    void* OPENSSL_sk_shift(OPENSSL_STACK*, );
    alias __int32_t = int;
    alias sct_source_t = _Anonymous_12;




    enum _Anonymous_12
    {
        SCT_SOURCE_UNKNOWN = 0,
        SCT_SOURCE_TLS_EXTENSION = 1,
        SCT_SOURCE_X509V3_EXTENSION = 2,
        SCT_SOURCE_OCSP_STAPLED_RESPONSE = 3,
    }
    enum SCT_SOURCE_UNKNOWN = _Anonymous_12.SCT_SOURCE_UNKNOWN;
    enum SCT_SOURCE_TLS_EXTENSION = _Anonymous_12.SCT_SOURCE_TLS_EXTENSION;
    enum SCT_SOURCE_X509V3_EXTENSION = _Anonymous_12.SCT_SOURCE_X509V3_EXTENSION;
    enum SCT_SOURCE_OCSP_STAPLED_RESPONSE = _Anonymous_12.SCT_SOURCE_OCSP_STAPLED_RESPONSE;





    alias pthread_condattr_t = _Anonymous_13;


    union _Anonymous_13
    {
        char[4] __size;
        int __align;
    }
    stack_st_SRTP_PROTECTION_PROFILE* SSL_get_srtp_profiles(SSL*, );


    void* OPENSSL_sk_pop(OPENSSL_STACK*, );




    int SHA1_Init(SHA_CTX*, );


    alias __uint32_t = uint;






    alias ASN1_ENUMERATED = asn1_string_st;






    alias __locale_t = __locale_struct*;
    int luaopen_math(lua_State*, );
    int SHA1_Update(SHA_CTX*, const(void)*, size_t, );




    void OPENSSL_sk_zero(OPENSSL_STACK*, );
    alias ASN1_BIT_STRING = asn1_string_st;




    SRTP_PROTECTION_PROFILE* SSL_get_selected_srtp_profile(SSL*, );




    void HMAC_CTX_set_flags(HMAC_CTX*, c_ulong, );
    ASYNC_WAIT_CTX* ASYNC_WAIT_CTX_new();


    alias int_least8_t = byte;


    OPENSSL_sk_compfunc OPENSSL_sk_set_cmp_func(OPENSSL_STACK*, OPENSSL_sk_compfunc, );
    const(EVP_MD)* HMAC_CTX_get_md(const(HMAC_CTX)*, );


    enum _Anonymous_14
    {
        PTHREAD_MUTEX_TIMED_NP = 0,
        PTHREAD_MUTEX_RECURSIVE_NP = 1,
        PTHREAD_MUTEX_ERRORCHECK_NP = 2,
        PTHREAD_MUTEX_ADAPTIVE_NP = 3,
        PTHREAD_MUTEX_NORMAL = 0,
        PTHREAD_MUTEX_RECURSIVE = 1,
        PTHREAD_MUTEX_ERRORCHECK = 2,
        PTHREAD_MUTEX_DEFAULT = 0,
    }
    enum PTHREAD_MUTEX_TIMED_NP = _Anonymous_14.PTHREAD_MUTEX_TIMED_NP;
    enum PTHREAD_MUTEX_RECURSIVE_NP = _Anonymous_14.PTHREAD_MUTEX_RECURSIVE_NP;
    enum PTHREAD_MUTEX_ERRORCHECK_NP = _Anonymous_14.PTHREAD_MUTEX_ERRORCHECK_NP;
    enum PTHREAD_MUTEX_ADAPTIVE_NP = _Anonymous_14.PTHREAD_MUTEX_ADAPTIVE_NP;
    enum PTHREAD_MUTEX_NORMAL = _Anonymous_14.PTHREAD_MUTEX_NORMAL;
    enum PTHREAD_MUTEX_RECURSIVE = _Anonymous_14.PTHREAD_MUTEX_RECURSIVE;
    enum PTHREAD_MUTEX_ERRORCHECK = _Anonymous_14.PTHREAD_MUTEX_ERRORCHECK;
    enum PTHREAD_MUTEX_DEFAULT = _Anonymous_14.PTHREAD_MUTEX_DEFAULT;
    alias suseconds_t = c_long;




    alias ASN1_OCTET_STRING = asn1_string_st;
    int SHA1_Final(ubyte*, SHA_CTX*, );
    alias __int64_t = c_long;
    alias __uint64_t = c_ulong;




    ubyte* SHA1(const(ubyte)*, size_t, ubyte*, );


    alias loff_t = c_long;
    OPENSSL_STACK* OPENSSL_sk_dup(const(OPENSSL_STACK)*, );
    alias ASN1_PRINTABLESTRING = asn1_string_st;


    alias int_least16_t = short;
    __uint64_t __uint64_identity(__uint64_t, );
    void ASYNC_WAIT_CTX_free(ASYNC_WAIT_CTX*, );
    int luaopen_debug(lua_State*, );
    int ASYNC_WAIT_CTX_set_wait_fd(ASYNC_WAIT_CTX*, const(void)*, int, void*, void function(async_wait_ctx_st*, const(void)*, int, void*), );






    enum _Anonymous_15
    {
        POINT_CONVERSION_COMPRESSED = 2,
        POINT_CONVERSION_UNCOMPRESSED = 4,
        POINT_CONVERSION_HYBRID = 6,
    }
    enum POINT_CONVERSION_COMPRESSED = _Anonymous_15.POINT_CONVERSION_COMPRESSED;
    enum POINT_CONVERSION_UNCOMPRESSED = _Anonymous_15.POINT_CONVERSION_UNCOMPRESSED;
    enum POINT_CONVERSION_HYBRID = _Anonymous_15.POINT_CONVERSION_HYBRID;
    void SHA1_Transform(SHA_CTX*, const(ubyte)*, );
    alias point_conversion_form_t = _Anonymous_15;


    void OPENSSL_sk_sort(OPENSSL_STACK*, );
    alias ASN1_T61STRING = asn1_string_st;


    alias int_least32_t = int;
    int OPENSSL_sk_is_sorted(const(OPENSSL_STACK)*, );
    alias ASN1_IA5STRING = asn1_string_st;
    BUF_MEM* BUF_MEM_new();
    enum _Anonymous_16
    {
        X509_LU_NONE = 0,
        X509_LU_X509 = 1,
        X509_LU_CRL = 2,
    }
    enum X509_LU_NONE = _Anonymous_16.X509_LU_NONE;
    enum X509_LU_X509 = _Anonymous_16.X509_LU_X509;
    enum X509_LU_CRL = _Anonymous_16.X509_LU_CRL;
    alias X509_LOOKUP_TYPE = _Anonymous_16;
    alias ASN1_GENERALSTRING = asn1_string_st;


    alias int_least64_t = c_long;
    BUF_MEM* BUF_MEM_new_ex(c_ulong, );


    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_value(const(stack_st_PKCS7_SIGNER_INFO)*, int, );
    alias ASN1_UNIVERSALSTRING = asn1_string_st;
    alias sk_PKCS7_SIGNER_INFO_copyfunc = pkcs7_signer_info_st* function(const(PKCS7_SIGNER_INFO)*);
    int sk_PKCS7_SIGNER_INFO_num(const(stack_st_PKCS7_SIGNER_INFO)*, );
    alias sk_PKCS7_SIGNER_INFO_compfunc = int function(const(const(PKCS7_SIGNER_INFO)*)*, const(const(PKCS7_SIGNER_INFO)*)*);




    void BUF_MEM_free(BUF_MEM*, );
    alias sct_validation_status_t = _Anonymous_17;
    enum _Anonymous_17
    {
        SCT_VALIDATION_STATUS_NOT_SET = 0,
        SCT_VALIDATION_STATUS_UNKNOWN_LOG = 1,
        SCT_VALIDATION_STATUS_VALID = 2,
        SCT_VALIDATION_STATUS_INVALID = 3,
        SCT_VALIDATION_STATUS_UNVERIFIED = 4,
        SCT_VALIDATION_STATUS_UNKNOWN_VERSION = 5,
    }
    enum SCT_VALIDATION_STATUS_NOT_SET = _Anonymous_17.SCT_VALIDATION_STATUS_NOT_SET;
    enum SCT_VALIDATION_STATUS_UNKNOWN_LOG = _Anonymous_17.SCT_VALIDATION_STATUS_UNKNOWN_LOG;
    enum SCT_VALIDATION_STATUS_VALID = _Anonymous_17.SCT_VALIDATION_STATUS_VALID;
    enum SCT_VALIDATION_STATUS_INVALID = _Anonymous_17.SCT_VALIDATION_STATUS_INVALID;
    enum SCT_VALIDATION_STATUS_UNVERIFIED = _Anonymous_17.SCT_VALIDATION_STATUS_UNVERIFIED;
    enum SCT_VALIDATION_STATUS_UNKNOWN_VERSION = _Anonymous_17.SCT_VALIDATION_STATUS_UNKNOWN_VERSION;
    int luaopen_package(lua_State*, );
    alias ino_t = c_ulong;


    int sk_PKCS7_SIGNER_INFO_unshift(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, );
    alias sk_PKCS7_SIGNER_INFO_freefunc = void function(PKCS7_SIGNER_INFO*);
    void sk_PKCS7_SIGNER_INFO_pop_free(stack_st_PKCS7_SIGNER_INFO*, sk_PKCS7_SIGNER_INFO_freefunc, );
    stack_st_PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_new(sk_PKCS7_SIGNER_INFO_compfunc, );
    sk_PKCS7_SIGNER_INFO_compfunc sk_PKCS7_SIGNER_INFO_set_cmp_func(stack_st_PKCS7_SIGNER_INFO*, sk_PKCS7_SIGNER_INFO_compfunc, );
    stack_st_PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_dup(const(stack_st_PKCS7_SIGNER_INFO)*, );
    int sk_PKCS7_SIGNER_INFO_is_sorted(const(stack_st_PKCS7_SIGNER_INFO)*, );
    int sk_PKCS7_SIGNER_INFO_find_ex(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, );
    int sk_PKCS7_SIGNER_INFO_find(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, );
    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_set(stack_st_PKCS7_SIGNER_INFO*, int, PKCS7_SIGNER_INFO*, );
    int sk_PKCS7_SIGNER_INFO_insert(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, int, );
    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_pop(stack_st_PKCS7_SIGNER_INFO*, );
    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_shift(stack_st_PKCS7_SIGNER_INFO*, );
    struct stack_st_PKCS7_SIGNER_INFO;
    int sk_PKCS7_SIGNER_INFO_push(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, );
    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_delete_ptr(stack_st_PKCS7_SIGNER_INFO*, PKCS7_SIGNER_INFO*, );
    PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_delete(stack_st_PKCS7_SIGNER_INFO*, int, );
    void sk_PKCS7_SIGNER_INFO_zero(stack_st_PKCS7_SIGNER_INFO*, );
    void sk_PKCS7_SIGNER_INFO_free(stack_st_PKCS7_SIGNER_INFO*, );
    stack_st_PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_new_null();
    stack_st_PKCS7_SIGNER_INFO* sk_PKCS7_SIGNER_INFO_deep_copy(const(stack_st_PKCS7_SIGNER_INFO)*, sk_PKCS7_SIGNER_INFO_copyfunc, sk_PKCS7_SIGNER_INFO_freefunc, );
    void sk_PKCS7_SIGNER_INFO_sort(stack_st_PKCS7_SIGNER_INFO*, );
    struct sigevent;






    alias ASN1_BMPSTRING = asn1_string_st;




    size_t BUF_MEM_grow(BUF_MEM*, size_t, );




    alias __fd_mask = c_long;




    alias pthread_key_t = uint;





    alias PKCS7_RECIP_INFO = pkcs7_recip_info_st;
    size_t BUF_MEM_grow_clean(BUF_MEM*, size_t, );
    struct pkcs7_recip_info_st
    {
        ASN1_INTEGER* version_;
        PKCS7_ISSUER_AND_SERIAL* issuer_and_serial;
        X509_ALGOR* key_enc_algor;
        ASN1_OCTET_STRING* enc_key;
        X509* cert;
    }
    alias ASN1_UTCTIME = asn1_string_st;




    int ASYNC_WAIT_CTX_get_fd(ASYNC_WAIT_CTX*, const(void)*, int*, void**, );
    alias SHA256_CTX = SHA256state_st;
    struct SHA256state_st
    {
        uint[8] h;
        uint Nl;
        uint Nh;
        uint[16] data;
        uint num;
        uint md_len;
    }






    void BUF_reverse(ubyte*, const(ubyte)*, size_t, );
    alias ASN1_TIME = asn1_string_st;
    alias __quad_t = c_long;
    void luaL_openlibs(lua_State*, );
    int ASYNC_WAIT_CTX_get_all_fds(ASYNC_WAIT_CTX*, int*, size_t*, );
    alias ASN1_GENERALIZEDTIME = asn1_string_st;
    alias pthread_once_t = int;
    alias ASN1_VISIBLESTRING = asn1_string_st;




    int ERR_load_COMP_strings();
    alias __u_quad_t = c_ulong;
    alias uint_least8_t = ubyte;




    alias ASN1_UTF8STRING = asn1_string_st;




    int sched_setparam(__pid_t, const(sched_param)*, );
    int ASYNC_WAIT_CTX_get_changed_fds(ASYNC_WAIT_CTX*, int*, size_t*, int*, size_t*, );
    alias ASN1_STRING = asn1_string_st;




    alias uint_least16_t = ushort;
    struct lua_State;
    struct ec_method_st;






    alias ASN1_BOOLEAN = int;


    union pthread_attr_t
    {
        char[56] __size;
        c_long __align;
    }
    alias EC_METHOD = ec_method_st;
    alias uint_least32_t = uint;




    void sk_SCT_pop_free(stack_st_SCT*, sk_SCT_freefunc, );
    int sk_SCT_insert(stack_st_SCT*, SCT*, int, );
    SCT* sk_SCT_set(stack_st_SCT*, int, SCT*, );


    int sk_SCT_find(stack_st_SCT*, SCT*, );
    stack_st_SCT* sk_SCT_new(sk_SCT_compfunc, );
    void sk_SCT_sort(stack_st_SCT*, );
    alias EC_GROUP = ec_group_st;
    SCT* sk_SCT_value(const(stack_st_SCT)*, int, );




    struct ec_group_st;
    SCT* sk_SCT_shift(stack_st_SCT*, );
    stack_st_SCT* sk_SCT_new_null();
    SCT* sk_SCT_pop(stack_st_SCT*, );
    alias sk_SCT_freefunc = void function(SCT*);


    int sk_SCT_unshift(stack_st_SCT*, SCT*, );
    alias ASN1_NULL = int;
    int ASYNC_WAIT_CTX_clear_fd(ASYNC_WAIT_CTX*, const(void)*, );
    int sk_SCT_push(stack_st_SCT*, SCT*, );
    SCT* sk_SCT_delete_ptr(stack_st_SCT*, SCT*, );
    int sk_SCT_num(const(stack_st_SCT)*, );
    SCT* sk_SCT_delete(stack_st_SCT*, int, );
    struct X509_algor_st
    {
        ASN1_OBJECT* algorithm;
        ASN1_TYPE* parameter;
    }
    alias sk_SCT_copyfunc = sct_st* function(const(SCT)*);


    alias off_t = c_long;
    void sk_SCT_zero(stack_st_SCT*, );
    void sk_SCT_free(stack_st_SCT*, );


    int sk_X509_LOOKUP_unshift(stack_st_X509_LOOKUP*, X509_LOOKUP*, );
    alias sk_SCT_compfunc = int function(const(const(SCT)*)*, const(const(SCT)*)*);
    sk_X509_LOOKUP_compfunc sk_X509_LOOKUP_set_cmp_func(stack_st_X509_LOOKUP*, sk_X509_LOOKUP_compfunc, );
    X509_LOOKUP* sk_X509_LOOKUP_delete_ptr(stack_st_X509_LOOKUP*, X509_LOOKUP*, );
    struct stack_st_X509_LOOKUP;
    alias sk_X509_LOOKUP_compfunc = int function(const(const(X509_LOOKUP)*)*, const(const(X509_LOOKUP)*)*);
    alias sk_X509_LOOKUP_freefunc = void function(X509_LOOKUP*);
    alias sk_X509_LOOKUP_copyfunc = x509_lookup_st* function(const(X509_LOOKUP)*);
    int sk_X509_LOOKUP_num(const(stack_st_X509_LOOKUP)*, );


    X509_LOOKUP* sk_X509_LOOKUP_value(const(stack_st_X509_LOOKUP)*, int, );
    struct pem_recip_st
    {
        char* name;
        X509_NAME* dn;
        int cipher;
        int key_enc;
    }
    alias PEM_USER = pem_recip_st;


    stack_st_X509_LOOKUP* sk_X509_LOOKUP_new(sk_X509_LOOKUP_compfunc, );


    void sk_X509_LOOKUP_free(stack_st_X509_LOOKUP*, );
    void sk_X509_LOOKUP_zero(stack_st_X509_LOOKUP*, );
    X509_LOOKUP* sk_X509_LOOKUP_delete(stack_st_X509_LOOKUP*, int, );
    stack_st_X509_LOOKUP* sk_X509_LOOKUP_new_null();
    int sk_X509_LOOKUP_push(stack_st_X509_LOOKUP*, X509_LOOKUP*, );
    stack_st_X509_LOOKUP* sk_X509_LOOKUP_dup(const(stack_st_X509_LOOKUP)*, );
    int sk_X509_LOOKUP_is_sorted(const(stack_st_X509_LOOKUP)*, );
    void sk_X509_LOOKUP_sort(stack_st_X509_LOOKUP*, );
    int sk_X509_LOOKUP_find_ex(stack_st_X509_LOOKUP*, X509_LOOKUP*, );
    int sk_X509_LOOKUP_find(stack_st_X509_LOOKUP*, X509_LOOKUP*, );
    X509_LOOKUP* sk_X509_LOOKUP_set(stack_st_X509_LOOKUP*, int, X509_LOOKUP*, );
    int sk_X509_LOOKUP_insert(stack_st_X509_LOOKUP*, X509_LOOKUP*, int, );
    void sk_X509_LOOKUP_pop_free(stack_st_X509_LOOKUP*, sk_X509_LOOKUP_freefunc, );
    X509_LOOKUP* sk_X509_LOOKUP_shift(stack_st_X509_LOOKUP*, );
    X509_LOOKUP* sk_X509_LOOKUP_pop(stack_st_X509_LOOKUP*, );
    stack_st_X509_LOOKUP* sk_X509_LOOKUP_deep_copy(const(stack_st_X509_LOOKUP)*, sk_X509_LOOKUP_copyfunc, sk_X509_LOOKUP_freefunc, );




    int sk_SCT_find_ex(stack_st_SCT*, SCT*, );
    struct stack_st_SCT;


    sk_SCT_compfunc sk_SCT_set_cmp_func(stack_st_SCT*, sk_SCT_compfunc, );




    stack_st_SCT* sk_SCT_deep_copy(const(stack_st_SCT)*, sk_SCT_copyfunc, sk_SCT_freefunc, );
    stack_st_SCT* sk_SCT_dup(const(stack_st_SCT)*, );
    int sk_SCT_is_sorted(const(stack_st_SCT)*, );
    alias sk_CTLOG_freefunc = void function(CTLOG*);
    alias sk_CTLOG_compfunc = int function(const(const(CTLOG)*)*, const(const(CTLOG)*)*);
    struct stack_st_CTLOG;
    int sk_CTLOG_push(stack_st_CTLOG*, CTLOG*, );






    int sk_CTLOG_num(const(stack_st_CTLOG)*, );
    CTLOG* sk_CTLOG_value(const(stack_st_CTLOG)*, int, );
    stack_st_CTLOG* sk_CTLOG_new(sk_CTLOG_compfunc, );
    stack_st_CTLOG* sk_CTLOG_new_null();




    void sk_CTLOG_free(stack_st_CTLOG*, );
    void sk_CTLOG_zero(stack_st_CTLOG*, );
    sk_CTLOG_compfunc sk_CTLOG_set_cmp_func(stack_st_CTLOG*, sk_CTLOG_compfunc, );
    stack_st_CTLOG* sk_CTLOG_dup(const(stack_st_CTLOG)*, );
    stack_st_CTLOG* sk_CTLOG_deep_copy(const(stack_st_CTLOG)*, sk_CTLOG_copyfunc, sk_CTLOG_freefunc, );
    int sk_CTLOG_is_sorted(const(stack_st_CTLOG)*, );
    void sk_CTLOG_sort(stack_st_CTLOG*, );
    CTLOG* sk_CTLOG_delete(stack_st_CTLOG*, int, );
    int sched_getparam(__pid_t, sched_param*, );


    CTLOG* sk_CTLOG_delete_ptr(stack_st_CTLOG*, CTLOG*, );
    int sk_CTLOG_find_ex(stack_st_CTLOG*, CTLOG*, );
    int sk_CTLOG_unshift(stack_st_CTLOG*, CTLOG*, );
    CTLOG* sk_CTLOG_pop(stack_st_CTLOG*, );
    CTLOG* sk_CTLOG_shift(stack_st_CTLOG*, );


    alias sk_CTLOG_copyfunc = ctlog_st* function(const(CTLOG)*);
    int sk_CTLOG_find(stack_st_CTLOG*, CTLOG*, );
    CTLOG* sk_CTLOG_set(stack_st_CTLOG*, int, CTLOG*, );
    int sk_CTLOG_insert(stack_st_CTLOG*, CTLOG*, int, );
    void sk_CTLOG_pop_free(stack_st_CTLOG*, sk_CTLOG_freefunc, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_set(stack_st_PKCS7_RECIP_INFO*, int, PKCS7_RECIP_INFO*, );
    alias sk_PKCS7_RECIP_INFO_copyfunc = pkcs7_recip_info_st* function(const(PKCS7_RECIP_INFO)*);
    alias sk_PKCS7_RECIP_INFO_freefunc = void function(PKCS7_RECIP_INFO*);
    alias sk_PKCS7_RECIP_INFO_compfunc = int function(const(const(PKCS7_RECIP_INFO)*)*, const(const(PKCS7_RECIP_INFO)*)*);
    struct stack_st_PKCS7_RECIP_INFO;
    void sk_PKCS7_RECIP_INFO_zero(stack_st_PKCS7_RECIP_INFO*, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_shift(stack_st_PKCS7_RECIP_INFO*, );
    stack_st_PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_dup(const(stack_st_PKCS7_RECIP_INFO)*, );
    stack_st_PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_deep_copy(const(stack_st_PKCS7_RECIP_INFO)*, sk_PKCS7_RECIP_INFO_copyfunc, sk_PKCS7_RECIP_INFO_freefunc, );
    sk_PKCS7_RECIP_INFO_compfunc sk_PKCS7_RECIP_INFO_set_cmp_func(stack_st_PKCS7_RECIP_INFO*, sk_PKCS7_RECIP_INFO_compfunc, );
    int sk_PKCS7_RECIP_INFO_find_ex(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, );
    int sk_PKCS7_RECIP_INFO_find(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, );
    void sk_X509_OBJECT_zero(stack_st_X509_OBJECT*, );
    int sk_X509_OBJECT_is_sorted(const(stack_st_X509_OBJECT)*, );
    int sk_PKCS7_RECIP_INFO_insert(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, int, );
    void sk_PKCS7_RECIP_INFO_pop_free(stack_st_PKCS7_RECIP_INFO*, sk_PKCS7_RECIP_INFO_freefunc, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_delete(stack_st_PKCS7_RECIP_INFO*, int, );
    int sk_PKCS7_RECIP_INFO_is_sorted(const(stack_st_PKCS7_RECIP_INFO)*, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_delete_ptr(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, );
    int sk_PKCS7_RECIP_INFO_push(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, );
    int sk_PKCS7_RECIP_INFO_unshift(stack_st_PKCS7_RECIP_INFO*, PKCS7_RECIP_INFO*, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_pop(stack_st_PKCS7_RECIP_INFO*, );
    struct stack_st_X509_OBJECT;
    alias sk_X509_OBJECT_compfunc = int function(const(const(X509_OBJECT)*)*, const(const(X509_OBJECT)*)*);
    X509_OBJECT* sk_X509_OBJECT_delete(stack_st_X509_OBJECT*, int, );
    X509_OBJECT* sk_X509_OBJECT_delete_ptr(stack_st_X509_OBJECT*, X509_OBJECT*, );
    int sk_X509_OBJECT_push(stack_st_X509_OBJECT*, X509_OBJECT*, );
    int sk_PKCS7_RECIP_INFO_num(const(stack_st_PKCS7_RECIP_INFO)*, );
    int sk_X509_OBJECT_unshift(stack_st_X509_OBJECT*, X509_OBJECT*, );


    alias div_t = _Anonymous_18;
    struct _Anonymous_18
    {
        int quot;
        int rem;
    }
    alias uint_least64_t = c_ulong;







    alias sk_X509_OBJECT_copyfunc = x509_object_st* function(const(X509_OBJECT)*);


    void sk_X509_OBJECT_free(stack_st_X509_OBJECT*, );
    sk_X509_OBJECT_compfunc sk_X509_OBJECT_set_cmp_func(stack_st_X509_OBJECT*, sk_X509_OBJECT_compfunc, );
    stack_st_X509_OBJECT* sk_X509_OBJECT_deep_copy(const(stack_st_X509_OBJECT)*, sk_X509_OBJECT_copyfunc, sk_X509_OBJECT_freefunc, );
    stack_st_X509_OBJECT* sk_X509_OBJECT_dup(const(stack_st_X509_OBJECT)*, );
    void sk_X509_OBJECT_sort(stack_st_X509_OBJECT*, );
    int sk_X509_OBJECT_find_ex(stack_st_X509_OBJECT*, X509_OBJECT*, );
    int sk_X509_OBJECT_find(stack_st_X509_OBJECT*, X509_OBJECT*, );
    X509_OBJECT* sk_X509_OBJECT_set(stack_st_X509_OBJECT*, int, X509_OBJECT*, );
    int sk_X509_OBJECT_insert(stack_st_X509_OBJECT*, X509_OBJECT*, int, );
    void sk_X509_OBJECT_pop_free(stack_st_X509_OBJECT*, sk_X509_OBJECT_freefunc, );
    X509_OBJECT* sk_X509_OBJECT_shift(stack_st_X509_OBJECT*, );
    X509_OBJECT* sk_X509_OBJECT_pop(stack_st_X509_OBJECT*, );
    stack_st_X509_OBJECT* sk_X509_OBJECT_new_null();
    stack_st_X509_OBJECT* sk_X509_OBJECT_new(sk_X509_OBJECT_compfunc, );
    X509_OBJECT* sk_X509_OBJECT_value(const(stack_st_X509_OBJECT)*, int, );
    alias sk_X509_OBJECT_freefunc = void function(X509_OBJECT*);
    void sk_PKCS7_RECIP_INFO_free(stack_st_PKCS7_RECIP_INFO*, );
    int sk_X509_OBJECT_num(const(stack_st_X509_OBJECT)*, );
    alias EC_POINT = ec_point_st;
    struct ec_point_st;
    int SHA224_Init(SHA256_CTX*, );
    PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_value(const(stack_st_PKCS7_RECIP_INFO)*, int, );
    void sk_PKCS7_RECIP_INFO_sort(stack_st_PKCS7_RECIP_INFO*, );
    stack_st_PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_new(sk_PKCS7_RECIP_INFO_compfunc, );
    stack_st_PKCS7_RECIP_INFO* sk_PKCS7_RECIP_INFO_new_null();
    sk_X509_VERIFY_PARAM_compfunc sk_X509_VERIFY_PARAM_set_cmp_func(stack_st_X509_VERIFY_PARAM*, sk_X509_VERIFY_PARAM_compfunc, );




    stack_st_X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_new(sk_X509_VERIFY_PARAM_compfunc, );
    int ERR_load_BUF_strings();
    alias ECPKPARAMETERS = ecpk_parameters_st;
    struct ecpk_parameters_st;
    void sk_X509_VERIFY_PARAM_zero(stack_st_X509_VERIFY_PARAM*, );
    stack_st_X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_deep_copy(const(stack_st_X509_VERIFY_PARAM)*, sk_X509_VERIFY_PARAM_copyfunc, sk_X509_VERIFY_PARAM_freefunc, );
    struct _Anonymous_19
    {
        __fd_mask[16] __fds_bits;
    }
    alias fd_set = _Anonymous_19;


    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_delete_ptr(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );
    int SHA224_Update(SHA256_CTX*, const(void)*, size_t, );
    alias sk_X509_VERIFY_PARAM_copyfunc = X509_VERIFY_PARAM_st* function(const(X509_VERIFY_PARAM)*);
    void sk_X509_VERIFY_PARAM_free(stack_st_X509_VERIFY_PARAM*, );
    struct stack_st_X509_VERIFY_PARAM;
    alias sk_X509_VERIFY_PARAM_compfunc = int function(const(const(X509_VERIFY_PARAM)*)*, const(const(X509_VERIFY_PARAM)*)*);


    void sk_X509_VERIFY_PARAM_pop_free(stack_st_X509_VERIFY_PARAM*, sk_X509_VERIFY_PARAM_freefunc, );


    void sk_X509_VERIFY_PARAM_sort(stack_st_X509_VERIFY_PARAM*, );


    alias sk_X509_VERIFY_PARAM_freefunc = void function(X509_VERIFY_PARAM*);
    int sk_X509_VERIFY_PARAM_is_sorted(const(stack_st_X509_VERIFY_PARAM)*, );
    int sk_X509_VERIFY_PARAM_unshift(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );
    int sk_X509_VERIFY_PARAM_push(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );
    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_value(const(stack_st_X509_VERIFY_PARAM)*, int, );


    stack_st_X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_dup(const(stack_st_X509_VERIFY_PARAM)*, );


    stack_st_X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_new_null();
    int sk_X509_VERIFY_PARAM_find_ex(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );
    int sk_X509_VERIFY_PARAM_find(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );
    int sk_X509_VERIFY_PARAM_num(const(stack_st_X509_VERIFY_PARAM)*, );






    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_pop(stack_st_X509_VERIFY_PARAM*, );
    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_shift(stack_st_X509_VERIFY_PARAM*, );
    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_delete(stack_st_X509_VERIFY_PARAM*, int, );
    int sk_X509_VERIFY_PARAM_insert(stack_st_X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, int, );
    X509_VERIFY_PARAM* sk_X509_VERIFY_PARAM_set(stack_st_X509_VERIFY_PARAM*, int, X509_VERIFY_PARAM*, );
    int ASYNC_is_capable();
    alias ECPARAMETERS = ec_parameters_st;
    struct ec_parameters_st;
    int SHA224_Final(ubyte*, SHA256_CTX*, );


    alias dev_t = c_ulong;






    struct pkcs7_signed_st
    {
        ASN1_INTEGER* version_;
        stack_st_X509_ALGOR* md_algs;
        stack_st_X509* cert;
        stack_st_X509_CRL* crl;
        stack_st_PKCS7_SIGNER_INFO* signer_info;
        pkcs7_st* contents;
    }
    alias PKCS7_SIGNED = pkcs7_signed_st;
    struct asn1_object_st;
    alias ASN1_OBJECT = asn1_object_st;





    int X509_STORE_set_depth(X509_STORE*, int, );
    ubyte* SHA224(const(ubyte)*, size_t, ubyte*, );
    alias __intmax_t = c_long;
    int sched_setscheduler(__pid_t, int, const(sched_param)*, );


    struct ASN1_ITEM_st;
    int ASYNC_start_job(ASYNC_JOB**, ASYNC_WAIT_CTX*, int*, int function(void*), void*, size_t, );
    int SHA256_Init(SHA256_CTX*, );
    alias ASN1_ITEM = ASN1_ITEM_st;






    alias X509_ALGORS = stack_st_X509_ALGOR;
    alias __uintmax_t = c_ulong;
    alias X509_STORE_CTX_verify_cb = int function(int, X509_STORE_CTX*);


    alias ASN1_PCTX = asn1_pctx_st;
    struct asn1_pctx_st;






    int SHA256_Update(SHA256_CTX*, const(void)*, size_t, );






    int ASYNC_pause_job();
    alias X509_VAL = X509_val_st;
    struct X509_val_st
    {
        ASN1_TIME* notBefore;
        ASN1_TIME* notAfter;
    }


    int SHA256_Final(ubyte*, SHA256_CTX*, );
    alias X509_STORE_CTX_verify_fn = int function(X509_STORE_CTX*);






    alias ASN1_SCTX = asn1_sctx_st;
    struct asn1_sctx_st;
    int sched_getscheduler(__pid_t, );




    enum _Anonymous_20
    {
        PTHREAD_MUTEX_STALLED = 0,
        PTHREAD_MUTEX_STALLED_NP = 0,
        PTHREAD_MUTEX_ROBUST = 1,
        PTHREAD_MUTEX_ROBUST_NP = 1,
    }
    enum PTHREAD_MUTEX_STALLED = _Anonymous_20.PTHREAD_MUTEX_STALLED;
    enum PTHREAD_MUTEX_STALLED_NP = _Anonymous_20.PTHREAD_MUTEX_STALLED_NP;
    enum PTHREAD_MUTEX_ROBUST = _Anonymous_20.PTHREAD_MUTEX_ROBUST;
    enum PTHREAD_MUTEX_ROBUST_NP = _Anonymous_20.PTHREAD_MUTEX_ROBUST_NP;
    ubyte* SHA256(const(ubyte)*, size_t, ubyte*, );


    struct __pthread_rwlock_arch_t
    {
        uint __readers;
        uint __writers;
        uint __wrphase_futex;
        uint __writers_futex;
        uint __pad3;
        uint __pad4;
        int __cur_writer;
        int __shared;
        byte __rwelision;
        ubyte[7] __pad1;
        c_ulong __pad2;
        uint __flags;
    }






    alias X509_STORE_CTX_get_issuer_fn = int function(X509**, X509_STORE_CTX*, X509*);
    alias PEM_CTX = pem_ctx_st;


    alias gid_t = uint;


    struct pem_ctx_st
    {
        int type;
        struct _Anonymous_21
        {
            int version_;
            int mode;
        }
        _Anonymous_21 proc_type;
        char* domain;
        struct _Anonymous_22
        {
            int cipher;
        }
        _Anonymous_22 DEK_info;
        PEM_USER* originator;
        int num_recipient;
        PEM_USER** recipient;
        EVP_MD* md;
        int md_enc;
        int md_len;
        char* md_data;
        EVP_CIPHER* dec;
        int key_len;
        ubyte* key;
        int data_enc;
        int data_len;
        ubyte* data;
    }


    ASYNC_JOB* ASYNC_get_current_job();
    void SHA256_Transform(SHA256_CTX*, const(ubyte)*, );
    struct _Anonymous_23
    {
        int dummy;
    }
    struct _Anonymous_24
    {
        c_long quot;
        c_long rem;
    }
    alias ldiv_t = _Anonymous_24;
    alias CRYPTO_dynlock = _Anonymous_23;
    EVP_MD* EVP_MD_meth_new(int, int, );






    alias X509_STORE_CTX_check_issued_fn = int function(X509_STORE_CTX*, X509*, X509*);
    EVP_MD* EVP_MD_meth_dup(const(EVP_MD)*, );
    alias pthread_mutex_t = _Anonymous_25;
    union _Anonymous_25
    {
        __pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }


    ASYNC_WAIT_CTX* ASYNC_get_wait_ctx(ASYNC_JOB*, );
    int sched_yield();
    void EVP_MD_meth_free(EVP_MD*, );




    void ASYNC_block_pause();
    alias int_fast8_t = byte;
    alias X509_STORE_CTX_check_revocation_fn = int function(X509_STORE_CTX*);
    CT_POLICY_EVAL_CTX* CT_POLICY_EVAL_CTX_new();
    void ASYNC_unblock_pause();
    struct X509_sig_st;
    alias X509_SIG = X509_sig_st;
    alias mode_t = uint;
    struct options
    {
        int verbose;
        int interactive;
        int dryrun;
        char* log;
        char* config;
        char* oneline;
        char* debug_;
        char* truststore;
    }


    const(EC_METHOD)* EC_GFp_simple_method();
    alias DSA_SIG = DSA_SIG_st;
    struct DSA_SIG_st;




    alias X509_STORE_CTX_get_crl_fn = int function(X509_STORE_CTX*, X509_CRL**, X509*);






    int EVP_MD_meth_set_input_blocksize(EVP_MD*, int, );
    alias int_fast16_t = c_long;
    struct X509_name_entry_st;
    alias X509_NAME_ENTRY = X509_name_entry_st;


    alias int_fast32_t = c_long;
    int sched_get_priority_max(int, );


    alias ssize_t = c_long;
    int EVP_MD_meth_set_result_size(EVP_MD*, int, );
    alias int_fast64_t = c_long;
    clock_t clock();






    void CT_POLICY_EVAL_CTX_free(CT_POLICY_EVAL_CTX*, );
    int OPENSSL_LH_error(OPENSSL_LHASH*, );
    alias X509_STORE_CTX_check_crl_fn = int function(X509_STORE_CTX*, X509_CRL*);


    alias CRYPTO_RWLOCK = void;
    int EVP_MD_meth_set_app_datasize(EVP_MD*, int, );
    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_set(stack_st_X509_NAME_ENTRY*, int, X509_NAME_ENTRY*, );


    int sk_X509_NAME_ENTRY_find(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, );
    void sk_X509_NAME_ENTRY_sort(stack_st_X509_NAME_ENTRY*, );
    int sk_X509_NAME_ENTRY_is_sorted(const(stack_st_X509_NAME_ENTRY)*, );




    alias PKCS7_ENC_CONTENT = pkcs7_enc_content_st;
    stack_st_X509_NAME_ENTRY* sk_X509_NAME_ENTRY_dup(const(stack_st_X509_NAME_ENTRY)*, );
    struct pkcs7_enc_content_st
    {
        ASN1_OBJECT* content_type;
        X509_ALGOR* algorithm;
        ASN1_OCTET_STRING* enc_data;
        const(EVP_CIPHER)* cipher;
    }




    uint gnu_dev_major(__dev_t, );


    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_shift(stack_st_X509_NAME_ENTRY*, );
    sk_X509_NAME_ENTRY_compfunc sk_X509_NAME_ENTRY_set_cmp_func(stack_st_X509_NAME_ENTRY*, sk_X509_NAME_ENTRY_compfunc, );
    stack_st_X509_NAME_ENTRY* sk_X509_NAME_ENTRY_deep_copy(const(stack_st_X509_NAME_ENTRY)*, sk_X509_NAME_ENTRY_copyfunc, sk_X509_NAME_ENTRY_freefunc, );
    int EVP_MD_meth_set_flags(EVP_MD*, c_ulong, );
    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_pop(stack_st_X509_NAME_ENTRY*, );


    alias X509_STORE_CTX_cert_crl_fn = int function(X509_STORE_CTX*, X509_CRL*, X509*);
    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_delete(stack_st_X509_NAME_ENTRY*, int, );
    void sk_X509_NAME_ENTRY_zero(stack_st_X509_NAME_ENTRY*, );
    void sk_X509_NAME_ENTRY_free(stack_st_X509_NAME_ENTRY*, );
    stack_st_X509_NAME_ENTRY* sk_X509_NAME_ENTRY_new_null();
    stack_st_X509_NAME_ENTRY* sk_X509_NAME_ENTRY_new(sk_X509_NAME_ENTRY_compfunc, );
    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_value(const(stack_st_X509_NAME_ENTRY)*, int, );
    int sk_X509_NAME_ENTRY_num(const(stack_st_X509_NAME_ENTRY)*, );
    alias sk_X509_NAME_ENTRY_copyfunc = X509_name_entry_st* function(const(X509_NAME_ENTRY)*);
    alias sk_X509_NAME_ENTRY_freefunc = void function(X509_NAME_ENTRY*);
    struct stack_st_X509_NAME_ENTRY;
    int sk_X509_NAME_ENTRY_unshift(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, );
    int sk_X509_NAME_ENTRY_insert(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, int, );
    void sk_X509_NAME_ENTRY_pop_free(stack_st_X509_NAME_ENTRY*, sk_X509_NAME_ENTRY_freefunc, );
    alias sk_X509_NAME_ENTRY_compfunc = int function(const(const(X509_NAME_ENTRY)*)*, const(const(X509_NAME_ENTRY)*)*);




    OPENSSL_LHASH* OPENSSL_LH_new(OPENSSL_LH_HASHFUNC, OPENSSL_LH_COMPFUNC, );


    int sk_X509_NAME_ENTRY_find_ex(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, );


    X509_NAME_ENTRY* sk_X509_NAME_ENTRY_delete_ptr(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, );
    int sk_X509_NAME_ENTRY_push(stack_st_X509_NAME_ENTRY*, X509_NAME_ENTRY*, );


    void OPENSSL_LH_free(OPENSSL_LHASH*, );
    int EVP_MD_meth_set_init(EVP_MD*, int function(evp_md_ctx_st*), );
    int sched_get_priority_min(int, );


    CRYPTO_RWLOCK* CRYPTO_THREAD_lock_new();
    uint gnu_dev_minor(__dev_t, );


    alias X509_STORE_CTX_check_policy_fn = int function(X509_STORE_CTX*);




    struct sched_param
    {
        int sched_priority;
    }
    union _Anonymous_26
    {
        __pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    alias pthread_cond_t = _Anonymous_26;






    void* OPENSSL_LH_insert(OPENSSL_LHASH*, void*, );




    X509_NAME* sk_X509_NAME_delete_ptr(stack_st_X509_NAME*, X509_NAME*, );
    int sk_X509_NAME_push(stack_st_X509_NAME*, X509_NAME*, );
    X509_NAME* sk_X509_NAME_delete(stack_st_X509_NAME*, int, );
    void sk_X509_NAME_zero(stack_st_X509_NAME*, );
    void sk_X509_NAME_free(stack_st_X509_NAME*, );
    stack_st_X509_NAME* sk_X509_NAME_new_null();
    int sk_X509_NAME_unshift(stack_st_X509_NAME*, X509_NAME*, );
    alias nlink_t = c_ulong;


    time_t time(time_t*, );
    X509* CT_POLICY_EVAL_CTX_get0_cert(const(CT_POLICY_EVAL_CTX)*, );


    __dev_t gnu_dev_makedev(uint, uint, );
    const(EC_METHOD)* EC_GFp_mont_method();
    int CRYPTO_THREAD_read_lock(CRYPTO_RWLOCK*, );
    stack_st_X509_NAME* sk_X509_NAME_new(sk_X509_NAME_compfunc, );
    X509_NAME* sk_X509_NAME_value(const(stack_st_X509_NAME)*, int, );
    int sk_X509_NAME_num(const(stack_st_X509_NAME)*, );
    alias sk_X509_NAME_copyfunc = X509_name_st* function(const(X509_NAME)*);
    alias sk_X509_NAME_freefunc = void function(X509_NAME*);
    alias sk_X509_NAME_compfunc = int function(const(const(X509_NAME)*)*, const(const(X509_NAME)*)*);
    int sk_X509_NAME_find(stack_st_X509_NAME*, X509_NAME*, );
    X509_NAME* sk_X509_NAME_shift(stack_st_X509_NAME*, );
    int sk_X509_NAME_insert(stack_st_X509_NAME*, X509_NAME*, int, );
    struct stack_st_X509_NAME;


    X509_NAME* sk_X509_NAME_pop(stack_st_X509_NAME*, );
    int EVP_MD_meth_set_update(EVP_MD*, int function(evp_md_ctx_st*, const(void)*, c_ulong), );
    sk_X509_NAME_compfunc sk_X509_NAME_set_cmp_func(stack_st_X509_NAME*, sk_X509_NAME_compfunc, );
    void sk_X509_NAME_pop_free(stack_st_X509_NAME*, sk_X509_NAME_freefunc, );
    stack_st_X509_NAME* sk_X509_NAME_dup(const(stack_st_X509_NAME)*, );
    int sk_X509_NAME_is_sorted(const(stack_st_X509_NAME)*, );
    void sk_X509_NAME_sort(stack_st_X509_NAME*, );
    int sk_X509_NAME_find_ex(stack_st_X509_NAME*, X509_NAME*, );
    stack_st_X509_NAME* sk_X509_NAME_deep_copy(const(stack_st_X509_NAME)*, sk_X509_NAME_copyfunc, sk_X509_NAME_freefunc, );
    X509_NAME* sk_X509_NAME_set(stack_st_X509_NAME*, int, X509_NAME*, );


    int CRYPTO_THREAD_write_lock(CRYPTO_RWLOCK*, );






    alias X509_STORE_CTX_lookup_certs_fn = stack_st_X509* function(X509_STORE_CTX*, X509_NAME*);




    void* OPENSSL_LH_delete(OPENSSL_LHASH*, const(void)*, );
    alias lldiv_t = _Anonymous_27;
    struct _Anonymous_27
    {
        long quot;
        long rem;
    }






    enum _Anonymous_28
    {
        PTHREAD_PRIO_NONE = 0,
        PTHREAD_PRIO_INHERIT = 1,
        PTHREAD_PRIO_PROTECT = 2,
    }
    enum PTHREAD_PRIO_NONE = _Anonymous_28.PTHREAD_PRIO_NONE;
    enum PTHREAD_PRIO_INHERIT = _Anonymous_28.PTHREAD_PRIO_INHERIT;
    enum PTHREAD_PRIO_PROTECT = _Anonymous_28.PTHREAD_PRIO_PROTECT;


    int CRYPTO_THREAD_unlock(CRYPTO_RWLOCK*, );


    alias fd_mask = c_long;
    int ERR_load_ASYNC_strings();






    int sched_rr_get_interval(__pid_t, timespec*, );




    void* OPENSSL_LH_retrieve(OPENSSL_LHASH*, const(void)*, );
    int EVP_MD_meth_set_final(EVP_MD*, int function(evp_md_ctx_st*, ubyte*), );




    double difftime(time_t, time_t, );
    alias X509_STORE_CTX_lookup_crls_fn = stack_st_X509_CRL* function(X509_STORE_CTX*, X509_NAME*);


    void OPENSSL_LH_doall(OPENSSL_LHASH*, OPENSSL_LH_DOALL_FUNC, );


    void CRYPTO_THREAD_lock_free(CRYPTO_RWLOCK*, );






    struct dane_st;


    alias fpos_t = _G_fpos_t;
    struct bio_st;


    alias BIO = bio_st;




    void OPENSSL_LH_doall_arg(OPENSSL_LHASH*, OPENSSL_LH_DOALL_FUNCARG, void*, );


    DSA* DSAparams_dup(DSA*, );
    alias X509_EXTENSION = X509_extension_st;


    struct X509_extension_st;






    alias X509_STORE_CTX_cleanup_fn = int function(X509_STORE_CTX*);
    c_ulong OPENSSL_LH_strhash(const(char)*, );


    alias uid_t = uint;
    alias PKCS7_ENVELOPE = pkcs7_enveloped_st;


    struct pkcs7_enveloped_st
    {
        ASN1_INTEGER* version_;
        stack_st_PKCS7_RECIP_INFO* recipientinfo;
        PKCS7_ENC_CONTENT* enc_data;
    }





    DSA_SIG* DSA_SIG_new();




    alias BIGNUM = bignum_st;
    struct bignum_st;




    const(EC_METHOD)* EC_GFp_nist_method();




    int EVP_MD_meth_set_copy(EVP_MD*, int function(evp_md_ctx_st*, const(evp_md_ctx_st)*), );
    int CRYPTO_atomic_add(int*, int, int*, CRYPTO_RWLOCK*, );




    alias BN_CTX = bignum_ctx;
    void DSA_SIG_free(DSA_SIG*, );




    struct bignum_ctx;


    struct stack_st_X509_EXTENSION;
    alias uint_fast8_t = ubyte;
    alias X509_EXTENSIONS = stack_st_X509_EXTENSION;






    c_ulong OPENSSL_LH_num_items(const(OPENSSL_LHASH)*, );






    struct bn_blinding_st;


    c_ulong OPENSSL_LH_get_down_load(const(OPENSSL_LHASH)*, );





    int EVP_MD_meth_set_cleanup(EVP_MD*, int function(evp_md_ctx_st*), );


    struct environment
    {
        char* home;
        c_long pathmax;
    }
    time_t mktime(tm*, );
    void BN_set_flags(BIGNUM*, int, );
    int CT_POLICY_EVAL_CTX_set1_cert(CT_POLICY_EVAL_CTX*, X509*, );
    alias __pthread_list_t = __pthread_internal_list;
    struct __pthread_internal_list
    {
        __pthread_internal_list* __prev;
        __pthread_internal_list* __next;
    }




    int i2d_DSA_SIG(const(DSA_SIG)*, ubyte**, );
    alias BN_BLINDING = bn_blinding_st;






    alias BN_MONT_CTX = bn_mont_ctx_st;
    int sk_X509_EXTENSION_is_sorted(const(stack_st_X509_EXTENSION)*, );
    void sk_X509_EXTENSION_sort(stack_st_X509_EXTENSION*, );
    int sk_X509_EXTENSION_find_ex(stack_st_X509_EXTENSION*, X509_EXTENSION*, );
    X509_EXTENSION* sk_X509_EXTENSION_set(stack_st_X509_EXTENSION*, int, X509_EXTENSION*, );
    int sk_X509_EXTENSION_insert(stack_st_X509_EXTENSION*, X509_EXTENSION*, int, );


    void OPENSSL_LH_set_down_load(OPENSSL_LHASH*, c_ulong, );




    void X509_STORE_CTX_set_depth(X509_STORE_CTX*, int, );
    struct bn_mont_ctx_st;
    void sk_X509_EXTENSION_pop_free(stack_st_X509_EXTENSION*, sk_X509_EXTENSION_freefunc, );
    int sk_X509_EXTENSION_push(stack_st_X509_EXTENSION*, X509_EXTENSION*, );
    X509_EXTENSION* sk_X509_EXTENSION_pop(stack_st_X509_EXTENSION*, );
    int sk_X509_EXTENSION_unshift(stack_st_X509_EXTENSION*, X509_EXTENSION*, );
    X509_EXTENSION* sk_X509_EXTENSION_delete_ptr(stack_st_X509_EXTENSION*, X509_EXTENSION*, );
    alias sk_X509_EXTENSION_copyfunc = X509_extension_st* function(const(X509_EXTENSION)*);
    int sk_X509_EXTENSION_num(const(stack_st_X509_EXTENSION)*, );
    X509_EXTENSION* sk_X509_EXTENSION_value(const(stack_st_X509_EXTENSION)*, int, );
    stack_st_X509_EXTENSION* sk_X509_EXTENSION_new(sk_X509_EXTENSION_compfunc, );


    X509_EXTENSION* sk_X509_EXTENSION_delete(stack_st_X509_EXTENSION*, int, );


    void sk_X509_EXTENSION_zero(stack_st_X509_EXTENSION*, );
    alias uint_fast16_t = c_ulong;


    void sk_X509_EXTENSION_free(stack_st_X509_EXTENSION*, );
    stack_st_X509_EXTENSION* sk_X509_EXTENSION_new_null();
    int BN_get_flags(const(BIGNUM)*, int, );
    int sk_X509_EXTENSION_find(stack_st_X509_EXTENSION*, X509_EXTENSION*, );
    stack_st_X509_EXTENSION* sk_X509_EXTENSION_dup(const(stack_st_X509_EXTENSION)*, );
    stack_st_X509_EXTENSION* sk_X509_EXTENSION_deep_copy(const(stack_st_X509_EXTENSION)*, sk_X509_EXTENSION_copyfunc, sk_X509_EXTENSION_freefunc, );
    DSA_SIG* d2i_DSA_SIG(DSA_SIG**, const(ubyte)**, c_long, );




    X509_EXTENSION* sk_X509_EXTENSION_shift(stack_st_X509_EXTENSION*, );
    alias sk_X509_EXTENSION_compfunc = int function(const(const(X509_EXTENSION)*)*, const(const(X509_EXTENSION)*)*);
    sk_X509_EXTENSION_compfunc sk_X509_EXTENSION_set_cmp_func(stack_st_X509_EXTENSION*, sk_X509_EXTENSION_compfunc, );
    alias sk_X509_EXTENSION_freefunc = void function(X509_EXTENSION*);


    int EVP_MD_meth_set_ctrl(EVP_MD*, int function(evp_md_ctx_st*, int, int, void*), );




    alias uint_fast32_t = c_ulong;
    alias BN_RECP_CTX = bn_recp_ctx_st;
    struct bn_recp_ctx_st;


    void DSA_SIG_get0(const(DSA_SIG)*, const(BIGNUM)**, const(BIGNUM)**, );
    alias uint_fast64_t = c_ulong;
    int DSA_SIG_set0(DSA_SIG*, BIGNUM*, BIGNUM*, );
    alias X509_ATTRIBUTE = x509_attributes_st;
    struct x509_attributes_st;





    struct bn_gencb_st;






    X509* CT_POLICY_EVAL_CTX_get0_issuer(const(CT_POLICY_EVAL_CTX)*, );



    alias BN_GENCB = bn_gencb_st;
    int EVP_MD_meth_get_input_blocksize(const(EVP_MD)*, );
    const(EC_METHOD)* EC_GFp_nistp224_method();
    void OPENSSL_LH_stats(const(OPENSSL_LHASH)*, FILE*, );




    alias pthread_rwlock_t = _Anonymous_29;
    union _Anonymous_29
    {
        __pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }




    alias PKCS7_SIGN_ENVELOPE = pkcs7_signedandenveloped_st;
    struct pkcs7_signedandenveloped_st
    {
        ASN1_INTEGER* version_;
        stack_st_X509_ALGOR* md_algs;
        stack_st_X509* cert;
        stack_st_X509_CRL* crl;
        stack_st_PKCS7_SIGNER_INFO* signer_info;
        PKCS7_ENC_CONTENT* enc_data;
        stack_st_PKCS7_RECIP_INFO* recipientinfo;
    }




    struct stack_st_X509_ATTRIBUTE;
    alias sk_X509_ATTRIBUTE_compfunc = int function(const(const(X509_ATTRIBUTE)*)*, const(const(X509_ATTRIBUTE)*)*);
    alias sk_X509_ATTRIBUTE_freefunc = void function(X509_ATTRIBUTE*);
    alias sk_X509_ATTRIBUTE_copyfunc = x509_attributes_st* function(const(X509_ATTRIBUTE)*);
    int sk_X509_ATTRIBUTE_num(const(stack_st_X509_ATTRIBUTE)*, );
    sk_X509_ATTRIBUTE_compfunc sk_X509_ATTRIBUTE_set_cmp_func(stack_st_X509_ATTRIBUTE*, sk_X509_ATTRIBUTE_compfunc, );
    stack_st_X509_ATTRIBUTE* sk_X509_ATTRIBUTE_deep_copy(const(stack_st_X509_ATTRIBUTE)*, sk_X509_ATTRIBUTE_copyfunc, sk_X509_ATTRIBUTE_freefunc, );
    stack_st_X509_ATTRIBUTE* sk_X509_ATTRIBUTE_dup(const(stack_st_X509_ATTRIBUTE)*, );
    int sk_X509_ATTRIBUTE_is_sorted(const(stack_st_X509_ATTRIBUTE)*, );
    void sk_X509_ATTRIBUTE_sort(stack_st_X509_ATTRIBUTE*, );
    int sk_X509_ATTRIBUTE_find_ex(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, );
    int sk_X509_ATTRIBUTE_find(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, );
    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_value(const(stack_st_X509_ATTRIBUTE)*, int, );
    stack_st_X509_ATTRIBUTE* sk_X509_ATTRIBUTE_new(sk_X509_ATTRIBUTE_compfunc, );
    stack_st_X509_ATTRIBUTE* sk_X509_ATTRIBUTE_new_null();
    void sk_X509_ATTRIBUTE_free(stack_st_X509_ATTRIBUTE*, );


    int EVP_MD_meth_get_result_size(const(EVP_MD)*, );
    void sk_X509_ATTRIBUTE_zero(stack_st_X509_ATTRIBUTE*, );
    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_delete(stack_st_X509_ATTRIBUTE*, int, );
    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_delete_ptr(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, );
    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_set(stack_st_X509_ATTRIBUTE*, int, X509_ATTRIBUTE*, );
    int sk_X509_ATTRIBUTE_insert(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, int, );
    DSA_SIG* DSA_do_sign(const(ubyte)*, int, DSA*, );


    void sk_X509_ATTRIBUTE_pop_free(stack_st_X509_ATTRIBUTE*, sk_X509_ATTRIBUTE_freefunc, );
    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_shift(stack_st_X509_ATTRIBUTE*, );



    X509_ATTRIBUTE* sk_X509_ATTRIBUTE_pop(stack_st_X509_ATTRIBUTE*, );
    int sk_X509_ATTRIBUTE_unshift(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, );
    int sk_X509_ATTRIBUTE_push(stack_st_X509_ATTRIBUTE*, X509_ATTRIBUTE*, );






    void OPENSSL_LH_node_stats(const(OPENSSL_LHASH)*, FILE*, );
    alias BUF_MEM = buf_mem_st;
    int DSA_do_verify(const(ubyte)*, int, DSA_SIG*, DSA*, );


    void OPENSSL_LH_node_usage_stats(const(OPENSSL_LHASH)*, FILE*, );


    size_t strftime(char*, size_t, const(char)*, const(tm)*, );






    int EVP_MD_meth_get_app_datasize(const(EVP_MD)*, );
    ubyte* auth_cram_md5(const(char)*, const(char)*, ubyte*, );
    alias X509_REQ_INFO = X509_req_info_st;
    alias lua_Number = double;
    struct X509_req_info_st;
    c_ulong EVP_MD_meth_get_flags(const(EVP_MD)*, );
    struct evp_cipher_st;
    alias EVP_CIPHER = evp_cipher_st;
    struct evp_cipher_ctx_st;
    alias EVP_CIPHER_CTX = evp_cipher_ctx_st;




    void OPENSSL_LH_stats_bio(const(OPENSSL_LHASH)*, BIO*, );




    int function(evp_md_ctx_st*) EVP_MD_meth_get_init(EVP_MD_CTX*, const(EVP_MD)*, );
    const(DSA_METHOD)* DSA_OpenSSL();
    alias X509_REQ = X509_req_st;
    struct evp_md_st;
    struct X509_req_st;
    int function(evp_md_ctx_st*, const(void)*, c_ulong) EVP_MD_meth_get_update(EVP_MD_CTX*, const(void)*, size_t, const(EVP_MD)*, );
    alias EVP_MD = evp_md_st;


    void OPENSSL_LH_node_stats_bio(const(OPENSSL_LHASH)*, BIO*, );
    const(EC_METHOD)* EC_GFp_nistp256_method();
    struct crypto_ex_data_st
    {
        stack_st_void* sk;
    }
    void OPENSSL_LH_node_usage_stats_bio(const(OPENSSL_LHASH)*, BIO*, );
    int CT_POLICY_EVAL_CTX_set1_issuer(CT_POLICY_EVAL_CTX*, X509*, );
    struct evp_md_ctx_st;
    alias EVP_MD_CTX = evp_md_ctx_st;


    void DSA_set_default_method(const(DSA_METHOD)*, );



    alias pthread_rwlockattr_t = _Anonymous_30;
    union _Anonymous_30
    {
        char[8] __size;
        c_long __align;
    }
    alias lua_Integer = long;
    int get_cert(session*, );
    alias EVP_PKEY = evp_pkey_st;


    struct evp_pkey_st;
    struct x509_cert_aux_st;


    alias X509_CERT_AUX = x509_cert_aux_st;






    int sk_void_find(stack_st_void*, void*, );
    int sk_void_find_ex(stack_st_void*, void*, );
    void sk_void_sort(stack_st_void*, );
    int sk_void_is_sorted(const(stack_st_void)*, );
    int sk_void_insert(stack_st_void*, void*, int, );


    void* sk_void_set(stack_st_void*, int, void*, );
    void sk_void_pop_free(stack_st_void*, sk_void_freefunc, );
    const(DSA_METHOD)* DSA_get_default_method();




    int function(evp_md_ctx_st*, ubyte*) EVP_MD_meth_get_final(EVP_MD_CTX*, ubyte*, const(EVP_MD)*, );
    alias sk_void_freefunc = void function(void*);
    stack_st_void* sk_void_dup(const(stack_st_void)*, );
    int sk_void_num(const(stack_st_void)*, );
    sk_void_compfunc sk_void_set_cmp_func(stack_st_void*, sk_void_compfunc, );


    void* sk_void_value(const(stack_st_void)*, int, );
    stack_st_void* sk_void_new(sk_void_compfunc, );
    struct stack_st_void;






    stack_st_void* sk_void_new_null();
    alias sk_void_copyfunc = void* function(const(void)*);
    void sk_void_free(stack_st_void*, );
    void sk_void_zero(stack_st_void*, );
    void* sk_void_delete_ptr(stack_st_void*, void*, );


    stack_st_void* sk_void_deep_copy(const(stack_st_void)*, sk_void_copyfunc, sk_void_freefunc, );
    int sk_void_push(stack_st_void*, void*, );
    int sk_void_unshift(stack_st_void*, void*, );
    alias sk_void_compfunc = int function(const(const(void)*)*, const(const(void)*)*);
    void* sk_void_pop(stack_st_void*, );
    void* sk_void_shift(stack_st_void*, );
    void* sk_void_delete(stack_st_void*, int, );


    struct x509_cinf_st;
    int DSA_set_method(DSA*, const(DSA_METHOD)*, );







    alias X509_CINF = x509_cinf_st;
    struct SHA512state_st
    {
        ulong[8] h;
        ulong Nl;
        ulong Nh;
        union _Anonymous_31
        {
            ulong[16] d;
            ubyte[128] p;
        }
        _Anonymous_31 u;
        uint num;
        uint md_len;
    }
    alias SHA512_CTX = SHA512state_st;


    struct evp_pkey_asn1_method_st;


    alias EVP_PKEY_ASN1_METHOD = evp_pkey_asn1_method_st;




    const(CTLOG_STORE)* CT_POLICY_EVAL_CTX_get0_log_store(const(CT_POLICY_EVAL_CTX)*, );






    int function(evp_md_ctx_st*, const(evp_md_ctx_st)*) EVP_MD_meth_get_copy(EVP_MD_CTX*, const(EVP_MD_CTX)*, const(EVP_MD)*, );
    const(EC_METHOD)* EC_GFp_nistp521_method();







    int luaopen_ifcore(lua_State*, );
    alias lua_Unsigned = ulong;
    alias PKCS7_DIGEST = pkcs7_digest_st;
    struct pkcs7_digest_st
    {
        ASN1_INTEGER* version_;
        X509_ALGOR* md;
        pkcs7_st* contents;
        ASN1_OCTET_STRING* digest;
    }


    const(DSA_METHOD)* DSA_get_method(DSA*, );


    size_t __ctype_get_mb_cur_max();
    X509* sk_X509_set(stack_st_X509*, int, X509*, );
    int sk_X509_find(stack_st_X509*, X509*, );
    int sk_X509_insert(stack_st_X509*, X509*, int, );
    stack_st_X509* sk_X509_deep_copy(const(stack_st_X509)*, sk_X509_copyfunc, sk_X509_freefunc, );
    int sk_X509_unshift(stack_st_X509*, X509*, );
    int sk_X509_push(stack_st_X509*, X509*, );
    X509* sk_X509_pop(stack_st_X509*, );
    X509* sk_X509_delete_ptr(stack_st_X509*, X509*, );
    stack_st_X509* sk_X509_new_null();
    struct stack_st_X509;
    alias intptr_t = c_long;
    void sk_X509_free(stack_st_X509*, );
    stack_st_X509* sk_X509_new(sk_X509_compfunc, );
    X509* sk_X509_shift(stack_st_X509*, );


    void sk_X509_pop_free(stack_st_X509*, sk_X509_freefunc, );
    alias sk_X509_compfunc = int function(const(const(X509)*)*, const(const(X509)*)*);
    alias sk_X509_freefunc = void function(X509*);
    X509* sk_X509_delete(stack_st_X509*, int, );
    int sk_X509_find_ex(stack_st_X509*, X509*, );
    X509* sk_X509_value(const(stack_st_X509)*, int, );
    void sk_X509_zero(stack_st_X509*, );
    int sk_X509_is_sorted(const(stack_st_X509)*, );
    int sk_X509_num(const(stack_st_X509)*, );
    alias sk_X509_copyfunc = x509_st* function(const(X509)*);
    sk_X509_compfunc sk_X509_set_cmp_func(stack_st_X509*, sk_X509_compfunc, );
    stack_st_X509* sk_X509_dup(const(stack_st_X509)*, );




    void sk_X509_sort(stack_st_X509*, );
    alias EVP_PKEY_METHOD = evp_pkey_method_st;
    struct evp_pkey_method_st;
    alias pid_t = int;
    DSA* DSA_new();


    void CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(CT_POLICY_EVAL_CTX*, CTLOG_STORE*, );






    struct evp_pkey_ctx_st;




    alias EVP_PKEY_CTX = evp_pkey_ctx_st;


    int function(evp_md_ctx_st*) EVP_MD_meth_get_cleanup(EVP_MD_CTX*, const(EVP_MD)*, );
    void create_homedir();
    DSA* DSA_new_method(ENGINE*, );
    int function(evp_md_ctx_st*, int, int, void*) EVP_MD_meth_get_ctrl(EVP_MD_CTX*, int, int, void*, const(EVP_MD)*, );


    alias lua_KContext = c_long;
    void BN_with_flags(BIGNUM*, const(BIGNUM)*, int, );
    void DSA_free(DSA*, );






    alias EVP_ENCODE_CTX = evp_Encode_Ctx_st;
    struct evp_Encode_Ctx_st;
    alias uintptr_t = c_ulong;


    int exists_file(char*, );
    double atof(const(char)*, );




    int select(int, fd_set*, fd_set*, fd_set*, timeval*, );


    int exists_dir(char*, );
    struct x509_trust_st
    {
        int trust;
        int flags;
        int function(x509_trust_st*, x509_st*, int) check_trust;
        char* name;
        int arg1;
        void* arg2;
    }




    alias X509_TRUST = x509_trust_st;
    struct hmac_ctx_st;




    int create_file(char*, mode_t, );
    alias HMAC_CTX = hmac_ctx_st;






    int DSA_up_ref(DSA*, );
    int get_pathmax();
    int BN_GENCB_call(BN_GENCB*, int, int, );
    int DSA_size(const(DSA)*, );
    alias PKCS7_ENCRYPT = pkcs7_encrypted_st;
    struct pkcs7_encrypted_st
    {
        ASN1_INTEGER* version_;
        PKCS7_ENC_CONTENT* enc_data;
    }
    alias pthread_spinlock_t = int;


    char* get_filepath(char*, );
    alias DH = dh_st;






    struct dh_st;
    alias id_t = uint;


    size_t strftime_l(char*, size_t, const(char)*, const(tm)*, locale_t, );


    int DSA_bits(const(DSA)*, );




    int atoi(const(char)*, );
    alias lua_CFunction = int function(lua_State*);






    int DSA_security_bits(const(DSA)*, );


    int SHA384_Init(SHA512_CTX*, );


    struct dh_method;
    alias DH_METHOD = dh_method;
    BN_GENCB* BN_GENCB_new();
    uint64_t CT_POLICY_EVAL_CTX_get_time(const(CT_POLICY_EVAL_CTX)*, );
    void BN_GENCB_free(BN_GENCB*, );
    int SHA384_Update(SHA512_CTX*, const(void)*, size_t, );
    struct dsa_st;





    void verbose(const(char)*, ...);


    alias DSA = dsa_st;


    int DSA_sign_setup(DSA*, BN_CTX*, BIGNUM**, BIGNUM**, );


    const(EC_METHOD)* EC_GF2m_simple_method();


    c_long atol(const(char)*, );
    int SHA384_Final(ubyte*, SHA512_CTX*, );
    alias DSA_METHOD = dsa_method;
    struct dsa_method;
    ubyte* SHA384(const(ubyte)*, size_t, ubyte*, );




    struct pkcs7_st
    {
        ubyte* asn1;
        c_long length;
        int state;
        int detached;
        ASN1_OBJECT* type;
        union _Anonymous_32
        {
            char* ptr;
            ASN1_OCTET_STRING* data;
            PKCS7_SIGNED* sign;
            PKCS7_ENVELOPE* enveloped;
            PKCS7_SIGN_ENVELOPE* signed_and_enveloped;
            PKCS7_DIGEST* digest;
            PKCS7_ENCRYPT* encrypted;
            ASN1_TYPE* other;
        }
        _Anonymous_32 d;
    }
    alias PKCS7 = pkcs7_st;


    int DSA_sign(int, const(ubyte)*, int, ubyte*, uint*, DSA*, );
    alias pthread_barrier_t = _Anonymous_33;
    union _Anonymous_33
    {
        char[32] __size;
        c_long __align;
    }




    pragma(mangle, "debug") void debug_(const(char)*, ...);
    int SHA512_Init(SHA512_CTX*, );


    void debugc(char, );




    void BN_GENCB_set_old(BN_GENCB*, void function(int, int, void*), void*, );


    stack_st_X509_TRUST* sk_X509_TRUST_deep_copy(const(stack_st_X509_TRUST)*, sk_X509_TRUST_copyfunc, sk_X509_TRUST_freefunc, );




    alias RSA = rsa_st;







    struct rsa_st;
    void sk_X509_TRUST_zero(stack_st_X509_TRUST*, );
    alias lua_KFunction = int function(lua_State*, int, lua_KContext);
    int DSA_verify(int, const(ubyte)*, int, const(ubyte)*, int, DSA*, );


    X509_TRUST* sk_X509_TRUST_set(stack_st_X509_TRUST*, int, X509_TRUST*, );
    void sk_X509_TRUST_pop_free(stack_st_X509_TRUST*, sk_X509_TRUST_freefunc, );
    sk_X509_TRUST_compfunc sk_X509_TRUST_set_cmp_func(stack_st_X509_TRUST*, sk_X509_TRUST_compfunc, );
    int SHA512_Update(SHA512_CTX*, const(void)*, size_t, );
    alias sk_X509_TRUST_freefunc = void function(X509_TRUST*);
    alias sk_X509_TRUST_copyfunc = x509_trust_st* function(const(X509_TRUST)*);
    int sk_X509_TRUST_num(const(stack_st_X509_TRUST)*, );
    X509_TRUST* sk_X509_TRUST_value(const(stack_st_X509_TRUST)*, int, );
    stack_st_X509_TRUST* sk_X509_TRUST_new(sk_X509_TRUST_compfunc, );
    stack_st_X509_TRUST* sk_X509_TRUST_new_null();
    void sk_X509_TRUST_free(stack_st_X509_TRUST*, );
    int sk_X509_TRUST_insert(stack_st_X509_TRUST*, X509_TRUST*, int, );
    X509_TRUST* sk_X509_TRUST_delete(stack_st_X509_TRUST*, int, );




    alias sk_X509_TRUST_compfunc = int function(const(const(X509_TRUST)*)*, const(const(X509_TRUST)*)*);
    struct stack_st_X509_TRUST;
    X509_TRUST* sk_X509_TRUST_delete_ptr(stack_st_X509_TRUST*, X509_TRUST*, );
    void error(const(char)*, ...);




    int sk_X509_TRUST_find(stack_st_X509_TRUST*, X509_TRUST*, );
    void sk_X509_TRUST_sort(stack_st_X509_TRUST*, );
    int sk_X509_TRUST_find_ex(stack_st_X509_TRUST*, X509_TRUST*, );
    int sk_X509_TRUST_unshift(stack_st_X509_TRUST*, X509_TRUST*, );
    stack_st_X509_TRUST* sk_X509_TRUST_dup(const(stack_st_X509_TRUST)*, );
    int sk_X509_TRUST_push(stack_st_X509_TRUST*, X509_TRUST*, );


    int sk_X509_TRUST_is_sorted(const(stack_st_X509_TRUST)*, );
    X509_TRUST* sk_X509_TRUST_shift(stack_st_X509_TRUST*, );
    X509_TRUST* sk_X509_TRUST_pop(stack_st_X509_TRUST*, );




    void fatal(uint, const(char)*, ...);
    int SHA512_Final(ubyte*, SHA512_CTX*, );




    alias intmax_t = c_long;
    alias RSA_METHOD = rsa_meth_st;
    struct rsa_meth_st;
    long atoll(const(char)*, );
    ubyte* SHA512(const(ubyte)*, size_t, ubyte*, );




    alias uintmax_t = c_ulong;
    struct ec_key_st;
    alias EC_KEY = ec_key_st;




    void SHA512_Transform(SHA512_CTX*, const(ubyte)*, );






    void BN_GENCB_set(BN_GENCB*, int function(int, int, bn_gencb_st*), void*, );




    int pselect(int, fd_set*, fd_set*, fd_set*, const(timespec)*, const(__sigset_t)*, );
    int open_debug();


    void CT_POLICY_EVAL_CTX_set_time(CT_POLICY_EVAL_CTX*, uint64_t, );


    int DSA_set_ex_data(DSA*, int, void*, );
    int close_debug();




    DH* DHparams_dup(DH*, );
    struct ec_key_method_st;
    alias EC_KEY_METHOD = ec_key_method_st;


    union _Anonymous_34
    {
        char[4] __size;
        int __align;
    }
    alias pthread_barrierattr_t = _Anonymous_34;






    void* DSA_get_ex_data(DSA*, int, );




    alias daddr_t = int;
    enum _Anonymous_35
    {
        PTHREAD_RWLOCK_PREFER_READER_NP = 0,
        PTHREAD_RWLOCK_PREFER_WRITER_NP = 1,
        PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP = 2,
        PTHREAD_RWLOCK_DEFAULT_NP = 0,
    }
    enum PTHREAD_RWLOCK_PREFER_READER_NP = _Anonymous_35.PTHREAD_RWLOCK_PREFER_READER_NP;
    enum PTHREAD_RWLOCK_PREFER_WRITER_NP = _Anonymous_35.PTHREAD_RWLOCK_PREFER_WRITER_NP;
    enum PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP = _Anonymous_35.PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP;
    enum PTHREAD_RWLOCK_DEFAULT_NP = _Anonymous_35.PTHREAD_RWLOCK_DEFAULT_NP;
    alias RAND_METHOD = rand_meth_st;
    alias lua_Reader = const(char)* function(lua_State*, void*, size_t*);




    int open_log();





    alias caddr_t = char*;


    struct rand_meth_st;
    void* BN_GENCB_get_arg(BN_GENCB*, );


    const(DH_METHOD)* DH_OpenSSL();
    int __sched_cpucount(size_t, const(cpu_set_t)*, );






    int close_log();




    DSA* d2i_DSAPublicKey(DSA**, const(ubyte)**, c_long, );
    double strtod(const(char)*, char**, );




    void DH_set_default_method(const(DH_METHOD)*, );
    struct ssl_dane_st;
    alias SSL_DANE = ssl_dane_st;
    struct __pthread_mutex_s
    {
        int __lock;
        uint __count;
        int __owner;
        uint __nusers;
        int __kind;
        short __spins;
        short __elision;
        __pthread_list_t __list;
    }
    alias lua_Writer = int function(lua_State*, const(void)*, size_t, void*);
    DSA* d2i_DSAPrivateKey(DSA**, const(ubyte)**, c_long, );
    EC_GROUP* EC_GROUP_new(const(EC_METHOD)*, );
    tm* gmtime(const(time_t)*, );
    const(DH_METHOD)* DH_get_default_method();
    alias X509 = x509_st;
    cpu_set_t* __sched_cpualloc(size_t, );
    struct x509_st;




    DSA* d2i_DSAparams(DSA**, const(ubyte)**, c_long, );
    int sk_X509_ALGOR_find_ex(stack_st_X509_ALGOR*, X509_ALGOR*, );
    int sk_X509_ALGOR_find(stack_st_X509_ALGOR*, X509_ALGOR*, );
    void sk_X509_ALGOR_free(stack_st_X509_ALGOR*, );


    void sk_X509_ALGOR_zero(stack_st_X509_ALGOR*, );
    X509_ALGOR* sk_X509_ALGOR_delete(stack_st_X509_ALGOR*, int, );



    X509_ALGOR* sk_X509_ALGOR_delete_ptr(stack_st_X509_ALGOR*, X509_ALGOR*, );
    int sk_X509_ALGOR_push(stack_st_X509_ALGOR*, X509_ALGOR*, );
    int sk_X509_ALGOR_unshift(stack_st_X509_ALGOR*, X509_ALGOR*, );


    stack_st_X509_ALGOR* sk_X509_ALGOR_dup(const(stack_st_X509_ALGOR)*, );
    X509_ALGOR* sk_X509_ALGOR_shift(stack_st_X509_ALGOR*, );
    void sk_X509_ALGOR_pop_free(stack_st_X509_ALGOR*, sk_X509_ALGOR_freefunc, );
    int sk_X509_ALGOR_insert(stack_st_X509_ALGOR*, X509_ALGOR*, int, );
    X509_ALGOR* sk_X509_ALGOR_set(stack_st_X509_ALGOR*, int, X509_ALGOR*, );
    alias X509_ALGOR = X509_algor_st;






    stack_st_X509_ALGOR* sk_X509_ALGOR_new_null();
    stack_st_X509_ALGOR* sk_X509_ALGOR_new(sk_X509_ALGOR_compfunc, );
    X509_ALGOR* sk_X509_ALGOR_value(const(stack_st_X509_ALGOR)*, int, );
    int sk_X509_ALGOR_num(const(stack_st_X509_ALGOR)*, );
    alias sk_X509_ALGOR_copyfunc = X509_algor_st* function(const(X509_ALGOR)*);
    alias sk_X509_ALGOR_freefunc = void function(X509_ALGOR*);


    alias sk_X509_ALGOR_compfunc = int function(const(const(X509_ALGOR)*)*, const(const(X509_ALGOR)*)*);






    void __sched_cpufree(cpu_set_t*, );




    void start_lua();
    void sk_X509_ALGOR_sort(stack_st_X509_ALGOR*, );
    int sk_X509_ALGOR_is_sorted(const(stack_st_X509_ALGOR)*, );
    sk_X509_ALGOR_compfunc sk_X509_ALGOR_set_cmp_func(stack_st_X509_ALGOR*, sk_X509_ALGOR_compfunc, );
    stack_st_X509_ALGOR* sk_X509_ALGOR_deep_copy(const(stack_st_X509_ALGOR)*, sk_X509_ALGOR_copyfunc, sk_X509_ALGOR_freefunc, );
    struct stack_st_X509_ALGOR;
    int DH_set_method(DH*, const(DH_METHOD)*, );
    X509_ALGOR* sk_X509_ALGOR_pop(stack_st_X509_ALGOR*, );
    void stop_lua();
    DH* DH_new_method(ENGINE*, );


    struct X509_crl_st;
    alias X509_CRL = X509_crl_st;
    DSA* DSA_generate_parameters(int, ubyte*, int, int*, c_ulong*, void function(int, int, void*), void*, );






    alias X509_CRL_METHOD = x509_crl_method_st;
    struct x509_crl_method_st;


    alias key_t = int;







    int get_option_boolean(const(char)*, );
    alias X509_REVOKED = x509_revoked_st;


    struct x509_revoked_st;




    float strtof(const(char)*, char**, );






    tm* localtime(const(time_t)*, );
    DH* DH_new();
    int CRYPTO_mem_ctrl(int, );
    struct X509_name_st;
    alias lua_Alloc = void* function(void*, void*, size_t, size_t);
    alias X509_NAME = X509_name_st;




    void DH_free(DH*, );
    lua_Number get_option_number(const(char)*, );


    SCT* SCT_new();
    void EC_GROUP_free(EC_GROUP*, );






    const(char)* get_option_string(const(char)*, );


    int DH_up_ref(DH*, );
    alias X509_PUBKEY = X509_pubkey_st;
    struct X509_pubkey_st;







    real strtold(const(char)*, char**, );
    int DH_bits(const(DH)*, );






    alias X509_STORE = x509_store_st;
    struct x509_store_st;
    struct x509_store_ctx_st;


    int DH_size(const(DH)*, );






    alias X509_STORE_CTX = x509_store_ctx_st;
    int set_table_boolean(const(char)*, int, );
    tm* gmtime_r(const(time_t)*, tm*, );






    int DH_security_bits(const(DH)*, );
    int set_table_number(const(char)*, lua_Number, );
    int set_table_string(const(char)*, const(char)*, );


    void EC_GROUP_clear_free(EC_GROUP*, );


    alias X509_OBJECT = x509_object_st;
    struct x509_object_st;
    SCT* SCT_new_from_base64(ubyte, const(char)*, ct_log_entry_type_t, uint64_t, const(char)*, const(char)*, );




    alias X509_LOOKUP = x509_lookup_st;
    struct x509_lookup_st;


    int DH_set_ex_data(DH*, int, void*, );
    struct x509_lookup_method_st;


    alias X509_LOOKUP_METHOD = x509_lookup_method_st;
    void* DH_get_ex_data(DH*, int, );


    void* xmalloc(size_t, );




    struct X509_VERIFY_PARAM_st;


    int DSA_generate_parameters_ex(DSA*, int, const(ubyte)*, int, int*, c_ulong*, BN_GENCB*, );
    alias X509_VERIFY_PARAM = X509_VERIFY_PARAM_st;
    void* xrealloc(void*, size_t, );







    tm* localtime_r(const(time_t)*, tm*, );
    alias __dev_t = c_ulong;
    alias PKCS8_PRIV_KEY_INFO = pkcs8_priv_key_info_st;
    struct pkcs8_priv_key_info_st;
    alias __uid_t = uint;




    void xfree(void*, );
    DH* DH_generate_parameters(int, int, void function(int, int, void*), void*, );
    extern __gshared _IO_FILE* stdin;
    char* xstrdup(const(char)*, );
    alias __gid_t = uint;


    extern __gshared _IO_FILE* stdout;
    alias __ino_t = c_ulong;
    int EC_GROUP_copy(EC_GROUP*, const(EC_GROUP)*, );


    struct v3_ext_ctx;
    alias X509V3_CTX = v3_ext_ctx;






    char* xstrndup(const(char)*, size_t, );
    alias __ino64_t = c_ulong;
    int DSA_generate_key(DSA*, );







    alias CONF = conf_st;


    struct conf_st;
    extern __gshared _IO_FILE* stderr;






    alias OPENSSL_INIT_SETTINGS = ossl_init_settings_st;
    struct ossl_init_settings_st;
    alias __mode_t = uint;
    int i2d_DSAPublicKey(const(DSA)*, ubyte**, );
    char* asctime(const(tm)*, );


    int i2d_DSAPrivateKey(const(DSA)*, ubyte**, );






    alias __nlink_t = c_ulong;


    extern __gshared const(char)[0] lua_ident;




    const(char)* xstrcasestr(const(char)*, const(char)*, );


    c_long strtol(const(char)*, char**, int, );
    struct ui_st;


    void SCT_free(SCT*, );
    char* xstrncpy(char*, const(char)*, size_t, );
    alias UI = ui_st;




    int i2d_DSAparams(const(DSA)*, ubyte**, );




    alias __off_t = c_long;
    alias UI_METHOD = ui_method_st;
    struct ui_method_st;






    alias __off64_t = c_long;


    alias OPENSSL_STRING = char*;







    int DH_generate_parameters_ex(DH*, int, int, BN_GENCB*, );
    alias OPENSSL_CSTRING = const(char)*;
    alias __pid_t = int;






    int DSAparams_print(BIO*, const(DSA)*, );
    char* ctime(const(time_t)*, );






    const(char)* apply_namespace(const(char)*, char*, char, );


    int DSA_print(BIO*, const(DSA)*, int, );


    alias __fsid_t = _Anonymous_36;
    alias ENGINE = engine_st;
    struct engine_st;


    EC_GROUP* EC_GROUP_dup(const(EC_GROUP)*, );


    struct _Anonymous_36
    {
        int[2] __val;
    }
    c_ulong strtoul(const(char)*, char**, int, );
    alias SSL = ssl_st;
    struct ssl_st;


    alias __clock_t = c_long;




    int DH_check_params(const(DH)*, int*, );




    int BN_abs_is_word(const(BIGNUM)*, const(c_ulong), );




    int remove(const(char)*, );
    const(char)* reverse_namespace(const(char)*, char*, char, );


    struct _IO_jump_t;
    int DH_check(const(DH)*, int*, );




    void sk_PKCS7_pop_free(stack_st_PKCS7*, sk_PKCS7_freefunc, );
    alias sk_PKCS7_freefunc = void function(PKCS7*);
    alias sk_PKCS7_copyfunc = pkcs7_st* function(const(PKCS7)*);
    int sk_PKCS7_num(const(stack_st_PKCS7)*, );
    PKCS7* sk_PKCS7_value(const(stack_st_PKCS7)*, int, );
    stack_st_PKCS7* sk_PKCS7_new(sk_PKCS7_compfunc, );
    stack_st_PKCS7* sk_PKCS7_new_null();
    void sk_PKCS7_free(stack_st_PKCS7*, );
    void sk_PKCS7_zero(stack_st_PKCS7*, );
    PKCS7* sk_PKCS7_delete(stack_st_PKCS7*, int, );
    PKCS7* sk_PKCS7_delete_ptr(stack_st_PKCS7*, PKCS7*, );
    int sk_PKCS7_push(stack_st_PKCS7*, PKCS7*, );
    int sk_PKCS7_unshift(stack_st_PKCS7*, PKCS7*, );
    PKCS7* sk_PKCS7_pop(stack_st_PKCS7*, );
    PKCS7* sk_PKCS7_shift(stack_st_PKCS7*, );
    int sk_PKCS7_insert(stack_st_PKCS7*, PKCS7*, int, );
    PKCS7* sk_PKCS7_set(stack_st_PKCS7*, int, PKCS7*, );
    lua_State* lua_newstate(lua_Alloc, void*, );
    int sk_PKCS7_find_ex(stack_st_PKCS7*, PKCS7*, );
    void sk_PKCS7_sort(stack_st_PKCS7*, );
    stack_st_PKCS7* sk_PKCS7_dup(const(stack_st_PKCS7)*, );
    stack_st_PKCS7* sk_PKCS7_deep_copy(const(stack_st_PKCS7)*, sk_PKCS7_copyfunc, sk_PKCS7_freefunc, );
    sk_PKCS7_compfunc sk_PKCS7_set_cmp_func(stack_st_PKCS7*, sk_PKCS7_compfunc, );
    alias sk_PKCS7_compfunc = int function(const(const(PKCS7)*)*, const(const(PKCS7)*)*);
    struct stack_st_PKCS7;


    alias __rlim_t = c_ulong;
    struct ssl_ctx_st;
    alias SSL_CTX = ssl_ctx_st;
    struct asn1_string_st
    {
        int length;
        int type;
        ubyte* data;
        c_long flags;
    }
    int BN_is_zero(const(BIGNUM)*, );





    int sk_PKCS7_is_sorted(const(stack_st_PKCS7)*, );
    int sk_PKCS7_find(stack_st_PKCS7*, PKCS7*, );




    int DSAparams_print_fp(FILE*, const(DSA)*, );


    void lua_close(lua_State*, );


    int BN_is_one(const(BIGNUM)*, );






    alias __rlim64_t = c_ulong;
    int DH_check_pub_key(const(DH)*, const(BIGNUM)*, int*, );






    int DSA_print_fp(FILE*, const(DSA)*, int, );
    int rename(const(char)*, const(char)*, );
    void SCT_LIST_free(stack_st_SCT*, );
    int DH_generate_key(DH*, );


    struct comp_ctx_st;
    lua_State* lua_newthread(lua_State*, );




    int BN_is_word(const(BIGNUM)*, const(c_ulong), );







    int luaopen_ifre(lua_State*, );
    alias __id_t = uint;
    alias COMP_CTX = comp_ctx_st;
    alias __time_t = c_long;
    int DH_compute_key(ubyte*, const(BIGNUM)*, DH*, );
    alias COMP_METHOD = comp_method_st;






    int BN_is_odd(const(BIGNUM)*, );
    struct comp_method_st;


    const(EC_METHOD)* EC_GROUP_method_of(const(EC_GROUP)*, );
    alias __useconds_t = uint;




    int DH_compute_key_padded(ubyte*, const(BIGNUM)*, DH*, );
    char* asctime_r(const(tm)*, char*, );
    alias ptrdiff_t = c_long;


    lua_CFunction lua_atpanic(lua_State*, lua_CFunction, );
    int request_noop(session*, );




    int renameat(int, const(char)*, int, const(char)*, );




    long strtoq(const(char)*, char**, int, );






    DH* d2i_DHparams(DH**, const(ubyte)**, c_long, );
    alias __suseconds_t = c_long;
    alias X509_POLICY_NODE = X509_POLICY_NODE_st;
    struct X509_POLICY_NODE_st;
    alias _IO_lock_t = void;
    char* sk_OPENSSL_STRING_delete_ptr(stack_st_OPENSSL_STRING*, char*, );
    int sk_OPENSSL_STRING_push(stack_st_OPENSSL_STRING*, char*, );
    int sk_OPENSSL_STRING_unshift(stack_st_OPENSSL_STRING*, char*, );
    char* sk_OPENSSL_STRING_pop(stack_st_OPENSSL_STRING*, );
    char* sk_OPENSSL_STRING_shift(stack_st_OPENSSL_STRING*, );
    void sk_OPENSSL_STRING_pop_free(stack_st_OPENSSL_STRING*, sk_OPENSSL_STRING_freefunc, );
    int sk_OPENSSL_STRING_insert(stack_st_OPENSSL_STRING*, char*, int, );
    char* sk_OPENSSL_STRING_set(stack_st_OPENSSL_STRING*, int, char*, );
    int sk_OPENSSL_STRING_find(stack_st_OPENSSL_STRING*, char*, );
    int sk_OPENSSL_STRING_find_ex(stack_st_OPENSSL_STRING*, char*, );
    void sk_OPENSSL_STRING_sort(stack_st_OPENSSL_STRING*, );
    int sk_OPENSSL_STRING_is_sorted(const(stack_st_OPENSSL_STRING)*, );
    stack_st_OPENSSL_STRING* sk_OPENSSL_STRING_dup(const(stack_st_OPENSSL_STRING)*, );
    stack_st_OPENSSL_STRING* sk_OPENSSL_STRING_deep_copy(const(stack_st_OPENSSL_STRING)*, sk_OPENSSL_STRING_copyfunc, sk_OPENSSL_STRING_freefunc, );
    sk_OPENSSL_STRING_compfunc sk_OPENSSL_STRING_set_cmp_func(stack_st_OPENSSL_STRING*, sk_OPENSSL_STRING_compfunc, );
    stack_st_OPENSSL_STRING* sk_OPENSSL_STRING_new_null();
    void sk_OPENSSL_STRING_zero(stack_st_OPENSSL_STRING*, );
    stack_st_OPENSSL_STRING* sk_OPENSSL_STRING_new(sk_OPENSSL_STRING_compfunc, );
    int sk_OPENSSL_STRING_num(const(stack_st_OPENSSL_STRING)*, );
    alias sk_OPENSSL_STRING_copyfunc = char* function(const(char)*);
    alias sk_OPENSSL_STRING_freefunc = void function(char*);
    alias sk_OPENSSL_STRING_compfunc = int function(const(const(char)*)*, const(const(char)*)*);
    struct stack_st_OPENSSL_STRING;
    char* sk_OPENSSL_STRING_delete(stack_st_OPENSSL_STRING*, int, );






    int request_login(session**, const(char)*, const(char)*, const(char)*, const(char)*, const(char)*, const(char)*, );
    alias X509_POLICY_LEVEL = X509_POLICY_LEVEL_st;
    struct X509_POLICY_LEVEL_st;
    sct_version_t SCT_get_version(const(SCT)*, );


    struct __pthread_cond_s
    {
        union _Anonymous_37
        {
            ulong __wseq;
            struct _Anonymous_38
            {
                uint __low;
                uint __high;
            }
            _Anonymous_38 __wseq32;
        }
        union _Anonymous_39
        {
            ulong __g1_start;
            struct _Anonymous_40
            {
                uint __low;
                uint __high;
            }
            _Anonymous_40 __g1_start32;
        }
        uint[2] __g_refs;
        uint[2] __g_size;
        uint __g1_orig_size;
        uint __wrefs;
        uint[2] __g_signals;
    }
    char* sk_OPENSSL_STRING_value(const(stack_st_OPENSSL_STRING)*, int, );
    void sk_OPENSSL_STRING_free(stack_st_OPENSSL_STRING*, );





    int i2d_DHparams(const(DH)*, ubyte**, );
    void BN_zero_ex(BIGNUM*, );
    const(lua_Number)* lua_version(lua_State*, );
    alias X509_POLICY_TREE = X509_POLICY_TREE_st;


    struct X509_POLICY_TREE_st;




    DH* d2i_DHxparams(DH**, const(ubyte)**, c_long, );
    void sk_OPENSSL_CSTRING_pop_free(stack_st_OPENSSL_CSTRING*, sk_OPENSSL_CSTRING_freefunc, );
    int sk_OPENSSL_CSTRING_unshift(stack_st_OPENSSL_CSTRING*, const(char)*, );
    stack_st_OPENSSL_CSTRING* sk_OPENSSL_CSTRING_deep_copy(const(stack_st_OPENSSL_CSTRING)*, sk_OPENSSL_CSTRING_copyfunc, sk_OPENSSL_CSTRING_freefunc, );
    stack_st_OPENSSL_CSTRING* sk_OPENSSL_CSTRING_dup(const(stack_st_OPENSSL_CSTRING)*, );
    int sk_OPENSSL_CSTRING_is_sorted(const(stack_st_OPENSSL_CSTRING)*, );
    int sk_OPENSSL_CSTRING_find_ex(stack_st_OPENSSL_CSTRING*, const(char)*, );
    int sk_OPENSSL_CSTRING_find(stack_st_OPENSSL_CSTRING*, const(char)*, );
    const(char)* sk_OPENSSL_CSTRING_set(stack_st_OPENSSL_CSTRING*, int, const(char)*, );
    int sk_OPENSSL_CSTRING_insert(stack_st_OPENSSL_CSTRING*, const(char)*, int, );
    const(char)* sk_OPENSSL_CSTRING_shift(stack_st_OPENSSL_CSTRING*, );
    const(char)* sk_OPENSSL_CSTRING_pop(stack_st_OPENSSL_CSTRING*, );




    void sk_OPENSSL_CSTRING_sort(stack_st_OPENSSL_CSTRING*, );
    void sk_OPENSSL_CSTRING_free(stack_st_OPENSSL_CSTRING*, );
    stack_st_OPENSSL_CSTRING* sk_OPENSSL_CSTRING_new_null();
    stack_st_OPENSSL_CSTRING* sk_OPENSSL_CSTRING_new(sk_OPENSSL_CSTRING_compfunc, );
    const(char)* sk_OPENSSL_CSTRING_value(const(stack_st_OPENSSL_CSTRING)*, int, );
    int sk_OPENSSL_CSTRING_num(const(stack_st_OPENSSL_CSTRING)*, );
    alias sk_OPENSSL_CSTRING_copyfunc = char* function(const(char)*);
    alias sk_OPENSSL_CSTRING_compfunc = int function(const(const(char)*)*, const(const(char)*)*);
    sk_OPENSSL_CSTRING_compfunc sk_OPENSSL_CSTRING_set_cmp_func(stack_st_OPENSSL_CSTRING*, sk_OPENSSL_CSTRING_compfunc, );


    void sk_OPENSSL_CSTRING_zero(stack_st_OPENSSL_CSTRING*, );
    struct stack_st_OPENSSL_CSTRING;
    const(char)* sk_OPENSSL_CSTRING_delete(stack_st_OPENSSL_CSTRING*, int, );
    alias __daddr_t = int;
    const(char)* sk_OPENSSL_CSTRING_delete_ptr(stack_st_OPENSSL_CSTRING*, const(char)*, );
    int sk_OPENSSL_CSTRING_push(stack_st_OPENSSL_CSTRING*, const(char)*, );
    alias sk_OPENSSL_CSTRING_freefunc = void function(char*);


    int request_logout(session*, );
    char* ctime_r(const(time_t)*, char*, );


    struct X509_POLICY_CACHE_st;
    alias X509_POLICY_CACHE = X509_POLICY_CACHE_st;
    int i2d_DHxparams(const(DH)*, ubyte**, );


    alias __key_t = int;






    int request_status(session*, const(char)*, uint*, uint*, uint*, uint*, );
    size_t OPENSSL_strlcpy(char*, const(char)*, size_t, );


    int EC_METHOD_get_field_type(const(EC_METHOD)*, );


    alias AUTHORITY_KEYID = AUTHORITY_KEYID_st;
    struct AUTHORITY_KEYID_st;






    size_t OPENSSL_strlcat(char*, const(char)*, size_t, );


    int DHparams_print_fp(FILE*, const(DH)*, );


    ulong strtouq(const(char)*, char**, int, );




    alias DIST_POINT = DIST_POINT_st;
    struct DIST_POINT_st;
    size_t OPENSSL_strnlen(const(char)*, size_t, );






    struct _IO_marker
    {
        _IO_marker* _next;
        _IO_FILE* _sbuf;
        int _pos;
    }


    enum _Anonymous_41
    {
        PTHREAD_INHERIT_SCHED = 0,
        PTHREAD_EXPLICIT_SCHED = 1,
    }
    enum PTHREAD_INHERIT_SCHED = _Anonymous_41.PTHREAD_INHERIT_SCHED;
    enum PTHREAD_EXPLICIT_SCHED = _Anonymous_41.PTHREAD_EXPLICIT_SCHED;
    alias __clockid_t = int;




    int request_select(session*, const(char)*, );
    int DHparams_print(BIO*, const(DH)*, );


    char* OPENSSL_buf2hexstr(const(ubyte)*, c_long, );






    int request_close(session*, );
    struct ISSUING_DIST_POINT_st;







    int SCT_set_version(SCT*, sct_version_t, );




    alias ISSUING_DIST_POINT = ISSUING_DIST_POINT_st;






    int lua_absindex(lua_State*, int, );


    int request_expunge(session*, );
    alias NAME_CONSTRAINTS = NAME_CONSTRAINTS_st;


    struct NAME_CONSTRAINTS_st;
    alias OPENSSL_BLOCK = void*;
    ubyte* OPENSSL_hexstr2buf(const(char)*, c_long*, );






    stack_st_OPENSSL_BLOCK* sk_OPENSSL_BLOCK_deep_copy(const(stack_st_OPENSSL_BLOCK)*, sk_OPENSSL_BLOCK_copyfunc, sk_OPENSSL_BLOCK_freefunc, );


    int sk_OPENSSL_BLOCK_insert(stack_st_OPENSSL_BLOCK*, void*, int, );
    void* sk_OPENSSL_BLOCK_shift(stack_st_OPENSSL_BLOCK*, );
    void sk_OPENSSL_BLOCK_pop_free(stack_st_OPENSSL_BLOCK*, sk_OPENSSL_BLOCK_freefunc, );
    void* sk_OPENSSL_BLOCK_pop(stack_st_OPENSSL_BLOCK*, );
    int sk_OPENSSL_BLOCK_unshift(stack_st_OPENSSL_BLOCK*, void*, );
    int sk_OPENSSL_BLOCK_push(stack_st_OPENSSL_BLOCK*, void*, );
    void* sk_OPENSSL_BLOCK_delete_ptr(stack_st_OPENSSL_BLOCK*, void*, );
    void* sk_OPENSSL_BLOCK_delete(stack_st_OPENSSL_BLOCK*, int, );
    void sk_OPENSSL_BLOCK_zero(stack_st_OPENSSL_BLOCK*, );
    void sk_OPENSSL_BLOCK_free(stack_st_OPENSSL_BLOCK*, );
    stack_st_OPENSSL_BLOCK* sk_OPENSSL_BLOCK_new_null();
    stack_st_OPENSSL_BLOCK* sk_OPENSSL_BLOCK_new(sk_OPENSSL_BLOCK_compfunc, );
    int sk_OPENSSL_BLOCK_num(const(stack_st_OPENSSL_BLOCK)*, );
    int sk_OPENSSL_BLOCK_find_ex(stack_st_OPENSSL_BLOCK*, void*, );
    alias sk_OPENSSL_BLOCK_copyfunc = void* function(const(void)*);
    alias __timer_t = void*;
    alias sk_OPENSSL_BLOCK_freefunc = void function(void*);
    alias sk_OPENSSL_BLOCK_compfunc = int function(const(const(void)*)*, const(const(void)*)*);
    struct stack_st_OPENSSL_BLOCK;
    void* sk_OPENSSL_BLOCK_set(stack_st_OPENSSL_BLOCK*, int, void*, );




    FILE* tmpfile();
    void* sk_OPENSSL_BLOCK_value(const(stack_st_OPENSSL_BLOCK)*, int, );
    int request_list(session*, const(char)*, const(char)*, char**, char**, );
    int lua_gettop(lua_State*, );


    int OPENSSL_hexchar2int(ubyte, );
    extern __gshared char*[2] __tzname;


    int sk_OPENSSL_BLOCK_find(stack_st_OPENSSL_BLOCK*, void*, );
    stack_st_OPENSSL_BLOCK* sk_OPENSSL_BLOCK_dup(const(stack_st_OPENSSL_BLOCK)*, );


    void sk_OPENSSL_BLOCK_sort(stack_st_OPENSSL_BLOCK*, );
    int sk_OPENSSL_BLOCK_is_sorted(const(stack_st_OPENSSL_BLOCK)*, );
    sk_OPENSSL_BLOCK_compfunc sk_OPENSSL_BLOCK_set_cmp_func(stack_st_OPENSSL_BLOCK*, sk_OPENSSL_BLOCK_compfunc, );






    void lua_settop(lua_State*, int, );
    alias CRYPTO_EX_DATA = crypto_ex_data_st;


    DH* DH_get_1024_160();


    extern __gshared int __daylight;
    const(BIGNUM)* BN_value_one();
    DH* DH_get_2048_224();
    void lua_pushvalue(lua_State*, int, );
    extern __gshared c_long __timezone;
    int request_lsub(session*, const(char)*, const(char)*, char**, char**, );
    char* BN_options();







    alias __blksize_t = c_long;
    DH* DH_get_2048_256();




    BN_CTX* BN_CTX_new();
    DH* DSA_dup_DH(const(DSA)*, );


    alias OCSP_REQ_CTX = ocsp_req_ctx_st;


    ct_log_entry_type_t SCT_get_log_entry_type(const(SCT)*, );


    struct ocsp_req_ctx_st;


    void lua_rotate(lua_State*, int, int, );




    c_ulong OpenSSL_version_num();
    alias ASN1_ENCODING = ASN1_ENCODING_st;
    struct ASN1_ENCODING_st
    {
        ubyte* enc;
        c_long len;
        int modified;
    }
    void lua_copy(lua_State*, int, int, );
    alias OCSP_RESPONSE = ocsp_response_st;
    struct ocsp_response_st;
    long strtoll(const(char)*, char**, int, );







    BN_CTX* BN_CTX_secure_new();
    int request_search(session*, const(char)*, const(char)*, char**, );
    const(char)* OpenSSL_version(int, );


    void BN_CTX_free(BN_CTX*, );
    struct ocsp_responder_id_st;






    alias OCSP_RESPID = ocsp_responder_id_st;




    int lua_checkstack(lua_State*, int, );
    void BN_CTX_start(BN_CTX*, );
    int request_fetchfast(session*, const(char)*, char**, char**, char**, );
    int EC_GROUP_set_generator(EC_GROUP*, const(EC_POINT)*, const(BIGNUM)*, const(BIGNUM)*, );
    int DH_KDF_X9_42(ubyte*, size_t, const(ubyte)*, size_t, ASN1_OBJECT*, const(ubyte)*, size_t, const(EVP_MD)*, );


    extern __gshared char*[2] tzname;


    struct sct_st;
    alias SCT = sct_st;


    enum _Anonymous_42
    {
        PTHREAD_SCOPE_SYSTEM = 0,
        PTHREAD_SCOPE_PROCESS = 1,
    }
    enum PTHREAD_SCOPE_SYSTEM = _Anonymous_42.PTHREAD_SCOPE_SYSTEM;
    enum PTHREAD_SCOPE_PROCESS = _Anonymous_42.PTHREAD_SCOPE_PROCESS;




    void lua_xmove(lua_State*, lua_State*, int, );






    BIGNUM* BN_CTX_get(BN_CTX*, );




    alias __blkcnt_t = c_long;






    int request_fetchflags(session*, const(char)*, char**, );
    void BN_CTX_end(BN_CTX*, );
    struct sct_ctx_st;
    alias SCT_CTX = sct_ctx_st;
    ulong strtoull(const(char)*, char**, int, );


    int BN_rand(BIGNUM*, int, int, int, );


    alias __blkcnt64_t = c_long;
    alias CTLOG = ctlog_st;
    struct ctlog_st;
    int SCT_set_log_entry_type(SCT*, ct_log_entry_type_t, );
    int request_fetchdate(session*, const(char)*, char**, );






    alias CTLOG_STORE = ctlog_store_st;
    struct ctlog_store_st;






    int request_fetchsize(session*, const(char)*, char**, );


    int BN_pseudo_rand(BIGNUM*, int, int, int, );




    void tzset();
    int request_fetchstructure(session*, const(char)*, char**, );
    EVP_CIPHER* EVP_CIPHER_meth_new(int, int, int, );


    int BN_rand_range(BIGNUM*, const(BIGNUM)*, );
    alias CT_POLICY_EVAL_CTX = ct_policy_eval_ctx_st;
    struct ct_policy_eval_ctx_st;




    int BN_pseudo_rand_range(BIGNUM*, const(BIGNUM)*, );


    alias __fsblkcnt_t = c_ulong;
    EVP_CIPHER* EVP_CIPHER_meth_dup(const(EVP_CIPHER)*, );
    int request_fetchheader(session*, const(char)*, char**, size_t*, );
    int OPENSSL_issetugid();


    const(EC_POINT)* EC_GROUP_get0_generator(const(EC_GROUP)*, );




    RSA* RSA_new();
    int BN_num_bits(const(BIGNUM)*, );
    void DH_get0_pqg(const(DH)*, const(BIGNUM)**, const(BIGNUM)**, const(BIGNUM)**, );
    void EVP_CIPHER_meth_free(EVP_CIPHER*, );
    alias __fsblkcnt64_t = c_ulong;


    int BN_num_bits_word(c_ulong, );
    RSA* RSA_new_method(ENGINE*, );
    int request_fetchtext(session*, const(char)*, char**, size_t*, );
    void DSA_get0_pqg(const(DSA)*, const(BIGNUM)**, const(BIGNUM)**, const(BIGNUM)**, );
    int lua_isnumber(lua_State*, int, );
    char* tmpnam(char*, );
    int EVP_CIPHER_meth_set_iv_length(EVP_CIPHER*, int, );
    extern __gshared int daylight;
    alias CRYPTO_EX_new = void function(void*, void*, CRYPTO_EX_DATA*, int, c_long, void*);
    int RSA_bits(const(RSA)*, );
    int lua_isstring(lua_State*, int, );
    alias ossl_intmax_t = c_long;


    int BN_security_bits(int, int, );


    int DH_set0_pqg(DH*, BIGNUM*, BIGNUM*, BIGNUM*, );



    BIGNUM* BN_new();
    size_t SCT_get0_log_id(const(SCT)*, ubyte**, );
    int RSA_size(const(RSA)*, );
    alias BIO_ADDR = bio_addr_st;
    alias __fsfilcnt_t = c_ulong;


    int EVP_CIPHER_meth_set_flags(EVP_CIPHER*, c_ulong, );
    extern __gshared c_long timezone;


    void DH_get0_key(const(DH)*, const(BIGNUM)**, const(BIGNUM)**, );
    int request_fetchfields(session*, const(char)*, const(char)*, char**, size_t*, );
    alias ossl_uintmax_t = c_ulong;




    int DSA_set0_pqg(DSA*, BIGNUM*, BIGNUM*, BIGNUM*, );
    union bio_addr_st;
    int lua_iscfunction(lua_State*, int, );


    int EVP_CIPHER_meth_set_impl_ctx_size(EVP_CIPHER*, int, );
    enum _Anonymous_43
    {
        PTHREAD_PROCESS_PRIVATE = 0,
        PTHREAD_PROCESS_SHARED = 1,
    }
    enum PTHREAD_PROCESS_PRIVATE = _Anonymous_43.PTHREAD_PROCESS_PRIVATE;
    enum PTHREAD_PROCESS_SHARED = _Anonymous_43.PTHREAD_PROCESS_SHARED;
    alias __fsfilcnt64_t = c_ulong;
    int RSA_security_bits(const(RSA)*, );
    enum __codecvt_result
    {
        __codecvt_ok = 0,
        __codecvt_partial = 1,
        __codecvt_error = 2,
        __codecvt_noconv = 3,
    }
    enum __codecvt_ok = __codecvt_result.__codecvt_ok;
    enum __codecvt_partial = __codecvt_result.__codecvt_partial;
    enum __codecvt_error = __codecvt_result.__codecvt_error;
    enum __codecvt_noconv = __codecvt_result.__codecvt_noconv;


    void DSA_get0_key(const(DSA)*, const(BIGNUM)**, const(BIGNUM)**, );
    alias BIO_ADDRINFO = bio_addrinfo_st;
    struct bio_addrinfo_st;
    int lua_isinteger(lua_State*, int, );
    BIGNUM* BN_secure_new();
    alias CRYPTO_EX_free = void function(void*, void*, CRYPTO_EX_DATA*, int, c_long, void*);


    int DH_set0_key(DH*, BIGNUM*, BIGNUM*, );
    int EVP_CIPHER_meth_set_init(EVP_CIPHER*, int function(evp_cipher_ctx_st*, const(ubyte)*, const(ubyte)*, int), );



    int request_fetchpart(session*, const(char)*, const(char)*, char**, size_t*, );




    int lua_isuserdata(lua_State*, int, );


    void BN_clear_free(BIGNUM*, );
    alias CRYPTO_EX_dup = int function(CRYPTO_EX_DATA*, const(CRYPTO_EX_DATA)*, void*, int, c_long, void*);
    BIGNUM* BN_copy(BIGNUM*, const(BIGNUM)*, );
    int lua_type(lua_State*, int, );




    BN_MONT_CTX* EC_GROUP_get_mont_data(const(EC_GROUP)*, );
    char* tmpnam_r(char*, );


    int DSA_set0_key(DSA*, BIGNUM*, BIGNUM*, );
    int RSA_set0_key(RSA*, BIGNUM*, BIGNUM*, BIGNUM*, );
    void DH_clear_flags(DH*, int, );
    int BIO_get_new_index();
    alias u_int8_t = ubyte;
    void DSA_clear_flags(DSA*, int, );
    int request_store(session*, const(char)*, const(char)*, const(char)*, );
    void BIO_set_flags(BIO*, int, );
    int RSA_set0_factors(RSA*, BIGNUM*, BIGNUM*, );






    alias u_int16_t = ushort;



    alias __fsword_t = c_long;
    const(char)* lua_typename(lua_State*, int, );
    void BN_swap(BIGNUM*, BIGNUM*, );


    int DH_test_flags(const(DH)*, int, );




    int RSA_set0_crt_params(RSA*, BIGNUM*, BIGNUM*, BIGNUM*, );
    alias u_int32_t = uint;




    void DH_set_flags(DH*, int, );





    int BIO_test_flags(const(BIO)*, int, );


    int CRYPTO_get_ex_new_index(int, c_long, void*, CRYPTO_EX_new*, CRYPTO_EX_dup*, CRYPTO_EX_free*, );


    int DSA_test_flags(const(DSA)*, int, );
    BIGNUM* BN_bin2bn(const(ubyte)*, int, BIGNUM*, );


    alias __ssize_t = c_long;
    lua_Number lua_tonumberx(lua_State*, int, int*, );


    void RSA_get0_key(const(RSA)*, const(BIGNUM)**, const(BIGNUM)**, const(BIGNUM)**, );


    alias u_int64_t = c_ulong;
    ENGINE* DH_get0_engine(DH*, );





    int BN_bn2bin(const(BIGNUM)*, ubyte*, );







    void BIO_clear_flags(BIO*, int, );
    int request_copy(session*, const(char)*, const(char)*, );


    void DSA_set_flags(DSA*, int, );
    int stime(const(time_t)*, );


    int BN_bn2binpad(const(BIGNUM)*, ubyte*, int, );


    int request_append(session*, const(char)*, const(char)*, size_t, const(char)*, const(char)*, );
    c_long DH_get_length(const(DH)*, );




    ENGINE* DSA_get0_engine(DSA*, );
    int EVP_CIPHER_meth_set_do_cipher(EVP_CIPHER*, int function(evp_cipher_ctx_st*, ubyte*, const(ubyte)*, c_ulong), );
    int SCT_set0_log_id(SCT*, ubyte*, size_t, );
    lua_Integer lua_tointegerx(lua_State*, int, int*, );
    void RSA_get0_factors(const(RSA)*, const(BIGNUM)**, const(BIGNUM)**, );
    BIGNUM* BN_lebin2bn(const(ubyte)*, int, BIGNUM*, );
    int DH_set_length(DH*, c_long, );
    int lua_toboolean(lua_State*, int, );
    alias register_t = c_long;



    int request_create(session*, const(char)*, );


    DSA_METHOD* DSA_meth_new(const(char)*, int, );
    void RSA_get0_crt_params(const(RSA)*, const(BIGNUM)**, const(BIGNUM)**, const(BIGNUM)**, );





    int BN_bn2lebinpad(const(BIGNUM)*, ubyte*, int, );
    int CRYPTO_free_ex_index(int, int, );
    const(char)* lua_tolstring(lua_State*, int, size_t*, );
    alias __syscall_slong_t = c_long;
    BIGNUM* BN_mpi2bn(const(ubyte)*, int, BIGNUM*, );
    DH_METHOD* DH_meth_new(const(char)*, int, );




    int request_delete(session*, const(char)*, );
    void DSA_meth_free(DSA_METHOD*, );


    size_t lua_rawlen(lua_State*, int, );
    alias ASN1_STRING_TABLE = asn1_string_table_st;
    struct asn1_string_table_st
    {
        int nid;
        c_long minsize;
        c_long maxsize;
        c_ulong mask;
        c_ulong flags;
    }


    alias __syscall_ulong_t = c_ulong;
    int request_rename(session*, const(char)*, const(char)*, );



    int EC_GROUP_get_order(const(EC_GROUP)*, BIGNUM*, BN_CTX*, );




    lua_CFunction lua_tocfunction(lua_State*, int, );
    DSA_METHOD* DSA_meth_dup(const(DSA_METHOD)*, );




    void DH_meth_free(DH_METHOD*, );
    int BN_bn2mpi(const(BIGNUM)*, ubyte*, );




    const(char)* DSA_meth_get0_name(const(DSA_METHOD)*, );


    int request_subscribe(session*, const(char)*, );
    int BN_sub(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );







    int EVP_CIPHER_meth_set_cleanup(EVP_CIPHER*, int function(evp_cipher_ctx_st*), );
    void* lua_touserdata(lua_State*, int, );


    DH_METHOD* DH_meth_dup(const(DH_METHOD)*, );
    void RSA_clear_flags(RSA*, int, );







    int DSA_meth_set1_name(DSA_METHOD*, const(char)*, );
    int request_unsubscribe(session*, const(char)*, );





    int RSA_test_flags(const(RSA)*, int, );
    const(char)* DH_meth_get0_name(const(DH_METHOD)*, );
    int BN_usub(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );
    lua_State* lua_tothread(lua_State*, int, );
    int SCT_set1_log_id(SCT*, const(ubyte)*, size_t, );




    void RSA_set_flags(RSA*, int, );




    int BN_uadd(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );
    int DH_meth_set1_name(DH_METHOD*, const(char)*, );
    int EVP_CIPHER_meth_set_set_asn1_params(EVP_CIPHER*, int function(evp_cipher_ctx_st*, asn1_type_st*), );
    int request_idle(session*, char**, );


    int DSA_meth_get_flags(DSA_METHOD*, );
    const(void)* lua_topointer(lua_State*, int, );




    int BN_add(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );
    int DH_meth_get_flags(DH_METHOD*, );
    int CRYPTO_new_ex_data(int, void*, CRYPTO_EX_DATA*, );
    char* tempnam(const(char)*, const(char)*, );
    alias __loff_t = c_long;
    int DSA_meth_set_flags(DSA_METHOD*, int, );




    ENGINE* RSA_get0_engine(const(RSA)*, );




    int CRYPTO_dup_ex_data(int, CRYPTO_EX_DATA*, const(CRYPTO_EX_DATA)*, );
    alias __qaddr_t = c_long*;
    struct _pthread_cleanup_buffer
    {
        void function(void*) __routine;
        void* __arg;
        int __canceltype;
        _pthread_cleanup_buffer* __prev;
    }


    void* DSA_meth_get0_app_data(const(DSA_METHOD)*, );
    int DH_meth_set_flags(DH_METHOD*, int, );
    int BN_mul(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    alias __caddr_t = char*;
    int BN_sqr(BIGNUM*, const(BIGNUM)*, BN_CTX*, );




    void* DH_meth_get0_app_data(const(DH_METHOD)*, );
    const(BIGNUM)* EC_GROUP_get0_order(const(EC_GROUP)*, );
    int EVP_CIPHER_meth_set_get_asn1_params(EVP_CIPHER*, int function(evp_cipher_ctx_st*, asn1_type_st*), );


    int response_generic(session*, int, );


    int DSA_meth_set0_app_data(DSA_METHOD*, void*, );


    int sk_ASN1_STRING_TABLE_is_sorted(const(stack_st_ASN1_STRING_TABLE)*, );
    void sk_ASN1_STRING_TABLE_zero(stack_st_ASN1_STRING_TABLE*, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_delete(stack_st_ASN1_STRING_TABLE*, int, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_delete_ptr(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, );
    int sk_ASN1_STRING_TABLE_push(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, );
    void sk_ASN1_STRING_TABLE_sort(stack_st_ASN1_STRING_TABLE*, );
    alias sk_ASN1_STRING_TABLE_freefunc = void function(ASN1_STRING_TABLE*);
    alias sk_ASN1_STRING_TABLE_copyfunc = asn1_string_table_st* function(const(ASN1_STRING_TABLE)*);
    int sk_ASN1_STRING_TABLE_num(const(stack_st_ASN1_STRING_TABLE)*, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_value(const(stack_st_ASN1_STRING_TABLE)*, int, );
    stack_st_ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_new(sk_ASN1_STRING_TABLE_compfunc, );
    stack_st_ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_new_null();
    void sk_ASN1_STRING_TABLE_free(stack_st_ASN1_STRING_TABLE*, );
    DSA_SIG_st* function(const(ubyte)*, int, dsa_st*) DSA_meth_get_sign(const(ubyte)*, int, DSA*, const(DSA_METHOD)*, );




    stack_st_ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_dup(const(stack_st_ASN1_STRING_TABLE)*, );
    int sk_ASN1_STRING_TABLE_find_ex(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, );


    int sk_ASN1_STRING_TABLE_find(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_set(stack_st_ASN1_STRING_TABLE*, int, ASN1_STRING_TABLE*, );
    int sk_ASN1_STRING_TABLE_insert(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, int, );
    int response_continuation(session*, int, );
    RSA* RSA_generate_key(int, c_ulong, void function(int, int, void*), void*, );
    stack_st_ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_deep_copy(const(stack_st_ASN1_STRING_TABLE)*, sk_ASN1_STRING_TABLE_copyfunc, sk_ASN1_STRING_TABLE_freefunc, );
    int sk_ASN1_STRING_TABLE_unshift(stack_st_ASN1_STRING_TABLE*, ASN1_STRING_TABLE*, );
    sk_ASN1_STRING_TABLE_compfunc sk_ASN1_STRING_TABLE_set_cmp_func(stack_st_ASN1_STRING_TABLE*, sk_ASN1_STRING_TABLE_compfunc, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_pop(stack_st_ASN1_STRING_TABLE*, );
    void sk_ASN1_STRING_TABLE_pop_free(stack_st_ASN1_STRING_TABLE*, sk_ASN1_STRING_TABLE_freefunc, );
    ASN1_STRING_TABLE* sk_ASN1_STRING_TABLE_shift(stack_st_ASN1_STRING_TABLE*, );



    struct stack_st_ASN1_STRING_TABLE;
    alias sk_ASN1_STRING_TABLE_compfunc = int function(const(const(ASN1_STRING_TABLE)*)*, const(const(ASN1_STRING_TABLE)*)*);


    int DH_meth_set0_app_data(DH_METHOD*, void*, );




    int response_greeting(session*, );
    int function(dh_st*) DH_meth_get_generate_key(DH*, const(DH_METHOD)*, );
    void CRYPTO_free_ex_data(int, void*, CRYPTO_EX_DATA*, );


    int DSA_meth_set_sign(DSA_METHOD*, DSA_SIG_st* function(const(ubyte)*, int, dsa_st*), );


    int response_capability(session*, int, );


    int DH_meth_set_generate_key(DH_METHOD*, int function(dh_st*), );
    int EVP_CIPHER_meth_set_ctrl(EVP_CIPHER*, int function(evp_cipher_ctx_st*, int, int, void*), );


    alias __intptr_t = c_long;
    uint64_t SCT_get_timestamp(const(SCT)*, );
    time_t timegm(tm*, );


    int response_authenticate(session*, int, ubyte**, );
    int function(ubyte*, const(bignum_st)*, dh_st*) DH_meth_get_compute_key(ubyte*, const(BIGNUM)*, DH*, const(DH_METHOD)*, );




    int response_namespace(session*, int, );
    struct lhash_st_OPENSSL_STRING;
    void lh_OPENSSL_STRING_stats_bio(const(lhash_st_OPENSSL_STRING)*, BIO*, );
    c_ulong lh_OPENSSL_STRING_num_items(lhash_st_OPENSSL_STRING*, );
    c_ulong lh_OPENSSL_STRING_get_down_load(lhash_st_OPENSSL_STRING*, );
    int lh_OPENSSL_STRING_error(lhash_st_OPENSSL_STRING*, );
    OPENSSL_STRING* lh_OPENSSL_STRING_retrieve(lhash_st_OPENSSL_STRING*, const(OPENSSL_STRING)*, );
    OPENSSL_STRING* lh_OPENSSL_STRING_insert(lhash_st_OPENSSL_STRING*, OPENSSL_STRING*, );
    lhash_st_OPENSSL_STRING* lh_OPENSSL_STRING_new(c_ulong function(char**), int function(char**, char**), );
    void lh_OPENSSL_STRING_set_down_load(lhash_st_OPENSSL_STRING*, c_ulong, );
    void lh_OPENSSL_STRING_node_usage_stats_bio(const(lhash_st_OPENSSL_STRING)*, BIO*, );
    void lh_OPENSSL_STRING_free(lhash_st_OPENSSL_STRING*, );
    void lh_OPENSSL_STRING_node_stats_bio(const(lhash_st_OPENSSL_STRING)*, BIO*, );
    void lh_OPENSSL_STRING_doall(lhash_st_OPENSSL_STRING*, void function(char**), );
    OPENSSL_STRING* lh_OPENSSL_STRING_delete(lhash_st_OPENSSL_STRING*, const(OPENSSL_STRING)*, );


    int function(dsa_st*, bignum_ctx*, bignum_st**, bignum_st**) DSA_meth_get_sign_setup(DSA*, BN_CTX*, BIGNUM**, BIGNUM**, const(DSA_METHOD)*, );


    void BN_set_negative(BIGNUM*, int, );
    int DH_meth_set_compute_key(DH_METHOD*, int function(ubyte*, const(bignum_st)*, dh_st*), );
    int response_status(session*, int, uint*, uint*, uint*, uint*, );
    int RSA_generate_key_ex(RSA*, int, BIGNUM*, BN_GENCB*, );
    int EC_GROUP_order_bits(const(EC_GROUP)*, );
    alias __socklen_t = uint;
    int function(evp_cipher_ctx_st*, const(ubyte)*, const(ubyte)*, int) EVP_CIPHER_meth_get_init(EVP_CIPHER_CTX*, const(ubyte)*, const(ubyte)*, int, const(EVP_CIPHER)*, );
    int fclose(FILE*, );
    time_t timelocal(tm*, );
    int DSA_meth_set_sign_setup(DSA_METHOD*, int function(dsa_st*, bignum_ctx*, bignum_st**, bignum_st**), );


    int function(const(dh_st)*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*) DH_meth_get_bn_mod_exp(const(DH)*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, const(DH_METHOD)*, );


    int CRYPTO_set_ex_data(CRYPTO_EX_DATA*, int, void*, );
    void SCT_set_timestamp(SCT*, uint64_t, );


    int response_examine(session*, int, uint*, uint*, );
    int RSA_X931_derive_ex(RSA*, BIGNUM*, BIGNUM*, BIGNUM*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_GENCB*, );
    enum _Anonymous_44
    {
        PTHREAD_CANCEL_ENABLE = 0,
        PTHREAD_CANCEL_DISABLE = 1,
    }
    enum PTHREAD_CANCEL_ENABLE = _Anonymous_44.PTHREAD_CANCEL_ENABLE;
    enum PTHREAD_CANCEL_DISABLE = _Anonymous_44.PTHREAD_CANCEL_DISABLE;
    int function(const(ubyte)*, int, DSA_SIG_st*, dsa_st*) DSA_meth_get_verify(const(ubyte)*, int, DSA_SIG*, DSA*, const(DSA_METHOD)*, );
    void* CRYPTO_get_ex_data(const(CRYPTO_EX_DATA)*, int, );
    int dysize(int, );
    int response_select(session*, int, );


    int BN_is_negative(const(BIGNUM)*, );
    int DSA_meth_set_verify(DSA_METHOD*, int function(const(ubyte)*, int, DSA_SIG_st*, dsa_st*), );
    PKCS7_ISSUER_AND_SERIAL* d2i_PKCS7_ISSUER_AND_SERIAL(PKCS7_ISSUER_AND_SERIAL**, const(ubyte)**, c_long, );


    PKCS7_ISSUER_AND_SERIAL* PKCS7_ISSUER_AND_SERIAL_new();
    alias __sig_atomic_t = int;


    void PKCS7_ISSUER_AND_SERIAL_free(PKCS7_ISSUER_AND_SERIAL*, );
    int i2d_PKCS7_ISSUER_AND_SERIAL(PKCS7_ISSUER_AND_SERIAL*, ubyte**, );


    int response_list(session*, int, char**, char**, );


    int DH_meth_set_bn_mod_exp(DH_METHOD*, int function(const(dh_st)*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*), );




    int function(evp_cipher_ctx_st*, ubyte*, const(ubyte)*, c_ulong) EVP_CIPHER_meth_get_do_cipher(EVP_CIPHER_CTX*, ubyte*, const(ubyte)*, size_t, const(EVP_CIPHER)*, );


    int response_search(session*, int, char**, );


    int BN_div(BIGNUM*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int fflush(FILE*, );
    int RSA_X931_generate_key_ex(RSA*, int, const(BIGNUM)*, BN_GENCB*, );
    int function(dsa_st*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*) DSA_meth_get_mod_exp(DSA*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, const(DSA_METHOD)*, );
    int PKCS7_ISSUER_AND_SERIAL_digest(PKCS7_ISSUER_AND_SERIAL*, const(EVP_MD)*, ubyte*, uint*, );






    int response_fetchfast(session*, int, char**, char**, char**, );




    int EC_GROUP_get_cofactor(const(EC_GROUP)*, BIGNUM*, BN_CTX*, );
    int function(dh_st*) DH_meth_get_init(DH*, const(DH_METHOD)*, );
    int DH_meth_set_init(DH_METHOD*, int function(dh_st*), );


    int function(evp_cipher_ctx_st*) EVP_CIPHER_meth_get_cleanup(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, );


    int RSA_check_key(const(RSA)*, );
    enum _Anonymous_45
    {
        PTHREAD_CANCEL_DEFERRED = 0,
        PTHREAD_CANCEL_ASYNCHRONOUS = 1,
    }
    enum PTHREAD_CANCEL_DEFERRED = _Anonymous_45.PTHREAD_CANCEL_DEFERRED;
    enum PTHREAD_CANCEL_ASYNCHRONOUS = _Anonymous_45.PTHREAD_CANCEL_ASYNCHRONOUS;
    int BN_nnmod(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    struct lhash_st_OPENSSL_CSTRING;
    void lh_OPENSSL_CSTRING_doall(lhash_st_OPENSSL_CSTRING*, void function(const(char)**), );
    void lh_OPENSSL_CSTRING_set_down_load(lhash_st_OPENSSL_CSTRING*, c_ulong, );
    lhash_st_OPENSSL_CSTRING* lh_OPENSSL_CSTRING_new(c_ulong function(const(const(char)*)*), int function(const(const(char)*)*, const(const(char)*)*), );


    void lh_OPENSSL_CSTRING_free(lhash_st_OPENSSL_CSTRING*, );
    c_ulong lh_OPENSSL_CSTRING_get_down_load(lhash_st_OPENSSL_CSTRING*, );
    OPENSSL_CSTRING* lh_OPENSSL_CSTRING_delete(lhash_st_OPENSSL_CSTRING*, const(OPENSSL_CSTRING)*, );
    void lh_OPENSSL_CSTRING_stats_bio(const(lhash_st_OPENSSL_CSTRING)*, BIO*, );
    OPENSSL_CSTRING* lh_OPENSSL_CSTRING_retrieve(lhash_st_OPENSSL_CSTRING*, const(OPENSSL_CSTRING)*, );
    OPENSSL_CSTRING* lh_OPENSSL_CSTRING_insert(lhash_st_OPENSSL_CSTRING*, OPENSSL_CSTRING*, );
    int response_fetchflags(session*, int, char**, );
    void lh_OPENSSL_CSTRING_node_stats_bio(const(lhash_st_OPENSSL_CSTRING)*, BIO*, );
    void lh_OPENSSL_CSTRING_node_usage_stats_bio(const(lhash_st_OPENSSL_CSTRING)*, BIO*, );
    c_ulong lh_OPENSSL_CSTRING_num_items(lhash_st_OPENSSL_CSTRING*, );
    int SCT_get_signature_nid(const(SCT)*, );
    int lh_OPENSSL_CSTRING_error(lhash_st_OPENSSL_CSTRING*, );






    int DSA_meth_set_mod_exp(DSA_METHOD*, int function(dsa_st*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*), );
    int BN_mod_add(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int function(evp_cipher_ctx_st*, asn1_type_st*) EVP_CIPHER_meth_get_set_asn1_params(EVP_CIPHER_CTX*, ASN1_TYPE*, const(EVP_CIPHER)*, );
    int RSA_check_key_ex(const(RSA)*, BN_GENCB*, );


    int response_fetchdate(session*, int, char**, );
    int function(dh_st*) DH_meth_get_finish(DH*, const(DH_METHOD)*, );
    struct ASN1_TEMPLATE_st;


    alias ASN1_TEMPLATE = ASN1_TEMPLATE_st;
    int response_fetchsize(session*, int, char**, );


    PKCS7* d2i_PKCS7_fp(FILE*, PKCS7**, );




    int DH_meth_set_finish(DH_METHOD*, int function(dh_st*), );
    int function(dh_st*, int, int, bn_gencb_st*) DH_meth_get_generate_params(DH*, int, int, BN_GENCB*, const(DH_METHOD)*, );
    struct ASN1_TLC_st;





    alias ASN1_TLC = ASN1_TLC_st;
    int function(evp_cipher_ctx_st*, asn1_type_st*) EVP_CIPHER_meth_get_get_asn1_params(EVP_CIPHER_CTX*, ASN1_TYPE*, const(EVP_CIPHER)*, );




    int response_fetchstructure(session*, int, char**, );




    int BN_mod_add_quick(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, );
    int i2d_PKCS7_fp(FILE*, PKCS7*, );
    int RSA_public_encrypt(int, const(ubyte)*, ubyte*, RSA*, int, );
    int response_fetchbody(session*, int, char**, size_t*, );


    void lua_arith(lua_State*, int, );


    int nanosleep(const(timespec)*, timespec*, );
    int response_idle(session*, int, char**, );


    PKCS7* PKCS7_dup(PKCS7*, );
    alias blksize_t = c_long;


    int function(dsa_st*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*) DSA_meth_get_bn_mod_exp(DSA*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, const(DSA_METHOD)*, );
    struct ASN1_VALUE_st;
    alias ASN1_VALUE = ASN1_VALUE_st;


    int DH_meth_set_generate_params(DH_METHOD*, int function(dh_st*, int, int, bn_gencb_st*), );
    int function(evp_cipher_ctx_st*, int, int, void*) EVP_CIPHER_meth_get_ctrl(EVP_CIPHER_CTX*, int, int, void*, const(EVP_CIPHER)*, );
    int RSA_private_encrypt(int, const(ubyte)*, ubyte*, RSA*, int, );


    int BN_mod_sub(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    const(BIGNUM)* EC_GROUP_get0_cofactor(const(EC_GROUP)*, );
    PKCS7* d2i_PKCS7_bio(BIO*, PKCS7**, );
    int fflush_unlocked(FILE*, );




    int BN_mod_sub_quick(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, );
    int i2d_PKCS7_bio(BIO*, PKCS7*, );
    int RSA_public_decrypt(int, const(ubyte)*, ubyte*, RSA*, int, );
    void catch_signals();
    int i2d_PKCS7_bio_stream(BIO*, PKCS7*, BIO*, int, );
    int SCT_set_signature_nid(SCT*, int, );
    int DSA_meth_set_bn_mod_exp(DSA_METHOD*, int function(dsa_st*, bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*), );
    int PEM_write_bio_PKCS7_stream(BIO*, PKCS7*, BIO*, int, );
    alias size_t = c_ulong;


    int BN_mod_mul(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );






    void release_signals();
    int clock_getres(clockid_t, timespec*, );






    int RSA_private_decrypt(int, const(ubyte)*, ubyte*, RSA*, int, );
    int lua_rawequal(lua_State*, int, int, );
    void ignore_user_signals();


    int BN_mod_sqr(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int function(dsa_st*) DSA_meth_get_init(DSA*, const(DSA_METHOD)*, );
    void RSA_free(RSA*, );




    int lua_compare(lua_State*, int, int, int, );




    void catch_user_signals();





    int i2d_PKCS7_SIGNER_INFO(PKCS7_SIGNER_INFO*, ubyte**, );
    void PKCS7_SIGNER_INFO_free(PKCS7_SIGNER_INFO*, );
    PKCS7_SIGNER_INFO* d2i_PKCS7_SIGNER_INFO(PKCS7_SIGNER_INFO**, const(ubyte)**, c_long, );
    PKCS7_SIGNER_INFO* PKCS7_SIGNER_INFO_new();






    int i2d_PKCS7_RECIP_INFO(PKCS7_RECIP_INFO*, ubyte**, );
    void PKCS7_RECIP_INFO_free(PKCS7_RECIP_INFO*, );


    PKCS7_RECIP_INFO* d2i_PKCS7_RECIP_INFO(PKCS7_RECIP_INFO**, const(ubyte)**, c_long, );
    PKCS7_RECIP_INFO* PKCS7_RECIP_INFO_new();
    int clock_gettime(clockid_t, timespec*, );
    int BN_mod_lshift1(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );


    int DSA_meth_set_init(DSA_METHOD*, int function(dsa_st*), );




    alias blkcnt_t = c_long;
    void EC_GROUP_set_curve_name(EC_GROUP*, int, );


    void PKCS7_SIGNED_free(PKCS7_SIGNED*, );
    int i2d_PKCS7_SIGNED(PKCS7_SIGNED*, ubyte**, );


    int function(dsa_st*) DSA_meth_get_finish(DSA*, const(DSA_METHOD)*, );
    int RSA_up_ref(RSA*, );
    PKCS7_SIGNED* PKCS7_SIGNED_new();
    PKCS7_SIGNED* d2i_PKCS7_SIGNED(PKCS7_SIGNED**, const(ubyte)**, c_long, );






    int BN_mod_lshift1_quick(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );


    PKCS7_ENC_CONTENT* PKCS7_ENC_CONTENT_new();
    int i2d_PKCS7_ENC_CONTENT(PKCS7_ENC_CONTENT*, ubyte**, );
    PKCS7_ENC_CONTENT* d2i_PKCS7_ENC_CONTENT(PKCS7_ENC_CONTENT**, const(ubyte)**, c_long, );
    void PKCS7_ENC_CONTENT_free(PKCS7_ENC_CONTENT*, );
    int BN_mod_lshift(BIGNUM*, const(BIGNUM)*, int, const(BIGNUM)*, BN_CTX*, );
    int DSA_meth_set_finish(DSA_METHOD*, int function(dsa_st*), );
    int open_connection(session*, );
    X509_REVOKED* sk_X509_REVOKED_value(const(stack_st_X509_REVOKED)*, int, );
    int sk_X509_REVOKED_num(const(stack_st_X509_REVOKED)*, );
    alias sk_X509_REVOKED_copyfunc = x509_revoked_st* function(const(X509_REVOKED)*);
    int sk_X509_REVOKED_unshift(stack_st_X509_REVOKED*, X509_REVOKED*, );
    alias sk_X509_REVOKED_freefunc = void function(X509_REVOKED*);
    struct stack_st_X509_REVOKED;
    int clock_settime(clockid_t, const(timespec)*, );


    PKCS7_ENVELOPE* d2i_PKCS7_ENVELOPE(PKCS7_ENVELOPE**, const(ubyte)**, c_long, );
    PKCS7_ENVELOPE* PKCS7_ENVELOPE_new();


    int i2d_PKCS7_ENVELOPE(PKCS7_ENVELOPE*, ubyte**, );
    void PKCS7_ENVELOPE_free(PKCS7_ENVELOPE*, );
    int close_connection(session*, );
    int function(dsa_st*, int, const(ubyte)*, int, int*, c_ulong*, bn_gencb_st*) DSA_meth_get_paramgen(DSA*, int, const(ubyte)*, int, int*, c_ulong*, BN_GENCB*, const(DSA_METHOD)*, );


    stack_st_X509_REVOKED* sk_X509_REVOKED_new(sk_X509_REVOKED_compfunc, );
    size_t SCT_get0_extensions(const(SCT)*, ubyte**, );






    int RSA_flags(const(RSA)*, );
    const(char)* SSL_get_servername(const(SSL)*, const(int), );


    int sk_X509_REVOKED_is_sorted(const(stack_st_X509_REVOKED)*, );
    void sk_X509_REVOKED_sort(stack_st_X509_REVOKED*, );
    int sk_X509_REVOKED_find_ex(stack_st_X509_REVOKED*, X509_REVOKED*, );
    int sk_X509_REVOKED_find(stack_st_X509_REVOKED*, X509_REVOKED*, );
    X509_REVOKED* sk_X509_REVOKED_set(stack_st_X509_REVOKED*, int, X509_REVOKED*, );
    int sk_X509_REVOKED_insert(stack_st_X509_REVOKED*, X509_REVOKED*, int, );
    void sk_X509_REVOKED_pop_free(stack_st_X509_REVOKED*, sk_X509_REVOKED_freefunc, );
    X509_REVOKED* sk_X509_REVOKED_shift(stack_st_X509_REVOKED*, );
    sk_X509_REVOKED_compfunc sk_X509_REVOKED_set_cmp_func(stack_st_X509_REVOKED*, sk_X509_REVOKED_compfunc, );
    X509_REVOKED* sk_X509_REVOKED_delete_ptr(stack_st_X509_REVOKED*, X509_REVOKED*, );
    X509_REVOKED* sk_X509_REVOKED_delete(stack_st_X509_REVOKED*, int, );
    void sk_X509_REVOKED_zero(stack_st_X509_REVOKED*, );
    void sk_X509_REVOKED_free(stack_st_X509_REVOKED*, );
    stack_st_X509_REVOKED* sk_X509_REVOKED_new_null();
    alias sk_X509_REVOKED_compfunc = int function(const(const(X509_REVOKED)*)*, const(const(X509_REVOKED)*)*);
    X509_REVOKED* sk_X509_REVOKED_pop(stack_st_X509_REVOKED*, );
    stack_st_X509_REVOKED* sk_X509_REVOKED_deep_copy(const(stack_st_X509_REVOKED)*, sk_X509_REVOKED_copyfunc, sk_X509_REVOKED_freefunc, );
    int sk_X509_REVOKED_push(stack_st_X509_REVOKED*, X509_REVOKED*, );
    stack_st_X509_REVOKED* sk_X509_REVOKED_dup(const(stack_st_X509_REVOKED)*, );


    int BN_mod_lshift_quick(BIGNUM*, const(BIGNUM)*, int, const(BIGNUM)*, );
    ssize_t socket_read(session*, char*, size_t, c_long, int, int*, );
    alias fsblkcnt_t = c_ulong;


    void PKCS7_SIGN_ENVELOPE_free(PKCS7_SIGN_ENVELOPE*, );
    int SSL_get_servername_type(const(SSL)*, );
    PKCS7_SIGN_ENVELOPE* d2i_PKCS7_SIGN_ENVELOPE(PKCS7_SIGN_ENVELOPE**, const(ubyte)**, c_long, );
    PKCS7_SIGN_ENVELOPE* PKCS7_SIGN_ENVELOPE_new();
    int i2d_PKCS7_SIGN_ENVELOPE(PKCS7_SIGN_ENVELOPE*, ubyte**, );


    void lua_pushnil(lua_State*, );
    alias ssl_crock_st = ssl_st*;
    void RSA_set_default_method(const(RSA_METHOD)*, );






    PKCS7_DIGEST* d2i_PKCS7_DIGEST(PKCS7_DIGEST**, const(ubyte)**, c_long, );






    PKCS7_DIGEST* PKCS7_DIGEST_new();


    alias X509_CRL_INFO = X509_crl_info_st;
    struct X509_crl_info_st;


    int i2d_PKCS7_DIGEST(PKCS7_DIGEST*, ubyte**, );
    void PKCS7_DIGEST_free(PKCS7_DIGEST*, );


    int EC_GROUP_get_curve_name(const(EC_GROUP)*, );


    void lua_pushnumber(lua_State*, lua_Number, );




    alias TLS_SESSION_TICKET_EXT = tls_session_ticket_ext_st;
    PKCS7_ENCRYPT* d2i_PKCS7_ENCRYPT(PKCS7_ENCRYPT**, const(ubyte)**, c_long, );


    PKCS7_ENCRYPT* PKCS7_ENCRYPT_new();
    const(RSA_METHOD)* RSA_get_default_method();
    int i2d_PKCS7_ENCRYPT(PKCS7_ENCRYPT*, ubyte**, );


    void PKCS7_ENCRYPT_free(PKCS7_ENCRYPT*, );


    int DSA_meth_set_paramgen(DSA_METHOD*, int function(dsa_st*, int, const(ubyte)*, int, int*, c_ulong*, bn_gencb_st*), );
    ssize_t socket_write(session*, const(char)*, size_t, );
    c_ulong BN_mod_word(const(BIGNUM)*, c_ulong, );
    const(RSA_METHOD)* RSA_get_method(const(RSA)*, );
    c_ulong BN_div_word(BIGNUM*, c_ulong, );




    int open_secure_connection(session*, );




    struct stack_st_X509_CRL;
    PKCS7* PKCS7_new();
    int i2d_PKCS7(PKCS7*, ubyte**, );
    void PKCS7_free(PKCS7*, );


    stack_st_X509_CRL* sk_X509_CRL_new(sk_X509_CRL_compfunc, );
    int sk_X509_CRL_insert(stack_st_X509_CRL*, X509_CRL*, int, );
    void sk_X509_CRL_free(stack_st_X509_CRL*, );
    X509_CRL* sk_X509_CRL_set(stack_st_X509_CRL*, int, X509_CRL*, );
    sk_X509_CRL_compfunc sk_X509_CRL_set_cmp_func(stack_st_X509_CRL*, sk_X509_CRL_compfunc, );
    stack_st_X509_CRL* sk_X509_CRL_deep_copy(const(stack_st_X509_CRL)*, sk_X509_CRL_copyfunc, sk_X509_CRL_freefunc, );
    stack_st_X509_CRL* sk_X509_CRL_dup(const(stack_st_X509_CRL)*, );
    int sk_X509_CRL_is_sorted(const(stack_st_X509_CRL)*, );
    int sk_X509_CRL_find_ex(stack_st_X509_CRL*, X509_CRL*, );
    int sk_X509_CRL_find(stack_st_X509_CRL*, X509_CRL*, );


    X509_CRL* sk_X509_CRL_value(const(stack_st_X509_CRL)*, int, );
    void sk_X509_CRL_sort(stack_st_X509_CRL*, );
    void sk_X509_CRL_zero(stack_st_X509_CRL*, );
    X509_CRL* sk_X509_CRL_delete(stack_st_X509_CRL*, int, );
    X509_CRL* sk_X509_CRL_delete_ptr(stack_st_X509_CRL*, X509_CRL*, );
    int sk_X509_CRL_unshift(stack_st_X509_CRL*, X509_CRL*, );
    X509_CRL* sk_X509_CRL_pop(stack_st_X509_CRL*, );
    int sk_X509_CRL_num(const(stack_st_X509_CRL)*, );
    alias sk_X509_CRL_copyfunc = X509_crl_st* function(const(X509_CRL)*);
    alias sk_X509_CRL_freefunc = void function(X509_CRL*);
    alias sk_X509_CRL_compfunc = int function(const(const(X509_CRL)*)*, const(const(X509_CRL)*)*);
    PKCS7* d2i_PKCS7(PKCS7**, const(ubyte)**, c_long, );
    void sk_X509_CRL_pop_free(stack_st_X509_CRL*, sk_X509_CRL_freefunc, );
    X509_CRL* sk_X509_CRL_shift(stack_st_X509_CRL*, );
    struct ssl_method_st;
    alias SSL_METHOD = ssl_method_st;
    void lua_pushinteger(lua_State*, lua_Integer, );
    stack_st_X509_CRL* sk_X509_CRL_new_null();
    int sk_X509_CRL_push(stack_st_X509_CRL*, X509_CRL*, );


    struct ssl_cipher_st;
    const(char)* lua_pushlstring(lua_State*, const(char)*, size_t, );


    int close_secure_connection(session*, );


    int RSA_set_method(RSA*, const(RSA_METHOD)*, );




    void EC_GROUP_set_asn1_flag(EC_GROUP*, int, );
    alias SSL_CIPHER = ssl_cipher_st;
    alias fsfilcnt_t = c_ulong;
    int BN_mul_word(BIGNUM*, c_ulong, );
    int BN_add_word(BIGNUM*, c_ulong, );
    ssize_t socket_secure_read(session*, char*, size_t, );




    alias SSL_SESSION = ssl_session_st;
    void SCT_set0_extensions(SCT*, ubyte*, size_t, );
    struct ssl_session_st;
    alias X509_PKEY = private_key_st;
    const(char)* lua_pushstring(lua_State*, const(char)*, );
    int function(dsa_st*) DSA_meth_get_keygen(DSA*, const(DSA_METHOD)*, );
    struct private_key_st
    {
        int version_;
        X509_ALGOR* enc_algor;
        ASN1_OCTET_STRING* enc_pkey;
        EVP_PKEY* dec_pkey;
        int key_length;
        char* key_data;
        int key_free;
        EVP_CIPHER_INFO cipher;
    }




    int EC_GROUP_get_asn1_flag(const(EC_GROUP)*, );
    const(char)* lua_pushvfstring(lua_State*, const(char)*, va_list, );
    int BN_sub_word(BIGNUM*, c_ulong, );







    ssize_t socket_secure_write(session*, const(char)*, size_t, );




    alias TLS_SIGALGS = tls_sigalgs_st;
    int DSA_meth_set_keygen(DSA_METHOD*, int function(dsa_st*), );


    struct tls_sigalgs_st;


    int BN_set_word(BIGNUM*, c_ulong, );


    const(RSA_METHOD)* RSA_PKCS1_OpenSSL();
    int clock_nanosleep(clockid_t, int, const(timespec)*, timespec*, );
    struct ssl_conf_ctx_st;




    void EC_GROUP_set_point_conversion_form(EC_GROUP*, point_conversion_form_t, );
    alias SSL_CONF_CTX = ssl_conf_ctx_st;
    int i2d_PKCS7_NDEF(PKCS7*, ubyte**, );
    struct ssl_comp_st;
    c_ulong BN_get_word(const(BIGNUM)*, );
    alias SSL_COMP = ssl_comp_st;




    const(char)* lua_pushfstring(lua_State*, const(char)*, ...);
    int SSL_export_keying_material(SSL*, ubyte*, size_t, const(char)*, size_t, const(ubyte)*, size_t, int, );
    const(RSA_METHOD)* RSA_null_method();
    point_conversion_form_t EC_GROUP_get_point_conversion_form(const(EC_GROUP)*, );
    int luaopen_ifsys(lua_State*, );
    void lua_pushcclosure(lua_State*, lua_CFunction, int, );
    int PKCS7_print_ctx(BIO*, PKCS7*, int, const(ASN1_PCTX)*, );
    FILE* fopen(const(char)*, const(char)*, );
    struct stack_st_SSL_CIPHER;


    void lua_pushboolean(lua_State*, int, );
    int BN_cmp(const(BIGNUM)*, const(BIGNUM)*, );




    int pthread_create(pthread_t*, const(pthread_attr_t)*, void* function(void*), void*, );
    struct stack_st_SSL_COMP;


    c_long PKCS7_ctrl(PKCS7*, int, c_long, char*, );
    void BN_free(BIGNUM*, );
    ubyte* EC_GROUP_get0_seed(const(EC_GROUP)*, );





    int i2d_RSAPublicKey(const(RSA)*, ubyte**, );
    void lua_pushlightuserdata(lua_State*, void*, );
    RSA* d2i_RSAPublicKey(RSA**, const(ubyte)**, c_long, );






    size_t EC_GROUP_get_seed_len(const(EC_GROUP)*, );


    int clock_getcpuclockid(pid_t, clockid_t*, );
    int lua_pushthread(lua_State*, );


    int BN_is_bit_set(const(BIGNUM)*, int, );
    RSA* d2i_RSAPrivateKey(RSA**, const(ubyte)**, c_long, );



    int i2d_RSAPrivateKey(const(RSA)*, ubyte**, );




    int SCT_set1_extensions(SCT*, const(ubyte)*, size_t, );
    size_t EC_GROUP_set_seed(EC_GROUP*, const(ubyte)*, size_t, );
    int SSL_get_sigalgs(SSL*, int, int*, int*, int*, ubyte*, ubyte*, );
    int PKCS7_set_type(PKCS7*, int, );


    int BN_lshift(BIGNUM*, const(BIGNUM)*, int, );


    alias BIO_callback_fn = c_long function(BIO*, int, const(char)*, int, c_long, c_long);
    int PKCS7_set0_type_other(PKCS7*, int, ASN1_TYPE*, );
    struct crypto_threadid_st
    {
        int dummy;
    }
    struct rsa_pss_params_st
    {
        X509_ALGOR* hashAlgorithm;
        X509_ALGOR* maskGenAlgorithm;
        ASN1_INTEGER* saltLength;
        ASN1_INTEGER* trailerField;
    }
    alias RSA_PSS_PARAMS = rsa_pss_params_st;
    int BN_lshift1(BIGNUM*, const(BIGNUM)*, );
    alias SRTP_PROTECTION_PROFILE = srtp_protection_profile_st;
    struct srtp_protection_profile_st
    {
        const(char)* name;
        c_ulong id;
    }


    alias CRYPTO_THREADID = crypto_threadid_st;


    int ERR_load_DSA_strings();





    FILE* freopen(const(char)*, const(char)*, FILE*, );


    int PKCS7_set_content(PKCS7*, PKCS7*, );




    int BN_exp(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    BIO_callback_fn BIO_get_callback(const(BIO)*, );


    int PKCS7_SIGNER_INFO_set(PKCS7_SIGNER_INFO*, X509*, EVP_PKEY*, const(EVP_MD)*, );







    int SSL_get_shared_sigalgs(SSL*, int, int*, int*, int*, ubyte*, ubyte*, );


    void BIO_set_callback(BIO*, BIO_callback_fn, );





    int BN_mod_exp(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );




    int timer_create(clockid_t, sigevent*, timer_t*, );


    struct _IO_FILE
    {
        int _flags;
        char* _IO_read_ptr;
        char* _IO_read_end;
        char* _IO_read_base;
        char* _IO_write_base;
        char* _IO_write_ptr;
        char* _IO_write_end;
        char* _IO_buf_base;
        char* _IO_buf_end;
        char* _IO_save_base;
        char* _IO_backup_base;
        char* _IO_save_end;
        _IO_marker* _markers;
        _IO_FILE* _chain;
        int _fileno;
        int _flags2;
        __off_t _old_offset;
        ushort _cur_column;
        byte _vtable_offset;
        char[1] _shortbuf;
        _IO_lock_t* _lock;
        __off64_t _offset;
        void* __pad1;
        void* __pad2;
        void* __pad3;
        void* __pad4;
        size_t __pad5;
        int _mode;
        char[20] _unused2;
    }


    int lua_getglobal(lua_State*, const(char)*, );


    int PKCS7_SIGNER_INFO_sign(PKCS7_SIGNER_INFO*, );






    char* BIO_get_callback_arg(const(BIO)*, );
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_set(stack_st_SRTP_PROTECTION_PROFILE*, int, SRTP_PROTECTION_PROFILE*, );
    struct stack_st_SRTP_PROTECTION_PROFILE;
    alias sk_SRTP_PROTECTION_PROFILE_freefunc = void function(SRTP_PROTECTION_PROFILE*);
    int PKCS7_add_signer(PKCS7*, PKCS7_SIGNER_INFO*, );


    sk_SRTP_PROTECTION_PROFILE_compfunc sk_SRTP_PROTECTION_PROFILE_set_cmp_func(stack_st_SRTP_PROTECTION_PROFILE*, sk_SRTP_PROTECTION_PROFILE_compfunc, );
    stack_st_SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_new_null();
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_shift(stack_st_SRTP_PROTECTION_PROFILE*, );
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_pop(stack_st_SRTP_PROTECTION_PROFILE*, );
    int sk_SRTP_PROTECTION_PROFILE_unshift(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, );
    int sk_SRTP_PROTECTION_PROFILE_push(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, );
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_delete_ptr(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, );
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_delete(stack_st_SRTP_PROTECTION_PROFILE*, int, );
    void sk_SRTP_PROTECTION_PROFILE_zero(stack_st_SRTP_PROTECTION_PROFILE*, );
    void sk_SRTP_PROTECTION_PROFILE_free(stack_st_SRTP_PROTECTION_PROFILE*, );
    int lua_gettable(lua_State*, int, );
    stack_st_SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_new(sk_SRTP_PROTECTION_PROFILE_compfunc, );
    SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_value(const(stack_st_SRTP_PROTECTION_PROFILE)*, int, );
    int sk_SRTP_PROTECTION_PROFILE_num(const(stack_st_SRTP_PROTECTION_PROFILE)*, );
    alias sk_SRTP_PROTECTION_PROFILE_copyfunc = srtp_protection_profile_st* function(const(SRTP_PROTECTION_PROFILE)*);
    alias sk_SRTP_PROTECTION_PROFILE_compfunc = int function(const(const(SRTP_PROTECTION_PROFILE)*)*, const(const(SRTP_PROTECTION_PROFILE)*)*);
    int sk_SRTP_PROTECTION_PROFILE_find(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, );
    int sk_SRTP_PROTECTION_PROFILE_insert(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, int, );
    int sk_SRTP_PROTECTION_PROFILE_find_ex(stack_st_SRTP_PROTECTION_PROFILE*, SRTP_PROTECTION_PROFILE*, );
    void sk_SRTP_PROTECTION_PROFILE_sort(stack_st_SRTP_PROTECTION_PROFILE*, );
    int sk_SRTP_PROTECTION_PROFILE_is_sorted(const(stack_st_SRTP_PROTECTION_PROFILE)*, );
    stack_st_SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_dup(const(stack_st_SRTP_PROTECTION_PROFILE)*, );




    void BIO_set_callback_arg(BIO*, char*, );
    int BN_mod_exp_mont(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, );


    stack_st_SRTP_PROTECTION_PROFILE* sk_SRTP_PROTECTION_PROFILE_deep_copy(const(stack_st_SRTP_PROTECTION_PROFILE)*, sk_SRTP_PROTECTION_PROFILE_copyfunc, sk_SRTP_PROTECTION_PROFILE_freefunc, );


    void sk_SRTP_PROTECTION_PROFILE_pop_free(stack_st_SRTP_PROTECTION_PROFILE*, sk_SRTP_PROTECTION_PROFILE_freefunc, );
    int PKCS7_add_certificate(PKCS7*, X509*, );


    size_t SCT_get0_signature(const(SCT)*, ubyte**, );


    void pthread_exit(void*, );
    struct X509_info_st
    {
        X509* x509;
        X509_CRL* crl;
        X509_PKEY* x_pkey;
        EVP_CIPHER_INFO enc_cipher;
        int enc_len;
        char* enc_data;
    }
    alias X509_INFO = X509_info_st;
    int lua_getfield(lua_State*, int, const(char)*, );
    int PKCS7_add_crl(PKCS7*, X509_CRL*, );
    struct bio_method_st;
    alias BIO_METHOD = bio_method_st;
    RSA_PSS_PARAMS* d2i_RSA_PSS_PARAMS(RSA_PSS_PARAMS**, const(ubyte)**, c_long, );
    int i2d_RSA_PSS_PARAMS(RSA_PSS_PARAMS*, ubyte**, );
    void RSA_PSS_PARAMS_free(RSA_PSS_PARAMS*, );


    alias tls_session_ticket_ext_cb_fn = int function(SSL*, const(ubyte)*, int, void*);
    int BN_mod_exp_mont_consttime(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, );
    int SSL_check_chain(SSL*, X509*, EVP_PKEY*, stack_st_X509*, );


    RSA_PSS_PARAMS* RSA_PSS_PARAMS_new();
    int lua_geti(lua_State*, int, lua_Integer, );




    int lua_rawget(lua_State*, int, );
    int timer_delete(timer_t, );
    int PKCS7_content_new(PKCS7*, int, );







    int lua_rawgeti(lua_State*, int, lua_Integer, );
    int PKCS7_dataVerify(X509_STORE*, X509_STORE_CTX*, BIO*, PKCS7*, PKCS7_SIGNER_INFO*, );


    alias RSA_OAEP_PARAMS = rsa_oaep_params_st;
    const(char)* BIO_method_name(const(BIO)*, );
    int EC_GROUP_set_curve_GFp(EC_GROUP*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    struct rsa_oaep_params_st
    {
        X509_ALGOR* hashFunc;
        X509_ALGOR* maskGenFunc;
        X509_ALGOR* pSourceFunc;
    }







    int BN_mod_exp_mont_word(BIGNUM*, c_ulong, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, );
    alias tls_session_secret_cb_fn = int function(SSL*, void*, int*, stack_st_SSL_CIPHER*, const(SSL_CIPHER)**, void*);
    int lua_rawgetp(lua_State*, int, const(void)*, );






    int BIO_method_type(const(BIO)*, );






    int PKCS7_signatureVerify(BIO*, PKCS7*, PKCS7_SIGNER_INFO*, X509*, );
    int timer_settime(timer_t, int, const(itimerspec)*, itimerspec*, );
    int X509_OBJECT_idx_by_subject(stack_st_X509_OBJECT*, X509_LOOKUP_TYPE, X509_NAME*, );


    alias bio_info_cb = void function(BIO*, int, const(char)*, int, c_long, c_long);
    void lua_createtable(lua_State*, int, int, );
    void SCT_set0_signature(SCT*, ubyte*, size_t, );
    int BN_mod_exp2_mont(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, );
    void* lua_newuserdata(lua_State*, size_t, );
    X509_OBJECT* X509_OBJECT_retrieve_by_subject(stack_st_X509_OBJECT*, X509_LOOKUP_TYPE, X509_NAME*, );
    BIO* sk_BIO_pop(stack_st_BIO*, );
    int sk_BIO_unshift(stack_st_BIO*, BIO*, );
    int lua_getmetatable(lua_State*, int, );
    int sk_BIO_push(stack_st_BIO*, BIO*, );
    BIO* sk_BIO_delete_ptr(stack_st_BIO*, BIO*, );


    BIO* sk_BIO_delete(stack_st_BIO*, int, );
    struct stack_st_BIO;
    BIO* PKCS7_dataInit(PKCS7*, BIO*, );


    int pthread_join(pthread_t, void**, );


    void sk_BIO_zero(stack_st_BIO*, );
    void sk_BIO_sort(stack_st_BIO*, );
    int sk_BIO_find_ex(stack_st_BIO*, BIO*, );
    int sk_BIO_find(stack_st_BIO*, BIO*, );
    BIO* sk_BIO_set(stack_st_BIO*, int, BIO*, );
    int sk_BIO_insert(stack_st_BIO*, BIO*, int, );
    void sk_BIO_pop_free(stack_st_BIO*, sk_BIO_freefunc, );
    BIO* sk_BIO_shift(stack_st_BIO*, );


    int sk_BIO_is_sorted(const(stack_st_BIO)*, );
    stack_st_BIO* sk_BIO_dup(const(stack_st_BIO)*, );
    stack_st_BIO* sk_BIO_deep_copy(const(stack_st_BIO)*, sk_BIO_copyfunc, sk_BIO_freefunc, );
    sk_BIO_compfunc sk_BIO_set_cmp_func(stack_st_BIO*, sk_BIO_compfunc, );
    alias sk_BIO_compfunc = int function(const(const(BIO)*)*, const(const(BIO)*)*);
    alias sk_BIO_freefunc = void function(BIO*);
    stack_st_BIO* sk_BIO_new_null();
    int sk_BIO_num(const(stack_st_BIO)*, );
    void sk_BIO_free(stack_st_BIO*, );
    alias sk_BIO_copyfunc = bio_st* function(const(BIO)*);
    stack_st_BIO* sk_BIO_new(sk_BIO_compfunc, );
    BIO* sk_BIO_value(const(stack_st_BIO)*, int, );
    alias sk_X509_INFO_copyfunc = X509_info_st* function(const(X509_INFO)*);
    stack_st_X509_INFO* sk_X509_INFO_deep_copy(const(stack_st_X509_INFO)*, sk_X509_INFO_copyfunc, sk_X509_INFO_freefunc, );
    int sk_X509_INFO_num(const(stack_st_X509_INFO)*, );
    RSA_OAEP_PARAMS* d2i_RSA_OAEP_PARAMS(RSA_OAEP_PARAMS**, const(ubyte)**, c_long, );
    X509_INFO* sk_X509_INFO_value(const(stack_st_X509_INFO)*, int, );
    stack_st_X509_INFO* sk_X509_INFO_new_null();
    RSA_OAEP_PARAMS* RSA_OAEP_PARAMS_new();
    int i2d_RSA_OAEP_PARAMS(RSA_OAEP_PARAMS*, ubyte**, );
    void RSA_OAEP_PARAMS_free(RSA_OAEP_PARAMS*, );
    void sk_X509_INFO_free(stack_st_X509_INFO*, );
    void sk_X509_INFO_zero(stack_st_X509_INFO*, );
    int sk_X509_INFO_push(stack_st_X509_INFO*, X509_INFO*, );
    alias sk_X509_INFO_freefunc = void function(X509_INFO*);
    int sk_X509_INFO_unshift(stack_st_X509_INFO*, X509_INFO*, );


    X509_INFO* sk_X509_INFO_pop(stack_st_X509_INFO*, );
    X509_INFO* sk_X509_INFO_shift(stack_st_X509_INFO*, );
    void sk_X509_INFO_pop_free(stack_st_X509_INFO*, sk_X509_INFO_freefunc, );
    int sk_X509_INFO_insert(stack_st_X509_INFO*, X509_INFO*, int, );
    X509_INFO* sk_X509_INFO_set(stack_st_X509_INFO*, int, X509_INFO*, );
    int sk_X509_INFO_find(stack_st_X509_INFO*, X509_INFO*, );
    int sk_X509_INFO_find_ex(stack_st_X509_INFO*, X509_INFO*, );
    void sk_X509_INFO_sort(stack_st_X509_INFO*, );
    int sk_X509_INFO_is_sorted(const(stack_st_X509_INFO)*, );
    stack_st_X509_INFO* sk_X509_INFO_dup(const(stack_st_X509_INFO)*, );
    X509_INFO* sk_X509_INFO_delete_ptr(stack_st_X509_INFO*, X509_INFO*, );
    stack_st_X509_INFO* sk_X509_INFO_new(sk_X509_INFO_compfunc, );
    X509_INFO* sk_X509_INFO_delete(stack_st_X509_INFO*, int, );
    int BN_mod_exp_simple(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );



    int PKCS7_dataFinal(PKCS7*, BIO*, );




    alias sk_X509_INFO_compfunc = int function(const(const(X509_INFO)*)*, const(const(X509_INFO)*)*);




    int lua_getuservalue(lua_State*, int, );
    sk_X509_INFO_compfunc sk_X509_INFO_set_cmp_func(stack_st_X509_INFO*, sk_X509_INFO_compfunc, );
    struct stack_st_X509_INFO;






    int timer_gettime(timer_t, itimerspec*, );
    BIO* PKCS7_dataDecode(PKCS7*, EVP_PKEY*, BIO*, X509*, );


    X509_OBJECT* X509_OBJECT_retrieve_match(stack_st_X509_OBJECT*, X509_OBJECT*, );


    alias custom_ext_add_cb = int function(SSL*, uint, const(ubyte)**, size_t*, int*, void*);






    alias asn1_ps_func = int function(BIO*, ubyte**, int*, void*);


    PKCS7_SIGNER_INFO* PKCS7_add_signature(PKCS7*, X509*, EVP_PKEY*, const(EVP_MD)*, );
    int X509_OBJECT_up_ref_count(X509_OBJECT*, );
    int SCT_set1_signature(SCT*, const(ubyte)*, size_t, );
    int RSA_print_fp(FILE*, const(RSA)*, int, );





    int BN_mask_bits(BIGNUM*, int, );
    X509_OBJECT* X509_OBJECT_new();
    X509* PKCS7_cert_from_signer_info(PKCS7*, PKCS7_SIGNER_INFO*, );
    int EC_GROUP_get_curve_GFp(const(EC_GROUP)*, BIGNUM*, BIGNUM*, BIGNUM*, BN_CTX*, );
    int BN_print_fp(FILE*, const(BIGNUM)*, );
    void X509_OBJECT_free(X509_OBJECT*, );






    int timer_getoverrun(timer_t, );
    X509_LOOKUP_TYPE X509_OBJECT_get_type(const(X509_OBJECT)*, );
    int RSA_print(BIO*, const(RSA)*, int, );


    alias custom_ext_free_cb = void function(SSL*, uint, const(ubyte)*, void*);
    int PKCS7_set_digest(PKCS7*, const(EVP_MD)*, );


    void lua_setglobal(lua_State*, const(char)*, );


    stack_st_PKCS7_SIGNER_INFO* PKCS7_get_signer_info(PKCS7*, );
    struct Netscape_spkac_st
    {
        X509_PUBKEY* pubkey;
        ASN1_IA5STRING* challenge;
    }






    alias NETSCAPE_SPKAC = Netscape_spkac_st;


    X509* X509_OBJECT_get0_X509(const(X509_OBJECT)*, );
    int BN_print(BIO*, const(BIGNUM)*, );






    void lua_settable(lua_State*, int, );





    int BN_reciprocal(BIGNUM*, const(BIGNUM)*, int, BN_CTX*, );
    X509_CRL* X509_OBJECT_get0_X509_CRL(X509_OBJECT*, );
    void lua_setfield(lua_State*, int, const(char)*, );
    int BN_rshift(BIGNUM*, const(BIGNUM)*, int, );
    alias custom_ext_parse_cb = int function(SSL*, uint, const(ubyte)*, size_t, int*, void*);
    sct_source_t SCT_get_source(const(SCT)*, );
    PKCS7_RECIP_INFO* PKCS7_add_recipient(PKCS7*, X509*, );
    X509_STORE* X509_STORE_new();
    void lua_seti(lua_State*, int, lua_Integer, );


    void lua_rawset(lua_State*, int, );






    void PKCS7_SIGNER_INFO_get0_algs(PKCS7_SIGNER_INFO*, EVP_PKEY**, X509_ALGOR**, X509_ALGOR**, );
    int BN_rshift1(BIGNUM*, const(BIGNUM)*, );


    void X509_STORE_free(X509_STORE*, );
    int X509_STORE_lock(X509_STORE*, );


    void BN_clear(BIGNUM*, );
    void lua_rawseti(lua_State*, int, lua_Integer, );


    int timespec_get(timespec*, int, );



    BIGNUM* BN_dup(const(BIGNUM)*, );
    int CRYPTO_set_mem_functions(void* function(c_ulong, const(char)*, int), void* function(void*, c_ulong, const(char)*, int), void function(void*, const(char)*, int), );
    void PKCS7_RECIP_INFO_get0_alg(PKCS7_RECIP_INFO*, X509_ALGOR**, );
    int RSA_sign(int, const(ubyte)*, uint, ubyte*, uint*, RSA*, );


    struct Netscape_spki_st
    {
        NETSCAPE_SPKAC* spkac;
        X509_ALGOR sig_algor;
        ASN1_BIT_STRING* signature;
    }
    void lua_rawsetp(lua_State*, int, const(void)*, );
    alias NETSCAPE_SPKI = Netscape_spki_st;
    int X509_STORE_unlock(X509_STORE*, );
    int X509_STORE_up_ref(X509_STORE*, );
    int lua_setmetatable(lua_State*, int, );
    FILE* fdopen(int, const(char)*, );
    int PKCS7_add_recipient_info(PKCS7*, PKCS7_RECIP_INFO*, );
    int BN_ucmp(const(BIGNUM)*, const(BIGNUM)*, );




    int BN_set_bit(BIGNUM*, int, );
    alias SSL_verify_cb = int function(int, X509_STORE_CTX*);
    stack_st_X509_OBJECT* X509_STORE_get0_objects(X509_STORE*, );
    int RSA_verify(int, const(ubyte)*, uint, const(ubyte)*, uint, RSA*, );
    int PKCS7_RECIP_INFO_set(PKCS7_RECIP_INFO*, X509*, );




    void lua_setuservalue(lua_State*, int, );
    int BN_clear_bit(BIGNUM*, int, );
    int SCT_set_source(SCT*, sct_source_t, );




    int PKCS7_set_cipher(PKCS7*, const(EVP_CIPHER)*, );


    int CRYPTO_set_mem_debug(int, );




    int PKCS7_stream(ubyte***, PKCS7*, );


    stack_st_X509* X509_STORE_CTX_get1_certs(X509_STORE_CTX*, X509_NAME*, );


    char* BN_bn2hex(const(BIGNUM)*, );
    char* BN_bn2dec(const(BIGNUM)*, );




    void CRYPTO_get_mem_functions(void* function(c_ulong, const(char)*, int)*, void* function(void*, c_ulong, const(char)*, int)*, void function(void*, const(char)*, int)*, );
    int EC_GROUP_set_curve_GF2m(EC_GROUP*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    stack_st_X509_CRL* X509_STORE_CTX_get1_crls(X509_STORE_CTX*, X509_NAME*, );
    PKCS7_ISSUER_AND_SERIAL* PKCS7_get_issuer_and_serial(PKCS7*, int, );
    int X509_STORE_set_flags(X509_STORE*, c_ulong, );





    char* l64a(c_long, );




    int BN_hex2bn(BIGNUM**, const(char)*, );
    struct Netscape_certificate_sequence
    {
        ASN1_OBJECT* type;
        stack_st_X509* certs;
    }
    struct _Anonymous_46
    {
        c_long quot;
        c_long rem;
    }
    alias imaxdiv_t = _Anonymous_46;


    int BN_dec2bn(BIGNUM**, const(char)*, );
    int X509_STORE_set_purpose(X509_STORE*, int, );






    ASN1_OCTET_STRING* PKCS7_digest_from_attributes(stack_st_X509_ATTRIBUTE*, );
    alias NETSCAPE_CERT_SEQUENCE = Netscape_certificate_sequence;




    int pthread_detach(pthread_t, );






    void lua_callk(lua_State*, int, int, lua_KContext, lua_KFunction, );
    int PKCS7_add_signed_attribute(PKCS7_SIGNER_INFO*, int, int, void*, );
    int X509_STORE_set_trust(X509_STORE*, int, );


    const(char)* SCT_validation_status_string(const(SCT)*, );
    int BN_asc2bn(BIGNUM**, const(char)*, );
    c_long a64l(const(char)*, );
    int X509_STORE_set1_param(X509_STORE*, X509_VERIFY_PARAM*, );


    int BN_gcd(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );


    int RSA_sign_ASN1_OCTET_STRING(int, const(ubyte)*, uint, ubyte*, uint*, RSA*, );






    X509_VERIFY_PARAM* X509_STORE_get0_param(X509_STORE*, );
    int BN_kronecker(const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );




    int PKCS7_add_attribute(PKCS7_SIGNER_INFO*, int, int, void*, );


    void* CRYPTO_malloc(size_t, const(char)*, int, );
    void* CRYPTO_zalloc(size_t, const(char)*, int, );




    alias d2i_of_void = void* function(void**, const(ubyte)**, c_long);


    alias i2d_of_void = int function(void*, ubyte**);
    int lua_pcallk(lua_State*, int, int, int, lua_KContext, lua_KFunction, );



    void* CRYPTO_memdup(const(void)*, size_t, const(char)*, int, );


    pthread_t pthread_self();
    ASN1_TYPE* PKCS7_get_attribute(PKCS7_SIGNER_INFO*, int, );
    void X509_STORE_set_verify(X509_STORE*, X509_STORE_CTX_verify_fn, );





    int RSA_verify_ASN1_OCTET_STRING(int, const(ubyte)*, uint, ubyte*, uint, RSA*, );


    ASN1_TYPE* PKCS7_get_signed_attribute(PKCS7_SIGNER_INFO*, int, );


    char* CRYPTO_strdup(const(char)*, const(char)*, int, );


    BIGNUM* BN_mod_inverse(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );


    int PKCS7_set_signed_attributes(PKCS7_SIGNER_INFO*, stack_st_X509_ATTRIBUTE*, );




    char* CRYPTO_strndup(const(char)*, size_t, const(char)*, int, );




    FILE* fmemopen(void*, size_t, const(char)*, );
    void CRYPTO_free(void*, const(char)*, int, );
    void X509_STORE_CTX_set_verify(X509_STORE_CTX*, X509_STORE_CTX_verify_fn, );






    int pthread_equal(pthread_t, pthread_t, );
    BIGNUM* BN_mod_sqrt(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    void SCT_print(const(SCT)*, BIO*, int, const(CTLOG_STORE)*, );
    int EC_GROUP_get_curve_GF2m(const(EC_GROUP)*, BIGNUM*, BIGNUM*, BIGNUM*, BN_CTX*, );
    int PKCS7_set_attributes(PKCS7_SIGNER_INFO*, stack_st_X509_ATTRIBUTE*, );






    void CRYPTO_clear_free(void*, size_t, const(char)*, int, );


    int lua_load(lua_State*, lua_Reader, void*, const(char)*, const(char)*, );




    alias pem_password_cb = int function(char*, int, int, void*);
    void* CRYPTO_realloc(void*, size_t, const(char)*, int, );






    int RSA_blinding_on(RSA*, BN_CTX*, );


    X509_STORE_CTX_verify_fn X509_STORE_get_verify(X509_STORE*, );




    void BN_consttime_swap(c_ulong, BIGNUM*, BIGNUM*, int, );
    void* CRYPTO_clear_realloc(void*, size_t, size_t, const(char)*, int, );
    void RSA_blinding_off(RSA*, );
    void X509_STORE_set_verify_cb(X509_STORE*, X509_STORE_CTX_verify_cb, );
    int lua_dump(lua_State*, lua_Writer, void*, int, );
    PKCS7* PKCS7_sign(X509*, EVP_PKEY*, stack_st_X509*, BIO*, int, );




    BN_BLINDING* RSA_setup_blinding(RSA*, BN_CTX*, );
    int PEM_get_EVP_CIPHER_INFO(char*, EVP_CIPHER_INFO*, );





    FILE* open_memstream(char**, size_t*, );
    int PEM_do_header(EVP_CIPHER_INFO*, ubyte*, c_long*, pem_password_cb*, void*, );




    struct PBEPARAM_st
    {
        ASN1_OCTET_STRING* salt;
        ASN1_INTEGER* iter;
    }
    int CRYPTO_secure_malloc_init(size_t, int, );





    int RSA_padding_add_PKCS1_type_1(ubyte*, int, const(ubyte)*, int, );






    BIGNUM* BN_generate_prime(BIGNUM*, int, int, const(BIGNUM)*, const(BIGNUM)*, void function(int, int, void*), void*, );






    alias PBEPARAM = PBEPARAM_st;


    PKCS7_SIGNER_INFO* PKCS7_sign_add_signer(PKCS7*, X509*, EVP_PKEY*, const(EVP_MD)*, int, );


    X509_STORE_CTX_verify_cb X509_STORE_get_verify_cb(X509_STORE*, );


    c_long random();




    int CRYPTO_secure_malloc_done();





    int RSA_padding_check_PKCS1_type_1(ubyte*, int, const(ubyte)*, int, int, );
    int EC_GROUP_get_degree(const(EC_GROUP)*, );
    void* CRYPTO_secure_malloc(size_t, const(char)*, int, );


    void X509_STORE_set_get_issuer(X509_STORE*, X509_STORE_CTX_get_issuer_fn, );
    int PEM_read_bio(BIO*, char**, char**, ubyte**, c_long*, );






    int pthread_attr_init(pthread_attr_t*, );


    void* CRYPTO_secure_zalloc(size_t, const(char)*, int, );




    X509_STORE_CTX_get_issuer_fn X509_STORE_get_get_issuer(X509_STORE*, );
    void CRYPTO_secure_free(void*, const(char)*, int, );
    int lua_yieldk(lua_State*, int, lua_KContext, lua_KFunction, );


    int PEM_write_bio(BIO*, const(char)*, const(char)*, const(ubyte)*, c_long, );
    void srandom(uint, );




    void SCT_LIST_print(const(stack_st_SCT)*, BIO*, int, const(char)*, const(CTLOG_STORE)*, );
    void X509_STORE_set_check_issued(X509_STORE*, X509_STORE_CTX_check_issued_fn, );







    int RSA_padding_add_PKCS1_type_2(ubyte*, int, const(ubyte)*, int, );
    intmax_t imaxabs(intmax_t, );




    int PKCS7_final(PKCS7*, BIO*, int, );
    void setbuf(FILE*, char*, );
    void CRYPTO_secure_clear_free(void*, size_t, const(char)*, int, );






    int PEM_bytes_read_bio(ubyte**, c_long*, char**, const(char)*, BIO*, pem_password_cb*, void*, );
    int pthread_attr_destroy(pthread_attr_t*, );
    int PKCS7_verify(PKCS7*, stack_st_X509*, X509_STORE*, BIO*, BIO*, int, );
    int BN_is_prime(const(BIGNUM)*, int, void function(int, int, void*), BN_CTX*, void*, );


    int lua_resume(lua_State*, lua_State*, int, );


    struct PBE2PARAM_st
    {
        X509_ALGOR* keyfunc;
        X509_ALGOR* encryption;
    }
    alias PBE2PARAM = PBE2PARAM_st;




    X509_STORE_CTX_check_issued_fn X509_STORE_get_check_issued(X509_STORE*, );



    int CRYPTO_secure_allocated(const(void)*, );


    int RSA_padding_check_PKCS1_type_2(ubyte*, int, const(ubyte)*, int, int, );
    int lua_status(lua_State*, );


    stack_st_X509* PKCS7_get0_signers(PKCS7*, stack_st_X509*, int, );


    int lua_isyieldable(lua_State*, );


    void X509_STORE_set_check_revocation(X509_STORE*, X509_STORE_CTX_check_revocation_fn, );


    int CRYPTO_secure_malloc_initialized();
    imaxdiv_t imaxdiv(intmax_t, intmax_t, );




    size_t CRYPTO_secure_actual_size(void*, );
    void* PEM_ASN1_read_bio(d2i_of_void*, const(char)*, BIO*, void**, pem_password_cb*, void*, );
    int EC_GROUP_check(const(EC_GROUP)*, BN_CTX*, );




    int setvbuf(FILE*, char*, int, size_t, );
    int BN_is_prime_fasttest(const(BIGNUM)*, int, void function(int, int, void*), BN_CTX*, void*, int, );


    int PKCS1_MGF1(ubyte*, c_long, const(ubyte)*, c_long, const(EVP_MD)*, );
    int pthread_attr_getdetachstate(const(pthread_attr_t)*, int*, );




    X509_STORE_CTX_check_revocation_fn X509_STORE_get_check_revocation(X509_STORE*, );


    size_t CRYPTO_secure_used();
    char* initstate(uint, char*, size_t, );
    PKCS7* PKCS7_encrypt(stack_st_X509*, BIO*, const(EVP_CIPHER)*, int, );




    void X509_STORE_set_get_crl(X509_STORE*, X509_STORE_CTX_get_crl_fn, );




    sct_validation_status_t SCT_get_validation_status(const(SCT)*, );
    int PEM_ASN1_write_bio(i2d_of_void*, const(char)*, BIO*, void*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    intmax_t strtoimax(const(char)*, char**, int, );
    struct PBKDF2PARAM_st
    {
        ASN1_TYPE* salt;
        ASN1_INTEGER* iter;
        ASN1_INTEGER* keylength;
        X509_ALGOR* prf;
    }
    alias PBKDF2PARAM = PBKDF2PARAM_st;
    int RSA_padding_add_PKCS1_OAEP(ubyte*, int, const(ubyte)*, int, const(ubyte)*, int, );



    int PKCS7_decrypt(PKCS7*, EVP_PKEY*, X509*, BIO*, int, );


    void OPENSSL_cleanse(void*, size_t, );
    X509_STORE_CTX_get_crl_fn X509_STORE_get_get_crl(X509_STORE*, );
    void X509_STORE_set_check_crl(X509_STORE*, X509_STORE_CTX_check_crl_fn, );


    void setbuffer(FILE*, char*, size_t, );





    int PKCS7_add_attrib_smimecap(PKCS7_SIGNER_INFO*, stack_st_X509_ALGOR*, );


    char* setstate(char*, );
    int pthread_attr_setdetachstate(pthread_attr_t*, int, );


    int RSA_padding_check_PKCS1_OAEP(ubyte*, int, const(ubyte)*, int, int, const(ubyte)*, int, );
    stack_st_X509_INFO* PEM_X509_INFO_read_bio(BIO*, stack_st_X509_INFO*, pem_password_cb*, void*, );


    int EC_GROUP_check_discriminant(const(EC_GROUP)*, BN_CTX*, );
    uintmax_t strtoumax(const(char)*, char**, int, );


    X509_STORE_CTX_check_crl_fn X509_STORE_get_check_crl(X509_STORE*, );
    int PEM_X509_INFO_write_bio(BIO*, X509_INFO*, EVP_CIPHER*, ubyte*, int, pem_password_cb*, void*, );


    stack_st_X509_ALGOR* PKCS7_get_smimecap(PKCS7_SIGNER_INFO*, );
    void X509_STORE_set_cert_crl(X509_STORE*, X509_STORE_CTX_cert_crl_fn, );
    int BN_generate_prime_ex(BIGNUM*, int, int, const(BIGNUM)*, const(BIGNUM)*, BN_GENCB*, );
    int PKCS7_simple_smimecap(stack_st_X509_ALGOR*, int, int, );






    int RSA_padding_add_PKCS1_OAEP_mgf1(ubyte*, int, const(ubyte)*, int, const(ubyte)*, int, const(EVP_MD)*, const(EVP_MD)*, );
    X509_STORE_CTX_cert_crl_fn X509_STORE_get_cert_crl(X509_STORE*, );


    int BN_is_prime_ex(const(BIGNUM)*, int, BN_CTX*, BN_GENCB*, );
    void setlinebuf(FILE*, );


    int BN_is_prime_fasttest_ex(const(BIGNUM)*, int, BN_CTX*, int, BN_GENCB*, );
    int SCT_validate(SCT*, const(CT_POLICY_EVAL_CTX)*, );
    int PKCS7_add_attrib_content_type(PKCS7_SIGNER_INFO*, ASN1_OBJECT*, );






    void X509_STORE_set_check_policy(X509_STORE*, X509_STORE_CTX_check_policy_fn, );




    intmax_t wcstoimax(const(__gwchar_t)*, __gwchar_t**, int, );





    int pthread_attr_getguardsize(const(pthread_attr_t)*, size_t*, );






    int PKCS7_add0_attrib_signing_time(PKCS7_SIGNER_INFO*, ASN1_TIME*, );
    int RSA_padding_check_PKCS1_OAEP_mgf1(ubyte*, int, const(ubyte)*, int, int, const(ubyte)*, int, const(EVP_MD)*, const(EVP_MD)*, );




    X509_STORE_CTX_check_policy_fn X509_STORE_get_check_policy(X509_STORE*, );


    int PKCS7_add1_attrib_digest(PKCS7_SIGNER_INFO*, const(ubyte)*, int, );
    int PEM_read(FILE*, char**, char**, ubyte**, c_long*, );


    int BN_X931_generate_Xpq(BIGNUM*, BIGNUM*, int, BN_CTX*, );
    void X509_STORE_set_lookup_certs(X509_STORE*, X509_STORE_CTX_lookup_certs_fn, );


    struct random_data
    {
        int32_t* fptr;
        int32_t* rptr;
        int32_t* state;
        int rand_type;
        int rand_deg;
        int rand_sep;
        int32_t* end_ptr;
    }
    int EC_GROUP_cmp(const(EC_GROUP)*, const(EC_GROUP)*, BN_CTX*, );


    int PEM_write(FILE*, const(char)*, const(char)*, const(ubyte)*, c_long, );
    X509_STORE_CTX_lookup_certs_fn X509_STORE_get_lookup_certs(X509_STORE*, );


    int BN_X931_derive_prime_ex(BIGNUM*, BIGNUM*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_GENCB*, );




    int SMIME_write_PKCS7(BIO*, PKCS7*, BIO*, int, );
    uintmax_t wcstoumax(const(__gwchar_t)*, __gwchar_t**, int, );




    int pthread_attr_setguardsize(pthread_attr_t*, size_t, );
    PKCS7* SMIME_read_PKCS7(BIO*, BIO**, );





    void X509_STORE_set_lookup_crls(X509_STORE*, X509_STORE_CTX_lookup_crls_fn, );


    void* PEM_ASN1_read(d2i_of_void*, const(char)*, FILE*, void**, pem_password_cb*, void*, );
    int RSA_padding_add_SSLv23(ubyte*, int, const(ubyte)*, int, );




    int lua_gc(lua_State*, int, int, );




    int fprintf(FILE*, const(char)*, ...);
    int PEM_ASN1_write(i2d_of_void*, const(char)*, FILE*, void*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );





    struct _IO_FILE_plus;


    BIO* BIO_new_PKCS7(BIO*, PKCS7*, );
    int RSA_padding_check_SSLv23(ubyte*, int, const(ubyte)*, int, int, );




    int BN_X931_generate_prime_ex(BIGNUM*, BIGNUM*, BIGNUM*, BIGNUM*, BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_GENCB*, );
    int SCT_LIST_validate(const(stack_st_SCT)*, CT_POLICY_EVAL_CTX*, );
    X509_STORE_CTX_lookup_crls_fn X509_STORE_get_lookup_crls(X509_STORE*, );




    int RSA_padding_add_none(ubyte*, int, const(ubyte)*, int, );


    void X509_STORE_set_cleanup(X509_STORE*, X509_STORE_CTX_cleanup_fn, );
    stack_st_X509_INFO* PEM_X509_INFO_read(FILE*, stack_st_X509_INFO*, pem_password_cb*, void*, );






    int pthread_attr_getschedparam(const(pthread_attr_t)*, sched_param*, );
    alias ASN1_ITEM_EXP = const(ASN1_ITEM_st);


    int ERR_load_DH_strings();




    X509_STORE_CTX_cleanup_fn X509_STORE_get_cleanup(X509_STORE*, );
    int RSA_padding_check_none(ubyte*, int, const(ubyte)*, int, int, );
    BN_MONT_CTX* BN_MONT_CTX_new();
    int printf(const(char)*, ...);






    int random_r(random_data*, int32_t*, );


    int BN_mod_mul_montgomery(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_MONT_CTX*, BN_CTX*, );


    int lua_error(lua_State*, );


    int PEM_SignInit(EVP_MD_CTX*, EVP_MD*, );
    int sprintf(char*, const(char)*, ...);






    int RSA_padding_add_X931(ubyte*, int, const(ubyte)*, int, );




    int BN_to_montgomery(BIGNUM*, const(BIGNUM)*, BN_MONT_CTX*, BN_CTX*, );
    int ERR_load_PKCS7_strings();
    int PEM_SignUpdate(EVP_MD_CTX*, ubyte*, uint, );




    int lua_next(lua_State*, int, );






    int pthread_attr_setschedparam(pthread_attr_t*, const(sched_param)*, );
    int RSA_padding_check_X931(ubyte*, int, const(ubyte)*, int, int, );
    int srandom_r(uint, random_data*, );


    int PEM_SignFinal(EVP_MD_CTX*, ubyte*, uint*, EVP_PKEY*, );
    int X509_STORE_set_ex_data(X509_STORE*, int, void*, );





    void X509_CRL_set_default_method(const(X509_CRL_METHOD)*, );


    void lua_concat(lua_State*, int, );
    void* X509_STORE_get_ex_data(X509_STORE*, int, );
    int BN_from_montgomery(BIGNUM*, const(BIGNUM)*, BN_MONT_CTX*, BN_CTX*, );




    X509_CRL_METHOD* X509_CRL_METHOD_new(int function(X509_crl_st*), int function(X509_crl_st*), int function(X509_crl_st*, x509_revoked_st**, asn1_string_st*, X509_name_st*), int function(X509_crl_st*, evp_pkey_st*), );
    void lua_len(lua_State*, int, );






    EC_GROUP* EC_GROUP_new_curve_GFp(const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int RSA_X931_hash_id(int, );
    void BN_MONT_CTX_free(BN_MONT_CTX*, );


    X509_STORE_CTX* X509_STORE_CTX_new();
    int PEM_def_callback(char*, int, int, void*, );
    int initstate_r(uint, char*, size_t, random_data*, );






    int RSA_verify_PKCS1_PSS(RSA*, const(ubyte)*, const(EVP_MD)*, const(ubyte)*, int, );


    size_t lua_stringtonumber(lua_State*, const(char)*, );




    void PEM_proc_type(char*, int, );
    int BN_MONT_CTX_set(BN_MONT_CTX*, const(BIGNUM)*, BN_CTX*, );







    int vfprintf(FILE*, const(char)*, va_list, );
    BN_MONT_CTX* BN_MONT_CTX_copy(BN_MONT_CTX*, BN_MONT_CTX*, );
    int pthread_attr_getschedpolicy(const(pthread_attr_t)*, int*, );


    void PEM_dek_info(char*, const(char)*, int, char*, );
    int X509_STORE_CTX_get1_issuer(X509**, X509_STORE_CTX*, X509*, );






    void OPENSSL_die(const(char)*, const(char)*, int, );






    lua_Alloc lua_getallocf(lua_State*, void**, );


    alias wchar_t = int;


    BN_MONT_CTX* BN_MONT_CTX_set_locked(BN_MONT_CTX**, CRYPTO_RWLOCK*, const(BIGNUM)*, BN_CTX*, );
    void X509_STORE_CTX_free(X509_STORE_CTX*, );
    void lua_setallocf(lua_State*, lua_Alloc, void*, );
    int RSA_padding_add_PKCS1_PSS(RSA*, ubyte*, const(ubyte)*, const(EVP_MD)*, int, );




    int X509_STORE_CTX_init(X509_STORE_CTX*, X509_STORE*, X509*, stack_st_X509*, );


    int setstate_r(char*, random_data*, );
    X509* PEM_read_X509(FILE*, X509**, pem_password_cb*, void*, );
    X509* PEM_read_bio_X509(BIO*, X509**, pem_password_cb*, void*, );
    int PEM_write_X509(FILE*, X509*, );
    int PEM_write_bio_X509(BIO*, X509*, );




    X509* PEM_read_bio_X509_AUX(BIO*, X509**, pem_password_cb*, void*, );
    int pthread_attr_setschedpolicy(pthread_attr_t*, int, );


    void X509_CRL_METHOD_free(X509_CRL_METHOD*, );


    X509* PEM_read_X509_AUX(FILE*, X509**, pem_password_cb*, void*, );
    int PEM_write_X509_AUX(FILE*, X509*, );
    int PEM_write_bio_X509_AUX(BIO*, X509*, );
    void X509_STORE_CTX_set0_trusted_stack(X509_STORE_CTX*, stack_st_X509*, );




    void X509_STORE_CTX_cleanup(X509_STORE_CTX*, );


    alias __io_read_fn = c_long function(void*, char*, size_t);


    X509_REQ* PEM_read_bio_X509_REQ(BIO*, X509_REQ**, pem_password_cb*, void*, );
    int RSA_verify_PKCS1_PSS_mgf1(RSA*, const(ubyte)*, const(EVP_MD)*, const(EVP_MD)*, const(ubyte)*, int, );
    int PEM_write_X509_REQ(FILE*, X509_REQ*, );
    int PEM_write_bio_X509_REQ(BIO*, X509_REQ*, );
    X509_REQ* PEM_read_X509_REQ(FILE*, X509_REQ**, pem_password_cb*, void*, );




    int vprintf(const(char)*, va_list, );




    int OPENSSL_isservice();
    void X509_CRL_set_meth_data(X509_CRL*, void*, );


    int PEM_write_X509_REQ_NEW(FILE*, X509_REQ*, );
    int PEM_write_bio_X509_REQ_NEW(BIO*, X509_REQ*, );
    int i2o_SCT_LIST(const(stack_st_SCT)*, ubyte**, );


    EC_GROUP* EC_GROUP_new_curve_GF2m(const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    BN_BLINDING* BN_BLINDING_new(const(BIGNUM)*, const(BIGNUM)*, BIGNUM*, );
    int vsprintf(char*, const(char)*, va_list, );
    X509_STORE* X509_STORE_CTX_get0_store(X509_STORE_CTX*, );
    X509_CRL* PEM_read_bio_X509_CRL(BIO*, X509_CRL**, pem_password_cb*, void*, );
    X509_CRL* PEM_read_X509_CRL(FILE*, X509_CRL**, pem_password_cb*, void*, );
    int PEM_write_bio_X509_CRL(BIO*, X509_CRL*, );
    int PEM_write_X509_CRL(FILE*, X509_CRL*, );
    void* X509_CRL_get_meth_data(X509_CRL*, );




    int PEM_write_PKCS7(FILE*, PKCS7*, );
    int PEM_write_bio_PKCS7(BIO*, PKCS7*, );
    PKCS7* PEM_read_bio_PKCS7(BIO*, PKCS7**, pem_password_cb*, void*, );
    PKCS7* PEM_read_PKCS7(FILE*, PKCS7**, pem_password_cb*, void*, );


    int pthread_attr_getinheritsched(const(pthread_attr_t)*, int*, );
    void BN_BLINDING_free(BN_BLINDING*, );
    X509* X509_STORE_CTX_get0_cert(X509_STORE_CTX*, );


    int FIPS_mode();
    int RSA_padding_add_PKCS1_PSS_mgf1(RSA*, ubyte*, const(ubyte)*, const(EVP_MD)*, const(EVP_MD)*, int, );
    int FIPS_mode_set(int, );
    const(char)* X509_verify_cert_error_string(c_long, );
    int BN_BLINDING_update(BN_BLINDING*, BN_CTX*, );
    int PEM_write_bio_NETSCAPE_CERT_SEQUENCE(BIO*, NETSCAPE_CERT_SEQUENCE*, );
    int PEM_write_NETSCAPE_CERT_SEQUENCE(FILE*, NETSCAPE_CERT_SEQUENCE*, );
    NETSCAPE_CERT_SEQUENCE* PEM_read_NETSCAPE_CERT_SEQUENCE(FILE*, NETSCAPE_CERT_SEQUENCE**, pem_password_cb*, void*, );
    NETSCAPE_CERT_SEQUENCE* PEM_read_bio_NETSCAPE_CERT_SEQUENCE(BIO*, NETSCAPE_CERT_SEQUENCE**, pem_password_cb*, void*, );
    stack_st_X509* X509_STORE_CTX_get0_untrusted(X509_STORE_CTX*, );
    int BN_BLINDING_convert(BIGNUM*, BN_BLINDING*, BN_CTX*, );
    int PEM_write_bio_PKCS8(BIO*, X509_SIG*, );
    int PEM_write_PKCS8(FILE*, X509_SIG*, );
    X509_SIG* PEM_read_bio_PKCS8(BIO*, X509_SIG**, pem_password_cb*, void*, );
    X509_SIG* PEM_read_PKCS8(FILE*, X509_SIG**, pem_password_cb*, void*, );
    int rand();
    void X509_STORE_CTX_set0_untrusted(X509_STORE_CTX*, stack_st_X509*, );






    int BN_BLINDING_invert(BIGNUM*, BN_BLINDING*, BN_CTX*, );
    void OPENSSL_init();
    int X509_verify(X509*, EVP_PKEY*, );






    PKCS8_PRIV_KEY_INFO* PEM_read_PKCS8_PRIV_KEY_INFO(FILE*, PKCS8_PRIV_KEY_INFO**, pem_password_cb*, void*, );
    PKCS8_PRIV_KEY_INFO* PEM_read_bio_PKCS8_PRIV_KEY_INFO(BIO*, PKCS8_PRIV_KEY_INFO**, pem_password_cb*, void*, );
    void X509_STORE_CTX_set_verify_cb(X509_STORE_CTX*, X509_STORE_CTX_verify_cb, );
    int PEM_write_PKCS8_PRIV_KEY_INFO(FILE*, PKCS8_PRIV_KEY_INFO*, );


    int PEM_write_bio_PKCS8_PRIV_KEY_INFO(BIO*, PKCS8_PRIV_KEY_INFO*, );


    void srand(uint, );
    int BN_BLINDING_convert_ex(BIGNUM*, BIGNUM*, BN_BLINDING*, BN_CTX*, );
    int snprintf(char*, size_t, const(char)*, ...);


    int PEM_write_RSAPrivateKey(FILE*, RSA*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    RSA* PEM_read_bio_RSAPrivateKey(BIO*, RSA**, pem_password_cb*, void*, );


    int PEM_write_bio_RSAPrivateKey(BIO*, RSA*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );


    RSA* PEM_read_RSAPrivateKey(FILE*, RSA**, pem_password_cb*, void*, );


    int BN_BLINDING_invert_ex(BIGNUM*, const(BIGNUM)*, BN_BLINDING*, BN_CTX*, );
    tm* OPENSSL_gmtime(const(time_t)*, tm*, );
    int X509_REQ_verify(X509_REQ*, EVP_PKEY*, );




    X509_STORE_CTX_verify_cb X509_STORE_CTX_get_verify_cb(X509_STORE_CTX*, );
    int pthread_attr_setinheritsched(pthread_attr_t*, int, );
    alias __io_write_fn = c_long function(void*, const(char)*, size_t);
    RSA* PEM_read_bio_RSAPublicKey(BIO*, RSA**, pem_password_cb*, void*, );
    RSA* PEM_read_RSAPublicKey(FILE*, RSA**, pem_password_cb*, void*, );
    int OPENSSL_gmtime_adj(tm*, int, c_long, );
    int PEM_write_bio_RSAPublicKey(BIO*, const(RSA)*, );
    int PEM_write_RSAPublicKey(FILE*, const(RSA)*, );


    int X509_CRL_verify(X509_CRL*, EVP_PKEY*, );






    X509_STORE_CTX_verify_fn X509_STORE_CTX_get_verify(X509_STORE_CTX*, );



    int PEM_write_RSA_PUBKEY(FILE*, RSA*, );
    RSA* PEM_read_bio_RSA_PUBKEY(BIO*, RSA**, pem_password_cb*, void*, );
    RSA* PEM_read_RSA_PUBKEY(FILE*, RSA**, pem_password_cb*, void*, );





    int PEM_write_bio_RSA_PUBKEY(BIO*, RSA*, );




    X509_STORE_CTX_get_issuer_fn X509_STORE_CTX_get_get_issuer(X509_STORE_CTX*, );


    int OPENSSL_gmtime_diff(int*, int*, const(tm)*, const(tm)*, );
    int NETSCAPE_SPKI_verify(NETSCAPE_SPKI*, EVP_PKEY*, );
    int vsnprintf(char*, size_t, const(char)*, va_list, );
    EC_GROUP* EC_GROUP_new_by_curve_name(int, );
    int rand_r(uint*, );




    X509_STORE_CTX_check_issued_fn X509_STORE_CTX_get_check_issued(X509_STORE_CTX*, );
    int BN_BLINDING_is_current_thread(BN_BLINDING*, );
    int RSA_set_ex_data(RSA*, int, void*, );






    X509_STORE_CTX_check_revocation_fn X509_STORE_CTX_get_check_revocation(X509_STORE_CTX*, );
    NETSCAPE_SPKI* NETSCAPE_SPKI_b64_decode(const(char)*, int, );
    void* RSA_get_ex_data(const(RSA)*, int, );
    void BN_BLINDING_set_current_thread(BN_BLINDING*, );




    DSA* PEM_read_bio_DSAPrivateKey(BIO*, DSA**, pem_password_cb*, void*, );
    char* NETSCAPE_SPKI_b64_encode(NETSCAPE_SPKI*, );
    DSA* PEM_read_DSAPrivateKey(FILE*, DSA**, pem_password_cb*, void*, );
    int PEM_write_bio_DSAPrivateKey(BIO*, DSA*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    int PEM_write_DSAPrivateKey(FILE*, DSA*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    X509_STORE_CTX_get_crl_fn X509_STORE_CTX_get_get_crl(X509_STORE_CTX*, );
    stack_st_SCT* o2i_SCT_LIST(stack_st_SCT**, const(ubyte)**, size_t, );




    int BN_BLINDING_lock(BN_BLINDING*, );
    RSA* RSAPublicKey_dup(RSA*, );
    DSA* PEM_read_bio_DSA_PUBKEY(BIO*, DSA**, pem_password_cb*, void*, );
    DSA* PEM_read_DSA_PUBKEY(FILE*, DSA**, pem_password_cb*, void*, );
    int PEM_write_DSA_PUBKEY(FILE*, DSA*, );
    int PEM_write_bio_DSA_PUBKEY(BIO*, DSA*, );
    int BN_BLINDING_unlock(BN_BLINDING*, );
    int pthread_attr_getscope(const(pthread_attr_t)*, int*, );
    struct _Anonymous_47
    {
        ubyte* out_;
        const(ubyte)* inp;
        size_t len;
        uint interleave;
    }
    alias EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM = _Anonymous_47;
    EVP_PKEY* NETSCAPE_SPKI_get_pubkey(NETSCAPE_SPKI*, );






    X509_STORE_CTX_check_crl_fn X509_STORE_CTX_get_check_crl(X509_STORE_CTX*, );
    DSA* PEM_read_bio_DSAparams(BIO*, DSA**, pem_password_cb*, void*, );
    DSA* PEM_read_DSAparams(FILE*, DSA**, pem_password_cb*, void*, );
    int PEM_write_DSAparams(FILE*, const(DSA)*, );
    int PEM_write_bio_DSAparams(BIO*, const(DSA)*, );


    RSA* RSAPrivateKey_dup(RSA*, );
    int NETSCAPE_SPKI_set_pubkey(NETSCAPE_SPKI*, EVP_PKEY*, );
    X509_STORE_CTX_cert_crl_fn X509_STORE_CTX_get_cert_crl(X509_STORE_CTX*, );
    X509_STORE_CTX_check_policy_fn X509_STORE_CTX_get_check_policy(X509_STORE_CTX*, );


    c_ulong BN_BLINDING_get_flags(const(BN_BLINDING)*, );


    alias __io_seek_fn = int function(void*, __off64_t*, int);
    X509_STORE_CTX_lookup_certs_fn X509_STORE_CTX_get_lookup_certs(X509_STORE_CTX*, );






    int NETSCAPE_SPKI_print(BIO*, NETSCAPE_SPKI*, );
    void BN_BLINDING_set_flags(BN_BLINDING*, c_ulong, );
    EC_GROUP* EC_GROUP_new_from_ecparameters(const(ECPARAMETERS)*, );
    X509_STORE_CTX_lookup_crls_fn X509_STORE_CTX_get_lookup_crls(X509_STORE_CTX*, );
    BN_BLINDING* BN_BLINDING_create_param(BN_BLINDING*, const(BIGNUM)*, BIGNUM*, BN_CTX*, int function(bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*), BN_MONT_CTX*, );
    int PEM_write_ECPKParameters(FILE*, const(EC_GROUP)*, );
    EC_GROUP* PEM_read_bio_ECPKParameters(BIO*, EC_GROUP**, pem_password_cb*, void*, );
    EC_GROUP* PEM_read_ECPKParameters(FILE*, EC_GROUP**, pem_password_cb*, void*, );
    int PEM_write_bio_ECPKParameters(BIO*, const(EC_GROUP)*, );
    X509_STORE_CTX_cleanup_fn X509_STORE_CTX_get_cleanup(X509_STORE_CTX*, );
    double drand48();
    int X509_signature_dump(BIO*, const(ASN1_STRING)*, int, );
    EC_KEY* PEM_read_ECPrivateKey(FILE*, EC_KEY**, pem_password_cb*, void*, );


    int PEM_write_ECPrivateKey(FILE*, EC_KEY*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    int PEM_write_bio_ECPrivateKey(BIO*, EC_KEY*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );
    int pthread_attr_setscope(pthread_attr_t*, int, );


    EC_KEY* PEM_read_bio_ECPrivateKey(BIO*, EC_KEY**, pem_password_cb*, void*, );
    int PEM_write_bio_EC_PUBKEY(BIO*, EC_KEY*, );
    int PEM_write_EC_PUBKEY(FILE*, EC_KEY*, );
    EC_KEY* PEM_read_bio_EC_PUBKEY(BIO*, EC_KEY**, pem_password_cb*, void*, );
    EC_KEY* PEM_read_EC_PUBKEY(FILE*, EC_KEY**, pem_password_cb*, void*, );
    int X509_signature_print(BIO*, const(X509_ALGOR)*, const(ASN1_STRING)*, );
    double erand48(ushort*, );


    int CRYPTO_memcmp(const(void)*, const(void)*, size_t, );
    alias __io_close_fn = int function(void*);
    int X509_sign(X509*, EVP_PKEY*, const(EVP_MD)*, );
    int pthread_attr_getstackaddr(const(pthread_attr_t)*, void**, );






    DH* PEM_read_bio_DHparams(BIO*, DH**, pem_password_cb*, void*, );
    DH* PEM_read_DHparams(FILE*, DH**, pem_password_cb*, void*, );
    int PEM_write_bio_DHparams(BIO*, const(DH)*, );
    int PEM_write_DHparams(FILE*, const(DH)*, );
    c_long lrand48();
    int X509_sign_ctx(X509*, EVP_MD_CTX*, );


    c_long nrand48(ushort*, );






    int PEM_write_DHxparams(FILE*, const(DH)*, );
    int PEM_write_bio_DHxparams(BIO*, const(DH)*, );
    int X509_http_nbio(OCSP_REQ_CTX*, X509**, );




    EVP_PKEY* PEM_read_bio_PrivateKey(BIO*, EVP_PKEY**, pem_password_cb*, void*, );
    EVP_PKEY* PEM_read_PrivateKey(FILE*, EVP_PKEY**, pem_password_cb*, void*, );
    int PEM_write_bio_PrivateKey(BIO*, EVP_PKEY*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );


    ECPARAMETERS* EC_GROUP_get_ecparameters(const(EC_GROUP)*, ECPARAMETERS*, );






    int PEM_write_PrivateKey(FILE*, EVP_PKEY*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );


    EVP_PKEY* PEM_read_bio_PUBKEY(BIO*, EVP_PKEY**, pem_password_cb*, void*, );


    int PEM_write_bio_PUBKEY(BIO*, EVP_PKEY*, );
    int PEM_write_PUBKEY(FILE*, EVP_PKEY*, );
    EVP_PKEY* PEM_read_PUBKEY(FILE*, EVP_PKEY**, pem_password_cb*, void*, );




    void BN_set_params(int, int, int, int, );
    int X509_REQ_sign(X509_REQ*, EVP_PKEY*, const(EVP_MD)*, );




    int i2d_SCT_LIST(const(stack_st_SCT)*, ubyte**, );






    c_long mrand48();




    int BN_get_params(int, );


    int X509_REQ_sign_ctx(X509_REQ*, EVP_MD_CTX*, );
    c_long jrand48(ushort*, );


    int PEM_write_bio_PrivateKey_traditional(BIO*, EVP_PKEY*, const(EVP_CIPHER)*, ubyte*, int, pem_password_cb*, void*, );




    int X509_CRL_sign(X509_CRL*, EVP_PKEY*, const(EVP_MD)*, );







    X509_LOOKUP* X509_STORE_add_lookup(X509_STORE*, X509_LOOKUP_METHOD*, );
    int pthread_attr_setstackaddr(pthread_attr_t*, void*, );






    int X509_CRL_sign_ctx(X509_CRL*, EVP_MD_CTX*, );


    X509_LOOKUP_METHOD* X509_LOOKUP_hash_dir();
    int vdprintf(int, const(char)*, va_list, );




    BN_RECP_CTX* BN_RECP_CTX_new();
    X509_LOOKUP_METHOD* X509_LOOKUP_file();




    void srand48(c_long, );




    void BN_RECP_CTX_free(BN_RECP_CTX*, );






    int X509_CRL_http_nbio(OCSP_REQ_CTX*, X509_CRL**, );




    int BN_RECP_CTX_set(BN_RECP_CTX*, const(BIGNUM)*, BN_CTX*, );
    EC_GROUP* EC_GROUP_new_from_ecpkparameters(const(ECPKPARAMETERS)*, );


    int X509_STORE_add_cert(X509_STORE*, X509*, );
    int PEM_write_bio_PKCS8PrivateKey_nid(BIO*, EVP_PKEY*, int, char*, int, pem_password_cb*, void*, );




    ushort* seed48(ushort*, );


    alias EVP_CIPHER_INFO = evp_cipher_info_st;
    struct evp_cipher_info_st
    {
        const(EVP_CIPHER)* cipher;
        ubyte[16] iv;
    }


    int X509_STORE_add_crl(X509_STORE*, X509_CRL*, );






    int NETSCAPE_SPKI_sign(NETSCAPE_SPKI*, EVP_PKEY*, const(EVP_MD)*, );
    int dprintf(int, const(char)*, ...);
    int BN_mod_mul_reciprocal(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_RECP_CTX*, BN_CTX*, );
    int pthread_attr_getstacksize(const(pthread_attr_t)*, size_t*, );
    void lcong48(ushort*, );
    int PEM_write_bio_PKCS8PrivateKey(BIO*, EVP_PKEY*, const(EVP_CIPHER)*, char*, int, pem_password_cb*, void*, );
    int X509_STORE_CTX_get_by_subject(X509_STORE_CTX*, X509_LOOKUP_TYPE, X509_NAME*, X509_OBJECT*, );
    int X509_pubkey_digest(const(X509)*, const(EVP_MD)*, ubyte*, uint*, );
    int BN_mod_exp_recp(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int i2d_PKCS8PrivateKey_bio(BIO*, EVP_PKEY*, const(EVP_CIPHER)*, char*, int, pem_password_cb*, void*, );
    X509_OBJECT* X509_STORE_CTX_get_obj_by_subject(X509_STORE_CTX*, X509_LOOKUP_TYPE, X509_NAME*, );






    int BN_div_recp(BIGNUM*, BIGNUM*, const(BIGNUM)*, BN_RECP_CTX*, BN_CTX*, );
    RSA_METHOD* RSA_meth_new(const(char)*, int, );


    int X509_digest(const(X509)*, const(EVP_MD)*, ubyte*, uint*, );






    void RSA_meth_free(RSA_METHOD*, );
    stack_st_SCT* d2i_SCT_LIST(stack_st_SCT**, const(ubyte)**, c_long, );






    RSA_METHOD* RSA_meth_dup(const(RSA_METHOD)*, );
    int X509_CRL_digest(const(X509_CRL)*, const(EVP_MD)*, ubyte*, uint*, );
    struct drand48_data
    {
        ushort[3] __x;
        ushort[3] __old_x;
        ushort __c;
        ushort __init;
        ulong __a;
    }




    ECPKPARAMETERS* EC_GROUP_get_ecpkparameters(const(EC_GROUP)*, ECPKPARAMETERS*, );


    const(char)* RSA_meth_get0_name(const(RSA_METHOD)*, );


    alias EVP_PBE_KEYGEN = int function(EVP_CIPHER_CTX*, const(char)*, int, ASN1_TYPE*, const(EVP_CIPHER)*, const(EVP_MD)*, int);
    int i2d_PKCS8PrivateKey_nid_bio(BIO*, EVP_PKEY*, int, char*, int, pem_password_cb*, void*, );




    int X509_LOOKUP_ctrl(X509_LOOKUP*, int, const(char)*, c_long, char**, );
    int pthread_attr_setstacksize(pthread_attr_t*, size_t, );
    int RSA_meth_set1_name(RSA_METHOD*, const(char)*, );


    int X509_REQ_digest(const(X509_REQ)*, const(EVP_MD)*, ubyte*, uint*, );
    int RSA_meth_get_flags(RSA_METHOD*, );


    int RSA_meth_set_flags(RSA_METHOD*, int, );


    int X509_NAME_digest(const(X509_NAME)*, const(EVP_MD)*, ubyte*, uint*, );




    EVP_PKEY* d2i_PKCS8PrivateKey_bio(BIO*, EVP_PKEY**, pem_password_cb*, void*, );
    int X509_load_cert_file(X509_LOOKUP*, const(char)*, int, );


    void* RSA_meth_get0_app_data(const(RSA_METHOD)*, );






    int X509_load_crl_file(X509_LOOKUP*, const(char)*, int, );


    int RSA_meth_set0_app_data(RSA_METHOD*, void*, );






    int X509_load_cert_crl_file(X509_LOOKUP*, const(char)*, int, );



    int function(int, const(ubyte)*, ubyte*, rsa_st*, int) RSA_meth_get_pub_enc(int, const(ubyte)*, ubyte*, RSA*, int, const(RSA_METHOD)*, );






    alias EC_builtin_curve = _Anonymous_48;
    struct _Anonymous_48
    {
        int nid;
        const(char)* comment;
    }
    int pthread_attr_getstack(const(pthread_attr_t)*, void**, size_t*, );


    int i2d_PKCS8PrivateKey_fp(FILE*, EVP_PKEY*, const(EVP_CIPHER)*, char*, int, pem_password_cb*, void*, );


    X509* d2i_X509_fp(FILE*, X509**, );
    int i2d_X509_fp(FILE*, X509*, );
    X509_LOOKUP* X509_LOOKUP_new(X509_LOOKUP_METHOD*, );
    int scanf(const(char)*, ...);


    int RSA_meth_set_pub_enc(RSA_METHOD*, int function(int, const(ubyte)*, ubyte*, rsa_st*, int), );
    X509_CRL* d2i_X509_CRL_fp(FILE*, X509_CRL**, );
    void X509_LOOKUP_free(X509_LOOKUP*, );






    int __underflow(_IO_FILE*, );






    int X509_LOOKUP_init(X509_LOOKUP*, );
    int i2d_PKCS8PrivateKey_nid_fp(FILE*, EVP_PKEY*, int, char*, int, pem_password_cb*, void*, );


    int i2o_SCT(const(SCT)*, ubyte**, );
    int i2d_X509_CRL_fp(FILE*, X509_CRL*, );
    void OPENSSL_cleanup();
    int drand48_r(drand48_data*, double*, );
    int X509_LOOKUP_by_subject(X509_LOOKUP*, X509_LOOKUP_TYPE, X509_NAME*, X509_OBJECT*, );


    int __uflow(_IO_FILE*, );
    X509_REQ* d2i_X509_REQ_fp(FILE*, X509_REQ**, );







    int BN_GF2m_add(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );
    int __overflow(_IO_FILE*, int, );


    int i2d_X509_REQ_fp(FILE*, X509_REQ*, );




    int OPENSSL_init_crypto(uint64_t, const(OPENSSL_INIT_SETTINGS)*, );


    int function(int, const(ubyte)*, ubyte*, rsa_st*, int) RSA_meth_get_pub_dec(int, const(ubyte)*, ubyte*, RSA*, int, const(RSA_METHOD)*, );


    int PEM_write_PKCS8PrivateKey_nid(FILE*, EVP_PKEY*, int, char*, int, pem_password_cb*, void*, );


    int OPENSSL_atexit(void function(), );
    int erand48_r(ushort*, drand48_data*, double*, );




    int X509_LOOKUP_by_issuer_serial(X509_LOOKUP*, X509_LOOKUP_TYPE, X509_NAME*, ASN1_INTEGER*, X509_OBJECT*, );




    RSA* d2i_RSAPrivateKey_fp(FILE*, RSA**, );






    void OPENSSL_thread_stop();


    int i2d_RSAPrivateKey_fp(FILE*, RSA*, );
    int pthread_attr_setstack(pthread_attr_t*, void*, size_t, );
    int RSA_meth_set_pub_dec(RSA_METHOD*, int function(int, const(ubyte)*, ubyte*, rsa_st*, int), );


    int X509_LOOKUP_by_fingerprint(X509_LOOKUP*, X509_LOOKUP_TYPE, const(ubyte)*, int, X509_OBJECT*, );



    RSA* d2i_RSAPublicKey_fp(FILE*, RSA**, );
    OPENSSL_INIT_SETTINGS* OPENSSL_INIT_new();
    EVP_PKEY* d2i_PKCS8PrivateKey_fp(FILE*, EVP_PKEY**, pem_password_cb*, void*, );
    int i2d_RSAPublicKey_fp(FILE*, RSA*, );
    int BN_GF2m_mod(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, );
    RSA* d2i_RSA_PUBKEY_fp(FILE*, RSA**, );




    size_t EC_get_builtin_curves(EC_builtin_curve*, size_t, );




    int lrand48_r(drand48_data*, c_long*, );






    int OPENSSL_INIT_set_config_appname(OPENSSL_INIT_SETTINGS*, const(char)*, );
    int i2d_RSA_PUBKEY_fp(FILE*, RSA*, );
    int X509_LOOKUP_by_alias(X509_LOOKUP*, X509_LOOKUP_TYPE, const(char)*, int, X509_OBJECT*, );
    int BN_GF2m_mod_mul(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int PEM_write_PKCS8PrivateKey(FILE*, EVP_PKEY*, const(EVP_CIPHER)*, char*, int, pem_password_cb*, void*, );


    int function(int, const(ubyte)*, ubyte*, rsa_st*, int) RSA_meth_get_priv_enc(int, const(ubyte)*, ubyte*, RSA*, int, const(RSA_METHOD)*, );
    const(char)* EC_curve_nid2nist(int, );
    int fscanf(FILE*, const(char)*, ...);
    int EC_curve_nist2nid(const(char)*, );
    int nrand48_r(ushort*, drand48_data*, c_long*, );






    int X509_LOOKUP_shutdown(X509_LOOKUP*, );
    int BN_GF2m_mod_sqr(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    void OPENSSL_INIT_free(OPENSSL_INIT_SETTINGS*, );


    DSA* d2i_DSA_PUBKEY_fp(FILE*, DSA**, );
    int RSA_meth_set_priv_enc(RSA_METHOD*, int function(int, const(ubyte)*, ubyte*, rsa_st*, int), );




    SCT* o2i_SCT(SCT**, const(ubyte)**, size_t, );
    int X509_STORE_load_locations(X509_STORE*, const(char)*, const(char)*, );
    int i2d_DSA_PUBKEY_fp(FILE*, DSA*, );


    EVP_PKEY* PEM_read_bio_Parameters(BIO*, EVP_PKEY**, );




    DSA* d2i_DSAPrivateKey_fp(FILE*, DSA**, );
    int BN_GF2m_mod_inv(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int sscanf(const(char)*, const(char)*, ...);
    int i2d_DSAPrivateKey_fp(FILE*, DSA*, );
    int X509_STORE_set_default_paths(X509_STORE*, );






    int PEM_write_bio_Parameters(BIO*, EVP_PKEY*, );
    int BN_GF2m_mod_div(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );






    int function(int, const(ubyte)*, ubyte*, rsa_st*, int) RSA_meth_get_priv_dec(int, const(ubyte)*, ubyte*, RSA*, int, const(RSA_METHOD)*, );







    int mrand48_r(drand48_data*, c_long*, );






    EC_KEY* d2i_EC_PUBKEY_fp(FILE*, EC_KEY**, );


    EVP_PKEY* b2i_PrivateKey(const(ubyte)**, c_long, );
    int X509_STORE_CTX_set_ex_data(X509_STORE_CTX*, int, void*, );
    int i2d_EC_PUBKEY_fp(FILE*, EC_KEY*, );
    EVP_PKEY* b2i_PublicKey(const(ubyte)**, c_long, );
    int BN_GF2m_mod_exp(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );


    int jrand48_r(ushort*, drand48_data*, c_long*, );


    EC_KEY* d2i_ECPrivateKey_fp(FILE*, EC_KEY**, );
    EVP_PKEY* b2i_PrivateKey_bio(BIO*, );




    int RSA_meth_set_priv_dec(RSA_METHOD*, int function(int, const(ubyte)*, ubyte*, rsa_st*, int), );
    void* X509_STORE_CTX_get_ex_data(X509_STORE_CTX*, int, );
    int X509_STORE_CTX_get_error(X509_STORE_CTX*, );


    EVP_PKEY* b2i_PublicKey_bio(BIO*, );
    int EVP_MD_type(const(EVP_MD)*, );


    int i2d_ECPrivateKey_fp(FILE*, EC_KEY*, );


    EC_POINT* EC_POINT_new(const(EC_GROUP)*, );
    void X509_STORE_CTX_set_error(X509_STORE_CTX*, int, );
    int BN_GF2m_mod_sqrt(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int i2b_PrivateKey_bio(BIO*, EVP_PKEY*, );




    int i2b_PublicKey_bio(BIO*, EVP_PKEY*, );


    X509_SIG* d2i_PKCS8_fp(FILE*, X509_SIG**, );
    int X509_STORE_CTX_get_error_depth(X509_STORE_CTX*, );






    int function(bignum_st*, const(bignum_st)*, rsa_st*, bignum_ctx*) RSA_meth_get_mod_exp(BIGNUM*, const(BIGNUM)*, RSA*, BN_CTX*, const(RSA_METHOD)*, );


    int i2d_PKCS8_fp(FILE*, X509_SIG*, );


    int EVP_MD_pkey_type(const(EVP_MD)*, );
    void X509_STORE_CTX_set_error_depth(X509_STORE_CTX*, int, );
    int BN_GF2m_mod_solve_quad(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    PKCS8_PRIV_KEY_INFO* d2i_PKCS8_PRIV_KEY_INFO_fp(FILE*, PKCS8_PRIV_KEY_INFO**, );
    int EVP_MD_size(const(EVP_MD)*, );


    X509* X509_STORE_CTX_get_current_cert(X509_STORE_CTX*, );
    CTLOG* CTLOG_new(EVP_PKEY*, const(char)*, );
    EVP_PKEY* b2i_PVK_bio(BIO*, pem_password_cb*, void*, );


    int srand48_r(c_long, drand48_data*, );
    alias CRYPTO_ONCE = int;


    int EVP_MD_block_size(const(EVP_MD)*, );


    void EC_POINT_free(EC_POINT*, );
    void X509_STORE_CTX_set_current_cert(X509_STORE_CTX*, X509*, );


    int i2b_PVK_bio(BIO*, EVP_PKEY*, int, pem_password_cb*, void*, );
    int RSA_meth_set_mod_exp(RSA_METHOD*, int function(bignum_st*, const(bignum_st)*, rsa_st*, bignum_ctx*), );
    X509* X509_STORE_CTX_get0_current_issuer(X509_STORE_CTX*, );
    alias CRYPTO_THREAD_LOCAL = uint;




    int i2d_PKCS8_PRIV_KEY_INFO_fp(FILE*, PKCS8_PRIV_KEY_INFO*, );


    c_ulong EVP_MD_flags(const(EVP_MD)*, );


    alias CRYPTO_THREAD_ID = c_ulong;
    X509_CRL* X509_STORE_CTX_get0_current_crl(X509_STORE_CTX*, );




    int i2d_PKCS8PrivateKeyInfo_fp(FILE*, EVP_PKEY*, );


    int function(bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*) RSA_meth_get_bn_mod_exp(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, BN_MONT_CTX*, const(RSA_METHOD)*, );
    X509_STORE_CTX* X509_STORE_CTX_get0_parent_ctx(X509_STORE_CTX*, );
    int seed48_r(ushort*, drand48_data*, );




    int i2d_PrivateKey_fp(FILE*, EVP_PKEY*, );


    const(EVP_MD)* EVP_MD_CTX_md(const(EVP_MD_CTX)*, );






    EVP_PKEY* d2i_PrivateKey_fp(FILE*, EVP_PKEY**, );




    stack_st_X509* X509_STORE_CTX_get0_chain(X509_STORE_CTX*, );


    int function(evp_md_ctx_st*, const(void)*, c_ulong) EVP_MD_CTX_update_fn(EVP_MD_CTX*, const(void)*, size_t, EVP_MD_CTX*, );




    int i2d_PUBKEY_fp(FILE*, EVP_PKEY*, );
    void EC_POINT_clear_free(EC_POINT*, );
    stack_st_X509* X509_STORE_CTX_get1_chain(X509_STORE_CTX*, );




    int RSA_meth_set_bn_mod_exp(RSA_METHOD*, int function(bignum_st*, const(bignum_st)*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*, bn_mont_ctx_st*), );
    int lcong48_r(ushort*, drand48_data*, );
    void X509_STORE_CTX_set_cert(X509_STORE_CTX*, X509*, );



    EVP_PKEY* d2i_PUBKEY_fp(FILE*, EVP_PKEY**, );
    void EVP_MD_CTX_set_update_fn(EVP_MD_CTX*, int function(evp_md_ctx_st*, const(void)*, c_ulong), );
    int CTLOG_new_from_base64(CTLOG**, const(char)*, const(char)*, );


    void X509_STORE_CTX_set0_verified_chain(X509_STORE_CTX*, stack_st_X509*, );


    void X509_STORE_CTX_set0_crls(X509_STORE_CTX*, stack_st_X509_CRL*, );




    int vfscanf(FILE*, const(char)*, va_list, );
    X509* d2i_X509_bio(BIO*, X509**, );


    int BN_GF2m_mod_arr(BIGNUM*, const(BIGNUM)*, const(int)*, );
    int X509_STORE_CTX_set_purpose(X509_STORE_CTX*, int, );


    int i2d_X509_bio(BIO*, X509*, );







    alias lua_Hook = void function(lua_State*, lua_Debug*);


    int X509_STORE_CTX_set_trust(X509_STORE_CTX*, int, );
    int ERR_load_PEM_strings();




    int BN_GF2m_mod_mul_arr(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(int)*, BN_CTX*, );




    int X509_STORE_CTX_purpose_inherit(X509_STORE_CTX*, int, int, int, );
    X509_CRL* d2i_X509_CRL_bio(BIO*, X509_CRL**, );
    int i2d_X509_CRL_bio(BIO*, X509_CRL*, );
    EVP_PKEY_CTX* EVP_MD_CTX_pkey_ctx(const(EVP_MD_CTX)*, );




    int EC_POINT_copy(EC_POINT*, const(EC_POINT)*, );


    void X509_STORE_CTX_set_flags(X509_STORE_CTX*, c_ulong, );
    X509_REQ* d2i_X509_REQ_bio(BIO*, X509_REQ**, );
    void* EVP_MD_CTX_md_data(const(EVP_MD_CTX)*, );


    void* malloc(size_t, );
    int lua_getstack(lua_State*, int, lua_Debug*, );
    void CTLOG_free(CTLOG*, );



    int function(rsa_st*) RSA_meth_get_init(RSA*, const(RSA_METHOD)*, );


    int RSA_meth_set_init(RSA_METHOD*, int function(rsa_st*), );
    int BN_GF2m_mod_sqr_arr(BIGNUM*, const(BIGNUM)*, const(int)*, BN_CTX*, );


    int lua_getinfo(lua_State*, const(char)*, lua_Debug*, );


    void X509_STORE_CTX_set_time(X509_STORE_CTX*, c_ulong, time_t, );
    int i2d_X509_REQ_bio(BIO*, X509_REQ*, );
    struct _Anonymous_49
    {
        long __max_align_ll;
        real __max_align_ld;
    }
    void* calloc(size_t, size_t, );
    int function(rsa_st*) RSA_meth_get_finish(RSA*, const(RSA_METHOD)*, );
    int CRYPTO_THREAD_run_once(CRYPTO_ONCE*, void function(), );
    int EVP_CIPHER_nid(const(EVP_CIPHER)*, );


    const(char)* lua_getlocal(lua_State*, const(lua_Debug)*, int, );





    alias max_align_t = _Anonymous_49;






    RSA* d2i_RSAPrivateKey_bio(BIO*, RSA**, );
    const(char)* lua_setlocal(lua_State*, const(lua_Debug)*, int, );


    int RSA_meth_set_finish(RSA_METHOD*, int function(rsa_st*), );
    const(char)* CTLOG_get0_name(const(CTLOG)*, );



    int i2d_RSAPrivateKey_bio(BIO*, RSA*, );
    int function(int, const(ubyte)*, uint, ubyte*, uint*, const(rsa_st)*) RSA_meth_get_sign(int, const(ubyte)*, uint, ubyte*, uint*, const(RSA)*, const(RSA_METHOD)*, );
    X509_POLICY_TREE* X509_STORE_CTX_get0_policy_tree(X509_STORE_CTX*, );


    int BN_GF2m_mod_inv_arr(BIGNUM*, const(BIGNUM)*, const(int)*, BN_CTX*, );
    int EVP_CIPHER_block_size(const(EVP_CIPHER)*, );


    int CRYPTO_THREAD_init_local(CRYPTO_THREAD_LOCAL*, void function(void*), );
    const(char)* lua_getupvalue(lua_State*, int, int, );


    int _IO_getc(_IO_FILE*, );
    int EVP_CIPHER_impl_ctx_size(const(EVP_CIPHER)*, );
    void* CRYPTO_THREAD_get_local(CRYPTO_THREAD_LOCAL*, );
    int X509_STORE_CTX_get_explicit_policy(X509_STORE_CTX*, );
    const(char)* lua_setupvalue(lua_State*, int, int, );


    void CTLOG_get0_log_id(const(CTLOG)*, const(uint8_t)**, size_t*, );


    RSA* d2i_RSAPublicKey_bio(BIO*, RSA**, );


    int pthread_setschedparam(pthread_t, int, const(sched_param)*, );
    int _IO_putc(int, _IO_FILE*, );
    int EVP_CIPHER_key_length(const(EVP_CIPHER)*, );


    int i2d_RSAPublicKey_bio(BIO*, RSA*, );


    int CRYPTO_THREAD_set_local(CRYPTO_THREAD_LOCAL*, void*, );
    int X509_STORE_CTX_get_num_untrusted(X509_STORE_CTX*, );
    int EVP_CIPHER_iv_length(const(EVP_CIPHER)*, );


    void* lua_upvalueid(lua_State*, int, int, );
    int _IO_feof(_IO_FILE*, );


    int BN_GF2m_mod_div_arr(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(int)*, BN_CTX*, );
    RSA* d2i_RSA_PUBKEY_bio(BIO*, RSA**, );
    int CRYPTO_THREAD_cleanup_local(CRYPTO_THREAD_LOCAL*, );
    EC_POINT* EC_POINT_dup(const(EC_POINT)*, const(EC_GROUP)*, );




    c_ulong EVP_CIPHER_flags(const(EVP_CIPHER)*, );
    int vsscanf(const(char)*, const(char)*, va_list, );
    EVP_PKEY* CTLOG_get0_public_key(const(CTLOG)*, );
    int i2d_RSA_PUBKEY_bio(BIO*, RSA*, );
    int _IO_ferror(_IO_FILE*, );
    X509_VERIFY_PARAM* X509_STORE_CTX_get0_param(X509_STORE_CTX*, );
    void lua_upvaluejoin(lua_State*, int, int, int, int, );






    void X509_STORE_CTX_set0_param(X509_STORE_CTX*, X509_VERIFY_PARAM*, );


    CRYPTO_THREAD_ID CRYPTO_THREAD_get_current_id();
    int RSA_meth_set_sign(RSA_METHOD*, int function(int, const(ubyte)*, uint, ubyte*, uint*, const(rsa_st)*), );


    int BN_GF2m_mod_exp_arr(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(int)*, BN_CTX*, );




    void* realloc(void*, size_t, );
    int _IO_peekc_locked(_IO_FILE*, );
    int CRYPTO_THREAD_compare_id(CRYPTO_THREAD_ID, CRYPTO_THREAD_ID, );
    int X509_STORE_CTX_set_default(X509_STORE_CTX*, const(char)*, );


    void lua_sethook(lua_State*, lua_Hook, int, int, );
    DSA* d2i_DSA_PUBKEY_bio(BIO*, DSA**, );
    int pthread_getschedparam(pthread_t, int*, sched_param*, );
    const(EVP_CIPHER)* EVP_CIPHER_CTX_cipher(const(EVP_CIPHER_CTX)*, );




    int i2d_DSA_PUBKEY_bio(BIO*, DSA*, );



    lua_Hook lua_gethook(lua_State*, );






    int EVP_CIPHER_CTX_encrypting(const(EVP_CIPHER_CTX)*, );
    int lua_gethookmask(lua_State*, );


    ASN1_INTEGER* sk_ASN1_INTEGER_shift(stack_st_ASN1_INTEGER*, );
    ASN1_INTEGER* sk_ASN1_INTEGER_delete_ptr(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, );
    ASN1_INTEGER* sk_ASN1_INTEGER_delete(stack_st_ASN1_INTEGER*, int, );
    int sk_ASN1_INTEGER_unshift(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, );
    void sk_ASN1_INTEGER_zero(stack_st_ASN1_INTEGER*, );
    void sk_ASN1_INTEGER_free(stack_st_ASN1_INTEGER*, );
    stack_st_ASN1_INTEGER* sk_ASN1_INTEGER_new_null();
    stack_st_ASN1_INTEGER* sk_ASN1_INTEGER_new(sk_ASN1_INTEGER_compfunc, );
    ASN1_INTEGER* sk_ASN1_INTEGER_value(const(stack_st_ASN1_INTEGER)*, int, );
    int sk_ASN1_INTEGER_num(const(stack_st_ASN1_INTEGER)*, );
    alias sk_ASN1_INTEGER_copyfunc = asn1_string_st* function(const(ASN1_INTEGER)*);
    alias sk_ASN1_INTEGER_freefunc = void function(ASN1_INTEGER*);
    alias sk_ASN1_INTEGER_compfunc = int function(const(const(ASN1_INTEGER)*)*, const(const(ASN1_INTEGER)*)*);
    struct stack_st_ASN1_INTEGER;
    ASN1_INTEGER* sk_ASN1_INTEGER_pop(stack_st_ASN1_INTEGER*, );
    void sk_ASN1_INTEGER_pop_free(stack_st_ASN1_INTEGER*, sk_ASN1_INTEGER_freefunc, );
    int sk_ASN1_INTEGER_push(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, );
    int sk_ASN1_INTEGER_insert(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, int, );
    ASN1_INTEGER* sk_ASN1_INTEGER_set(stack_st_ASN1_INTEGER*, int, ASN1_INTEGER*, );
    int sk_ASN1_INTEGER_find(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, );
    int sk_ASN1_INTEGER_find_ex(stack_st_ASN1_INTEGER*, ASN1_INTEGER*, );
    void sk_ASN1_INTEGER_sort(stack_st_ASN1_INTEGER*, );
    int sk_ASN1_INTEGER_is_sorted(const(stack_st_ASN1_INTEGER)*, );
    stack_st_ASN1_INTEGER* sk_ASN1_INTEGER_dup(const(stack_st_ASN1_INTEGER)*, );
    stack_st_ASN1_INTEGER* sk_ASN1_INTEGER_deep_copy(const(stack_st_ASN1_INTEGER)*, sk_ASN1_INTEGER_copyfunc, sk_ASN1_INTEGER_freefunc, );
    sk_ASN1_INTEGER_compfunc sk_ASN1_INTEGER_set_cmp_func(stack_st_ASN1_INTEGER*, sk_ASN1_INTEGER_compfunc, );


    int EVP_CIPHER_CTX_nid(const(EVP_CIPHER_CTX)*, );
    const(EC_METHOD)* EC_POINT_method_of(const(EC_POINT)*, );



    DSA* d2i_DSAPrivateKey_bio(BIO*, DSA**, );
    int BN_GF2m_mod_sqrt_arr(BIGNUM*, const(BIGNUM)*, const(int)*, BN_CTX*, );
    int lua_gethookcount(lua_State*, );
    int function(int, const(ubyte)*, uint, const(ubyte)*, uint, const(rsa_st)*) RSA_meth_get_verify(int, const(ubyte)*, uint, const(ubyte)*, uint, const(RSA)*, const(RSA_METHOD)*, );
    int i2d_DSAPrivateKey_bio(BIO*, DSA*, );
    int EVP_CIPHER_CTX_block_size(const(EVP_CIPHER_CTX)*, );
    int EVP_CIPHER_CTX_key_length(const(EVP_CIPHER_CTX)*, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_shift(stack_st_ASN1_GENERALSTRING*, );
    stack_st_ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_deep_copy(const(stack_st_ASN1_GENERALSTRING)*, sk_ASN1_GENERALSTRING_copyfunc, sk_ASN1_GENERALSTRING_freefunc, );
    stack_st_ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_dup(const(stack_st_ASN1_GENERALSTRING)*, );
    int sk_ASN1_GENERALSTRING_is_sorted(const(stack_st_ASN1_GENERALSTRING)*, );
    void sk_ASN1_GENERALSTRING_sort(stack_st_ASN1_GENERALSTRING*, );
    int sk_ASN1_GENERALSTRING_find_ex(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, );
    int sk_ASN1_GENERALSTRING_find(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_set(stack_st_ASN1_GENERALSTRING*, int, ASN1_GENERALSTRING*, );
    int sk_ASN1_GENERALSTRING_insert(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, int, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_delete(stack_st_ASN1_GENERALSTRING*, int, );
    void sk_ASN1_GENERALSTRING_pop_free(stack_st_ASN1_GENERALSTRING*, sk_ASN1_GENERALSTRING_freefunc, );
    void sk_ASN1_GENERALSTRING_zero(stack_st_ASN1_GENERALSTRING*, );
    struct stack_st_ASN1_GENERALSTRING;
    alias sk_ASN1_GENERALSTRING_compfunc = int function(const(const(ASN1_GENERALSTRING)*)*, const(const(ASN1_GENERALSTRING)*)*);
    alias sk_ASN1_GENERALSTRING_freefunc = void function(ASN1_GENERALSTRING*);
    void sk_ASN1_GENERALSTRING_free(stack_st_ASN1_GENERALSTRING*, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_delete_ptr(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, );
    int sk_ASN1_GENERALSTRING_push(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, );
    int sk_ASN1_GENERALSTRING_unshift(stack_st_ASN1_GENERALSTRING*, ASN1_GENERALSTRING*, );
    alias sk_ASN1_GENERALSTRING_copyfunc = asn1_string_st* function(const(ASN1_GENERALSTRING)*);
    int sk_ASN1_GENERALSTRING_num(const(stack_st_ASN1_GENERALSTRING)*, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_pop(stack_st_ASN1_GENERALSTRING*, );
    ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_value(const(stack_st_ASN1_GENERALSTRING)*, int, );
    stack_st_ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_new(sk_ASN1_GENERALSTRING_compfunc, );
    sk_ASN1_GENERALSTRING_compfunc sk_ASN1_GENERALSTRING_set_cmp_func(stack_st_ASN1_GENERALSTRING*, sk_ASN1_GENERALSTRING_compfunc, );
    stack_st_ASN1_GENERALSTRING* sk_ASN1_GENERALSTRING_new_null();



    int BN_GF2m_mod_solve_quad_arr(BIGNUM*, const(BIGNUM)*, const(int)*, BN_CTX*, );
    int EVP_CIPHER_CTX_iv_length(const(EVP_CIPHER_CTX)*, );


    void X509_STORE_CTX_set0_dane(X509_STORE_CTX*, SSL_DANE*, );
    void _IO_flockfile(_IO_FILE*, );


    stack_st_ASN1_UTF8STRING* sk_ASN1_UTF8STRING_deep_copy(const(stack_st_ASN1_UTF8STRING)*, sk_ASN1_UTF8STRING_copyfunc, sk_ASN1_UTF8STRING_freefunc, );


    EC_KEY* d2i_EC_PUBKEY_bio(BIO*, EC_KEY**, );
    const(ubyte)* EVP_CIPHER_CTX_iv(const(EVP_CIPHER_CTX)*, );
    void _IO_funlockfile(_IO_FILE*, );


    struct lua_Debug
    {
        int event;
        const(char)* name;
        const(char)* namewhat;
        const(char)* what;
        const(char)* source;
        int currentline;
        int linedefined;
        int lastlinedefined;
        ubyte nups;
        ubyte nparams;
        char isvararg;
        char istailcall;
        char[60] short_src;
        CallInfo* i_ci;
    }






    stack_st_ASN1_UTF8STRING* sk_ASN1_UTF8STRING_dup(const(stack_st_ASN1_UTF8STRING)*, );
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_delete(stack_st_ASN1_UTF8STRING*, int, );
    sk_ASN1_UTF8STRING_compfunc sk_ASN1_UTF8STRING_set_cmp_func(stack_st_ASN1_UTF8STRING*, sk_ASN1_UTF8STRING_compfunc, );
    int sk_ASN1_UTF8STRING_is_sorted(const(stack_st_ASN1_UTF8STRING)*, );
    int pthread_setschedprio(pthread_t, int, );
    void sk_ASN1_UTF8STRING_sort(stack_st_ASN1_UTF8STRING*, );
    int sk_ASN1_UTF8STRING_find_ex(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, );
    int sk_ASN1_UTF8STRING_find(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, );
    struct stack_st_ASN1_UTF8STRING;
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_set(stack_st_ASN1_UTF8STRING*, int, ASN1_UTF8STRING*, );
    int sk_ASN1_UTF8STRING_insert(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, int, );
    alias sk_ASN1_UTF8STRING_compfunc = int function(const(const(ASN1_UTF8STRING)*)*, const(const(ASN1_UTF8STRING)*)*);
    alias sk_ASN1_UTF8STRING_freefunc = void function(ASN1_UTF8STRING*);
    alias sk_ASN1_UTF8STRING_copyfunc = asn1_string_st* function(const(ASN1_UTF8STRING)*);
    int sk_ASN1_UTF8STRING_num(const(stack_st_ASN1_UTF8STRING)*, );
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_value(const(stack_st_ASN1_UTF8STRING)*, int, );
    stack_st_ASN1_UTF8STRING* sk_ASN1_UTF8STRING_new(sk_ASN1_UTF8STRING_compfunc, );
    void sk_ASN1_UTF8STRING_pop_free(stack_st_ASN1_UTF8STRING*, sk_ASN1_UTF8STRING_freefunc, );
    stack_st_ASN1_UTF8STRING* sk_ASN1_UTF8STRING_new_null();
    void sk_ASN1_UTF8STRING_free(stack_st_ASN1_UTF8STRING*, );
    void sk_ASN1_UTF8STRING_zero(stack_st_ASN1_UTF8STRING*, );
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_shift(stack_st_ASN1_UTF8STRING*, );
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_pop(stack_st_ASN1_UTF8STRING*, );
    ASN1_UTF8STRING* sk_ASN1_UTF8STRING_delete_ptr(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, );
    int sk_ASN1_UTF8STRING_push(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, );
    int sk_ASN1_UTF8STRING_unshift(stack_st_ASN1_UTF8STRING*, ASN1_UTF8STRING*, );
    int BN_GF2m_poly2arr(const(BIGNUM)*, int*, int, );


    int RSA_meth_set_verify(RSA_METHOD*, int function(int, const(ubyte)*, uint, const(ubyte)*, uint, const(rsa_st)*), );


    const(ubyte)* EVP_CIPHER_CTX_original_iv(const(EVP_CIPHER_CTX)*, );
    int ERR_load_CRYPTO_strings();
    int _IO_ftrylockfile(_IO_FILE*, );
    int i2d_EC_PUBKEY_bio(BIO*, EC_KEY*, );
    CTLOG_STORE* CTLOG_STORE_new();





    ubyte* EVP_CIPHER_CTX_iv_noconst(EVP_CIPHER_CTX*, );




    EC_KEY* d2i_ECPrivateKey_bio(BIO*, EC_KEY**, );
    int BN_GF2m_arr2poly(const(int)*, BIGNUM*, );
    alias ASN1_TYPE = asn1_type_st;
    struct asn1_type_st
    {
        int type;
        union _Anonymous_50
        {
            char* ptr;
            ASN1_BOOLEAN boolean;
            ASN1_STRING* asn1_string;
            ASN1_OBJECT* object;
            ASN1_INTEGER* integer;
            ASN1_ENUMERATED* enumerated;
            ASN1_BIT_STRING* bit_string;
            ASN1_OCTET_STRING* octet_string;
            ASN1_PRINTABLESTRING* printablestring;
            ASN1_T61STRING* t61string;
            ASN1_IA5STRING* ia5string;
            ASN1_GENERALSTRING* generalstring;
            ASN1_BMPSTRING* bmpstring;
            ASN1_UNIVERSALSTRING* universalstring;
            ASN1_UTCTIME* utctime;
            ASN1_GENERALIZEDTIME* generalizedtime;
            ASN1_VISIBLESTRING* visiblestring;
            ASN1_UTF8STRING* utf8string;
            ASN1_STRING* set;
            ASN1_STRING* sequence;
            ASN1_VALUE* asn1_value;
        }
        _Anonymous_50 value;
    }




    ubyte* EVP_CIPHER_CTX_buf_noconst(EVP_CIPHER_CTX*, );





    int EC_POINT_set_to_infinity(const(EC_GROUP)*, EC_POINT*, );


    int i2d_ECPrivateKey_bio(BIO*, EC_KEY*, );
    int EVP_CIPHER_CTX_num(const(EVP_CIPHER_CTX)*, );
    X509_VERIFY_PARAM* X509_VERIFY_PARAM_new();
    void EVP_CIPHER_CTX_set_num(EVP_CIPHER_CTX*, int, );
    X509_SIG* d2i_PKCS8_bio(BIO*, X509_SIG**, );
    void X509_VERIFY_PARAM_free(X509_VERIFY_PARAM*, );
    int EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX*, const(EVP_CIPHER_CTX)*, );


    int i2d_PKCS8_bio(BIO*, X509_SIG*, );




    int X509_VERIFY_PARAM_inherit(X509_VERIFY_PARAM*, const(X509_VERIFY_PARAM)*, );







    void CTLOG_STORE_free(CTLOG_STORE*, );


    int function(rsa_st*, int, bignum_st*, bn_gencb_st*) RSA_meth_get_keygen(RSA*, int, BIGNUM*, BN_GENCB*, const(RSA_METHOD)*, );


    void* EVP_CIPHER_CTX_get_app_data(const(EVP_CIPHER_CTX)*, );
    int vscanf(const(char)*, va_list, );


    PKCS8_PRIV_KEY_INFO* d2i_PKCS8_PRIV_KEY_INFO_bio(BIO*, PKCS8_PRIV_KEY_INFO**, );
    void free(void*, );
    int X509_VERIFY_PARAM_set1(X509_VERIFY_PARAM*, const(X509_VERIFY_PARAM)*, );
    int RSA_meth_set_keygen(RSA_METHOD*, int function(rsa_st*, int, bignum_st*, bn_gencb_st*), );
    void EVP_CIPHER_CTX_set_app_data(EVP_CIPHER_CTX*, void*, );
    int BN_nist_mod_192(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    void* EVP_CIPHER_CTX_get_cipher_data(const(EVP_CIPHER_CTX)*, );




    int i2d_PKCS8_PRIV_KEY_INFO_bio(BIO*, PKCS8_PRIV_KEY_INFO*, );
    int BN_nist_mod_224(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int X509_VERIFY_PARAM_set1_name(X509_VERIFY_PARAM*, const(char)*, );
    int i2d_PKCS8PrivateKeyInfo_bio(BIO*, EVP_PKEY*, );




    void* EVP_CIPHER_CTX_set_cipher_data(EVP_CIPHER_CTX*, void*, );






    int BN_nist_mod_256(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    int X509_VERIFY_PARAM_set_flags(X509_VERIFY_PARAM*, c_ulong, );






    int i2d_PrivateKey_bio(BIO*, EVP_PKEY*, );




    EVP_PKEY* d2i_PrivateKey_bio(BIO*, EVP_PKEY**, );
    const(CTLOG)* CTLOG_STORE_get0_log_by_id(const(CTLOG_STORE)*, const(uint8_t)*, size_t, );



    int BN_nist_mod_384(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );






    int i2d_PUBKEY_bio(BIO*, EVP_PKEY*, );






    int X509_VERIFY_PARAM_clear_flags(X509_VERIFY_PARAM*, c_ulong, );


    int BN_nist_mod_521(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );






    EVP_PKEY* d2i_PUBKEY_bio(BIO*, EVP_PKEY**, );
    int EC_POINT_set_Jprojective_coordinates_GFp(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );




    const(BIGNUM)* BN_get0_nist_prime_192();
    c_ulong X509_VERIFY_PARAM_get_flags(X509_VERIFY_PARAM*, );




    void* valloc(size_t, );


    const(BIGNUM)* BN_get0_nist_prime_224();
    int X509_VERIFY_PARAM_set_purpose(X509_VERIFY_PARAM*, int, );




    X509* X509_dup(X509*, );






    const(BIGNUM)* BN_get0_nist_prime_256();
    X509_ATTRIBUTE* X509_ATTRIBUTE_dup(X509_ATTRIBUTE*, );
    int _IO_vfscanf(_IO_FILE*, const(char)*, va_list, int*, );




    int X509_VERIFY_PARAM_set_trust(X509_VERIFY_PARAM*, int, );
    const(BIGNUM)* BN_get0_nist_prime_384();


    void X509_VERIFY_PARAM_set_depth(X509_VERIFY_PARAM*, int, );
    X509_EXTENSION* X509_EXTENSION_dup(X509_EXTENSION*, );




    int ERR_load_RSA_strings();


    X509_CRL* X509_CRL_dup(X509_CRL*, );


    void X509_VERIFY_PARAM_set_auth_level(X509_VERIFY_PARAM*, int, );




    int _IO_vfprintf(_IO_FILE*, const(char)*, va_list, );


    const(BIGNUM)* BN_get0_nist_prime_521();


    time_t X509_VERIFY_PARAM_get_time(const(X509_VERIFY_PARAM)*, );





    X509_REVOKED* X509_REVOKED_dup(X509_REVOKED*, );
    int CTLOG_STORE_load_file(CTLOG_STORE*, const(char)*, );
    __ssize_t _IO_padn(_IO_FILE*, int, __ssize_t, );
    int posix_memalign(void**, size_t, size_t, );






    int function(bignum_st*, const(bignum_st)*, const(bignum_st)*, bignum_ctx*) BN_nist_mod_func(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, const(BIGNUM)*, );
    void X509_VERIFY_PARAM_set_time(X509_VERIFY_PARAM*, time_t, );
    X509_REQ* X509_REQ_dup(X509_REQ*, );
    int X509_VERIFY_PARAM_add0_policy(X509_VERIFY_PARAM*, ASN1_OBJECT*, );
    size_t _IO_sgetn(_IO_FILE*, void*, size_t, );




    X509_ALGOR* X509_ALGOR_dup(X509_ALGOR*, );
    int X509_ALGOR_set0(X509_ALGOR*, ASN1_OBJECT*, int, void*, );


    int BN_generate_dsa_nonce(BIGNUM*, const(BIGNUM)*, const(BIGNUM)*, const(ubyte)*, size_t, BN_CTX*, );
    int X509_VERIFY_PARAM_set1_policies(X509_VERIFY_PARAM*, stack_st_ASN1_OBJECT*, );
    __off64_t _IO_seekoff(_IO_FILE*, __off64_t, int, int, );
    void X509_ALGOR_get0(const(ASN1_OBJECT)**, int*, const(void)**, const(X509_ALGOR)*, );






    __off64_t _IO_seekpos(_IO_FILE*, __off64_t, int, );
    void X509_ALGOR_set_md(X509_ALGOR*, const(EVP_MD)*, );
    void _IO_free_backup_area(_IO_FILE*, );
    int X509_VERIFY_PARAM_set_inh_flags(X509_VERIFY_PARAM*, uint32_t, );
    void* aligned_alloc(size_t, size_t, );
    int CTLOG_STORE_load_default_file(CTLOG_STORE*, );






    int X509_ALGOR_cmp(const(X509_ALGOR)*, const(X509_ALGOR)*, );
    int EC_POINT_get_Jprojective_coordinates_GFp(const(EC_GROUP)*, const(EC_POINT)*, BIGNUM*, BIGNUM*, BIGNUM*, BN_CTX*, );
    BIGNUM* BN_get_rfc2409_prime_768(BIGNUM*, );
    uint32_t X509_VERIFY_PARAM_get_inh_flags(const(X509_VERIFY_PARAM)*, );
    X509_NAME* X509_NAME_dup(X509_NAME*, );






    BIGNUM* BN_get_rfc2409_prime_1024(BIGNUM*, );






    int X509_VERIFY_PARAM_set1_host(X509_VERIFY_PARAM*, const(char)*, size_t, );
    X509_NAME_ENTRY* X509_NAME_ENTRY_dup(X509_NAME_ENTRY*, );
    void abort();
    size_t BIO_ctrl_pending(BIO*, );


    ASN1_TYPE* sk_ASN1_TYPE_pop(stack_st_ASN1_TYPE*, );
    int sk_ASN1_TYPE_unshift(stack_st_ASN1_TYPE*, ASN1_TYPE*, );
    int X509_VERIFY_PARAM_add1_host(X509_VERIFY_PARAM*, const(char)*, size_t, );
    int sk_ASN1_TYPE_push(stack_st_ASN1_TYPE*, ASN1_TYPE*, );
    ASN1_TYPE* sk_ASN1_TYPE_delete_ptr(stack_st_ASN1_TYPE*, ASN1_TYPE*, );
    int X509_cmp_time(const(ASN1_TIME)*, time_t*, );
    ASN1_TYPE* sk_ASN1_TYPE_delete(stack_st_ASN1_TYPE*, int, );


    ASN1_TYPE* sk_ASN1_TYPE_value(const(stack_st_ASN1_TYPE)*, int, );
    alias sk_ASN1_TYPE_freefunc = void function(ASN1_TYPE*);
    alias sk_ASN1_TYPE_copyfunc = asn1_type_st* function(const(ASN1_TYPE)*);
    int sk_ASN1_TYPE_num(const(stack_st_ASN1_TYPE)*, );
    void sk_ASN1_TYPE_free(stack_st_ASN1_TYPE*, );
    ASN1_TYPE* sk_ASN1_TYPE_shift(stack_st_ASN1_TYPE*, );
    int sk_ASN1_TYPE_insert(stack_st_ASN1_TYPE*, ASN1_TYPE*, int, );
    size_t BIO_ctrl_wpending(BIO*, );
    stack_st_ASN1_TYPE* sk_ASN1_TYPE_new_null();
    stack_st_ASN1_TYPE* sk_ASN1_TYPE_new(sk_ASN1_TYPE_compfunc, );
    ASN1_TYPE* sk_ASN1_TYPE_set(stack_st_ASN1_TYPE*, int, ASN1_TYPE*, );
    int sk_ASN1_TYPE_find(stack_st_ASN1_TYPE*, ASN1_TYPE*, );
    int sk_ASN1_TYPE_find_ex(stack_st_ASN1_TYPE*, ASN1_TYPE*, );
    void sk_ASN1_TYPE_sort(stack_st_ASN1_TYPE*, );
    int sk_ASN1_TYPE_is_sorted(const(stack_st_ASN1_TYPE)*, );
    stack_st_ASN1_TYPE* sk_ASN1_TYPE_dup(const(stack_st_ASN1_TYPE)*, );




    stack_st_ASN1_TYPE* sk_ASN1_TYPE_deep_copy(const(stack_st_ASN1_TYPE)*, sk_ASN1_TYPE_copyfunc, sk_ASN1_TYPE_freefunc, );
    alias sk_ASN1_TYPE_compfunc = int function(const(const(ASN1_TYPE)*)*, const(const(ASN1_TYPE)*)*);
    sk_ASN1_TYPE_compfunc sk_ASN1_TYPE_set_cmp_func(stack_st_ASN1_TYPE*, sk_ASN1_TYPE_compfunc, );
    struct stack_st_ASN1_TYPE;
    BIGNUM* BN_get_rfc3526_prime_1536(BIGNUM*, );


    void sk_ASN1_TYPE_pop_free(stack_st_ASN1_TYPE*, sk_ASN1_TYPE_freefunc, );
    void sk_ASN1_TYPE_zero(stack_st_ASN1_TYPE*, );


    int X509_cmp_current_time(const(ASN1_TIME)*, );


    BIGNUM* BN_get_rfc3526_prime_2048(BIGNUM*, );






    BIGNUM* BN_get_rfc3526_prime_3072(BIGNUM*, );
    alias ASN1_SEQUENCE_ANY = stack_st_ASN1_TYPE;


    ASN1_TIME* X509_time_adj(ASN1_TIME*, c_long, time_t*, );
    void X509_VERIFY_PARAM_set_hostflags(X509_VERIFY_PARAM*, uint, );
    BIGNUM* BN_get_rfc3526_prime_4096(BIGNUM*, );
    int fgetc(FILE*, );




    int ERR_load_CT_strings();




    int atexit(void function(), );
    ASN1_TIME* X509_time_adj_ex(ASN1_TIME*, int, c_long, time_t*, );


    int getc(FILE*, );






    int i2d_ASN1_SEQUENCE_ANY(const(ASN1_SEQUENCE_ANY)*, ubyte**, );


    ASN1_SEQUENCE_ANY* d2i_ASN1_SEQUENCE_ANY(ASN1_SEQUENCE_ANY**, const(ubyte)**, c_long, );




    char* X509_VERIFY_PARAM_get0_peername(X509_VERIFY_PARAM*, );
    BIGNUM* BN_get_rfc3526_prime_6144(BIGNUM*, );




    ASN1_TIME* X509_gmtime_adj(ASN1_TIME*, c_long, );
    int i2d_ASN1_SET_ANY(const(ASN1_SEQUENCE_ANY)*, ubyte**, );
    void X509_VERIFY_PARAM_move_peername(X509_VERIFY_PARAM*, X509_VERIFY_PARAM*, );


    ASN1_SEQUENCE_ANY* d2i_ASN1_SET_ANY(ASN1_SEQUENCE_ANY**, const(ubyte)**, c_long, );


    BIGNUM* BN_get_rfc3526_prime_8192(BIGNUM*, );




    int X509_VERIFY_PARAM_set1_email(X509_VERIFY_PARAM*, const(char)*, size_t, );
    const(char)* X509_get_default_cert_area();
    const(char)* X509_get_default_cert_dir();




    int X509_VERIFY_PARAM_set1_ip(X509_VERIFY_PARAM*, const(ubyte)*, size_t, );
    struct BIT_STRING_BITNAME_st
    {
        int bitnum;
        const(char)* lname;
        const(char)* sname;
    }
    int EC_POINT_set_affine_coordinates_GFp(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );
    alias BIT_STRING_BITNAME = BIT_STRING_BITNAME_st;






    const(char)* X509_get_default_cert_file();
    int EVP_Cipher(EVP_CIPHER_CTX*, ubyte*, const(ubyte)*, uint, );
    int getchar();
    int X509_VERIFY_PARAM_set1_ip_asc(X509_VERIFY_PARAM*, const(char)*, );




    const(char)* X509_get_default_cert_dir_env();
    const(char)* X509_get_default_cert_file_env();




    int at_quick_exit(void function(), );
    const(char)* X509_get_default_private_dir();
    int X509_VERIFY_PARAM_get_depth(const(X509_VERIFY_PARAM)*, );
    int X509_VERIFY_PARAM_get_auth_level(const(X509_VERIFY_PARAM)*, );
    X509_REQ* X509_to_X509_REQ(X509*, EVP_PKEY*, const(EVP_MD)*, );




    const(char)* X509_VERIFY_PARAM_get0_name(const(X509_VERIFY_PARAM)*, );






    X509* X509_REQ_to_X509(X509_REQ*, int, EVP_PKEY*, );
    X509_ALGOR* d2i_X509_ALGOR(X509_ALGOR**, const(ubyte)**, c_long, );
    X509_ALGOR* X509_ALGOR_new();
    int X509_VERIFY_PARAM_add0_table(X509_VERIFY_PARAM*, );





    void X509_ALGOR_free(X509_ALGOR*, );






    int i2d_X509_ALGOR(X509_ALGOR*, ubyte**, );






    int i2d_X509_ALGORS(X509_ALGORS*, ubyte**, );
    size_t BIO_ctrl_get_write_guarantee(BIO*, );






    int BN_bntest_rand(BIGNUM*, int, int, int, );
    int X509_VERIFY_PARAM_get_count();
    int on_exit(void function(int, void*), void*, );
    X509_ALGORS* d2i_X509_ALGORS(X509_ALGORS**, const(ubyte)**, c_long, );


    X509_VAL* X509_VAL_new();


    X509_VAL* d2i_X509_VAL(X509_VAL**, const(ubyte)**, c_long, );



    int i2d_X509_VAL(X509_VAL*, ubyte**, );




    void X509_VAL_free(X509_VAL*, );


    size_t BIO_ctrl_get_read_request(BIO*, );


    const(X509_VERIFY_PARAM)* X509_VERIFY_PARAM_get0(int, );






    int EC_POINT_get_affine_coordinates_GFp(const(EC_GROUP)*, const(EC_POINT)*, BIGNUM*, BIGNUM*, BN_CTX*, );
    int BIO_ctrl_reset_read_request(BIO*, );


    const(X509_VERIFY_PARAM)* X509_VERIFY_PARAM_lookup(const(char)*, );
    int i2d_X509_PUBKEY(X509_PUBKEY*, ubyte**, );


    void X509_VERIFY_PARAM_table_cleanup();
    int pthread_once(pthread_once_t*, void function(), );
    int getc_unlocked(FILE*, );


    X509_PUBKEY* d2i_X509_PUBKEY(X509_PUBKEY**, const(ubyte)**, c_long, );
    X509_PUBKEY* X509_PUBKEY_new();
    void X509_PUBKEY_free(X509_PUBKEY*, );


    int EVP_MD_CTX_ctrl(EVP_MD_CTX*, int, int, void*, );






    int getchar_unlocked();






    int X509_PUBKEY_set(X509_PUBKEY**, EVP_PKEY*, );







    EVP_MD_CTX* EVP_MD_CTX_new();




    int EVP_MD_CTX_reset(EVP_MD_CTX*, );






    EVP_PKEY* X509_PUBKEY_get0(X509_PUBKEY*, );
    EVP_PKEY* X509_PUBKEY_get(X509_PUBKEY*, );






    void EVP_MD_CTX_free(EVP_MD_CTX*, );
    void exit(int, );
    int ERR_load_BN_strings();


    int X509_get_pubkey_parameters(EVP_PKEY*, stack_st_X509*, );




    c_long X509_get_pathlen(X509*, );




    c_ulong SSL_CTX_get_options(const(SSL_CTX)*, );







    c_ulong SSL_get_options(const(SSL)*, );


    int i2d_PUBKEY(EVP_PKEY*, ubyte**, );






    c_ulong SSL_CTX_clear_options(SSL_CTX*, c_ulong, );





    EVP_PKEY* d2i_PUBKEY(EVP_PKEY**, const(ubyte)**, c_long, );


    int EVP_MD_CTX_copy_ex(EVP_MD_CTX*, const(EVP_MD_CTX)*, );
    c_ulong SSL_clear_options(SSL*, c_ulong, );
    void EVP_MD_CTX_set_flags(EVP_MD_CTX*, int, );
    int i2d_RSA_PUBKEY(RSA*, ubyte**, );






    c_ulong SSL_CTX_set_options(SSL_CTX*, c_ulong, );



    void EVP_MD_CTX_clear_flags(EVP_MD_CTX*, int, );


    void quick_exit(int, );
    RSA* d2i_RSA_PUBKEY(RSA**, const(ubyte)**, c_long, );




    int EC_POINT_set_compressed_coordinates_GFp(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, int, BN_CTX*, );
    int fgetc_unlocked(FILE*, );
    c_ulong SSL_set_options(SSL*, c_ulong, );
    int EVP_MD_CTX_test_flags(const(EVP_MD_CTX)*, int, );
    int pthread_setcancelstate(int, int*, );


    int EVP_DigestInit_ex(EVP_MD_CTX*, const(EVP_MD)*, ENGINE*, );
    int EVP_DigestUpdate(EVP_MD_CTX*, const(void)*, size_t, );




    int i2d_DSA_PUBKEY(DSA*, ubyte**, );
    int X509_policy_check(X509_POLICY_TREE**, int*, stack_st_X509*, stack_st_ASN1_OBJECT*, uint, );
    DSA* d2i_DSA_PUBKEY(DSA**, const(ubyte)**, c_long, );
    void _Exit(int, );
    int EVP_DigestFinal_ex(EVP_MD_CTX*, ubyte*, uint*, );


    int pthread_setcanceltype(int, int*, );
    int i2d_EC_PUBKEY(EC_KEY*, ubyte**, );
    int EVP_Digest(const(void)*, size_t, ubyte*, uint*, const(EVP_MD)*, ENGINE*, );




    int pthread_cancel(pthread_t, );


    int BIO_set_ex_data(BIO*, int, void*, );
    EC_KEY* d2i_EC_PUBKEY(EC_KEY**, const(ubyte)**, c_long, );



    void X509_policy_tree_free(X509_POLICY_TREE*, );
    void* BIO_get_ex_data(BIO*, int, );




    char* getenv(const(char)*, );







    int X509_policy_tree_level_count(const(X509_POLICY_TREE)*, );




    uint64_t BIO_number_read(BIO*, );




    X509_POLICY_LEVEL* X509_policy_tree_get0_level(const(X509_POLICY_TREE)*, int, );


    int EVP_MD_CTX_copy(EVP_MD_CTX*, const(EVP_MD_CTX)*, );
    ASN1_TYPE* d2i_ASN1_TYPE(ASN1_TYPE**, const(ubyte)**, c_long, );
    ASN1_TYPE* ASN1_TYPE_new();
    void ASN1_TYPE_free(ASN1_TYPE*, );


    uint64_t BIO_number_written(BIO*, );
    int i2d_ASN1_TYPE(ASN1_TYPE*, ubyte**, );


    int fputc(int, FILE*, );


    X509_SIG* d2i_X509_SIG(X509_SIG**, const(ubyte)**, c_long, );
    X509_SIG* X509_SIG_new();
    void X509_SIG_free(X509_SIG*, );
    int i2d_X509_SIG(X509_SIG*, ubyte**, );
    int putc(int, FILE*, );


    void X509_SIG_get0(const(X509_SIG)*, const(X509_ALGOR)**, const(ASN1_OCTET_STRING)**, );
    int EVP_DigestInit(EVP_MD_CTX*, const(EVP_MD)*, );
    int EC_POINT_set_affine_coordinates_GF2m(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, const(BIGNUM)*, BN_CTX*, );




    int EVP_DigestFinal(EVP_MD_CTX*, ubyte*, uint*, );
    int ASN1_TYPE_get(const(ASN1_TYPE)*, );


    void pthread_testcancel();




    void ASN1_TYPE_set(ASN1_TYPE*, int, void*, );
    stack_st_X509_POLICY_NODE* X509_policy_tree_get0_policies(const(X509_POLICY_TREE)*, );
    struct stack_st_X509_POLICY_NODE;


    int BIO_asn1_set_prefix(BIO*, asn1_ps_func*, asn1_ps_func*, );


    void X509_SIG_getm(X509_SIG*, X509_ALGOR**, ASN1_OCTET_STRING**, );





    int ASN1_TYPE_set1(ASN1_TYPE*, int, const(void)*, );
    int ASN1_TYPE_cmp(const(ASN1_TYPE)*, const(ASN1_TYPE)*, );




    int BIO_asn1_get_prefix(BIO*, asn1_ps_func**, asn1_ps_func**, );







    void X509_REQ_INFO_free(X509_REQ_INFO*, );
    int EVP_read_pw_string(char*, int, const(char)*, int, );
    X509_REQ_INFO* d2i_X509_REQ_INFO(X509_REQ_INFO**, const(ubyte)**, c_long, );


    int i2d_X509_REQ_INFO(X509_REQ_INFO*, ubyte**, );
    X509_REQ_INFO* X509_REQ_INFO_new();




    int BIO_asn1_set_suffix(BIO*, asn1_ps_func*, asn1_ps_func*, );
    int EVP_read_pw_string_min(char*, int, int, const(char)*, int, );
    alias __pthread_unwind_buf_t = _Anonymous_51;
    struct _Anonymous_51
    {
        struct _Anonymous_52
        {
            __jmp_buf __cancel_jmp_buf;
            int __mask_was_saved;
        }
        _Anonymous_52[1] __cancel_jmp_buf;
        void*[4] __pad;
    }
    stack_st_X509_POLICY_NODE* X509_policy_tree_get0_user_policies(const(X509_POLICY_TREE)*, );
    int putchar(int, );
    X509_REQ* d2i_X509_REQ(X509_REQ**, const(ubyte)**, c_long, );





    X509_REQ* X509_REQ_new();
    ASN1_TYPE* ASN1_TYPE_pack_sequence(const(ASN1_ITEM)*, void*, ASN1_TYPE**, );
    void X509_REQ_free(X509_REQ*, );
    int i2d_X509_REQ(X509_REQ*, ubyte**, );
    void* ASN1_TYPE_unpack_sequence(const(ASN1_ITEM)*, const(ASN1_TYPE)*, );
    int BIO_asn1_get_suffix(BIO*, asn1_ps_func**, asn1_ps_func**, );






    int i2d_X509_ATTRIBUTE(X509_ATTRIBUTE*, ubyte**, );
    X509_ATTRIBUTE* X509_ATTRIBUTE_new();
    X509_ATTRIBUTE* d2i_X509_ATTRIBUTE(X509_ATTRIBUTE**, const(ubyte)**, c_long, );
    void X509_ATTRIBUTE_free(X509_ATTRIBUTE*, );
    void EVP_set_pw_prompt(const(char)*, );







    X509_ATTRIBUTE* X509_ATTRIBUTE_create(int, int, void*, );
    ASN1_OBJECT* ASN1_OBJECT_new();


    char* EVP_get_pw_prompt();
    int X509_policy_level_node_count(X509_POLICY_LEVEL*, );


    void ASN1_OBJECT_free(ASN1_OBJECT*, );






    const(BIO_METHOD)* BIO_s_file();


    int i2d_X509_EXTENSION(X509_EXTENSION*, ubyte**, );
    void X509_EXTENSION_free(X509_EXTENSION*, );
    int putenv(char*, );
    int i2d_ASN1_OBJECT(const(ASN1_OBJECT)*, ubyte**, );


    X509_EXTENSION* X509_EXTENSION_new();
    X509_EXTENSION* d2i_X509_EXTENSION(X509_EXTENSION**, const(ubyte)**, c_long, );
    BIO* BIO_new_file(const(char)*, const(char)*, );
    int EC_POINT_get_affine_coordinates_GF2m(const(EC_GROUP)*, const(EC_POINT)*, BIGNUM*, BIGNUM*, BN_CTX*, );
    ASN1_OBJECT* d2i_ASN1_OBJECT(ASN1_OBJECT**, const(ubyte)**, c_long, );





    X509_POLICY_NODE* X509_policy_level_get0_node(X509_POLICY_LEVEL*, int, );
    int EVP_BytesToKey(const(EVP_CIPHER)*, const(EVP_MD)*, const(ubyte)*, const(ubyte)*, int, int, ubyte*, ubyte*, );
    X509_EXTENSIONS* d2i_X509_EXTENSIONS(X509_EXTENSIONS**, const(ubyte)**, c_long, );
    int i2d_X509_EXTENSIONS(X509_EXTENSIONS*, ubyte**, );
    BIO* BIO_new_fp(FILE*, int, );
    int i2d_X509_NAME_ENTRY(X509_NAME_ENTRY*, ubyte**, );
    void X509_NAME_ENTRY_free(X509_NAME_ENTRY*, );
    X509_NAME_ENTRY* X509_NAME_ENTRY_new();
    X509_NAME_ENTRY* d2i_X509_NAME_ENTRY(X509_NAME_ENTRY**, const(ubyte)**, c_long, );
    const(ASN1_OBJECT)* X509_policy_node_get0_policy(const(X509_POLICY_NODE)*, );






    X509_NAME* d2i_X509_NAME(X509_NAME**, const(ubyte)**, c_long, );
    X509_NAME* X509_NAME_new();
    void X509_NAME_free(X509_NAME*, );
    BIO* BIO_new(const(BIO_METHOD)*, );
    int i2d_X509_NAME(X509_NAME*, ubyte**, );


    struct stack_st_POLICYQUALINFO;
    stack_st_POLICYQUALINFO* X509_policy_node_get0_qualifiers(const(X509_POLICY_NODE)*, );







    ASN1_OBJECT* sk_ASN1_OBJECT_shift(stack_st_ASN1_OBJECT*, );
    int setenv(const(char)*, const(char)*, int, );
    void EVP_CIPHER_CTX_set_flags(EVP_CIPHER_CTX*, int, );


    struct stack_st_ASN1_OBJECT;
    alias sk_ASN1_OBJECT_compfunc = int function(const(const(ASN1_OBJECT)*)*, const(const(ASN1_OBJECT)*)*);
    int sk_ASN1_OBJECT_find_ex(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, );


    alias sk_ASN1_OBJECT_freefunc = void function(ASN1_OBJECT*);
    int sk_ASN1_OBJECT_unshift(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, );
    stack_st_ASN1_OBJECT* sk_ASN1_OBJECT_deep_copy(const(stack_st_ASN1_OBJECT)*, sk_ASN1_OBJECT_copyfunc, sk_ASN1_OBJECT_freefunc, );
    stack_st_ASN1_OBJECT* sk_ASN1_OBJECT_dup(const(stack_st_ASN1_OBJECT)*, );
    int sk_ASN1_OBJECT_is_sorted(const(stack_st_ASN1_OBJECT)*, );
    int sk_ASN1_OBJECT_push(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, );
    void sk_ASN1_OBJECT_sort(stack_st_ASN1_OBJECT*, );
    alias sk_ASN1_OBJECT_copyfunc = asn1_object_st* function(const(ASN1_OBJECT)*);
    int sk_ASN1_OBJECT_num(const(stack_st_ASN1_OBJECT)*, );
    ASN1_OBJECT* sk_ASN1_OBJECT_value(const(stack_st_ASN1_OBJECT)*, int, );
    ASN1_OBJECT* sk_ASN1_OBJECT_pop(stack_st_ASN1_OBJECT*, );
    int sk_ASN1_OBJECT_find(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, );
    ASN1_OBJECT* sk_ASN1_OBJECT_set(stack_st_ASN1_OBJECT*, int, ASN1_OBJECT*, );
    stack_st_ASN1_OBJECT* sk_ASN1_OBJECT_new_null();
    void sk_ASN1_OBJECT_free(stack_st_ASN1_OBJECT*, );
    stack_st_ASN1_OBJECT* sk_ASN1_OBJECT_new(sk_ASN1_OBJECT_compfunc, );
    int sk_ASN1_OBJECT_insert(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, int, );
    void sk_ASN1_OBJECT_zero(stack_st_ASN1_OBJECT*, );
    int BIO_free(BIO*, );
    void sk_ASN1_OBJECT_pop_free(stack_st_ASN1_OBJECT*, sk_ASN1_OBJECT_freefunc, );
    sk_ASN1_OBJECT_compfunc sk_ASN1_OBJECT_set_cmp_func(stack_st_ASN1_OBJECT*, sk_ASN1_OBJECT_compfunc, );
    ASN1_OBJECT* sk_ASN1_OBJECT_delete(stack_st_ASN1_OBJECT*, int, );
    ASN1_OBJECT* sk_ASN1_OBJECT_delete_ptr(stack_st_ASN1_OBJECT*, ASN1_OBJECT*, );
    void EVP_CIPHER_CTX_clear_flags(EVP_CIPHER_CTX*, int, );
    void BIO_set_data(BIO*, void*, );




    int X509_NAME_set(X509_NAME**, X509_NAME*, );






    int EVP_CIPHER_CTX_test_flags(const(EVP_CIPHER_CTX)*, int, );




    ASN1_STRING* ASN1_STRING_new();
    int fputc_unlocked(int, FILE*, );



    void* BIO_get_data(BIO*, );




    const(X509_POLICY_NODE)* X509_policy_node_get0_parent(const(X509_POLICY_NODE)*, );
    void X509_CINF_free(X509_CINF*, );
    int i2d_X509_CINF(X509_CINF*, ubyte**, );
    void ASN1_STRING_free(ASN1_STRING*, );
    X509_CINF* X509_CINF_new();
    X509_CINF* d2i_X509_CINF(X509_CINF**, const(ubyte)**, c_long, );


    void BIO_set_init(BIO*, int, );






    void ASN1_STRING_clear_free(ASN1_STRING*, );
    int unsetenv(const(char)*, );
    int BIO_get_init(BIO*, );


    int EVP_EncryptInit(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, const(ubyte)*, const(ubyte)*, );



    int ASN1_STRING_copy(ASN1_STRING*, const(ASN1_STRING)*, );




    int i2d_X509(X509*, ubyte**, );
    X509* X509_new();


    void X509_free(X509*, );
    void BIO_set_shutdown(BIO*, int, );


    X509* d2i_X509(X509**, const(ubyte)**, c_long, );


    struct __pthread_cleanup_frame
    {
        void function(void*) __cancel_routine;
        void* __cancel_arg;
        int __do_it;
        int __cancel_type;
    }



    int i2d_X509_CERT_AUX(X509_CERT_AUX*, ubyte**, );
    void X509_CERT_AUX_free(X509_CERT_AUX*, );


    int BIO_get_shutdown(BIO*, );
    X509_CERT_AUX* d2i_X509_CERT_AUX(X509_CERT_AUX**, const(ubyte)**, c_long, );


    X509_CERT_AUX* X509_CERT_AUX_new();


    int EVP_EncryptInit_ex(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, ENGINE*, const(ubyte)*, const(ubyte)*, );
    ASN1_STRING* ASN1_STRING_dup(const(ASN1_STRING)*, );


    void BIO_vfree(BIO*, );


    int EC_POINT_set_compressed_coordinates_GF2m(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, int, BN_CTX*, );
    ASN1_STRING* ASN1_STRING_type_new(int, );




    int BIO_up_ref(BIO*, );


    int ASN1_STRING_cmp(const(ASN1_STRING)*, const(ASN1_STRING)*, );
    int BIO_read(BIO*, void*, int, );
    void SSL_CTX_set_msg_callback(SSL_CTX*, void function(int, int, int, const(void)*, c_ulong, ssl_st*, void*), );
    int putc_unlocked(int, FILE*, );
    int X509_set_ex_data(X509*, int, void*, );
    int EVP_EncryptUpdate(EVP_CIPHER_CTX*, ubyte*, int*, const(ubyte)*, int, );




    int BIO_gets(BIO*, char*, int, );
    void* X509_get_ex_data(X509*, int, );


    int putchar_unlocked(int, );
    int clearenv();




    int BIO_write(BIO*, const(void)*, int, );


    int BIO_puts(BIO*, const(char)*, );




    int i2d_X509_AUX(X509*, ubyte**, );
    int EVP_EncryptFinal_ex(EVP_CIPHER_CTX*, ubyte*, int*, );




    X509* d2i_X509_AUX(X509**, const(ubyte)**, c_long, );
    void SSL_set_msg_callback(SSL*, void function(int, int, int, const(void)*, c_ulong, ssl_st*, void*), );
    int BIO_indent(BIO*, int, int, );
    int ASN1_STRING_set(ASN1_STRING*, const(void)*, int, );
    int EVP_EncryptFinal(EVP_CIPHER_CTX*, ubyte*, int*, );
    c_long BIO_ctrl(BIO*, int, c_long, void*, );
    void ASN1_STRING_set0(ASN1_STRING*, void*, int, );


    c_long BIO_callback_ctrl(BIO*, int, void function(bio_st*, int, const(char)*, int, c_long, c_long), );
    int ASN1_STRING_length(const(ASN1_STRING)*, );


    int i2d_re_X509_tbs(X509*, ubyte**, );




    void ASN1_STRING_length_set(ASN1_STRING*, int, );
    int ASN1_STRING_type(const(ASN1_STRING)*, );
    int EVP_DecryptInit(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, const(ubyte)*, const(ubyte)*, );


    void X509_get0_signature(const(ASN1_BIT_STRING)**, const(X509_ALGOR)**, const(X509)*, );
    void* BIO_ptr_ctrl(BIO*, int, c_long, );






    ubyte* ASN1_STRING_data(ASN1_STRING*, );




    int getw(FILE*, );
    c_long BIO_int_ctrl(BIO*, int, c_long, int, );
    BIO* BIO_push(BIO*, BIO*, );
    int EVP_DecryptInit_ex(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, ENGINE*, const(ubyte)*, const(ubyte)*, );
    const(ubyte)* ASN1_STRING_get0_data(const(ASN1_STRING)*, );
    int X509_get_signature_nid(const(X509)*, );
    BIO* BIO_pop(BIO*, );





    size_t EC_POINT_point2oct(const(EC_GROUP)*, const(EC_POINT)*, point_conversion_form_t, ubyte*, size_t, BN_CTX*, );
    int X509_trusted(const(X509)*, );


    ASN1_BIT_STRING* d2i_ASN1_BIT_STRING(ASN1_BIT_STRING**, const(ubyte)**, c_long, );
    int putw(int, FILE*, );
    ASN1_BIT_STRING* ASN1_BIT_STRING_new();
    int i2d_ASN1_BIT_STRING(ASN1_BIT_STRING*, ubyte**, );






    void BIO_free_all(BIO*, );
    void ASN1_BIT_STRING_free(ASN1_BIT_STRING*, );




    int ASN1_BIT_STRING_set(ASN1_BIT_STRING*, ubyte*, int, );


    int X509_alias_set1(X509*, const(ubyte)*, int, );


    BIO* BIO_find_type(BIO*, int, );
    char* mktemp(char*, );


    int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING*, int, int, );


    BIO* BIO_next(BIO*, );
    int EVP_DecryptUpdate(EVP_CIPHER_CTX*, ubyte*, int*, const(ubyte)*, int, );


    int X509_keyid_set1(X509*, const(ubyte)*, int, );


    int ASN1_BIT_STRING_get_bit(const(ASN1_BIT_STRING)*, int, );


    ubyte* X509_alias_get0(X509*, int*, );
    void BIO_set_next(BIO*, BIO*, );


    int ASN1_BIT_STRING_check(const(ASN1_BIT_STRING)*, const(ubyte)*, int, );






    ubyte* X509_keyid_get0(X509*, int*, );
    BIO* BIO_get_retry_BIO(BIO*, int*, );
    int EVP_DecryptFinal(EVP_CIPHER_CTX*, ubyte*, int*, );




    int SSL_SRP_CTX_init(SSL*, );


    int function(int, x509_st*, int) X509_TRUST_set_default(int, X509*, int, int function(int, x509_st*, int), );
    int BIO_get_retry_reason(BIO*, );


    void BIO_set_retry_reason(BIO*, int, );
    int EVP_DecryptFinal_ex(EVP_CIPHER_CTX*, ubyte*, int*, );






    int SSL_CTX_SRP_CTX_init(SSL_CTX*, );




    BIO* BIO_dup_chain(BIO*, );
    int X509_TRUST_set(int*, int, );
    int ASN1_BIT_STRING_name_print(BIO*, ASN1_BIT_STRING*, BIT_STRING_BITNAME*, int, );


    int SSL_SRP_CTX_free(SSL*, );
    int X509_add1_trust_object(X509*, const(ASN1_OBJECT)*, );
    char* fgets(char*, int, FILE*, );
    int SSL_CTX_SRP_CTX_free(SSL_CTX*, );




    int SSL_srp_server_param_with_username(SSL*, int*, );
    int ASN1_BIT_STRING_num_asc(const(char)*, BIT_STRING_BITNAME*, );




    int X509_add1_reject_object(X509*, const(ASN1_OBJECT)*, );


    int BIO_nread0(BIO*, char**, );


    int EVP_CipherInit(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, const(ubyte)*, const(ubyte)*, int, );






    int BIO_nread(BIO*, char**, int, );


    int SRP_Calc_A_param(SSL*, );
    int ASN1_BIT_STRING_set_asc(ASN1_BIT_STRING*, const(char)*, int, BIT_STRING_BITNAME*, );
    void X509_trust_clear(X509*, );
    void X509_reject_clear(X509*, );






    int BIO_nwrite0(BIO*, char**, );




    int BIO_nwrite(BIO*, char**, int, );
    int EC_POINT_oct2point(const(EC_GROUP)*, EC_POINT*, const(ubyte)*, size_t, BN_CTX*, );


    int EVP_CipherInit_ex(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, ENGINE*, const(ubyte)*, const(ubyte)*, int, );




    stack_st_ASN1_OBJECT* X509_get0_trust_objects(X509*, );
    void ASN1_INTEGER_free(ASN1_INTEGER*, );
    int i2d_ASN1_INTEGER(ASN1_INTEGER*, ubyte**, );
    ASN1_INTEGER* d2i_ASN1_INTEGER(ASN1_INTEGER**, const(ubyte)**, c_long, );
    ASN1_INTEGER* ASN1_INTEGER_new();




    stack_st_ASN1_OBJECT* X509_get0_reject_objects(X509*, );
    ASN1_INTEGER* d2i_ASN1_UINTEGER(ASN1_INTEGER**, const(ubyte)**, c_long, );




    int mkstemp(char*, );


    c_long BIO_debug_callback(BIO*, int, const(char)*, int, c_long, c_long, );
    int EVP_CipherUpdate(EVP_CIPHER_CTX*, ubyte*, int*, const(ubyte)*, int, );


    void X509_REVOKED_free(X509_REVOKED*, );


    int i2d_X509_REVOKED(X509_REVOKED*, ubyte**, );
    X509_REVOKED* X509_REVOKED_new();
    ASN1_INTEGER* ASN1_INTEGER_dup(const(ASN1_INTEGER)*, );
    X509_REVOKED* d2i_X509_REVOKED(X509_REVOKED**, const(ubyte)**, c_long, );




    const(BIO_METHOD)* BIO_s_mem();
    int ASN1_INTEGER_cmp(const(ASN1_INTEGER)*, const(ASN1_INTEGER)*, );
    void X509_CRL_INFO_free(X509_CRL_INFO*, );
    int i2d_X509_CRL_INFO(X509_CRL_INFO*, ubyte**, );
    X509_CRL_INFO* d2i_X509_CRL_INFO(X509_CRL_INFO**, const(ubyte)**, c_long, );


    X509_CRL_INFO* X509_CRL_INFO_new();


    const(BIO_METHOD)* BIO_s_secmem();
    int EVP_CipherFinal(EVP_CIPHER_CTX*, ubyte*, int*, );


    X509_CRL* d2i_X509_CRL(X509_CRL**, const(ubyte)**, c_long, );
    X509_CRL* X509_CRL_new();
    int i2d_X509_CRL(X509_CRL*, ubyte**, );
    void X509_CRL_free(X509_CRL*, );


    BIO* BIO_new_mem_buf(const(void)*, int, );




    ASN1_ENUMERATED* d2i_ASN1_ENUMERATED(ASN1_ENUMERATED**, const(ubyte)**, c_long, );
    ASN1_ENUMERATED* ASN1_ENUMERATED_new();
    int i2d_ASN1_ENUMERATED(ASN1_ENUMERATED*, ubyte**, );
    void ASN1_ENUMERATED_free(ASN1_ENUMERATED*, );




    int EVP_CipherFinal_ex(EVP_CIPHER_CTX*, ubyte*, int*, );


    int X509_CRL_add0_revoked(X509_CRL*, X509_REVOKED*, );
    const(BIO_METHOD)* BIO_s_socket();


    int ASN1_UTCTIME_check(const(ASN1_UTCTIME)*, );


    int X509_CRL_get0_by_serial(X509_CRL*, X509_REVOKED**, ASN1_INTEGER*, );
    const(BIO_METHOD)* BIO_s_connect();
    ASN1_UTCTIME* ASN1_UTCTIME_set(ASN1_UTCTIME*, time_t, );






    int EVP_SignFinal(EVP_MD_CTX*, ubyte*, uint*, EVP_PKEY*, );
    size_t EC_POINT_point2buf(const(EC_GROUP)*, const(EC_POINT)*, point_conversion_form_t, ubyte**, BN_CTX*, );
    ASN1_UTCTIME* ASN1_UTCTIME_adj(ASN1_UTCTIME*, time_t, int, c_long, );
    int X509_CRL_get0_by_cert(X509_CRL*, X509_REVOKED**, X509*, );
    const(BIO_METHOD)* BIO_s_accept();
    int ASN1_UTCTIME_set_string(ASN1_UTCTIME*, const(char)*, );


    X509_PKEY* X509_PKEY_new();
    const(BIO_METHOD)* BIO_s_fd();


    const(BIO_METHOD)* BIO_s_log();


    int EVP_VerifyFinal(EVP_MD_CTX*, const(ubyte)*, uint, EVP_PKEY*, );


    void X509_PKEY_free(X509_PKEY*, );
    int ASN1_UTCTIME_cmp_time_t(const(ASN1_UTCTIME)*, time_t, );






    const(BIO_METHOD)* BIO_s_bio();
    NETSCAPE_SPKI* d2i_NETSCAPE_SPKI(NETSCAPE_SPKI**, const(ubyte)**, c_long, );
    int i2d_NETSCAPE_SPKI(NETSCAPE_SPKI*, ubyte**, );


    void NETSCAPE_SPKI_free(NETSCAPE_SPKI*, );
    const(BIO_METHOD)* BIO_s_null();
    BIGNUM* EC_POINT_point2bn(const(EC_GROUP)*, const(EC_POINT)*, point_conversion_form_t, BIGNUM*, BN_CTX*, );


    NETSCAPE_SPKI* NETSCAPE_SPKI_new();


    int ASN1_GENERALIZEDTIME_check(const(ASN1_GENERALIZEDTIME)*, );


    int EVP_DigestSignInit(EVP_MD_CTX*, EVP_PKEY_CTX**, const(EVP_MD)*, ENGINE*, EVP_PKEY*, );
    ASN1_GENERALIZEDTIME* ASN1_GENERALIZEDTIME_set(ASN1_GENERALIZEDTIME*, time_t, );


    void NETSCAPE_SPKAC_free(NETSCAPE_SPKAC*, );
    int i2d_NETSCAPE_SPKAC(NETSCAPE_SPKAC*, ubyte**, );
    NETSCAPE_SPKAC* NETSCAPE_SPKAC_new();
    NETSCAPE_SPKAC* d2i_NETSCAPE_SPKAC(NETSCAPE_SPKAC**, const(ubyte)**, c_long, );
    const(BIO_METHOD)* BIO_f_null();


    NETSCAPE_CERT_SEQUENCE* d2i_NETSCAPE_CERT_SEQUENCE(NETSCAPE_CERT_SEQUENCE**, const(ubyte)**, c_long, );
    NETSCAPE_CERT_SEQUENCE* NETSCAPE_CERT_SEQUENCE_new();
    EC_POINT* EC_POINT_bn2point(const(EC_GROUP)*, const(BIGNUM)*, EC_POINT*, BN_CTX*, );
    void NETSCAPE_CERT_SEQUENCE_free(NETSCAPE_CERT_SEQUENCE*, );
    int i2d_NETSCAPE_CERT_SEQUENCE(NETSCAPE_CERT_SEQUENCE*, ubyte**, );
    const(BIO_METHOD)* BIO_f_buffer();


    ASN1_GENERALIZEDTIME* ASN1_GENERALIZEDTIME_adj(ASN1_GENERALIZEDTIME*, time_t, int, c_long, );


    alias GEN_SESSION_CB = int function(const(SSL)*, ubyte*, uint*);
    const(BIO_METHOD)* BIO_f_linebuffer();




    const(BIO_METHOD)* BIO_f_nbio_test();
    char* EC_POINT_point2hex(const(EC_GROUP)*, const(EC_POINT)*, point_conversion_form_t, BN_CTX*, );
    int EVP_DigestSignFinal(EVP_MD_CTX*, ubyte*, size_t*, );
    X509_INFO* X509_INFO_new();


    void X509_INFO_free(X509_INFO*, );


    int ASN1_GENERALIZEDTIME_set_string(ASN1_GENERALIZEDTIME*, const(char)*, );


    char* X509_NAME_oneline(const(X509_NAME)*, char*, int, );
    const(BIO_METHOD)* BIO_s_datagram();
    EC_POINT* EC_POINT_hex2point(const(EC_GROUP)*, const(char)*, EC_POINT*, BN_CTX*, );






    int ASN1_TIME_diff(int*, int*, const(ASN1_TIME)*, const(ASN1_TIME)*, );


    int BIO_dgram_non_fatal_error(int, );
    int EVP_DigestVerifyInit(EVP_MD_CTX*, EVP_PKEY_CTX**, const(EVP_MD)*, ENGINE*, EVP_PKEY*, );
    int ASN1_verify(i2d_of_void*, X509_ALGOR*, ASN1_BIT_STRING*, char*, EVP_PKEY*, );




    BIO* BIO_new_dgram(int, int, );
    int mkstemps(char*, int, );






    int EVP_DigestVerifyFinal(EVP_MD_CTX*, const(ubyte)*, size_t, );
    ASN1_OCTET_STRING* ASN1_OCTET_STRING_new();
    ASN1_OCTET_STRING* d2i_ASN1_OCTET_STRING(ASN1_OCTET_STRING**, const(ubyte)**, c_long, );


    int i2d_ASN1_OCTET_STRING(ASN1_OCTET_STRING*, ubyte**, );
    void ASN1_OCTET_STRING_free(ASN1_OCTET_STRING*, );


    ASN1_OCTET_STRING* ASN1_OCTET_STRING_dup(const(ASN1_OCTET_STRING)*, );


    int ASN1_digest(i2d_of_void*, const(EVP_MD)*, char*, ubyte*, uint*, );


    int ASN1_OCTET_STRING_cmp(const(ASN1_OCTET_STRING)*, const(ASN1_OCTET_STRING)*, );
    int ASN1_OCTET_STRING_set(ASN1_OCTET_STRING*, const(ubyte)*, int, );
    int ASN1_sign(i2d_of_void*, X509_ALGOR*, X509_ALGOR*, ASN1_BIT_STRING*, char*, EVP_PKEY*, const(EVP_MD)*, );
    int EVP_OpenInit(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, const(ubyte)*, int, const(ubyte)*, EVP_PKEY*, );
    void ASN1_VISIBLESTRING_free(ASN1_VISIBLESTRING*, );
    int i2d_ASN1_VISIBLESTRING(ASN1_VISIBLESTRING*, ubyte**, );
    ASN1_VISIBLESTRING* ASN1_VISIBLESTRING_new();
    ASN1_VISIBLESTRING* d2i_ASN1_VISIBLESTRING(ASN1_VISIBLESTRING**, const(ubyte)**, c_long, );
    struct lhash_st_SSL_SESSION;
    int EVP_OpenFinal(EVP_CIPHER_CTX*, ubyte*, int*, );
    lhash_st_SSL_SESSION* SSL_CTX_sessions(SSL_CTX*, );


    int ASN1_item_digest(const(ASN1_ITEM)*, const(EVP_MD)*, void*, ubyte*, uint*, );
    void ASN1_UNIVERSALSTRING_free(ASN1_UNIVERSALSTRING*, );
    int i2d_ASN1_UNIVERSALSTRING(ASN1_UNIVERSALSTRING*, ubyte**, );
    ASN1_UNIVERSALSTRING* ASN1_UNIVERSALSTRING_new();
    ASN1_UNIVERSALSTRING* d2i_ASN1_UNIVERSALSTRING(ASN1_UNIVERSALSTRING**, const(ubyte)**, c_long, );



    __ssize_t __getdelim(char**, size_t*, int, FILE*, );
    void ASN1_UTF8STRING_free(ASN1_UTF8STRING*, );
    int i2d_ASN1_UTF8STRING(ASN1_UTF8STRING*, ubyte**, );
    ASN1_UTF8STRING* ASN1_UTF8STRING_new();
    ASN1_UTF8STRING* d2i_ASN1_UTF8STRING(ASN1_UTF8STRING**, const(ubyte)**, c_long, );
    int EVP_SealInit(EVP_CIPHER_CTX*, const(EVP_CIPHER)*, ubyte**, int*, ubyte*, EVP_PKEY**, int, );


    void ASN1_NULL_free(ASN1_NULL*, );
    int i2d_ASN1_NULL(ASN1_NULL*, ubyte**, );
    ASN1_NULL* ASN1_NULL_new();
    ASN1_NULL* d2i_ASN1_NULL(ASN1_NULL**, const(ubyte)**, c_long, );





    ASN1_BMPSTRING* ASN1_BMPSTRING_new();
    int ASN1_item_verify(const(ASN1_ITEM)*, X509_ALGOR*, ASN1_BIT_STRING*, void*, EVP_PKEY*, );
    void ASN1_BMPSTRING_free(ASN1_BMPSTRING*, );
    int i2d_ASN1_BMPSTRING(ASN1_BMPSTRING*, ubyte**, );
    ASN1_BMPSTRING* d2i_ASN1_BMPSTRING(ASN1_BMPSTRING**, const(ubyte)**, c_long, );


    int EC_POINT_add(const(EC_GROUP)*, EC_POINT*, const(EC_POINT)*, const(EC_POINT)*, BN_CTX*, );
    __ssize_t getdelim(char**, size_t*, int, FILE*, );





    int EVP_SealFinal(EVP_CIPHER_CTX*, ubyte*, int*, );
    int UTF8_getc(const(ubyte)*, int, c_ulong*, );


    int BIO_sock_should_retry(int, );
    int ASN1_item_sign(const(ASN1_ITEM)*, X509_ALGOR*, X509_ALGOR*, ASN1_BIT_STRING*, void*, EVP_PKEY*, const(EVP_MD)*, );







    int UTF8_putc(ubyte*, int, c_ulong, );
    int BIO_sock_non_fatal_error(int, );
    EVP_ENCODE_CTX* EVP_ENCODE_CTX_new();





    void EVP_ENCODE_CTX_free(EVP_ENCODE_CTX*, );
    void ASN1_PRINTABLE_free(ASN1_STRING*, );


    int i2d_ASN1_PRINTABLE(ASN1_STRING*, ubyte**, );
    ASN1_STRING* ASN1_PRINTABLE_new();
    ASN1_STRING* d2i_ASN1_PRINTABLE(ASN1_STRING**, const(ubyte)**, c_long, );




    int EVP_ENCODE_CTX_copy(EVP_ENCODE_CTX*, EVP_ENCODE_CTX*, );
    int ASN1_item_sign_ctx(const(ASN1_ITEM)*, X509_ALGOR*, X509_ALGOR*, ASN1_BIT_STRING*, void*, EVP_MD_CTX*, );



    ASN1_STRING* DIRECTORYSTRING_new();
    ASN1_STRING* d2i_DIRECTORYSTRING(ASN1_STRING**, const(ubyte)**, c_long, );
    int i2d_DIRECTORYSTRING(ASN1_STRING*, ubyte**, );
    int BIO_fd_should_retry(int, );
    void DIRECTORYSTRING_free(ASN1_STRING*, );


    int EVP_ENCODE_CTX_num(EVP_ENCODE_CTX*, );




    ASN1_STRING* d2i_DISPLAYTEXT(ASN1_STRING**, const(ubyte)**, c_long, );
    ASN1_STRING* DISPLAYTEXT_new();
    int i2d_DISPLAYTEXT(ASN1_STRING*, ubyte**, );
    int BIO_fd_non_fatal_error(int, );
    void DISPLAYTEXT_free(ASN1_STRING*, );
    void EVP_EncodeInit(EVP_ENCODE_CTX*, );
    char* mkdtemp(char*, );





    ASN1_PRINTABLESTRING* d2i_ASN1_PRINTABLESTRING(ASN1_PRINTABLESTRING**, const(ubyte)**, c_long, );
    ASN1_PRINTABLESTRING* ASN1_PRINTABLESTRING_new();
    int i2d_ASN1_PRINTABLESTRING(ASN1_PRINTABLESTRING*, ubyte**, );
    void ASN1_PRINTABLESTRING_free(ASN1_PRINTABLESTRING*, );
    int BIO_dump_cb(int function(const(void)*, c_ulong, void*), void*, const(char)*, int, );
    int EVP_EncodeUpdate(EVP_ENCODE_CTX*, ubyte*, int*, const(ubyte)*, int, );
    int EC_POINT_dbl(const(EC_GROUP)*, EC_POINT*, const(EC_POINT)*, BN_CTX*, );
    c_long X509_get_version(const(X509)*, );
    ASN1_T61STRING* d2i_ASN1_T61STRING(ASN1_T61STRING**, const(ubyte)**, c_long, );
    ASN1_T61STRING* ASN1_T61STRING_new();


    void ASN1_T61STRING_free(ASN1_T61STRING*, );
    int i2d_ASN1_T61STRING(ASN1_T61STRING*, ubyte**, );
    void EVP_EncodeFinal(EVP_ENCODE_CTX*, ubyte*, int*, );


    ASN1_IA5STRING* d2i_ASN1_IA5STRING(ASN1_IA5STRING**, const(ubyte)**, c_long, );
    ASN1_IA5STRING* ASN1_IA5STRING_new();
    int i2d_ASN1_IA5STRING(ASN1_IA5STRING*, ubyte**, );
    void ASN1_IA5STRING_free(ASN1_IA5STRING*, );
    __ssize_t getline(char**, size_t*, FILE*, );
    int BIO_dump_indent_cb(int function(const(void)*, c_ulong, void*), void*, const(char)*, int, int, );





    int X509_set_version(X509*, c_long, );
    ASN1_GENERALSTRING* d2i_ASN1_GENERALSTRING(ASN1_GENERALSTRING**, const(ubyte)**, c_long, );


    void ASN1_GENERALSTRING_free(ASN1_GENERALSTRING*, );
    int i2d_ASN1_GENERALSTRING(ASN1_GENERALSTRING*, ubyte**, );
    ASN1_GENERALSTRING* ASN1_GENERALSTRING_new();


    int X509_set_serialNumber(X509*, ASN1_INTEGER*, );
    int EVP_EncodeBlock(ubyte*, const(ubyte)*, int, );




    ASN1_INTEGER* X509_get_serialNumber(X509*, );
    ASN1_UTCTIME* ASN1_UTCTIME_new();
    int i2d_ASN1_UTCTIME(ASN1_UTCTIME*, ubyte**, );
    void ASN1_UTCTIME_free(ASN1_UTCTIME*, );



    int BIO_dump(BIO*, const(char)*, int, );
    ASN1_UTCTIME* d2i_ASN1_UTCTIME(ASN1_UTCTIME**, const(ubyte)**, c_long, );
    void ASN1_GENERALIZEDTIME_free(ASN1_GENERALIZEDTIME*, );
    int i2d_ASN1_GENERALIZEDTIME(ASN1_GENERALIZEDTIME*, ubyte**, );
    ASN1_GENERALIZEDTIME* d2i_ASN1_GENERALIZEDTIME(ASN1_GENERALIZEDTIME**, const(ubyte)**, c_long, );
    ASN1_GENERALIZEDTIME* ASN1_GENERALIZEDTIME_new();


    void EVP_DecodeInit(EVP_ENCODE_CTX*, );
    const(ASN1_INTEGER)* X509_get0_serialNumber(const(X509)*, );
    int BIO_dump_indent(BIO*, const(char)*, int, int, );


    int EVP_DecodeUpdate(EVP_ENCODE_CTX*, ubyte*, int*, const(ubyte)*, int, );


    ASN1_TIME* d2i_ASN1_TIME(ASN1_TIME**, const(ubyte)**, c_long, );
    ASN1_TIME* ASN1_TIME_new();
    int i2d_ASN1_TIME(ASN1_TIME*, ubyte**, );
    void ASN1_TIME_free(ASN1_TIME*, );
    int X509_set_issuer_name(X509*, X509_NAME*, );





    int BIO_dump_fp(FILE*, const(char)*, int, );
    X509_NAME* X509_get_issuer_name(const(X509)*, );




    int BIO_dump_indent_fp(FILE*, const(char)*, int, int, );
    int EVP_DecodeFinal(EVP_ENCODE_CTX*, ubyte*, int*, );
    int X509_set_subject_name(X509*, X509_NAME*, );







    X509_NAME* X509_get_subject_name(const(X509)*, );


    int EC_POINT_invert(const(EC_GROUP)*, EC_POINT*, BN_CTX*, );


    int BIO_hex_string(BIO*, int, int, ubyte*, int, );
    int EVP_DecodeBlock(ubyte*, const(ubyte)*, int, );
    ASN1_TIME* ASN1_TIME_set(ASN1_TIME*, time_t, );



    const(ASN1_TIME)* X509_get0_notBefore(const(X509)*, );




    ASN1_TIME* ASN1_TIME_adj(ASN1_TIME*, time_t, int, c_long, );
    ASN1_TIME* X509_getm_notBefore(const(X509)*, );




    int fputs(const(char)*, FILE*, );
    int X509_set1_notBefore(X509*, const(ASN1_TIME)*, );


    const(ASN1_TIME)* X509_get0_notAfter(const(X509)*, );
    int ASN1_TIME_check(const(ASN1_TIME)*, );
    void SSL_CTX_sess_set_new_cb(SSL_CTX*, int function(ssl_st*, ssl_session_st*), );




    ASN1_TIME* X509_getm_notAfter(const(X509)*, );
    BIO_ADDR* BIO_ADDR_new();


    ASN1_GENERALIZEDTIME* ASN1_TIME_to_generalizedtime(const(ASN1_TIME)*, ASN1_GENERALIZEDTIME**, );
    int X509_set1_notAfter(X509*, const(ASN1_TIME)*, );
    int BIO_ADDR_rawmake(BIO_ADDR*, int, const(void)*, size_t, ushort, );


    int X509_set_pubkey(X509*, EVP_PKEY*, );
    int function(ssl_st*, ssl_session_st*) SSL_CTX_sess_get_new_cb(ssl_st*, SSL_SESSION*, SSL_CTX*, );
    EVP_CIPHER_CTX* EVP_CIPHER_CTX_new();




    int ASN1_TIME_set_string(ASN1_TIME*, const(char)*, );



    int X509_up_ref(X509*, );
    void BIO_ADDR_free(BIO_ADDR*, );
    int EC_POINT_is_at_infinity(const(EC_GROUP)*, const(EC_POINT)*, );


    int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX*, );
    int X509_get_signature_type(const(X509)*, );
    void BIO_ADDR_clear(BIO_ADDR*, );
    void SSL_CTX_sess_set_remove_cb(SSL_CTX*, void function(ssl_ctx_st*, ssl_session_st*), );
    int puts(const(char)*, );


    void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX*, );
    int i2a_ASN1_INTEGER(BIO*, const(ASN1_INTEGER)*, );


    int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX*, int, );


    int BIO_ADDR_family(const(BIO_ADDR)*, );
    int a2i_ASN1_INTEGER(BIO*, ASN1_INTEGER*, char*, int, );




    int EVP_CIPHER_CTX_set_padding(EVP_CIPHER_CTX*, int, );
    int BIO_ADDR_rawaddress(const(BIO_ADDR)*, void*, size_t*, );


    int i2a_ASN1_ENUMERATED(BIO*, const(ASN1_ENUMERATED)*, );
    int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX*, int, int, void*, );
    ushort BIO_ADDR_rawport(const(BIO_ADDR)*, );


    int a2i_ASN1_ENUMERATED(BIO*, ASN1_ENUMERATED*, char*, int, );


    int EVP_CIPHER_CTX_rand_key(EVP_CIPHER_CTX*, ubyte*, );
    int i2a_ASN1_OBJECT(BIO*, const(ASN1_OBJECT)*, );


    char* BIO_ADDR_hostname_string(const(BIO_ADDR)*, int, );






    int a2i_ASN1_STRING(BIO*, ASN1_STRING*, char*, int, );
    void function(ssl_ctx_st*, ssl_session_st*) SSL_CTX_sess_get_remove_cb(ssl_ctx_st*, SSL_SESSION*, SSL_CTX*, );
    char* BIO_ADDR_service_string(const(BIO_ADDR)*, int, );


    int i2a_ASN1_STRING(BIO*, const(ASN1_STRING)*, int, );
    const(BIO_METHOD)* BIO_f_md();






    char* BIO_ADDR_path_string(const(BIO_ADDR)*, );
    int i2t_ASN1_OBJECT(char*, int, const(ASN1_OBJECT)*, );
    const(BIO_METHOD)* BIO_f_base64();
    void SSL_CTX_sess_set_get_cb(SSL_CTX*, ssl_session_st* function(ssl_st*, const(ubyte)*, int, int*), );
    int ungetc(int, FILE*, );


    int EC_POINT_is_on_curve(const(EC_GROUP)*, const(EC_POINT)*, BN_CTX*, );
    const(BIO_METHOD)* BIO_f_cipher();


    const(BIO_ADDRINFO)* BIO_ADDRINFO_next(const(BIO_ADDRINFO)*, );




    int a2d_ASN1_OBJECT(ubyte*, int, const(char)*, int, );
    int BIO_ADDRINFO_family(const(BIO_ADDRINFO)*, );
    const(BIO_METHOD)* BIO_f_reliable();


    int BIO_ADDRINFO_socktype(const(BIO_ADDRINFO)*, );
    int BIO_set_cipher(BIO*, const(EVP_CIPHER)*, const(ubyte)*, const(ubyte)*, int, );
    ASN1_OBJECT* ASN1_OBJECT_create(int, ubyte*, int, const(char)*, const(char)*, );




    int BIO_ADDRINFO_protocol(const(BIO_ADDRINFO)*, );
    const(BIO_ADDR)* BIO_ADDRINFO_address(const(BIO_ADDRINFO)*, );






    const(EVP_MD)* EVP_md_null();
    int ASN1_INTEGER_get_int64(int64_t*, const(ASN1_INTEGER)*, );
    void BIO_ADDRINFO_free(BIO_ADDRINFO*, );
    ssl_session_st* function(ssl_st*, const(ubyte)*, int, int*) SSL_CTX_sess_get_get_cb(ssl_st*, const(ubyte)*, int, int*, SSL_CTX*, );




    int ASN1_INTEGER_set_int64(ASN1_INTEGER*, int64_t, );
    X509_PUBKEY* X509_get_X509_PUBKEY(const(X509)*, );


    size_t fread(void*, size_t, size_t, FILE*, );
    int ASN1_INTEGER_get_uint64(uint64_t*, const(ASN1_INTEGER)*, );
    const(stack_st_X509_EXTENSION)* X509_get0_extensions(const(X509)*, );
    enum BIO_hostserv_priorities
    {
        BIO_PARSE_PRIO_HOST = 0,
        BIO_PARSE_PRIO_SERV = 1,
    }
    enum BIO_PARSE_PRIO_HOST = BIO_hostserv_priorities.BIO_PARSE_PRIO_HOST;
    enum BIO_PARSE_PRIO_SERV = BIO_hostserv_priorities.BIO_PARSE_PRIO_SERV;
    int ASN1_INTEGER_set_uint64(ASN1_INTEGER*, uint64_t, );


    void X509_get0_uids(const(X509)*, const(ASN1_BIT_STRING)**, const(ASN1_BIT_STRING)**, );


    void SSL_CTX_set_info_callback(SSL_CTX*, void function(const(ssl_st)*, int, int), );
    int EC_POINT_cmp(const(EC_GROUP)*, const(EC_POINT)*, const(EC_POINT)*, BN_CTX*, );
    int BIO_parse_hostserv(const(char)*, char**, char**, BIO_hostserv_priorities, );
    const(EVP_MD)* EVP_md4();
    const(X509_ALGOR)* X509_get0_tbs_sigalg(const(X509)*, );
    int ASN1_INTEGER_set(ASN1_INTEGER*, c_long, );


    c_long ASN1_INTEGER_get(const(ASN1_INTEGER)*, );
    void function(const(ssl_st)*, int, int) SSL_CTX_get_info_callback(const(SSL)*, int, int, SSL_CTX*, );
    EVP_PKEY* X509_get0_pubkey(const(X509)*, );
    ASN1_INTEGER* BN_to_ASN1_INTEGER(const(BIGNUM)*, ASN1_INTEGER*, );


    size_t fwrite(const(void)*, size_t, size_t, FILE*, );
    enum BIO_lookup_type
    {
        BIO_LOOKUP_CLIENT = 0,
        BIO_LOOKUP_SERVER = 1,
    }
    enum BIO_LOOKUP_CLIENT = BIO_lookup_type.BIO_LOOKUP_CLIENT;
    enum BIO_LOOKUP_SERVER = BIO_lookup_type.BIO_LOOKUP_SERVER;


    int EC_POINT_make_affine(const(EC_GROUP)*, EC_POINT*, BN_CTX*, );
    void SSL_CTX_set_client_cert_cb(SSL_CTX*, int function(ssl_st*, x509_st**, evp_pkey_st**), );
    int EC_POINTs_make_affine(const(EC_GROUP)*, size_t, EC_POINT**, BN_CTX*, );
    const(EVP_MD)* EVP_md5();


    EVP_PKEY* X509_get_pubkey(X509*, );
    BIGNUM* ASN1_INTEGER_to_BN(const(ASN1_INTEGER)*, BIGNUM*, );
    ASN1_BIT_STRING* X509_get0_pubkey_bitstr(const(X509)*, );


    const(EVP_MD)* EVP_md5_sha1();


    int X509_certificate_type(const(X509)*, const(EVP_PKEY)*, );


    int BIO_lookup(const(char)*, const(char)*, BIO_lookup_type, int, int, BIO_ADDRINFO**, );


    int ASN1_ENUMERATED_get_int64(int64_t*, const(ASN1_ENUMERATED)*, );
    int function(ssl_st*, x509_st**, evp_pkey_st**) SSL_CTX_get_client_cert_cb(SSL*, X509**, EVP_PKEY**, SSL_CTX*, );




    int ASN1_ENUMERATED_set_int64(ASN1_ENUMERATED*, int64_t, );
    c_long X509_REQ_get_version(const(X509_REQ)*, );


    const(EVP_MD)* EVP_blake2b512();


    int X509_REQ_set_version(X509_REQ*, c_long, );
    const(EVP_MD)* EVP_blake2s256();
    int BIO_sock_error(int, );




    X509_NAME* X509_REQ_get_subject_name(const(X509_REQ)*, );
    int ASN1_ENUMERATED_set(ASN1_ENUMERATED*, c_long, );
    int SSL_CTX_set_client_cert_engine(SSL_CTX*, ENGINE*, );
    int BIO_socket_ioctl(int, c_long, void*, );
    const(EVP_MD)* EVP_sha1();
    int BIO_socket_nbio(int, int, );
    int X509_REQ_set_subject_name(X509_REQ*, X509_NAME*, );
    c_long ASN1_ENUMERATED_get(const(ASN1_ENUMERATED)*, );


    void X509_REQ_get0_signature(const(X509_REQ)*, const(ASN1_BIT_STRING)**, const(X509_ALGOR)**, );
    ASN1_ENUMERATED* BN_to_ASN1_ENUMERATED(const(BIGNUM)*, ASN1_ENUMERATED*, );
    void SSL_CTX_set_cookie_generate_cb(SSL_CTX*, int function(ssl_st*, ubyte*, uint*), );
    int BIO_sock_init();




    const(EVP_MD)* EVP_sha224();
    BIGNUM* ASN1_ENUMERATED_to_BN(const(ASN1_ENUMERATED)*, BIGNUM*, );
    const(EVP_MD)* EVP_sha256();




    int X509_REQ_get_signature_nid(const(X509_REQ)*, );
    const(EVP_MD)* EVP_sha384();




    const(EVP_MD)* EVP_sha512();
    int i2d_re_X509_REQ_tbs(X509_REQ*, ubyte**, );
    int X509_REQ_set_pubkey(X509_REQ*, EVP_PKEY*, );


    int BIO_set_tcp_ndelay(int, int, );
    const(EVP_MD)* EVP_mdc2();
    int EC_POINTs_mul(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, size_t, const(EC_POINT)**, const(BIGNUM)**, BN_CTX*, );




    int ASN1_PRINTABLE_type(const(ubyte)*, int, );
    int system(const(char)*, );
    EVP_PKEY* X509_REQ_get_pubkey(X509_REQ*, );


    hostent* BIO_gethostbyname(const(char)*, );
    struct hostent;
    EVP_PKEY* X509_REQ_get0_pubkey(X509_REQ*, );
    void SSL_CTX_set_cookie_verify_cb(SSL_CTX*, int function(ssl_st*, const(ubyte)*, uint), );
    c_ulong ASN1_tag2bit(int, );
    X509_PUBKEY* X509_REQ_get_X509_PUBKEY(X509_REQ*, );


    int BIO_get_port(const(char)*, ushort*, );




    int X509_REQ_extension_nid(int, );


    int BIO_get_host_ip(const(char)*, ubyte*, );
    const(EVP_MD)* EVP_ripemd160();
    int* X509_REQ_get_extension_nids();




    int BIO_get_accept_socket(char*, int, );


    int BIO_accept(int, char**, );
    int ASN1_get_object(const(ubyte)**, c_long*, int*, int*, c_long, );
    void X509_REQ_set_extension_nids(int*, );
    const(EVP_MD)* EVP_whirlpool();




    stack_st_X509_EXTENSION* X509_REQ_get_extensions(X509_REQ*, );




    size_t fread_unlocked(void*, size_t, size_t, FILE*, );
    int ASN1_check_infinite_end(ubyte**, c_long, );
    int X509_REQ_add_extensions_nid(X509_REQ*, stack_st_X509_EXTENSION*, int, );
    union BIO_sock_info_u
    {
        BIO_ADDR* addr;
    }




    int ASN1_const_check_infinite_end(const(ubyte)**, c_long, );
    const(EVP_CIPHER)* EVP_enc_null();
    void SSL_CTX_set_next_protos_advertised_cb(SSL_CTX*, int function(ssl_st*, const(ubyte)**, uint*, void*), void*, );
    int X509_REQ_add_extensions(X509_REQ*, stack_st_X509_EXTENSION*, );
    void ASN1_put_object(ubyte**, int, int, int, int, );
    size_t fwrite_unlocked(const(void)*, size_t, size_t, FILE*, );


    int X509_REQ_get_attr_count(const(X509_REQ)*, );
    const(EVP_CIPHER)* EVP_des_ecb();


    enum BIO_sock_info_type
    {
        BIO_SOCK_INFO_ADDRESS = 0,
    }
    enum BIO_SOCK_INFO_ADDRESS = BIO_sock_info_type.BIO_SOCK_INFO_ADDRESS;
    const(EVP_CIPHER)* EVP_des_ede();
    int ASN1_put_eoc(ubyte**, );
    int X509_REQ_get_attr_by_NID(const(X509_REQ)*, int, int, );




    const(EVP_CIPHER)* EVP_des_ede3();


    int ASN1_object_size(int, int, int, );
    int X509_REQ_get_attr_by_OBJ(const(X509_REQ)*, const(ASN1_OBJECT)*, int, );


    int BIO_sock_info(int, BIO_sock_info_type, BIO_sock_info_u*, );
    int EC_POINT_mul(const(EC_GROUP)*, EC_POINT*, const(BIGNUM)*, const(EC_POINT)*, const(BIGNUM)*, BN_CTX*, );
    const(EVP_CIPHER)* EVP_des_ede_ecb();


    void SSL_CTX_set_next_proto_select_cb(SSL_CTX*, int function(ssl_st*, ubyte**, ubyte*, const(ubyte)*, uint, void*), void*, );




    X509_ATTRIBUTE* X509_REQ_get_attr(const(X509_REQ)*, int, );
    const(EVP_CIPHER)* EVP_des_ede3_ecb();
    X509_ATTRIBUTE* X509_REQ_delete_attr(X509_REQ*, int, );
    const(EVP_CIPHER)* EVP_des_cfb64();




    void __pthread_register_cancel(__pthread_unwind_buf_t*, );
    void* ASN1_dup(i2d_of_void*, d2i_of_void*, void*, );




    int X509_REQ_add1_attr(X509_REQ*, X509_ATTRIBUTE*, );


    char* realpath(const(char)*, char*, );
    int X509_REQ_add1_attr_by_OBJ(X509_REQ*, const(ASN1_OBJECT)*, int, const(ubyte)*, int, );
    const(EVP_CIPHER)* EVP_des_cfb1();
    int fseek(FILE*, c_long, int, );




    const(EVP_CIPHER)* EVP_des_cfb8();




    const(EVP_CIPHER)* EVP_des_ede_cfb64();
    int X509_REQ_add1_attr_by_NID(X509_REQ*, int, int, const(ubyte)*, int, );
    void SSL_get0_next_proto_negotiated(const(SSL)*, const(ubyte)**, uint*, );
    const(EVP_CIPHER)* EVP_des_ede3_cfb64();
    int EC_GROUP_precompute_mult(EC_GROUP*, BN_CTX*, );


    int BIO_socket(int, int, int, int, );
    const(EVP_CIPHER)* EVP_des_ede3_cfb1();
    int BIO_connect(int, const(BIO_ADDR)*, int, );






    c_long ftell(FILE*, );
    int X509_REQ_add1_attr_by_txt(X509_REQ*, const(char)*, int, const(ubyte)*, int, );
    const(EVP_CIPHER)* EVP_des_ede3_cfb8();
    int BIO_listen(int, const(BIO_ADDR)*, int, );
    alias __compar_fn_t = int function(const(void)*, const(void)*);




    int SSL_select_next_proto(ubyte**, ubyte*, const(ubyte)*, uint, const(ubyte)*, uint, );
    int BIO_accept_ex(int, BIO_ADDR*, int, );
    const(EVP_CIPHER)* EVP_des_ofb();


    const(EVP_CIPHER)* EVP_des_ede_ofb();
    int BIO_closesocket(int, );


    const(EVP_CIPHER)* EVP_des_ede3_ofb();
    void __pthread_unregister_cancel(__pthread_unwind_buf_t*, );


    int X509_CRL_set_version(X509_CRL*, c_long, );
    void* ASN1_item_dup(const(ASN1_ITEM)*, void*, );


    int EC_GROUP_have_precompute_mult(const(EC_GROUP)*, );
    BIO* BIO_new_socket(int, int, );


    int X509_CRL_set_issuer_name(X509_CRL*, X509_NAME*, );


    void rewind(FILE*, );
    const(EVP_CIPHER)* EVP_des_cbc();
    BIO* BIO_new_connect(const(char)*, );
    const(EVP_CIPHER)* EVP_des_ede_cbc();
    int X509_CRL_set1_lastUpdate(X509_CRL*, const(ASN1_TIME)*, );




    const(EVP_CIPHER)* EVP_des_ede3_cbc();
    BIO* BIO_new_accept(const(char)*, );
    int X509_CRL_set1_nextUpdate(X509_CRL*, const(ASN1_TIME)*, );




    const(EVP_CIPHER)* EVP_desx_cbc();




    int X509_CRL_sort(X509_CRL*, );


    const(EVP_CIPHER)* EVP_des_ede3_wrap();





    int X509_CRL_up_ref(X509_CRL*, );


    BIO* BIO_new_fd(int, int, );






    void ECPKPARAMETERS_free(ECPKPARAMETERS*, );
    ECPKPARAMETERS* ECPKPARAMETERS_new();
    int SSL_CTX_set_alpn_protos(SSL_CTX*, const(ubyte)*, uint, );






    int BIO_new_bio_pair(BIO**, size_t, BIO**, size_t, );


    int SSL_set_alpn_protos(SSL*, const(ubyte)*, uint, );
    ECPARAMETERS* ECPARAMETERS_new();
    void ECPARAMETERS_free(ECPARAMETERS*, );


    void* ASN1_d2i_fp(void* function(), d2i_of_void*, FILE*, void**, );


    void* bsearch(const(void)*, const(void)*, size_t, size_t, __compar_fn_t, );
    void SSL_CTX_set_alpn_select_cb(SSL_CTX*, int function(ssl_st*, const(ubyte)**, ubyte*, const(ubyte)*, uint, void*), void*, );


    c_long X509_CRL_get_version(const(X509_CRL)*, );


    const(EVP_CIPHER)* EVP_rc4();
    const(ASN1_TIME)* X509_CRL_get0_lastUpdate(const(X509_CRL)*, );


    const(ASN1_TIME)* X509_CRL_get0_nextUpdate(const(X509_CRL)*, );
    const(EVP_CIPHER)* EVP_rc4_40();
    int fseeko(FILE*, __off_t, int, );




    int EC_GROUP_get_basis_type(const(EC_GROUP)*, );
    ASN1_TIME* X509_CRL_get_lastUpdate(X509_CRL*, );




    void BIO_copy_next_retry(BIO*, );
    const(EVP_CIPHER)* EVP_rc4_hmac_md5();
    ASN1_TIME* X509_CRL_get_nextUpdate(X509_CRL*, );


    void* ASN1_item_d2i_fp(const(ASN1_ITEM)*, FILE*, void*, );
    X509_NAME* X509_CRL_get_issuer(const(X509_CRL)*, );
    int EC_GROUP_get_trinomial_basis(const(EC_GROUP)*, uint*, );


    const(stack_st_X509_EXTENSION)* X509_CRL_get0_extensions(const(X509_CRL)*, );
    int ASN1_i2d_fp(i2d_of_void*, FILE*, void*, );
    void SSL_get0_alpn_selected(const(SSL)*, const(ubyte)**, uint*, );


    int EC_GROUP_get_pentanomial_basis(const(EC_GROUP)*, uint*, uint*, uint*, );
    void qsort(void*, size_t, size_t, __compar_fn_t, );


    __off_t ftello(FILE*, );


    stack_st_X509_REVOKED* X509_CRL_get_REVOKED(X509_CRL*, );
    void X509_CRL_get0_signature(const(X509_CRL)*, const(ASN1_BIT_STRING)**, const(X509_ALGOR)**, );
    const(EVP_CIPHER)* EVP_idea_ecb();
    const(EVP_CIPHER)* EVP_idea_cfb64();
    int X509_CRL_get_signature_nid(const(X509_CRL)*, );
    int i2d_re_X509_CRL_tbs(X509_CRL*, ubyte**, );
    const(EVP_CIPHER)* EVP_idea_ofb();






    const(EVP_CIPHER)* EVP_idea_cbc();






    EC_GROUP* d2i_ECPKParameters(EC_GROUP**, const(ubyte)**, c_long, );





    const(ASN1_INTEGER)* X509_REVOKED_get0_serialNumber(const(X509_REVOKED)*, );


    int X509_REVOKED_set_serialNumber(X509_REVOKED*, ASN1_INTEGER*, );
    int i2d_ECPKParameters(const(EC_GROUP)*, ubyte**, );




    const(EVP_CIPHER)* EVP_rc2_ecb();




    const(ASN1_TIME)* X509_REVOKED_get0_revocationDate(const(X509_REVOKED)*, );


    int BIO_printf(BIO*, const(char)*, ...);
    int X509_REVOKED_set_revocationDate(X509_REVOKED*, ASN1_TIME*, );


    void SSL_CTX_set_psk_client_callback(SSL_CTX*, uint function(ssl_st*, const(char)*, char*, uint, ubyte*, uint), );
    const(EVP_CIPHER)* EVP_rc2_cbc();




    const(stack_st_X509_EXTENSION)* X509_REVOKED_get0_extensions(const(X509_REVOKED)*, );




    int BIO_vprintf(BIO*, const(char)*, va_list, );
    const(EVP_CIPHER)* EVP_rc2_40_cbc();
    int abs(int, );





    int ASN1_item_i2d_fp(const(ASN1_ITEM)*, FILE*, void*, );
    c_long labs(c_long, );
    const(EVP_CIPHER)* EVP_rc2_64_cbc();


    const(EVP_CIPHER)* EVP_rc2_cfb64();
    int BIO_snprintf(char*, size_t, const(char)*, ...);
    int ASN1_STRING_print_ex_fp(FILE*, const(ASN1_STRING)*, c_ulong, );


    X509_CRL* X509_CRL_diff(X509_CRL*, X509_CRL*, EVP_PKEY*, const(EVP_MD)*, uint, );
    const(EVP_CIPHER)* EVP_rc2_ofb();
    int BIO_vsnprintf(char*, size_t, const(char)*, va_list, );
    long llabs(long, );




    int ASN1_STRING_to_UTF8(ubyte**, const(ASN1_STRING)*, );


    int X509_REQ_check_private_key(X509_REQ*, EVP_PKEY*, );


    int ECPKParameters_print(BIO*, const(EC_GROUP)*, int, );


    void* ASN1_d2i_bio(void* function(), d2i_of_void*, BIO*, void**, );


    const(EVP_CIPHER)* EVP_bf_ecb();


    int X509_check_private_key(const(X509)*, const(EVP_PKEY)*, );
    int ECPKParameters_print_fp(FILE*, const(EC_GROUP)*, int, );


    const(EVP_CIPHER)* EVP_bf_cbc();
    int X509_chain_check_suiteb(int*, X509*, stack_st_X509*, c_ulong, );






    BIO_METHOD* BIO_meth_new(int, const(char)*, );
    int fgetpos(FILE*, fpos_t*, );


    const(EVP_CIPHER)* EVP_bf_cfb64();


    void BIO_meth_free(BIO_METHOD*, );




    int function(bio_st*, const(char)*, int) BIO_meth_get_write(BIO*, const(char)*, int, BIO_METHOD*, );


    const(EVP_CIPHER)* EVP_bf_ofb();




    void __pthread_unwind_next(__pthread_unwind_buf_t*, );
    int BIO_meth_set_write(BIO_METHOD*, int function(bio_st*, const(char)*, int), );
    int X509_CRL_check_suiteb(X509_CRL*, EVP_PKEY*, c_ulong, );
    div_t div(int, int, );




    stack_st_X509* X509_chain_up_ref(stack_st_X509*, );


    const(EVP_CIPHER)* EVP_cast5_ecb();
    int function(bio_st*, char*, int) BIO_meth_get_read(BIO*, char*, int, BIO_METHOD*, );
    int fsetpos(FILE*, const(fpos_t)*, );


    ldiv_t ldiv(c_long, c_long, );




    const(EVP_CIPHER)* EVP_cast5_cbc();
    int BIO_meth_set_read(BIO_METHOD*, int function(bio_st*, char*, int), );
    void* ASN1_item_d2i_bio(const(ASN1_ITEM)*, BIO*, void*, );


    int X509_issuer_and_serial_cmp(const(X509)*, const(X509)*, );
    c_ulong X509_issuer_and_serial_hash(X509*, );


    const(EVP_CIPHER)* EVP_cast5_cfb64();
    void SSL_set_psk_client_callback(SSL*, uint function(ssl_st*, const(char)*, char*, uint, ubyte*, uint), );
    int ASN1_i2d_bio(i2d_of_void*, BIO*, ubyte*, );






    int function(bio_st*, const(char)*) BIO_meth_get_puts(BIO*, const(char)*, BIO_METHOD*, );




    lldiv_t lldiv(long, long, );


    const(EVP_CIPHER)* EVP_cast5_ofb();





    int X509_issuer_name_cmp(const(X509)*, const(X509)*, );
    int BIO_meth_set_puts(BIO_METHOD*, int function(bio_st*, const(char)*), );
    c_ulong X509_issuer_name_hash(X509*, );






    int function(bio_st*, char*, int) BIO_meth_get_gets(BIO*, char*, int, BIO_METHOD*, );




    int BIO_meth_set_gets(BIO_METHOD*, int function(bio_st*, char*, int), );
    int X509_subject_name_cmp(const(X509)*, const(X509)*, );
    struct __jmp_buf_tag;
    int __sigsetjmp(__jmp_buf_tag*, int, );
    c_ulong X509_subject_name_hash(X509*, );




    c_long function(bio_st*, int, c_long, void*) BIO_meth_get_ctrl(BIO*, int, c_long, void*, BIO_METHOD*, );
    int BIO_meth_set_ctrl(BIO_METHOD*, c_long function(bio_st*, int, c_long, void*), );
    c_ulong X509_issuer_name_hash_old(X509*, );




    int function(bio_st*) BIO_meth_get_create(BIO*, BIO_METHOD*, );
    c_ulong X509_subject_name_hash_old(X509*, );
    EC_KEY* EC_KEY_new();
    const(EVP_CIPHER)* EVP_aes_128_ecb();




    int BIO_meth_set_create(BIO_METHOD*, int function(bio_st*), );


    int ASN1_item_i2d_bio(const(ASN1_ITEM)*, BIO*, void*, );
    const(EVP_CIPHER)* EVP_aes_128_cbc();
    int function(bio_st*) BIO_meth_get_destroy(BIO*, BIO_METHOD*, );
    int pthread_mutex_init(pthread_mutex_t*, const(pthread_mutexattr_t)*, );


    int X509_cmp(const(X509)*, const(X509)*, );
    int BIO_meth_set_destroy(BIO_METHOD*, int function(bio_st*), );
    int ASN1_UTCTIME_print(BIO*, const(ASN1_UTCTIME)*, );
    int EC_KEY_get_flags(const(EC_KEY)*, );


    const(EVP_CIPHER)* EVP_aes_128_cfb1();


    const(EVP_CIPHER)* EVP_aes_128_cfb8();
    int X509_NAME_cmp(const(X509_NAME)*, const(X509_NAME)*, );
    c_long function(bio_st*, int, void function(bio_st*, int, const(char)*, int, c_long, c_long)*) BIO_meth_get_callback_ctrl(BIO*, int, bio_info_cb*, BIO_METHOD*, );
    int ASN1_GENERALIZEDTIME_print(BIO*, const(ASN1_GENERALIZEDTIME)*, );






    void EC_KEY_set_flags(EC_KEY*, int, );
    const(EVP_CIPHER)* EVP_aes_128_cfb128();
    int ASN1_TIME_print(BIO*, const(ASN1_TIME)*, );
    c_ulong X509_NAME_hash(X509_NAME*, );


    int ASN1_STRING_print(BIO*, const(ASN1_STRING)*, );


    int BIO_meth_set_callback_ctrl(BIO_METHOD*, c_long function(bio_st*, int, void function(bio_st*, int, const(char)*, int, c_long, c_long)*), );


    c_ulong X509_NAME_hash_old(X509_NAME*, );
    char* ecvt(double, int, int*, int*, );
    int pthread_mutex_destroy(pthread_mutex_t*, );
    void SSL_CTX_set_psk_server_callback(SSL_CTX*, uint function(ssl_st*, const(char)*, ubyte*, uint), );
    int ASN1_STRING_print_ex(BIO*, const(ASN1_STRING)*, c_ulong, );
    const(EVP_CIPHER)* EVP_aes_128_ofb();
    void EC_KEY_clear_flags(EC_KEY*, int, );




    int ASN1_buf_print(BIO*, const(ubyte)*, size_t, int, );
    const(EVP_CIPHER)* EVP_aes_128_ctr();
    int X509_CRL_cmp(const(X509_CRL)*, const(X509_CRL)*, );
    int ASN1_bn_print(BIO*, const(char)*, const(BIGNUM)*, ubyte*, int, );
    void clearerr(FILE*, );


    const(EVP_CIPHER)* EVP_aes_128_ccm();
    int X509_CRL_match(const(X509_CRL)*, const(X509_CRL)*, );




    int X509_aux_print(BIO*, X509*, int, );
    const(EVP_CIPHER)* EVP_aes_128_gcm();


    int ASN1_parse(BIO*, const(ubyte)*, c_long, int, );


    int feof(FILE*, );
    const(EVP_CIPHER)* EVP_aes_128_xts();
    int pthread_mutex_trylock(pthread_mutex_t*, );
    char* fcvt(double, int, int*, int*, );


    int X509_print_ex_fp(FILE*, X509*, c_ulong, c_ulong, );
    int ASN1_parse_dump(BIO*, const(ubyte)*, c_long, int, int, );


    const(EVP_CIPHER)* EVP_aes_128_wrap();
    int ferror(FILE*, );
    const(EVP_CIPHER)* EVP_aes_128_wrap_pad();






    int X509_print_fp(FILE*, X509*, );
    const(char)* ASN1_tag2str(int, );
    EC_KEY* EC_KEY_new_by_curve_name(int, );
    int pthread_mutex_lock(pthread_mutex_t*, );




    int X509_CRL_print_fp(FILE*, X509_CRL*, );
    const(EVP_CIPHER)* EVP_aes_128_ocb();




    int X509_REQ_print_fp(FILE*, X509_REQ*, );
    int ERR_load_BIO_strings();




    const(EVP_CIPHER)* EVP_aes_192_ecb();
    int X509_NAME_print_ex_fp(FILE*, const(X509_NAME)*, int, c_ulong, );
    void clearerr_unlocked(FILE*, );


    int feof_unlocked(FILE*, );




    char* gcvt(double, int, char*, );
    const(EVP_CIPHER)* EVP_aes_192_cbc();
    int ASN1_UNIVERSALSTRING_to_string(ASN1_UNIVERSALSTRING*, );
    void EC_KEY_free(EC_KEY*, );
    int ferror_unlocked(FILE*, );


    void SSL_set_psk_server_callback(SSL*, uint function(ssl_st*, const(char)*, ubyte*, uint), );
    const(EVP_CIPHER)* EVP_aes_192_cfb1();


    int pthread_mutex_timedlock(pthread_mutex_t*, const(timespec)*, );




    int ASN1_TYPE_set_octetstring(ASN1_TYPE*, ubyte*, int, );
    const(EVP_CIPHER)* EVP_aes_192_cfb8();




    int X509_NAME_print(BIO*, const(X509_NAME)*, int, );
    const(EVP_CIPHER)* EVP_aes_192_cfb128();


    int ASN1_TYPE_get_octetstring(const(ASN1_TYPE)*, ubyte*, int, );
    int ASN1_TYPE_set_int_octetstring(ASN1_TYPE*, c_long, ubyte*, int, );




    int X509_NAME_print_ex(BIO*, const(X509_NAME)*, int, c_ulong, );




    const(EVP_CIPHER)* EVP_aes_192_ofb();


    char* qecvt(real, int, int*, int*, );
    int X509_print_ex(BIO*, X509*, c_ulong, c_ulong, );


    int ASN1_TYPE_get_int_octetstring(const(ASN1_TYPE)*, c_long*, ubyte*, int, );
    const(EVP_CIPHER)* EVP_aes_192_ctr();
    const(EVP_CIPHER)* EVP_aes_192_ccm();




    EC_KEY* EC_KEY_copy(EC_KEY*, const(EC_KEY)*, );
    int pthread_mutex_unlock(pthread_mutex_t*, );
    const(EVP_CIPHER)* EVP_aes_192_gcm();
    int X509_print(BIO*, X509*, );
    void perror(const(char)*, );
    void* ASN1_item_unpack(const(ASN1_STRING)*, const(ASN1_ITEM)*, );


    char* qfcvt(real, int, int*, int*, );




    const(EVP_CIPHER)* EVP_aes_192_wrap();
    int X509_ocspid_print(BIO*, X509*, );






    int X509_CRL_print(BIO*, X509_CRL*, );
    const(EVP_CIPHER)* EVP_aes_192_wrap_pad();
    int X509_REQ_print_ex(BIO*, X509_REQ*, c_ulong, c_ulong, );
    ASN1_STRING* ASN1_item_pack(void*, const(ASN1_ITEM)*, ASN1_OCTET_STRING**, );






    const(EVP_CIPHER)* EVP_aes_192_ocb();




    char* qgcvt(real, int, char*, );




    int pthread_mutex_getprioceiling(const(pthread_mutex_t)*, int*, );
    int X509_REQ_print(BIO*, X509_REQ*, );
    int SSL_CTX_use_psk_identity_hint(SSL_CTX*, const(char)*, );


    const(EVP_CIPHER)* EVP_aes_256_ecb();


    int SSL_use_psk_identity_hint(SSL*, const(char)*, );


    void ASN1_STRING_set_default_mask(c_ulong, );
    EC_KEY* EC_KEY_dup(const(EC_KEY)*, );


    const(EVP_CIPHER)* EVP_aes_256_cbc();


    const(char)* SSL_get_psk_identity_hint(const(SSL)*, );
    int ASN1_STRING_set_default_mask_asc(const(char)*, );


    int X509_NAME_entry_count(const(X509_NAME)*, );




    const(char)* SSL_get_psk_identity(const(SSL)*, );
    int X509_NAME_get_text_by_NID(X509_NAME*, int, char*, int, );


    const(EVP_CIPHER)* EVP_aes_256_cfb1();
    c_ulong ASN1_STRING_get_default_mask();




    int X509_NAME_get_text_by_OBJ(X509_NAME*, const(ASN1_OBJECT)*, char*, int, );
    const(EVP_CIPHER)* EVP_aes_256_cfb8();


    int ASN1_mbstring_copy(ASN1_STRING**, const(ubyte)*, int, int, c_ulong, );


    int ecvt_r(double, int, int*, int*, char*, size_t, );
    const(EVP_CIPHER)* EVP_aes_256_cfb128();






    int ASN1_mbstring_ncopy(ASN1_STRING**, const(ubyte)*, int, int, c_ulong, c_long, c_long, );


    int fileno(FILE*, );


    int pthread_mutex_setprioceiling(pthread_mutex_t*, int, int*, );
    const(EVP_CIPHER)* EVP_aes_256_ofb();
    int EC_KEY_up_ref(EC_KEY*, );
    const(EVP_CIPHER)* EVP_aes_256_ctr();
    int SSL_CTX_has_client_custom_ext(const(SSL_CTX)*, uint, );




    int fcvt_r(double, int, int*, int*, char*, size_t, );
    const(EVP_CIPHER)* EVP_aes_256_ccm();






    ASN1_STRING* ASN1_STRING_set_by_NID(ASN1_STRING**, const(ubyte)*, int, int, int, );
    const(EVP_CIPHER)* EVP_aes_256_gcm();


    int SSL_CTX_add_client_custom_ext(SSL_CTX*, uint, custom_ext_add_cb, custom_ext_free_cb, void*, custom_ext_parse_cb, void*, );


    int X509_NAME_get_index_by_NID(X509_NAME*, int, int, );
    const(EVP_CIPHER)* EVP_aes_256_xts();


    int qecvt_r(real, int, int*, int*, char*, size_t, );


    int X509_NAME_get_index_by_OBJ(X509_NAME*, const(ASN1_OBJECT)*, int, );
    int fileno_unlocked(FILE*, );
    const(EVP_CIPHER)* EVP_aes_256_wrap();


    const(EC_GROUP)* EC_KEY_get0_group(const(EC_KEY)*, );
    ASN1_STRING_TABLE* ASN1_STRING_TABLE_get(int, );




    const(EVP_CIPHER)* EVP_aes_256_wrap_pad();
    X509_NAME_ENTRY* X509_NAME_get_entry(const(X509_NAME)*, int, );




    int ASN1_STRING_TABLE_add(int, c_long, c_long, c_ulong, c_ulong, );






    X509_NAME_ENTRY* X509_NAME_delete_entry(X509_NAME*, int, );
    const(EVP_CIPHER)* EVP_aes_256_ocb();
    void ASN1_STRING_TABLE_cleanup();
    int pthread_mutex_consistent(pthread_mutex_t*, );




    int X509_NAME_add_entry(X509_NAME*, const(X509_NAME_ENTRY)*, int, int, );


    int qfcvt_r(real, int, int*, int*, char*, size_t, );
    const(EVP_CIPHER)* EVP_aes_128_cbc_hmac_sha1();
    int X509_NAME_add_entry_by_OBJ(X509_NAME*, const(ASN1_OBJECT)*, int, const(ubyte)*, int, int, int, );
    const(EVP_CIPHER)* EVP_aes_256_cbc_hmac_sha1();


    int SSL_CTX_add_server_custom_ext(SSL_CTX*, uint, custom_ext_add_cb, custom_ext_free_cb, void*, custom_ext_parse_cb, void*, );




    const(EVP_CIPHER)* EVP_aes_128_cbc_hmac_sha256();
    const(EVP_CIPHER)* EVP_aes_256_cbc_hmac_sha256();




    ASN1_VALUE* ASN1_item_new(const(ASN1_ITEM)*, );


    int X509_NAME_add_entry_by_NID(X509_NAME*, int, int, const(ubyte)*, int, int, int, );
    FILE* popen(const(char)*, const(char)*, );




    void ASN1_item_free(ASN1_VALUE*, const(ASN1_ITEM)*, );
    int EC_KEY_set_group(EC_KEY*, const(EC_GROUP)*, );


    const(EVP_CIPHER)* EVP_camellia_128_ecb();


    ASN1_VALUE* ASN1_item_d2i(ASN1_VALUE**, const(ubyte)**, c_long, const(ASN1_ITEM)*, );




    const(EVP_CIPHER)* EVP_camellia_128_cbc();




    int ASN1_item_i2d(ASN1_VALUE*, ubyte**, const(ASN1_ITEM)*, );


    X509_NAME_ENTRY* X509_NAME_ENTRY_create_by_txt(X509_NAME_ENTRY**, const(char)*, int, const(ubyte)*, int, );


    const(EVP_CIPHER)* EVP_camellia_128_cfb1();
    int SSL_extension_supported(uint, );
    int ASN1_item_ndef_i2d(ASN1_VALUE*, ubyte**, const(ASN1_ITEM)*, );


    int mblen(const(char)*, size_t, );


    const(EVP_CIPHER)* EVP_camellia_128_cfb8();


    const(EVP_CIPHER)* EVP_camellia_128_cfb128();
    const(BIGNUM)* EC_KEY_get0_private_key(const(EC_KEY)*, );


    int pclose(FILE*, );




    const(EVP_CIPHER)* EVP_camellia_128_ofb();
    int pthread_mutexattr_init(pthread_mutexattr_t*, );
    void ASN1_add_oid_module();
    int mbtowc(wchar_t*, const(char)*, size_t, );




    X509_NAME_ENTRY* X509_NAME_ENTRY_create_by_NID(X509_NAME_ENTRY**, int, int, const(ubyte)*, int, );
    const(EVP_CIPHER)* EVP_camellia_128_ctr();




    void ASN1_add_stable_module();




    const(EVP_CIPHER)* EVP_camellia_192_ecb();






    const(EVP_CIPHER)* EVP_camellia_192_cbc();
    ASN1_TYPE* ASN1_generate_nconf(const(char)*, CONF*, );




    int pthread_mutexattr_destroy(pthread_mutexattr_t*, );
    int wctomb(char*, wchar_t, );




    int X509_NAME_add_entry_by_txt(X509_NAME*, const(char)*, int, const(ubyte)*, int, int, int, );


    ASN1_TYPE* ASN1_generate_v3(const(char)*, X509V3_CTX*, );
    const(EVP_CIPHER)* EVP_camellia_192_cfb1();




    int ASN1_str2mask(const(char)*, c_ulong*, );


    char* ctermid(char*, );
    const(EVP_CIPHER)* EVP_camellia_192_cfb8();




    const(EVP_CIPHER)* EVP_camellia_192_cfb128();
    X509_NAME_ENTRY* X509_NAME_ENTRY_create_by_OBJ(X509_NAME_ENTRY**, const(ASN1_OBJECT)*, int, const(ubyte)*, int, );


    int EC_KEY_set_private_key(EC_KEY*, const(BIGNUM)*, );




    size_t mbstowcs(wchar_t*, const(char)*, size_t, );


    int pthread_mutexattr_getpshared(const(pthread_mutexattr_t)*, int*, );
    const(EVP_CIPHER)* EVP_camellia_192_ofb();
    const(EVP_CIPHER)* EVP_camellia_192_ctr();
    const(EVP_CIPHER)* EVP_camellia_256_ecb();






    const(EVP_CIPHER)* EVP_camellia_256_cbc();


    int X509_NAME_ENTRY_set_object(X509_NAME_ENTRY*, const(ASN1_OBJECT)*, );
    size_t wcstombs(char*, const(wchar_t)*, size_t, );






    const(EVP_CIPHER)* EVP_camellia_256_cfb1();




    int X509_NAME_ENTRY_set_data(X509_NAME_ENTRY*, int, const(ubyte)*, int, );


    const(EC_POINT)* EC_KEY_get0_public_key(const(EC_KEY)*, );


    const(EVP_CIPHER)* EVP_camellia_256_cfb8();


    int pthread_mutexattr_setpshared(pthread_mutexattr_t*, int, );




    ASN1_OBJECT* X509_NAME_ENTRY_get_object(const(X509_NAME_ENTRY)*, );
    const(EVP_CIPHER)* EVP_camellia_256_cfb128();
    ASN1_STRING* X509_NAME_ENTRY_get_data(const(X509_NAME_ENTRY)*, );






    int X509_NAME_ENTRY_set(const(X509_NAME_ENTRY)*, );
    const(EVP_CIPHER)* EVP_camellia_256_ofb();
    const(EVP_CIPHER)* EVP_camellia_256_ctr();


    int X509_NAME_get0_der(X509_NAME*, const(ubyte)**, size_t*, );
    int pthread_mutexattr_gettype(const(pthread_mutexattr_t)*, int*, );


    const(EVP_CIPHER)* EVP_chacha20();
    int X509v3_get_ext_count(const(stack_st_X509_EXTENSION)*, );
    int rpmatch(const(char)*, );


    int EC_KEY_set_public_key(EC_KEY*, const(EC_POINT)*, );
    const(EVP_CIPHER)* EVP_chacha20_poly1305();
    int X509v3_get_ext_by_NID(const(stack_st_X509_EXTENSION)*, int, int, );




    uint EC_KEY_get_enc_flags(const(EC_KEY)*, );






    int X509v3_get_ext_by_OBJ(const(stack_st_X509_EXTENSION)*, const(ASN1_OBJECT)*, int, );




    void EC_KEY_set_enc_flags(EC_KEY*, uint, );
    point_conversion_form_t EC_KEY_get_conv_form(const(EC_KEY)*, );
    void EC_KEY_set_conv_form(EC_KEY*, point_conversion_form_t, );




    int X509v3_get_ext_by_critical(const(stack_st_X509_EXTENSION)*, int, int, );


    const(EVP_CIPHER)* EVP_seed_ecb();
    int pthread_mutexattr_settype(pthread_mutexattr_t*, int, );
    const(EVP_CIPHER)* EVP_seed_cbc();
    X509_EXTENSION* X509v3_get_ext(const(stack_st_X509_EXTENSION)*, int, );







    int ASN1_item_print(BIO*, ASN1_VALUE*, int, const(ASN1_ITEM)*, const(ASN1_PCTX)*, );
    const(EVP_CIPHER)* EVP_seed_cfb128();
    X509_EXTENSION* X509v3_delete_ext(stack_st_X509_EXTENSION*, int, );
    stack_st_X509_EXTENSION* X509v3_add_ext(stack_st_X509_EXTENSION**, X509_EXTENSION*, int, );
    int EC_KEY_set_ex_data(EC_KEY*, int, void*, );
    ASN1_PCTX* ASN1_PCTX_new();


    const(EVP_CIPHER)* EVP_seed_ofb();
    void* EC_KEY_get_ex_data(const(EC_KEY)*, int, );
    void ASN1_PCTX_free(ASN1_PCTX*, );




    int pthread_mutexattr_getprotocol(const(pthread_mutexattr_t)*, int*, );


    int getsubopt(char**, char**, char**, );
    c_ulong ASN1_PCTX_get_flags(const(ASN1_PCTX)*, );


    int X509_get_ext_count(const(X509)*, );
    void ASN1_PCTX_set_flags(ASN1_PCTX*, c_ulong, );




    void flockfile(FILE*, );
    int X509_get_ext_by_NID(const(X509)*, int, int, );
    c_ulong ASN1_PCTX_get_nm_flags(const(ASN1_PCTX)*, );


    void EC_KEY_set_asn1_flag(EC_KEY*, int, );






    void ASN1_PCTX_set_nm_flags(ASN1_PCTX*, c_ulong, );


    sk_SSL_CIPHER_compfunc sk_SSL_CIPHER_set_cmp_func(stack_st_SSL_CIPHER*, sk_SSL_CIPHER_compfunc, );
    stack_st_SSL_CIPHER* sk_SSL_CIPHER_deep_copy(const(stack_st_SSL_CIPHER)*, sk_SSL_CIPHER_copyfunc, sk_SSL_CIPHER_freefunc, );
    stack_st_SSL_CIPHER* sk_SSL_CIPHER_dup(const(stack_st_SSL_CIPHER)*, );
    int sk_SSL_CIPHER_is_sorted(const(stack_st_SSL_CIPHER)*, );
    void sk_SSL_CIPHER_sort(stack_st_SSL_CIPHER*, );
    int sk_SSL_CIPHER_find_ex(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, );
    int sk_SSL_CIPHER_find(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, );
    int sk_SSL_CIPHER_insert(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, int, );
    void sk_SSL_CIPHER_pop_free(stack_st_SSL_CIPHER*, sk_SSL_CIPHER_freefunc, );
    const(SSL_CIPHER)* sk_SSL_CIPHER_shift(stack_st_SSL_CIPHER*, );
    const(SSL_CIPHER)* sk_SSL_CIPHER_pop(stack_st_SSL_CIPHER*, );
    int sk_SSL_CIPHER_unshift(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, );
    int sk_SSL_CIPHER_push(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, );
    const(SSL_CIPHER)* sk_SSL_CIPHER_delete_ptr(stack_st_SSL_CIPHER*, const(SSL_CIPHER)*, );
    const(SSL_CIPHER)* sk_SSL_CIPHER_delete(stack_st_SSL_CIPHER*, int, );
    void sk_SSL_CIPHER_zero(stack_st_SSL_CIPHER*, );
    void sk_SSL_CIPHER_free(stack_st_SSL_CIPHER*, );
    stack_st_SSL_CIPHER* sk_SSL_CIPHER_new_null();
    int X509_get_ext_by_OBJ(const(X509)*, const(ASN1_OBJECT)*, int, );





    const(SSL_CIPHER)* sk_SSL_CIPHER_set(stack_st_SSL_CIPHER*, int, const(SSL_CIPHER)*, );
    alias sk_SSL_CIPHER_compfunc = int function(const(const(SSL_CIPHER)*)*, const(const(SSL_CIPHER)*)*);
    stack_st_SSL_CIPHER* sk_SSL_CIPHER_new(sk_SSL_CIPHER_compfunc, );
    const(SSL_CIPHER)* sk_SSL_CIPHER_value(const(stack_st_SSL_CIPHER)*, int, );
    alias sk_SSL_CIPHER_freefunc = void function(SSL_CIPHER*);
    int sk_SSL_CIPHER_num(const(stack_st_SSL_CIPHER)*, );
    alias sk_SSL_CIPHER_copyfunc = ssl_cipher_st* function(const(SSL_CIPHER)*);
    c_ulong ASN1_PCTX_get_cert_flags(const(ASN1_PCTX)*, );


    int X509_get_ext_by_critical(const(X509)*, int, int, );
    stack_st_SSL_COMP* sk_SSL_COMP_new_null();
    void sk_SSL_COMP_free(stack_st_SSL_COMP*, );
    SSL_COMP* sk_SSL_COMP_delete_ptr(stack_st_SSL_COMP*, SSL_COMP*, );
    void sk_SSL_COMP_zero(stack_st_SSL_COMP*, );
    SSL_COMP* sk_SSL_COMP_delete(stack_st_SSL_COMP*, int, );
    int sk_SSL_COMP_push(stack_st_SSL_COMP*, SSL_COMP*, );
    stack_st_SSL_COMP* sk_SSL_COMP_new(sk_SSL_COMP_compfunc, );
    SSL_COMP* sk_SSL_COMP_value(const(stack_st_SSL_COMP)*, int, );
    int sk_SSL_COMP_num(const(stack_st_SSL_COMP)*, );
    alias sk_SSL_COMP_copyfunc = ssl_comp_st* function(const(SSL_COMP)*);
    alias sk_SSL_COMP_freefunc = void function(SSL_COMP*);
    alias sk_SSL_COMP_compfunc = int function(const(const(SSL_COMP)*)*, const(const(SSL_COMP)*)*);


    void sk_SSL_COMP_pop_free(stack_st_SSL_COMP*, sk_SSL_COMP_freefunc, );
    void sk_SSL_COMP_sort(stack_st_SSL_COMP*, );
    int sk_SSL_COMP_unshift(stack_st_SSL_COMP*, SSL_COMP*, );
    sk_SSL_COMP_compfunc sk_SSL_COMP_set_cmp_func(stack_st_SSL_COMP*, sk_SSL_COMP_compfunc, );
    stack_st_SSL_COMP* sk_SSL_COMP_deep_copy(const(stack_st_SSL_COMP)*, sk_SSL_COMP_copyfunc, sk_SSL_COMP_freefunc, );
    stack_st_SSL_COMP* sk_SSL_COMP_dup(const(stack_st_SSL_COMP)*, );
    int sk_SSL_COMP_is_sorted(const(stack_st_SSL_COMP)*, );
    int sk_SSL_COMP_find_ex(stack_st_SSL_COMP*, SSL_COMP*, );


    SSL_COMP* sk_SSL_COMP_pop(stack_st_SSL_COMP*, );
    SSL_COMP* sk_SSL_COMP_shift(stack_st_SSL_COMP*, );
    int sk_SSL_COMP_find(stack_st_SSL_COMP*, SSL_COMP*, );
    SSL_COMP* sk_SSL_COMP_set(stack_st_SSL_COMP*, int, SSL_COMP*, );
    int sk_SSL_COMP_insert(stack_st_SSL_COMP*, SSL_COMP*, int, );


    void ASN1_PCTX_set_cert_flags(ASN1_PCTX*, c_ulong, );
    X509_EXTENSION* X509_get_ext(const(X509)*, int, );


    int ftrylockfile(FILE*, );
    c_ulong ASN1_PCTX_get_oid_flags(const(ASN1_PCTX)*, );
    X509_EXTENSION* X509_delete_ext(X509*, int, );
    int X509_add_ext(X509*, X509_EXTENSION*, int, );
    int pthread_mutexattr_setprotocol(pthread_mutexattr_t*, int, );
    void ASN1_PCTX_set_oid_flags(ASN1_PCTX*, c_ulong, );
    void* X509_get_ext_d2i(const(X509)*, int, int*, int*, );
    c_ulong ASN1_PCTX_get_str_flags(const(ASN1_PCTX)*, );
    void funlockfile(FILE*, );






    int X509_add1_ext_i2d(X509*, int, void*, int, c_ulong, );
    void ASN1_PCTX_set_str_flags(ASN1_PCTX*, c_ulong, );


    int EC_KEY_precompute_mult(EC_KEY*, BN_CTX*, );
    ASN1_SCTX* ASN1_SCTX_new(int function(asn1_sctx_st*), );
    int X509_CRL_get_ext_count(const(X509_CRL)*, );
    int pthread_mutexattr_getprioceiling(const(pthread_mutexattr_t)*, int*, );
    void ASN1_SCTX_free(ASN1_SCTX*, );




    int X509_CRL_get_ext_by_NID(const(X509_CRL)*, int, int, );
    const(ASN1_ITEM)* ASN1_SCTX_get_item(ASN1_SCTX*, );
    void SSL_set_debug(SSL*, int, );


    int X509_CRL_get_ext_by_OBJ(const(X509_CRL)*, const(ASN1_OBJECT)*, int, );


    const(ASN1_TEMPLATE)* ASN1_SCTX_get_template(ASN1_SCTX*, );




    c_ulong ASN1_SCTX_get_flags(ASN1_SCTX*, );
    void ASN1_SCTX_set_app_data(ASN1_SCTX*, void*, );
    int EC_KEY_generate_key(EC_KEY*, );




    int X509_CRL_get_ext_by_critical(const(X509_CRL)*, int, int, );
    void* ASN1_SCTX_get_app_data(ASN1_SCTX*, );
    X509_EXTENSION* X509_CRL_get_ext(const(X509_CRL)*, int, );




    int pthread_mutexattr_setprioceiling(pthread_mutexattr_t*, int, );
    X509_EXTENSION* X509_CRL_delete_ext(X509_CRL*, int, );


    int X509_CRL_add_ext(X509_CRL*, X509_EXTENSION*, int, );
    const(BIO_METHOD)* BIO_f_asn1();




    void* X509_CRL_get_ext_d2i(const(X509_CRL)*, int, int*, int*, );




    int X509_CRL_add1_ext_i2d(X509_CRL*, int, void*, int, c_ulong, );
    BIO* BIO_new_NDEF(BIO*, ASN1_VALUE*, const(ASN1_ITEM)*, );
    int EC_KEY_check_key(const(EC_KEY)*, );





    int i2d_ASN1_bio_stream(BIO*, ASN1_VALUE*, BIO*, int, const(ASN1_ITEM)*, );
    int X509_REVOKED_get_ext_count(const(X509_REVOKED)*, );



    int pthread_mutexattr_getrobust(const(pthread_mutexattr_t)*, int*, );




    int PEM_write_bio_ASN1_stream(BIO*, ASN1_VALUE*, BIO*, int, const(char)*, const(ASN1_ITEM)*, );
    int X509_REVOKED_get_ext_by_NID(const(X509_REVOKED)*, int, int, );






    int X509_REVOKED_get_ext_by_OBJ(const(X509_REVOKED)*, const(ASN1_OBJECT)*, int, );


    int SMIME_write_ASN1(BIO*, ASN1_VALUE*, BIO*, int, int, int, stack_st_X509_ALGOR*, const(ASN1_ITEM)*, );






    int X509_REVOKED_get_ext_by_critical(const(X509_REVOKED)*, int, int, );


    alias OSSL_HANDSHAKE_STATE = _Anonymous_53;
    enum _Anonymous_53
    {
        TLS_ST_BEFORE = 0,
        TLS_ST_OK = 1,
        DTLS_ST_CR_HELLO_VERIFY_REQUEST = 2,
        TLS_ST_CR_SRVR_HELLO = 3,
        TLS_ST_CR_CERT = 4,
        TLS_ST_CR_CERT_STATUS = 5,
        TLS_ST_CR_KEY_EXCH = 6,
        TLS_ST_CR_CERT_REQ = 7,
        TLS_ST_CR_SRVR_DONE = 8,
        TLS_ST_CR_SESSION_TICKET = 9,
        TLS_ST_CR_CHANGE = 10,
        TLS_ST_CR_FINISHED = 11,
        TLS_ST_CW_CLNT_HELLO = 12,
        TLS_ST_CW_CERT = 13,
        TLS_ST_CW_KEY_EXCH = 14,
        TLS_ST_CW_CERT_VRFY = 15,
        TLS_ST_CW_CHANGE = 16,
        TLS_ST_CW_NEXT_PROTO = 17,
        TLS_ST_CW_FINISHED = 18,
        TLS_ST_SW_HELLO_REQ = 19,
        TLS_ST_SR_CLNT_HELLO = 20,
        DTLS_ST_SW_HELLO_VERIFY_REQUEST = 21,
        TLS_ST_SW_SRVR_HELLO = 22,
        TLS_ST_SW_CERT = 23,
        TLS_ST_SW_KEY_EXCH = 24,
        TLS_ST_SW_CERT_REQ = 25,
        TLS_ST_SW_SRVR_DONE = 26,
        TLS_ST_SR_CERT = 27,
        TLS_ST_SR_KEY_EXCH = 28,
        TLS_ST_SR_CERT_VRFY = 29,
        TLS_ST_SR_NEXT_PROTO = 30,
        TLS_ST_SR_CHANGE = 31,
        TLS_ST_SR_FINISHED = 32,
        TLS_ST_SW_SESSION_TICKET = 33,
        TLS_ST_SW_CERT_STATUS = 34,
        TLS_ST_SW_CHANGE = 35,
        TLS_ST_SW_FINISHED = 36,
    }
    enum TLS_ST_BEFORE = _Anonymous_53.TLS_ST_BEFORE;
    enum TLS_ST_OK = _Anonymous_53.TLS_ST_OK;
    enum DTLS_ST_CR_HELLO_VERIFY_REQUEST = _Anonymous_53.DTLS_ST_CR_HELLO_VERIFY_REQUEST;
    enum TLS_ST_CR_SRVR_HELLO = _Anonymous_53.TLS_ST_CR_SRVR_HELLO;
    enum TLS_ST_CR_CERT = _Anonymous_53.TLS_ST_CR_CERT;
    enum TLS_ST_CR_CERT_STATUS = _Anonymous_53.TLS_ST_CR_CERT_STATUS;
    enum TLS_ST_CR_KEY_EXCH = _Anonymous_53.TLS_ST_CR_KEY_EXCH;
    enum TLS_ST_CR_CERT_REQ = _Anonymous_53.TLS_ST_CR_CERT_REQ;
    enum TLS_ST_CR_SRVR_DONE = _Anonymous_53.TLS_ST_CR_SRVR_DONE;
    enum TLS_ST_CR_SESSION_TICKET = _Anonymous_53.TLS_ST_CR_SESSION_TICKET;
    enum TLS_ST_CR_CHANGE = _Anonymous_53.TLS_ST_CR_CHANGE;
    enum TLS_ST_CR_FINISHED = _Anonymous_53.TLS_ST_CR_FINISHED;
    enum TLS_ST_CW_CLNT_HELLO = _Anonymous_53.TLS_ST_CW_CLNT_HELLO;
    enum TLS_ST_CW_CERT = _Anonymous_53.TLS_ST_CW_CERT;
    enum TLS_ST_CW_KEY_EXCH = _Anonymous_53.TLS_ST_CW_KEY_EXCH;
    enum TLS_ST_CW_CERT_VRFY = _Anonymous_53.TLS_ST_CW_CERT_VRFY;
    enum TLS_ST_CW_CHANGE = _Anonymous_53.TLS_ST_CW_CHANGE;
    enum TLS_ST_CW_NEXT_PROTO = _Anonymous_53.TLS_ST_CW_NEXT_PROTO;
    enum TLS_ST_CW_FINISHED = _Anonymous_53.TLS_ST_CW_FINISHED;
    enum TLS_ST_SW_HELLO_REQ = _Anonymous_53.TLS_ST_SW_HELLO_REQ;
    enum TLS_ST_SR_CLNT_HELLO = _Anonymous_53.TLS_ST_SR_CLNT_HELLO;
    enum DTLS_ST_SW_HELLO_VERIFY_REQUEST = _Anonymous_53.DTLS_ST_SW_HELLO_VERIFY_REQUEST;
    enum TLS_ST_SW_SRVR_HELLO = _Anonymous_53.TLS_ST_SW_SRVR_HELLO;
    enum TLS_ST_SW_CERT = _Anonymous_53.TLS_ST_SW_CERT;
    enum TLS_ST_SW_KEY_EXCH = _Anonymous_53.TLS_ST_SW_KEY_EXCH;
    enum TLS_ST_SW_CERT_REQ = _Anonymous_53.TLS_ST_SW_CERT_REQ;
    enum TLS_ST_SW_SRVR_DONE = _Anonymous_53.TLS_ST_SW_SRVR_DONE;
    enum TLS_ST_SR_CERT = _Anonymous_53.TLS_ST_SR_CERT;
    enum TLS_ST_SR_KEY_EXCH = _Anonymous_53.TLS_ST_SR_KEY_EXCH;
    enum TLS_ST_SR_CERT_VRFY = _Anonymous_53.TLS_ST_SR_CERT_VRFY;
    enum TLS_ST_SR_NEXT_PROTO = _Anonymous_53.TLS_ST_SR_NEXT_PROTO;
    enum TLS_ST_SR_CHANGE = _Anonymous_53.TLS_ST_SR_CHANGE;
    enum TLS_ST_SR_FINISHED = _Anonymous_53.TLS_ST_SR_FINISHED;
    enum TLS_ST_SW_SESSION_TICKET = _Anonymous_53.TLS_ST_SW_SESSION_TICKET;
    enum TLS_ST_SW_CERT_STATUS = _Anonymous_53.TLS_ST_SW_CERT_STATUS;
    enum TLS_ST_SW_CHANGE = _Anonymous_53.TLS_ST_SW_CHANGE;
    enum TLS_ST_SW_FINISHED = _Anonymous_53.TLS_ST_SW_FINISHED;
    int EC_KEY_can_sign(const(EC_KEY)*, );




    X509_EXTENSION* X509_REVOKED_get_ext(const(X509_REVOKED)*, int, );


    int EVP_add_cipher(const(EVP_CIPHER)*, );
    ASN1_VALUE* SMIME_read_ASN1(BIO*, BIO**, const(ASN1_ITEM)*, );


    int SMIME_crlf_copy(BIO*, BIO*, int, );
    X509_EXTENSION* X509_REVOKED_delete_ext(X509_REVOKED*, int, );
    int EVP_add_digest(const(EVP_MD)*, );


    int SMIME_text(BIO*, BIO*, );
    int X509_REVOKED_add_ext(X509_REVOKED*, X509_EXTENSION*, int, );




    void* X509_REVOKED_get_ext_d2i(const(X509_REVOKED)*, int, int*, int*, );


    const(EVP_CIPHER)* EVP_get_cipherbyname(const(char)*, );
    int pthread_mutexattr_setrobust(pthread_mutexattr_t*, int, );




    const(EVP_MD)* EVP_get_digestbyname(const(char)*, );
    int X509_REVOKED_add1_ext_i2d(X509_REVOKED*, int, void*, int, c_ulong, );


    void EVP_CIPHER_do_all(void function(const(evp_cipher_st)*, const(char)*, const(char)*, void*), void*, );
    int EC_KEY_set_public_key_affine_coordinates(EC_KEY*, BIGNUM*, BIGNUM*, );


    X509_EXTENSION* X509_EXTENSION_create_by_NID(X509_EXTENSION**, int, int, ASN1_OCTET_STRING*, );




    void EVP_CIPHER_do_all_sorted(void function(const(evp_cipher_st)*, const(char)*, const(char)*, void*), void*, );


    int ERR_load_ASN1_strings();




    X509_EXTENSION* X509_EXTENSION_create_by_OBJ(X509_EXTENSION**, const(ASN1_OBJECT)*, int, ASN1_OCTET_STRING*, );




    void EVP_MD_do_all(void function(const(evp_md_st)*, const(char)*, const(char)*, void*), void*, );
    int X509_EXTENSION_set_object(X509_EXTENSION*, const(ASN1_OBJECT)*, );




    int X509_EXTENSION_set_critical(X509_EXTENSION*, int, );




    int X509_EXTENSION_set_data(X509_EXTENSION*, ASN1_OCTET_STRING*, );
    void EVP_MD_do_all_sorted(void function(const(evp_md_st)*, const(char)*, const(char)*, void*), void*, );


    ASN1_OBJECT* X509_EXTENSION_get_object(X509_EXTENSION*, );
    size_t EC_KEY_key2buf(const(EC_KEY)*, point_conversion_form_t, ubyte**, BN_CTX*, );




    ASN1_OCTET_STRING* X509_EXTENSION_get_data(X509_EXTENSION*, );
    int X509_EXTENSION_get_critical(const(X509_EXTENSION)*, );




    int pthread_rwlock_init(pthread_rwlock_t*, const(pthread_rwlockattr_t)*, );


    int EVP_PKEY_decrypt_old(ubyte*, const(ubyte)*, int, EVP_PKEY*, );
    int X509at_get_attr_count(const(stack_st_X509_ATTRIBUTE)*, );
    int X509at_get_attr_by_NID(const(stack_st_X509_ATTRIBUTE)*, int, int, );
    int getloadavg(double*, int, );






    int EVP_PKEY_encrypt_old(ubyte*, const(ubyte)*, int, EVP_PKEY*, );
    int X509at_get_attr_by_OBJ(const(stack_st_X509_ATTRIBUTE)*, const(ASN1_OBJECT)*, int, );
    int pthread_rwlock_destroy(pthread_rwlock_t*, );






    int EVP_PKEY_type(int, );


    X509_ATTRIBUTE* X509at_get_attr(const(stack_st_X509_ATTRIBUTE)*, int, );


    int EVP_PKEY_id(const(EVP_PKEY)*, );






    X509_ATTRIBUTE* X509at_delete_attr(stack_st_X509_ATTRIBUTE*, int, );


    int EVP_PKEY_base_id(const(EVP_PKEY)*, );


    int EC_KEY_oct2key(EC_KEY*, const(ubyte)*, size_t, BN_CTX*, );
    stack_st_X509_ATTRIBUTE* X509at_add1_attr(stack_st_X509_ATTRIBUTE**, X509_ATTRIBUTE*, );






    int pthread_rwlock_rdlock(pthread_rwlock_t*, );
    int EVP_PKEY_bits(const(EVP_PKEY)*, );


    int EVP_PKEY_security_bits(const(EVP_PKEY)*, );


    stack_st_X509_ATTRIBUTE* X509at_add1_attr_by_OBJ(stack_st_X509_ATTRIBUTE**, const(ASN1_OBJECT)*, int, const(ubyte)*, int, );


    int EVP_PKEY_size(EVP_PKEY*, );
    int EVP_PKEY_set_type(EVP_PKEY*, int, );
    int pthread_rwlock_tryrdlock(pthread_rwlock_t*, );




    int EVP_PKEY_set_type_str(EVP_PKEY*, const(char)*, int, );
    stack_st_X509_ATTRIBUTE* X509at_add1_attr_by_NID(stack_st_X509_ATTRIBUTE**, int, int, const(ubyte)*, int, );




    int EVP_PKEY_set1_engine(EVP_PKEY*, ENGINE*, );
    int EVP_PKEY_assign(EVP_PKEY*, int, void*, );


    void* EVP_PKEY_get0(const(EVP_PKEY)*, );


    int pthread_rwlock_timedrdlock(pthread_rwlock_t*, const(timespec)*, );


    int EC_KEY_oct2priv(EC_KEY*, const(ubyte)*, size_t, );


    const(ubyte)* EVP_PKEY_get0_hmac(const(EVP_PKEY)*, size_t*, );


    stack_st_X509_ATTRIBUTE* X509at_add1_attr_by_txt(stack_st_X509_ATTRIBUTE**, const(char)*, int, const(ubyte)*, int, );
    int EVP_PKEY_set1_RSA(EVP_PKEY*, rsa_st*, );
    void* X509at_get0_data_by_OBJ(stack_st_X509_ATTRIBUTE*, const(ASN1_OBJECT)*, int, int, );


    int pthread_rwlock_wrlock(pthread_rwlock_t*, );
    rsa_st* EVP_PKEY_get0_RSA(EVP_PKEY*, );




    rsa_st* EVP_PKEY_get1_RSA(EVP_PKEY*, );


    X509_ATTRIBUTE* X509_ATTRIBUTE_create_by_NID(X509_ATTRIBUTE**, int, int, const(void)*, int, );
    size_t EC_KEY_priv2oct(const(EC_KEY)*, ubyte*, size_t, );


    int pthread_rwlock_trywrlock(pthread_rwlock_t*, );




    int EVP_PKEY_set1_DSA(EVP_PKEY*, dsa_st*, );
    X509_ATTRIBUTE* X509_ATTRIBUTE_create_by_OBJ(X509_ATTRIBUTE**, const(ASN1_OBJECT)*, int, const(void)*, int, );




    dsa_st* EVP_PKEY_get0_DSA(EVP_PKEY*, );
    dsa_st* EVP_PKEY_get1_DSA(EVP_PKEY*, );
    X509_ATTRIBUTE* X509_ATTRIBUTE_create_by_txt(X509_ATTRIBUTE**, const(char)*, int, const(ubyte)*, int, );


    int pthread_rwlock_timedwrlock(pthread_rwlock_t*, const(timespec)*, );
    int EVP_PKEY_set1_DH(EVP_PKEY*, dh_st*, );


    size_t EC_KEY_priv2buf(const(EC_KEY)*, ubyte**, );
    dh_st* EVP_PKEY_get0_DH(EVP_PKEY*, );
    dh_st* EVP_PKEY_get1_DH(EVP_PKEY*, );
    int X509_ATTRIBUTE_set1_object(X509_ATTRIBUTE*, const(ASN1_OBJECT)*, );
    int X509_ATTRIBUTE_set1_data(X509_ATTRIBUTE*, int, const(void)*, int, );






    int pthread_rwlock_unlock(pthread_rwlock_t*, );
    void* X509_ATTRIBUTE_get0_data(X509_ATTRIBUTE*, int, int, void*, );
    int EVP_PKEY_set1_EC_KEY(EVP_PKEY*, ec_key_st*, );




    int X509_ATTRIBUTE_count(const(X509_ATTRIBUTE)*, );
    ec_key_st* EVP_PKEY_get0_EC_KEY(EVP_PKEY*, );
    ASN1_OBJECT* X509_ATTRIBUTE_get0_object(X509_ATTRIBUTE*, );
    ec_key_st* EVP_PKEY_get1_EC_KEY(EVP_PKEY*, );




    ASN1_TYPE* X509_ATTRIBUTE_get0_type(X509_ATTRIBUTE*, int, );


    int pthread_rwlockattr_init(pthread_rwlockattr_t*, );






    int EVP_PKEY_get_attr_count(const(EVP_PKEY)*, );
    struct obj_name_st
    {
        int type;
        int alias_;
        const(char)* name;
        const(char)* data;
    }
    alias OBJ_NAME = obj_name_st;
    EVP_PKEY* EVP_PKEY_new();
    EC_KEY* d2i_ECPrivateKey(EC_KEY**, const(ubyte)**, c_long, );






    int EVP_PKEY_get_attr_by_NID(const(EVP_PKEY)*, int, int, );
    int EVP_PKEY_up_ref(EVP_PKEY*, );
    int EVP_PKEY_get_attr_by_OBJ(const(EVP_PKEY)*, const(ASN1_OBJECT)*, int, );




    void EVP_PKEY_free(EVP_PKEY*, );
    int SSL_in_init(SSL*, );
    int SSL_in_before(SSL*, );


    int pthread_rwlockattr_destroy(pthread_rwlockattr_t*, );


    X509_ATTRIBUTE* EVP_PKEY_get_attr(const(EVP_PKEY)*, int, );


    int SSL_is_init_finished(SSL*, );
    EVP_PKEY* d2i_PublicKey(int, EVP_PKEY**, const(ubyte)**, c_long, );
    X509_ATTRIBUTE* EVP_PKEY_delete_attr(EVP_PKEY*, int, );






    int EVP_PKEY_add1_attr(EVP_PKEY*, X509_ATTRIBUTE*, );


    int i2d_PublicKey(EVP_PKEY*, ubyte**, );




    int EVP_PKEY_add1_attr_by_OBJ(EVP_PKEY*, const(ASN1_OBJECT)*, int, const(ubyte)*, int, );




    EVP_PKEY* d2i_PrivateKey(int, EVP_PKEY**, const(ubyte)**, c_long, );
    int pthread_rwlockattr_getpshared(const(pthread_rwlockattr_t)*, int*, );
    int i2d_ECPrivateKey(EC_KEY*, ubyte**, );
    int OBJ_NAME_init();






    int OBJ_NAME_new_index(c_ulong function(const(char)*), int function(const(char)*, const(char)*), void function(const(char)*, int, const(char)*), );


    int EVP_PKEY_add1_attr_by_NID(EVP_PKEY*, int, int, const(ubyte)*, int, );
    EVP_PKEY* d2i_AutoPrivateKey(EVP_PKEY**, const(ubyte)**, c_long, );
    int i2d_PrivateKey(EVP_PKEY*, ubyte**, );




    const(char)* OBJ_NAME_get(const(char)*, int, );
    int EVP_PKEY_add1_attr_by_txt(EVP_PKEY*, const(char)*, int, const(ubyte)*, int, );


    int OBJ_NAME_add(const(char)*, int, const(char)*, );
    int EVP_PKEY_copy_parameters(EVP_PKEY*, const(EVP_PKEY)*, );
    int pthread_rwlockattr_setpshared(pthread_rwlockattr_t*, int, );




    int EVP_PKEY_missing_parameters(const(EVP_PKEY)*, );
    int OBJ_NAME_remove(const(char)*, int, );
    int EVP_PKEY_save_parameters(EVP_PKEY*, int, );
    void OBJ_NAME_cleanup(int, );




    int EVP_PKEY_cmp_parameters(const(EVP_PKEY)*, const(EVP_PKEY)*, );
    int X509_verify_cert(X509_STORE_CTX*, );
    void OBJ_NAME_do_all(int, void function(const(obj_name_st)*, void*), void*, );
    int EVP_PKEY_cmp(const(EVP_PKEY)*, const(EVP_PKEY)*, );
    int pthread_rwlockattr_getkind_np(const(pthread_rwlockattr_t)*, int*, );
    void OBJ_NAME_do_all_sorted(int, void function(const(obj_name_st)*, void*), void*, );






    size_t SSL_get_finished(const(SSL)*, void*, size_t, );
    X509* X509_find_by_issuer_and_serial(stack_st_X509*, X509_NAME*, ASN1_INTEGER*, );


    size_t SSL_get_peer_finished(const(SSL)*, void*, size_t, );


    int EVP_PKEY_print_public(BIO*, const(EVP_PKEY)*, int, ASN1_PCTX*, );


    EC_KEY* d2i_ECParameters(EC_KEY**, const(ubyte)**, c_long, );
    X509* X509_find_by_subject(stack_st_X509*, X509_NAME*, );


    ASN1_OBJECT* OBJ_dup(const(ASN1_OBJECT)*, );
    int EVP_PKEY_print_private(BIO*, const(EVP_PKEY)*, int, ASN1_PCTX*, );


    void PBEPARAM_free(PBEPARAM*, );
    int i2d_PBEPARAM(PBEPARAM*, ubyte**, );


    PBEPARAM* PBEPARAM_new();
    PBEPARAM* d2i_PBEPARAM(PBEPARAM**, const(ubyte)**, c_long, );
    ASN1_OBJECT* OBJ_nid2obj(int, );


    int EVP_PKEY_print_params(BIO*, const(EVP_PKEY)*, int, ASN1_PCTX*, );
    const(char)* OBJ_nid2ln(int, );
    int pthread_rwlockattr_setkind_np(pthread_rwlockattr_t*, int, );


    void PBE2PARAM_free(PBE2PARAM*, );
    int i2d_PBE2PARAM(PBE2PARAM*, ubyte**, );
    PBE2PARAM* PBE2PARAM_new();
    PBE2PARAM* d2i_PBE2PARAM(PBE2PARAM**, const(ubyte)**, c_long, );




    const(char)* OBJ_nid2sn(int, );
    void PBKDF2PARAM_free(PBKDF2PARAM*, );
    int i2d_PBKDF2PARAM(PBKDF2PARAM*, ubyte**, );
    PBKDF2PARAM* PBKDF2PARAM_new();
    PBKDF2PARAM* d2i_PBKDF2PARAM(PBKDF2PARAM**, const(ubyte)**, c_long, );






    int OBJ_obj2nid(const(ASN1_OBJECT)*, );


    int EVP_PKEY_get_default_digest_nid(EVP_PKEY*, int*, );


    ASN1_OBJECT* OBJ_txt2obj(const(char)*, int, );
    int PKCS5_pbe_set0_algor(X509_ALGOR*, int, int, const(ubyte)*, int, );


    struct tls_session_ticket_ext_st
    {
        ushort length;
        void* data;
    }




    int OBJ_obj2txt(char*, int, const(ASN1_OBJECT)*, int, );


    int EVP_PKEY_set1_tls_encodedpoint(EVP_PKEY*, const(ubyte)*, size_t, );
    int i2d_ECParameters(EC_KEY*, ubyte**, );






    int OBJ_txt2nid(const(char)*, );


    X509_ALGOR* PKCS5_pbe_set(int, int, const(ubyte)*, int, );
    int OBJ_ln2nid(const(char)*, );






    int OBJ_sn2nid(const(char)*, );
    size_t EVP_PKEY_get1_tls_encodedpoint(EVP_PKEY*, ubyte**, );
    X509_ALGOR* PKCS5_pbe2_set(const(EVP_CIPHER)*, int, ubyte*, int, );


    int OBJ_cmp(const(ASN1_OBJECT)*, const(ASN1_OBJECT)*, );


    const(void)* OBJ_bsearch_(const(void)*, const(void)*, int, int, int function(const(void)*, const(void)*), );






    int EVP_CIPHER_type(const(EVP_CIPHER)*, );
    int pthread_cond_init(pthread_cond_t*, const(pthread_condattr_t)*, );
    X509_ALGOR* PKCS5_pbe2_set_iv(const(EVP_CIPHER)*, int, ubyte*, int, ubyte*, int, );






    const(void)* OBJ_bsearch_ex_(const(void)*, const(void)*, int, int, int function(const(void)*, const(void)*), int, );
    int EVP_CIPHER_param_to_asn1(EVP_CIPHER_CTX*, ASN1_TYPE*, );




    int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX*, ASN1_TYPE*, );







    int pthread_cond_destroy(pthread_cond_t*, );






    X509_ALGOR* PKCS5_pbe2_set_scrypt(const(EVP_CIPHER)*, const(ubyte)*, int, ubyte*, uint64_t, uint64_t, uint64_t, );



    int EVP_CIPHER_set_asn1_iv(EVP_CIPHER_CTX*, ASN1_TYPE*, );
    int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX*, ASN1_TYPE*, );




    int pthread_cond_signal(pthread_cond_t*, );


    EC_KEY* o2i_ECPublicKey(EC_KEY**, const(ubyte)**, c_long, );
    int PKCS5_PBE_keyivgen(EVP_CIPHER_CTX*, const(char)*, int, ASN1_TYPE*, const(EVP_CIPHER)*, const(EVP_MD)*, int, );
    X509_ALGOR* PKCS5_pbkdf2_set(int, ubyte*, int, int, int, );


    int pthread_cond_broadcast(pthread_cond_t*, );
    int PKCS5_PBKDF2_HMAC_SHA1(const(char)*, int, const(ubyte)*, int, int, int, ubyte*, );
    int PKCS5_PBKDF2_HMAC(const(char)*, int, const(ubyte)*, int, int, const(EVP_MD)*, int, ubyte*, );


    PKCS8_PRIV_KEY_INFO* d2i_PKCS8_PRIV_KEY_INFO(PKCS8_PRIV_KEY_INFO**, const(ubyte)**, c_long, );
    PKCS8_PRIV_KEY_INFO* PKCS8_PRIV_KEY_INFO_new();


    int i2d_PKCS8_PRIV_KEY_INFO(PKCS8_PRIV_KEY_INFO*, ubyte**, );
    void PKCS8_PRIV_KEY_INFO_free(PKCS8_PRIV_KEY_INFO*, );




    int i2o_ECPublicKey(const(EC_KEY)*, ubyte**, );




    EVP_PKEY* EVP_PKCS82PKEY(const(PKCS8_PRIV_KEY_INFO)*, );


    int PKCS5_v2_PBE_keyivgen(EVP_CIPHER_CTX*, const(char)*, int, ASN1_TYPE*, const(EVP_CIPHER)*, const(EVP_MD)*, int, );




    SSL_SESSION* PEM_read_bio_SSL_SESSION(BIO*, SSL_SESSION**, pem_password_cb*, void*, );
    SSL_SESSION* PEM_read_SSL_SESSION(FILE*, SSL_SESSION**, pem_password_cb*, void*, );
    int PEM_write_bio_SSL_SESSION(BIO*, SSL_SESSION*, );
    int PEM_write_SSL_SESSION(FILE*, SSL_SESSION*, );
    PKCS8_PRIV_KEY_INFO* EVP_PKEY2PKCS8(EVP_PKEY*, );




    int pthread_cond_wait(pthread_cond_t*, pthread_mutex_t*, );




    int PKCS8_pkey_set0(PKCS8_PRIV_KEY_INFO*, ASN1_OBJECT*, int, int, void*, ubyte*, int, );
    int ECParameters_print(BIO*, const(EC_KEY)*, );
    int EVP_PBE_scrypt(const(char)*, size_t, const(ubyte)*, size_t, uint64_t, uint64_t, uint64_t, uint64_t, ubyte*, size_t, );
    int PKCS8_pkey_get0(const(ASN1_OBJECT)**, const(ubyte)**, int*, const(X509_ALGOR)**, const(PKCS8_PRIV_KEY_INFO)*, );
    const(stack_st_X509_ATTRIBUTE)* PKCS8_pkey_get0_attrs(const(PKCS8_PRIV_KEY_INFO)*, );
    int PKCS5_v2_scrypt_keyivgen(EVP_CIPHER_CTX*, const(char)*, int, ASN1_TYPE*, const(EVP_CIPHER)*, const(EVP_MD)*, int, );


    int PKCS8_pkey_add1_attr_by_NID(PKCS8_PRIV_KEY_INFO*, int, int, const(ubyte)*, int, );
    int pthread_cond_timedwait(pthread_cond_t*, pthread_mutex_t*, const(timespec)*, );


    int EC_KEY_print(BIO*, const(EC_KEY)*, int, );




    int X509_PUBKEY_set0_param(X509_PUBKEY*, ASN1_OBJECT*, int, void*, ubyte*, int, );






    void PKCS5_PBE_add();
    int EVP_PBE_CipherInit(ASN1_OBJECT*, const(char)*, int, ASN1_TYPE*, EVP_CIPHER_CTX*, int, );


    int X509_PUBKEY_get0_param(ASN1_OBJECT**, const(ubyte)**, int*, X509_ALGOR**, X509_PUBKEY*, );
    int pthread_condattr_init(pthread_condattr_t*, );






    int ECParameters_print_fp(FILE*, const(EC_KEY)*, );
    int X509_check_trust(X509*, int, int, );


    int X509_TRUST_get_count();






    X509_TRUST* X509_TRUST_get0(int, );
    int pthread_condattr_destroy(pthread_condattr_t*, );
    int X509_TRUST_get_by_id(int, );
    int X509_TRUST_add(int, int, int function(x509_trust_st*, x509_st*, int), const(char)*, int, void*, );
    void X509_TRUST_cleanup();


    int pthread_condattr_getpshared(const(pthread_condattr_t)*, int*, );
    int X509_TRUST_get_flags(const(X509_TRUST)*, );






    char* X509_TRUST_get0_name(const(X509_TRUST)*, );
    int EVP_PBE_alg_add_type(int, int, int, int, EVP_PBE_KEYGEN*, );


    int EC_KEY_print_fp(FILE*, const(EC_KEY)*, int, );




    int X509_TRUST_get_trust(const(X509_TRUST)*, );






    int EVP_PBE_alg_add(int, const(EVP_CIPHER)*, const(EVP_MD)*, EVP_PBE_KEYGEN*, );
    const(EC_KEY_METHOD)* EC_KEY_OpenSSL();
    int EVP_PBE_find(int, int, int*, int*, EVP_PBE_KEYGEN**, );


    int pthread_condattr_setpshared(pthread_condattr_t*, int, );


    const(EC_KEY_METHOD)* EC_KEY_get_default_method();




    void EC_KEY_set_default_method(const(EC_KEY_METHOD)*, );


    void EVP_PBE_cleanup();


    const(EC_KEY_METHOD)* EC_KEY_get_method(const(EC_KEY)*, );


    int EVP_PBE_get(int*, int*, size_t, );


    int EC_KEY_set_method(EC_KEY*, const(EC_KEY_METHOD)*, );




    int ERR_load_X509_strings();
    EC_KEY* EC_KEY_new_method(ENGINE*, );
    int pthread_condattr_getclock(const(pthread_condattr_t)*, __clockid_t*, );


    int ECDH_KDF_X9_62(ubyte*, size_t, const(ubyte)*, size_t, const(ubyte)*, size_t, const(EVP_MD)*, );
    int pthread_condattr_setclock(pthread_condattr_t*, __clockid_t, );






    int ECDH_compute_key(void*, size_t, const(EC_POINT)*, const(EC_KEY)*, void* function(const(void)*, c_ulong, void*, c_ulong*), );
    struct ECDSA_SIG_st;
    alias ECDSA_SIG = ECDSA_SIG_st;
    int EVP_PKEY_asn1_get_count();
    const(EVP_PKEY_ASN1_METHOD)* EVP_PKEY_asn1_get0(int, );
    const(EVP_PKEY_ASN1_METHOD)* EVP_PKEY_asn1_find(ENGINE**, int, );
    const(EVP_PKEY_ASN1_METHOD)* EVP_PKEY_asn1_find_str(ENGINE**, const(char)*, int, );


    ECDSA_SIG* ECDSA_SIG_new();


    int pthread_spin_init(pthread_spinlock_t*, int, );
    int EVP_PKEY_asn1_add0(const(EVP_PKEY_ASN1_METHOD)*, );


    int EVP_PKEY_asn1_add_alias(int, int, );






    int EVP_PKEY_asn1_get0_info(int*, int*, int*, const(char)**, const(char)**, const(EVP_PKEY_ASN1_METHOD)*, );
    void ECDSA_SIG_free(ECDSA_SIG*, );
    int pthread_spin_destroy(pthread_spinlock_t*, );
    int pthread_spin_lock(pthread_spinlock_t*, );






    const(EVP_PKEY_ASN1_METHOD)* EVP_PKEY_get0_asn1(const(EVP_PKEY)*, );
    EVP_PKEY_ASN1_METHOD* EVP_PKEY_asn1_new(int, int, const(char)*, const(char)*, );






    int OBJ_new_nid(int, );
    int OBJ_add_object(const(ASN1_OBJECT)*, );
    int OBJ_create(const(char)*, const(char)*, const(char)*, );


    void EVP_PKEY_asn1_copy(EVP_PKEY_ASN1_METHOD*, const(EVP_PKEY_ASN1_METHOD)*, );


    int i2d_ECDSA_SIG(const(ECDSA_SIG)*, ubyte**, );




    int pthread_spin_trylock(pthread_spinlock_t*, );
    void EVP_PKEY_asn1_free(EVP_PKEY_ASN1_METHOD*, );






    void EVP_PKEY_asn1_set_public(EVP_PKEY_ASN1_METHOD*, int function(evp_pkey_st*, X509_pubkey_st*), int function(X509_pubkey_st*, const(evp_pkey_st)*), int function(const(evp_pkey_st)*, const(evp_pkey_st)*), int function(bio_st*, const(evp_pkey_st)*, int, asn1_pctx_st*), int function(const(evp_pkey_st)*), int function(const(evp_pkey_st)*), );


    int OBJ_create_objects(BIO*, );
    int pthread_spin_unlock(pthread_spinlock_t*, );
    size_t OBJ_length(const(ASN1_OBJECT)*, );
    const(ubyte)* OBJ_get0_data(const(ASN1_OBJECT)*, );
    int OBJ_find_sigid_algs(int, int*, int*, );






    ECDSA_SIG* d2i_ECDSA_SIG(ECDSA_SIG**, const(ubyte)**, c_long, );


    int OBJ_find_sigid_by_algs(int*, int, int, );
    int OBJ_add_sigid(int, int, int, );
    void OBJ_sigid_free();






    int pthread_barrier_init(pthread_barrier_t*, const(pthread_barrierattr_t)*, uint, );
    void EVP_PKEY_asn1_set_private(EVP_PKEY_ASN1_METHOD*, int function(evp_pkey_st*, const(pkcs8_priv_key_info_st)*), int function(pkcs8_priv_key_info_st*, const(evp_pkey_st)*), int function(bio_st*, const(evp_pkey_st)*, int, asn1_pctx_st*), );


    void ECDSA_SIG_get0(const(ECDSA_SIG)*, const(BIGNUM)**, const(BIGNUM)**, );
    int pthread_barrier_destroy(pthread_barrier_t*, );
    int ERR_load_OBJ_strings();
    int pthread_barrier_wait(pthread_barrier_t*, );
    int ECDSA_SIG_set0(ECDSA_SIG*, BIGNUM*, BIGNUM*, );
    void EVP_PKEY_asn1_set_param(EVP_PKEY_ASN1_METHOD*, int function(evp_pkey_st*, const(ubyte)**, int), int function(const(evp_pkey_st)*, ubyte**), int function(const(evp_pkey_st)*), int function(evp_pkey_st*, const(evp_pkey_st)*), int function(const(evp_pkey_st)*, const(evp_pkey_st)*), int function(bio_st*, const(evp_pkey_st)*, int, asn1_pctx_st*), );
    int pthread_barrierattr_init(pthread_barrierattr_t*, );
    int pthread_barrierattr_destroy(pthread_barrierattr_t*, );
    ECDSA_SIG* ECDSA_do_sign(const(ubyte)*, int, EC_KEY*, );
    int pthread_barrierattr_getpshared(const(pthread_barrierattr_t)*, int*, );
    int pthread_barrierattr_setpshared(pthread_barrierattr_t*, int, );
    void EVP_PKEY_asn1_set_free(EVP_PKEY_ASN1_METHOD*, void function(evp_pkey_st*), );
    void EVP_PKEY_asn1_set_ctrl(EVP_PKEY_ASN1_METHOD*, int function(evp_pkey_st*, int, c_long, void*), );
    ECDSA_SIG* ECDSA_do_sign_ex(const(ubyte)*, int, const(BIGNUM)*, const(BIGNUM)*, EC_KEY*, );






    void EVP_PKEY_asn1_set_item(EVP_PKEY_ASN1_METHOD*, int function(evp_md_ctx_st*, const(ASN1_ITEM_st)*, void*, X509_algor_st*, asn1_string_st*, evp_pkey_st*), int function(evp_md_ctx_st*, const(ASN1_ITEM_st)*, void*, X509_algor_st*, X509_algor_st*, asn1_string_st*), );
    int pthread_key_create(pthread_key_t*, void function(void*), );
    int ECDSA_do_verify(const(ubyte)*, int, const(ECDSA_SIG)*, EC_KEY*, );






    int pthread_key_delete(pthread_key_t, );
    void EVP_PKEY_asn1_set_security_bits(EVP_PKEY_ASN1_METHOD*, int function(const(evp_pkey_st)*), );
    void* pthread_getspecific(pthread_key_t, );
    int pthread_setspecific(pthread_key_t, const(void)*, );
    int ECDSA_sign_setup(EC_KEY*, BN_CTX*, BIGNUM**, BIGNUM**, );
    int pthread_getcpuclockid(pthread_t, __clockid_t*, );
    int ECDSA_sign(int, const(ubyte)*, int, ubyte*, uint*, EC_KEY*, );
    int pthread_atfork(void function(), void function(), void function(), );
    int ECDSA_sign_ex(int, const(ubyte)*, int, ubyte*, uint*, const(BIGNUM)*, const(BIGNUM)*, EC_KEY*, );
    int ECDSA_verify(int, const(ubyte)*, int, const(ubyte)*, int, EC_KEY*, );
    int ECDSA_size(const(EC_KEY)*, );
    EC_KEY_METHOD* EC_KEY_METHOD_new(const(EC_KEY_METHOD)*, );
    void EC_KEY_METHOD_free(EC_KEY_METHOD*, );
    void EC_KEY_METHOD_set_init(EC_KEY_METHOD*, int function(ec_key_st*), void function(ec_key_st*), int function(ec_key_st*, const(ec_key_st)*), int function(ec_key_st*, const(ec_group_st)*), int function(ec_key_st*, const(bignum_st)*), int function(ec_key_st*, const(ec_point_st)*), );
    const(EVP_PKEY_METHOD)* EVP_PKEY_meth_find(int, );





    EVP_PKEY_METHOD* EVP_PKEY_meth_new(int, int, );


    void EVP_PKEY_meth_get0_info(int*, int*, const(EVP_PKEY_METHOD)*, );





    void EC_KEY_METHOD_set_keygen(EC_KEY_METHOD*, int function(ec_key_st*), );
    void EVP_PKEY_meth_copy(EVP_PKEY_METHOD*, const(EVP_PKEY_METHOD)*, );





    void EVP_PKEY_meth_free(EVP_PKEY_METHOD*, );


    int EVP_PKEY_meth_add0(const(EVP_PKEY_METHOD)*, );
    void EC_KEY_METHOD_set_compute_key(EC_KEY_METHOD*, int function(ubyte**, c_ulong*, const(ec_point_st)*, const(ec_key_st)*), );





    EVP_PKEY_CTX* EVP_PKEY_CTX_new(EVP_PKEY*, ENGINE*, );
    EVP_PKEY_CTX* EVP_PKEY_CTX_new_id(int, ENGINE*, );





    EVP_PKEY_CTX* EVP_PKEY_CTX_dup(EVP_PKEY_CTX*, );


    void EVP_PKEY_CTX_free(EVP_PKEY_CTX*, );







    int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX*, int, int, int, int, void*, );
    void EC_KEY_METHOD_set_sign(EC_KEY_METHOD*, int function(int, const(ubyte)*, int, ubyte*, uint*, const(bignum_st)*, const(bignum_st)*, ec_key_st*), int function(ec_key_st*, bignum_ctx*, bignum_st**, bignum_st**), ECDSA_SIG_st* function(const(ubyte)*, int, const(bignum_st)*, const(bignum_st)*, ec_key_st*), );





    int EVP_PKEY_CTX_ctrl_str(EVP_PKEY_CTX*, const(char)*, const(char)*, );
    int EVP_PKEY_CTX_str2ctrl(EVP_PKEY_CTX*, int, const(char)*, );
    int EVP_PKEY_CTX_hex2ctrl(EVP_PKEY_CTX*, int, const(char)*, );
    int EVP_PKEY_CTX_get_operation(EVP_PKEY_CTX*, );


    void EVP_PKEY_CTX_set0_keygen_info(EVP_PKEY_CTX*, int*, int, );



    EVP_PKEY* EVP_PKEY_new_mac_key(int, ENGINE*, const(ubyte)*, int, );
    void EC_KEY_METHOD_set_verify(EC_KEY_METHOD*, int function(int, const(ubyte)*, int, const(ubyte)*, int, ec_key_st*), int function(const(ubyte)*, int, const(ECDSA_SIG_st)*, ec_key_st*), );
    void EVP_PKEY_CTX_set_data(EVP_PKEY_CTX*, void*, );





    void* EVP_PKEY_CTX_get_data(EVP_PKEY_CTX*, );
    EVP_PKEY* EVP_PKEY_CTX_get0_pkey(EVP_PKEY_CTX*, );
    EVP_PKEY* EVP_PKEY_CTX_get0_peerkey(EVP_PKEY_CTX*, );





    void EVP_PKEY_CTX_set_app_data(EVP_PKEY_CTX*, void*, );


    void* EVP_PKEY_CTX_get_app_data(EVP_PKEY_CTX*, );





    int EVP_PKEY_sign_init(EVP_PKEY_CTX*, );


    void EC_KEY_METHOD_get_init(const(EC_KEY_METHOD)*, int function(ec_key_st*)*, void function(ec_key_st*)*, int function(ec_key_st*, const(ec_key_st)*)*, int function(ec_key_st*, const(ec_group_st)*)*, int function(ec_key_st*, const(bignum_st)*)*, int function(ec_key_st*, const(ec_point_st)*)*, );


    int EVP_PKEY_sign(EVP_PKEY_CTX*, ubyte*, size_t*, const(ubyte)*, size_t, );
    int EVP_PKEY_verify_init(EVP_PKEY_CTX*, );







    int EVP_PKEY_verify(EVP_PKEY_CTX*, const(ubyte)*, size_t, const(ubyte)*, size_t, );







    int EVP_PKEY_verify_recover_init(EVP_PKEY_CTX*, );





    int EVP_PKEY_verify_recover(EVP_PKEY_CTX*, ubyte*, size_t*, const(ubyte)*, size_t, );







    void EC_KEY_METHOD_get_keygen(const(EC_KEY_METHOD)*, int function(ec_key_st*)*, );
    int EVP_PKEY_encrypt_init(EVP_PKEY_CTX*, );
    int EVP_PKEY_encrypt(EVP_PKEY_CTX*, ubyte*, size_t*, const(ubyte)*, size_t, );







    void EC_KEY_METHOD_get_compute_key(const(EC_KEY_METHOD)*, int function(ubyte**, c_ulong*, const(ec_point_st)*, const(ec_key_st)*)*, );





    int EVP_PKEY_decrypt_init(EVP_PKEY_CTX*, );


    int EVP_PKEY_decrypt(EVP_PKEY_CTX*, ubyte*, size_t*, const(ubyte)*, size_t, );
    int EVP_PKEY_derive_init(EVP_PKEY_CTX*, );
    void EC_KEY_METHOD_get_sign(const(EC_KEY_METHOD)*, int function(int, const(ubyte)*, int, ubyte*, uint*, const(bignum_st)*, const(bignum_st)*, ec_key_st*)*, int function(ec_key_st*, bignum_ctx*, bignum_st**, bignum_st**)*, ECDSA_SIG_st* function(const(ubyte)*, int, const(bignum_st)*, const(bignum_st)*, ec_key_st*)*, );
    int EVP_PKEY_derive_set_peer(EVP_PKEY_CTX*, EVP_PKEY*, );





    int EVP_PKEY_derive(EVP_PKEY_CTX*, ubyte*, size_t*, );







    alias EVP_PKEY_gen_cb = int function(EVP_PKEY_CTX*);







    int EVP_PKEY_paramgen_init(EVP_PKEY_CTX*, );
    int EVP_PKEY_paramgen(EVP_PKEY_CTX*, EVP_PKEY**, );





    int EVP_PKEY_keygen_init(EVP_PKEY_CTX*, );


    int EVP_PKEY_keygen(EVP_PKEY_CTX*, EVP_PKEY**, );







    void EVP_PKEY_CTX_set_cb(EVP_PKEY_CTX*, EVP_PKEY_gen_cb*, );





    EVP_PKEY_gen_cb* EVP_PKEY_CTX_get_cb(EVP_PKEY_CTX*, );



    void EC_KEY_METHOD_get_verify(const(EC_KEY_METHOD)*, int function(int, const(ubyte)*, int, const(ubyte)*, int, ec_key_st*)*, int function(const(ubyte)*, int, const(ECDSA_SIG_st)*, ec_key_st*)*, );


    int EVP_PKEY_CTX_get_keygen_info(EVP_PKEY_CTX*, int, );







    void EVP_PKEY_meth_set_init(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), );





    void EVP_PKEY_meth_set_copy(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_pkey_ctx_st*), );
    void EVP_PKEY_meth_set_cleanup(EVP_PKEY_METHOD*, void function(evp_pkey_ctx_st*), );
    void EVP_PKEY_meth_set_paramgen(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, evp_pkey_st*), );
    void EVP_PKEY_meth_set_keygen(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, evp_pkey_st*), );
    void EVP_PKEY_meth_set_sign(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong), );
    void EVP_PKEY_meth_set_verify(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, const(ubyte)*, c_ulong, const(ubyte)*, c_ulong), );
    void EVP_PKEY_meth_set_verify_recover(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong), );
    void EVP_PKEY_meth_set_signctx(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_md_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, evp_md_ctx_st*), );
    void EVP_PKEY_meth_set_verifyctx(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_md_ctx_st*), int function(evp_pkey_ctx_st*, const(ubyte)*, int, evp_md_ctx_st*), );
    void EVP_PKEY_meth_set_encrypt(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong), );





    const(BIO_METHOD)* BIO_f_ssl();


    BIO* BIO_new_ssl(SSL_CTX*, int, );
    BIO* BIO_new_ssl_connect(SSL_CTX*, );


    BIO* BIO_new_buffer_ssl_connect(SSL_CTX*, );


    int BIO_ssl_copy_session_id(BIO*, BIO*, );





    void BIO_ssl_shutdown(BIO*, );


    int SSL_CTX_set_cipher_list(SSL_CTX*, const(char)*, );


    SSL_CTX* SSL_CTX_new(const(SSL_METHOD)*, );


    void EVP_PKEY_meth_set_decrypt(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong), );
    int SSL_CTX_up_ref(SSL_CTX*, );


    void SSL_CTX_free(SSL_CTX*, );





    c_long SSL_CTX_set_timeout(SSL_CTX*, c_long, );


    c_long SSL_CTX_get_timeout(const(SSL_CTX)*, );




    X509_STORE* SSL_CTX_get_cert_store(const(SSL_CTX)*, );
    void SSL_CTX_set_cert_store(SSL_CTX*, X509_STORE*, );




    int SSL_want(const(SSL)*, );




    void EVP_PKEY_meth_set_derive(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*), int function(evp_pkey_ctx_st*, ubyte*, c_ulong*), );
    int SSL_clear(SSL*, );






    void SSL_CTX_flush_sessions(SSL_CTX*, c_long, );
    const(SSL_CIPHER)* SSL_get_current_cipher(const(SSL)*, );


    int SSL_CIPHER_get_bits(const(SSL_CIPHER)*, int*, );


    const(char)* SSL_CIPHER_get_version(const(SSL_CIPHER)*, );
    void EVP_PKEY_meth_set_ctrl(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, int, int, void*), int function(evp_pkey_ctx_st*, const(char)*, const(char)*), );






    const(char)* SSL_CIPHER_get_name(const(SSL_CIPHER)*, );
    uint32_t SSL_CIPHER_get_id(const(SSL_CIPHER)*, );




    int SSL_CIPHER_get_kx_nid(const(SSL_CIPHER)*, );


    int SSL_CIPHER_get_auth_nid(const(SSL_CIPHER)*, );


    int SSL_CIPHER_is_aead(const(SSL_CIPHER)*, );






    int SSL_get_fd(const(SSL)*, );
    void EVP_PKEY_meth_get_init(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, );


    int SSL_get_rfd(const(SSL)*, );
    int SSL_get_wfd(const(SSL)*, );


    const(char)* SSL_get_cipher_list(const(SSL)*, int, );


    void EVP_PKEY_meth_get_copy(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_pkey_ctx_st*)*, );
    char* SSL_get_shared_ciphers(const(SSL)*, char*, int, );


    int SSL_get_read_ahead(const(SSL)*, );


    int ERR_load_EC_strings();
    int SSL_pending(const(SSL)*, );
    int SSL_has_pending(const(SSL)*, );


    void EVP_PKEY_meth_get_cleanup(EVP_PKEY_METHOD*, void function(evp_pkey_ctx_st*)*, );


    int SSL_set_fd(SSL*, int, );
    void EVP_PKEY_meth_get_paramgen(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, evp_pkey_st*)*, );


    int SSL_set_rfd(SSL*, int, );




    int SSL_set_wfd(SSL*, int, );




    void SSL_set0_rbio(SSL*, BIO*, );






    void SSL_set0_wbio(SSL*, BIO*, );
    void EVP_PKEY_meth_get_keygen(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, evp_pkey_st*)*, );




    void SSL_set_bio(SSL*, BIO*, BIO*, );




    BIO* SSL_get_rbio(const(SSL)*, );


    BIO* SSL_get_wbio(const(SSL)*, );




    int SSL_set_cipher_list(SSL*, const(char)*, );




    void SSL_set_read_ahead(SSL*, int, );




    int SSL_get_verify_mode(const(SSL)*, );
    void EVP_PKEY_meth_get_sign(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong)*, );


    int SSL_get_verify_depth(const(SSL)*, );


    SSL_verify_cb SSL_get_verify_callback(const(SSL)*, );




    void SSL_set_verify(SSL*, int, SSL_verify_cb, );


    void SSL_set_verify_depth(SSL*, int, );




    void SSL_set_cert_cb(SSL*, int function(ssl_st*, void*), void*, );
    int SSL_use_RSAPrivateKey(SSL*, RSA*, );
    void EVP_PKEY_meth_get_verify(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, const(ubyte)*, c_ulong, const(ubyte)*, c_ulong)*, );




    int SSL_use_RSAPrivateKey_ASN1(SSL*, const(ubyte)*, c_long, );
    int SSL_use_PrivateKey(SSL*, EVP_PKEY*, );
    int SSL_use_PrivateKey_ASN1(int, SSL*, const(ubyte)*, c_long, );
    int SSL_use_certificate(SSL*, X509*, );




    int SSL_use_certificate_ASN1(SSL*, const(ubyte)*, int, );






    void EVP_PKEY_meth_get_verify_recover(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong)*, );




    int SSL_CTX_use_serverinfo(SSL_CTX*, const(ubyte)*, size_t, );
    int SSL_CTX_use_serverinfo_file(SSL_CTX*, const(char)*, );
    int SSL_use_RSAPrivateKey_file(SSL*, const(char)*, int, );
    int SSL_use_PrivateKey_file(SSL*, const(char)*, int, );




    int SSL_use_certificate_file(SSL*, const(char)*, int, );


    void EVP_PKEY_meth_get_signctx(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_md_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, evp_md_ctx_st*)*, );
    int SSL_CTX_use_RSAPrivateKey_file(SSL_CTX*, const(char)*, int, );




    int SSL_CTX_use_PrivateKey_file(SSL_CTX*, const(char)*, int, );




    int SSL_CTX_use_certificate_file(SSL_CTX*, const(char)*, int, );
    int SSL_CTX_use_certificate_chain_file(SSL_CTX*, const(char)*, );


    void EVP_PKEY_meth_get_verifyctx(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, evp_md_ctx_st*)*, int function(evp_pkey_ctx_st*, const(ubyte)*, int, evp_md_ctx_st*)*, );
    int SSL_use_certificate_chain_file(SSL*, const(char)*, );




    stack_st_X509_NAME* SSL_load_client_CA_file(const(char)*, );




    int SSL_add_file_cert_subjects_to_stack(stack_st_X509_NAME*, const(char)*, );






    int SSL_add_dir_cert_subjects_to_stack(stack_st_X509_NAME*, const(char)*, );
    void EVP_PKEY_meth_get_encrypt(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong)*, );
    const(char)* SSL_state_string(const(SSL)*, );




    const(char)* SSL_rstate_string(const(SSL)*, );




    const(char)* SSL_state_string_long(const(SSL)*, );




    void EVP_PKEY_meth_get_decrypt(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*, const(ubyte)*, c_ulong)*, );
    const(char)* SSL_rstate_string_long(const(SSL)*, );




    c_long SSL_SESSION_get_time(const(SSL_SESSION)*, );




    c_long SSL_SESSION_set_time(SSL_SESSION*, c_long, );




    c_long SSL_SESSION_get_timeout(const(SSL_SESSION)*, );
    c_long SSL_SESSION_set_timeout(SSL_SESSION*, c_long, );




    int SSL_SESSION_get_protocol_version(const(SSL_SESSION)*, );




    const(char)* SSL_SESSION_get0_hostname(const(SSL_SESSION)*, );






    const(SSL_CIPHER)* SSL_SESSION_get0_cipher(const(SSL_SESSION)*, );


    void EVP_PKEY_meth_get_derive(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*)*, int function(evp_pkey_ctx_st*, ubyte*, c_ulong*)*, );
    int SSL_SESSION_has_ticket(const(SSL_SESSION)*, );




    c_ulong SSL_SESSION_get_ticket_lifetime_hint(const(SSL_SESSION)*, );


    void SSL_SESSION_get0_ticket(const(SSL_SESSION)*, const(ubyte)**, size_t*, );
    int SSL_copy_session_id(SSL*, const(SSL)*, );
    X509* SSL_SESSION_get0_peer(SSL_SESSION*, );




    int SSL_SESSION_set1_id_context(SSL_SESSION*, const(ubyte)*, uint, );


    void EVP_PKEY_meth_get_ctrl(EVP_PKEY_METHOD*, int function(evp_pkey_ctx_st*, int, int, void*)*, int function(evp_pkey_ctx_st*, const(char)*, const(char)*)*, );






    int SSL_SESSION_set1_id(SSL_SESSION*, const(ubyte)*, uint, );
    SSL_SESSION* SSL_SESSION_new();




    const(ubyte)* SSL_SESSION_get_id(const(SSL_SESSION)*, uint*, );


    void EVP_add_alg_module();




    const(ubyte)* SSL_SESSION_get0_id_context(const(SSL_SESSION)*, uint*, );






    uint SSL_SESSION_get_compress_id(const(SSL_SESSION)*, );
    int SSL_SESSION_print_fp(FILE*, const(SSL_SESSION)*, );
    int SSL_SESSION_print(BIO*, const(SSL_SESSION)*, );




    int ERR_load_EVP_strings();
    int SSL_SESSION_print_keylog(BIO*, const(SSL_SESSION)*, );






    int SSL_SESSION_up_ref(SSL_SESSION*, );


    void SSL_SESSION_free(SSL_SESSION*, );




    int i2d_SSL_SESSION(SSL_SESSION*, ubyte**, );




    int SSL_set_session(SSL*, SSL_SESSION*, );






    int SSL_CTX_add_session(SSL_CTX*, SSL_SESSION*, );






    int SSL_CTX_remove_session(SSL_CTX*, SSL_SESSION*, );


    int SSL_CTX_set_generate_session_id(SSL_CTX*, GEN_SESSION_CB, );






    int SSL_set_generate_session_id(SSL*, GEN_SESSION_CB, );




    int SSL_has_matching_session_id(const(SSL)*, const(ubyte)*, uint, );
    SSL_SESSION* d2i_SSL_SESSION(SSL_SESSION**, const(ubyte)**, c_long, );
    X509* SSL_get_peer_certificate(const(SSL)*, );
    stack_st_X509* SSL_get_peer_cert_chain(const(SSL)*, );
    int SSL_CTX_get_verify_mode(const(SSL_CTX)*, );
    int SSL_CTX_get_verify_depth(const(SSL_CTX)*, );




    SSL_verify_cb SSL_CTX_get_verify_callback(const(SSL_CTX)*, );






    void SSL_CTX_set_verify(SSL_CTX*, int, SSL_verify_cb, );
    void SSL_CTX_set_verify_depth(SSL_CTX*, int, );




    void SSL_CTX_set_cert_verify_callback(SSL_CTX*, int function(x509_store_ctx_st*, void*), void*, );
    void SSL_CTX_set_cert_cb(SSL_CTX*, int function(ssl_st*, void*), void*, );
    int SSL_CTX_use_RSAPrivateKey(SSL_CTX*, RSA*, );
    int SSL_CTX_use_RSAPrivateKey_ASN1(SSL_CTX*, const(ubyte)*, c_long, );
    int SSL_CTX_use_PrivateKey(SSL_CTX*, EVP_PKEY*, );






    int SSL_CTX_use_PrivateKey_ASN1(int, SSL_CTX*, const(ubyte)*, c_long, );






    int SSL_CTX_use_certificate(SSL_CTX*, X509*, );






    int SSL_CTX_use_certificate_ASN1(SSL_CTX*, int, const(ubyte)*, );
    void SSL_CTX_set_default_passwd_cb(SSL_CTX*, pem_password_cb*, );




    void SSL_CTX_set_default_passwd_cb_userdata(SSL_CTX*, void*, );
    pem_password_cb* SSL_CTX_get_default_passwd_cb(SSL_CTX*, );






    void* SSL_CTX_get_default_passwd_cb_userdata(SSL_CTX*, );






    void SSL_set_default_passwd_cb(SSL*, pem_password_cb*, );






    void SSL_set_default_passwd_cb_userdata(SSL*, void*, );




    pem_password_cb* SSL_get_default_passwd_cb(SSL*, );






    void* SSL_get_default_passwd_cb_userdata(SSL*, );
    int SSL_CTX_check_private_key(const(SSL_CTX)*, );


    int SSL_check_private_key(const(SSL)*, );
    int SSL_CTX_set_session_id_context(SSL_CTX*, const(ubyte)*, uint, );
    SSL* SSL_new(SSL_CTX*, );






    int SSL_up_ref(SSL*, );




    int SSL_is_dtls(const(SSL)*, );






    int SSL_set_session_id_context(SSL*, const(ubyte)*, uint, );
    int SSL_CTX_set_purpose(SSL_CTX*, int, );




    int SSL_set_purpose(SSL*, int, );




    int SSL_CTX_set_trust(SSL_CTX*, int, );
    int SSL_set_trust(SSL*, int, );
    int SSL_set1_host(SSL*, const(char)*, );
    int SSL_add1_host(SSL*, const(char)*, );






    const(char)* SSL_get0_peername(SSL*, );
    void SSL_set_hostflags(SSL*, uint, );
    int SSL_CTX_dane_enable(SSL_CTX*, );






    int SSL_CTX_dane_mtype_set(SSL_CTX*, const(EVP_MD)*, uint8_t, uint8_t, );
    int SSL_dane_enable(SSL*, const(char)*, );


    int SSL_dane_tlsa_add(SSL*, uint8_t, uint8_t, uint8_t, ubyte*, size_t, );
    int SSL_get0_dane_authority(SSL*, X509**, EVP_PKEY**, );
    int SSL_get0_dane_tlsa(SSL*, uint8_t*, uint8_t*, uint8_t*, const(ubyte)**, size_t*, );
    SSL_DANE* SSL_get0_dane(SSL*, );
    c_ulong SSL_CTX_dane_set_flags(SSL_CTX*, c_ulong, );






    c_ulong SSL_CTX_dane_clear_flags(SSL_CTX*, c_ulong, );






    c_ulong SSL_dane_set_flags(SSL*, c_ulong, );
    c_ulong SSL_dane_clear_flags(SSL*, c_ulong, );






    int SSL_CTX_set1_param(SSL_CTX*, X509_VERIFY_PARAM*, );
    int SSL_set1_param(SSL*, X509_VERIFY_PARAM*, );
    X509_VERIFY_PARAM* SSL_CTX_get0_param(SSL_CTX*, );




    X509_VERIFY_PARAM* SSL_get0_param(SSL*, );
    int SSL_CTX_set_srp_username(SSL_CTX*, char*, );






    int SSL_CTX_set_srp_password(SSL_CTX*, char*, );




    int SSL_CTX_set_srp_strength(SSL_CTX*, int, );






    int SSL_CTX_set_srp_client_pwd_callback(SSL_CTX*, char* function(ssl_st*, void*), );
    int SSL_CTX_set_srp_verify_param_callback(SSL_CTX*, int function(ssl_st*, void*), );
    int SSL_CTX_set_srp_username_callback(SSL_CTX*, int function(ssl_st*, int*, void*), );
    int SSL_CTX_set_srp_cb_arg(SSL_CTX*, void*, );
    int SSL_set_srp_server_param(SSL*, const(BIGNUM)*, const(BIGNUM)*, BIGNUM*, BIGNUM*, char*, );
    int SSL_set_srp_server_param_pw(SSL*, const(char)*, const(char)*, const(char)*, );
    BIGNUM* SSL_get_srp_g(SSL*, );


    BIGNUM* SSL_get_srp_N(SSL*, );
    char* SSL_get_srp_username(SSL*, );


    char* SSL_get_srp_userinfo(SSL*, );
    void SSL_certs_clear(SSL*, );




    void SSL_free(SSL*, );
    int SSL_waiting_for_async(SSL*, );
    int SSL_get_all_async_fds(SSL*, int*, size_t*, );




    int SSL_get_changed_async_fds(SSL*, int*, size_t*, int*, size_t*, );
    int SSL_accept(SSL*, );


    int SSL_connect(SSL*, );


    int SSL_read(SSL*, void*, int, );


    int SSL_peek(SSL*, void*, int, );


    int SSL_write(SSL*, const(void)*, int, );
    c_long SSL_ctrl(SSL*, int, c_long, void*, );
    c_long SSL_callback_ctrl(SSL*, int, void function(), );


    c_long SSL_CTX_ctrl(SSL_CTX*, int, c_long, void*, );


    c_long SSL_CTX_callback_ctrl(SSL_CTX*, int, void function(), );


    int SSL_get_error(const(SSL)*, int, );




    const(char)* SSL_get_version(const(SSL)*, );




    int SSL_CTX_set_ssl_version(SSL_CTX*, const(SSL_METHOD)*, );
    const(SSL_METHOD)* TLS_method();
    const(SSL_METHOD)* TLS_server_method();


    const(SSL_METHOD)* TLS_client_method();






    const(SSL_METHOD)* TLSv1_method();
    const(SSL_METHOD)* TLSv1_server_method();


    const(SSL_METHOD)* TLSv1_client_method();




    const(SSL_METHOD)* TLSv1_1_method();


    const(SSL_METHOD)* TLSv1_1_server_method();


    const(SSL_METHOD)* TLSv1_1_client_method();
    const(SSL_METHOD)* TLSv1_2_method();
    const(SSL_METHOD)* TLSv1_2_server_method();


    const(SSL_METHOD)* TLSv1_2_client_method();






    const(SSL_METHOD)* DTLSv1_method();


    const(SSL_METHOD)* DTLSv1_server_method();


    const(SSL_METHOD)* DTLSv1_client_method();




    const(SSL_METHOD)* DTLSv1_2_method();


    const(SSL_METHOD)* DTLSv1_2_server_method();


    const(SSL_METHOD)* DTLSv1_2_client_method();




    const(SSL_METHOD)* DTLS_method();


    const(SSL_METHOD)* DTLS_server_method();


    const(SSL_METHOD)* DTLS_client_method();


    stack_st_SSL_CIPHER* SSL_get_ciphers(const(SSL)*, );


    stack_st_SSL_CIPHER* SSL_CTX_get_ciphers(const(SSL_CTX)*, );
    stack_st_SSL_CIPHER* SSL_get_client_ciphers(const(SSL)*, );


    stack_st_SSL_CIPHER* SSL_get1_supported_ciphers(SSL*, );


    int SSL_do_handshake(SSL*, );




    int SSL_renegotiate(SSL*, );


    int SSL_renegotiate_abbreviated(SSL*, );
    int SSL_renegotiate_pending(SSL*, );
    int SSL_shutdown(SSL*, );




    const(SSL_METHOD)* SSL_CTX_get_ssl_method(SSL_CTX*, );


    const(SSL_METHOD)* SSL_get_ssl_method(SSL*, );
    int SSL_set_ssl_method(SSL*, const(SSL_METHOD)*, );


    const(char)* SSL_alert_type_string_long(int, );




    const(char)* SSL_alert_type_string(int, );
    const(char)* SSL_alert_desc_string_long(int, );


    const(char)* SSL_alert_desc_string(int, );




    void SSL_set_client_CA_list(SSL*, stack_st_X509_NAME*, );
    void SSL_CTX_set_client_CA_list(SSL_CTX*, stack_st_X509_NAME*, );


    stack_st_X509_NAME* SSL_get_client_CA_list(const(SSL)*, );


    stack_st_X509_NAME* SSL_CTX_get_client_CA_list(const(SSL_CTX)*, );


    int SSL_add_client_CA(SSL*, X509*, );
    int SSL_CTX_add_client_CA(SSL_CTX*, X509*, );




    void SSL_set_connect_state(SSL*, );


    void SSL_set_accept_state(SSL*, );


    c_long SSL_get_default_timeout(const(SSL)*, );
    char* SSL_CIPHER_description(const(SSL_CIPHER)*, char*, int, );
    stack_st_X509_NAME* SSL_dup_CA_list(stack_st_X509_NAME*, );




    SSL* SSL_dup(SSL*, );


    X509* SSL_get_certificate(const(SSL)*, );






    evp_pkey_st* SSL_get_privatekey(const(SSL)*, );


    X509* SSL_CTX_get0_certificate(const(SSL_CTX)*, );
    EVP_PKEY* SSL_CTX_get0_privatekey(const(SSL_CTX)*, );




    void SSL_CTX_set_quiet_shutdown(SSL_CTX*, int, );
    int SSL_CTX_get_quiet_shutdown(const(SSL_CTX)*, );


    void SSL_set_quiet_shutdown(SSL*, int, );


    int SSL_get_quiet_shutdown(const(SSL)*, );


    void SSL_set_shutdown(SSL*, int, );
    int SSL_get_shutdown(const(SSL)*, );


    int SSL_version(const(SSL)*, );




    int SSL_client_version(const(SSL)*, );
    int SSL_CTX_set_default_verify_paths(SSL_CTX*, );


    int SSL_CTX_set_default_verify_dir(SSL_CTX*, );


    int SSL_CTX_set_default_verify_file(SSL_CTX*, );


    int SSL_CTX_load_verify_locations(SSL_CTX*, const(char)*, const(char)*, );




    SSL_SESSION* SSL_get_session(const(SSL)*, );


    SSL_SESSION* SSL_get1_session(SSL*, );


    SSL_CTX* SSL_get_SSL_CTX(const(SSL)*, );
    SSL_CTX* SSL_set_SSL_CTX(SSL*, SSL_CTX*, );


    void SSL_set_info_callback(SSL*, void function(const(ssl_st)*, int, int), );




    void function(const(ssl_st)*, int, int) SSL_get_info_callback(const(SSL)*, int, int, const(SSL)*, );


    OSSL_HANDSHAKE_STATE SSL_get_state(const(SSL)*, );




    void SSL_set_verify_result(SSL*, c_long, );
    c_long SSL_get_verify_result(const(SSL)*, );


    stack_st_X509* SSL_get0_verified_chain(const(SSL)*, );




    size_t SSL_get_client_random(const(SSL)*, ubyte*, size_t, );


    size_t SSL_get_server_random(const(SSL)*, ubyte*, size_t, );




    size_t SSL_SESSION_get_master_key(const(SSL_SESSION)*, ubyte*, size_t, );
    int SSL_set_ex_data(SSL*, int, void*, );


    void* SSL_get_ex_data(const(SSL)*, int, );





    int SSL_SESSION_set_ex_data(SSL_SESSION*, int, void*, );




    void* SSL_SESSION_get_ex_data(const(SSL_SESSION)*, int, );







    int SSL_CTX_set_ex_data(SSL_CTX*, int, void*, );


    void* SSL_CTX_get_ex_data(const(SSL_CTX)*, int, );


    int SSL_get_ex_data_X509_STORE_CTX_idx();
    void SSL_CTX_set_default_read_buffer_len(SSL_CTX*, size_t, );


    void SSL_set_default_read_buffer_len(SSL*, size_t, );




    void SSL_CTX_set_tmp_dh_callback(SSL_CTX*, dh_st* function(ssl_st*, int, int), );




    void SSL_set_tmp_dh_callback(SSL*, dh_st* function(ssl_st*, int, int), );
    const(COMP_METHOD)* SSL_get_current_compression(SSL*, );


    const(COMP_METHOD)* SSL_get_current_expansion(SSL*, );
    const(char)* SSL_COMP_get_name(const(COMP_METHOD)*, );




    const(char)* SSL_COMP_get0_name(const(SSL_COMP)*, );
    int SSL_COMP_get_id(const(SSL_COMP)*, );


    stack_st_SSL_COMP* SSL_COMP_get_compression_methods();
    stack_st_SSL_COMP* SSL_COMP_set0_compression_methods(stack_st_SSL_COMP*, );
    int SSL_COMP_add_compression_method(int, COMP_METHOD*, );




    const(SSL_CIPHER)* SSL_CIPHER_find(SSL*, const(ubyte)*, );


    int SSL_CIPHER_get_cipher_nid(const(SSL_CIPHER)*, );


    int SSL_CIPHER_get_digest_nid(const(SSL_CIPHER)*, );




    int SSL_set_session_ticket_ext(SSL*, void*, int, );


    int SSL_set_session_ticket_ext_cb(SSL*, tls_session_ticket_ext_cb_fn, void*, );






    int SSL_set_session_secret_cb(SSL*, tls_session_secret_cb_fn, void*, );
    void SSL_CTX_set_not_resumable_session_callback(SSL_CTX*, int function(ssl_st*, int), );
    void SSL_set_not_resumable_session_callback(SSL*, int function(ssl_st*, int), );
    int SSL_session_reused(SSL*, );


    int SSL_is_server(const(SSL)*, );


    SSL_CONF_CTX* SSL_CONF_CTX_new();


    int SSL_CONF_CTX_finish(SSL_CONF_CTX*, );


    void SSL_CONF_CTX_free(SSL_CONF_CTX*, );


    uint SSL_CONF_CTX_set_flags(SSL_CONF_CTX*, uint, );


    uint SSL_CONF_CTX_clear_flags(SSL_CONF_CTX*, uint, );
    int SSL_CONF_CTX_set1_prefix(SSL_CONF_CTX*, const(char)*, );


    void SSL_CONF_CTX_set_ssl(SSL_CONF_CTX*, SSL*, );




    void SSL_CONF_CTX_set_ssl_ctx(SSL_CONF_CTX*, SSL_CTX*, );


    int SSL_CONF_cmd(SSL_CONF_CTX*, const(char)*, const(char)*, );


    int SSL_CONF_cmd_argv(SSL_CONF_CTX*, int*, char***, );
    int SSL_CONF_cmd_value_type(SSL_CONF_CTX*, const(char)*, );




    void SSL_add_ssl_module();


    int SSL_config(SSL*, const(char)*, );
    int SSL_CTX_config(SSL_CTX*, const(char)*, );
    int DTLSv1_listen(SSL*, BIO_ADDR*, );
    alias ssl_ct_validation_cb = int function(const(CT_POLICY_EVAL_CTX)*, const(stack_st_SCT)*, void*);
    int SSL_set_ct_validation_callback(SSL*, ssl_ct_validation_cb, void*, );


    int SSL_CTX_set_ct_validation_callback(SSL_CTX*, ssl_ct_validation_cb, void*, );
    enum _Anonymous_54
    {
        SSL_CT_VALIDATION_PERMISSIVE = 0,
        SSL_CT_VALIDATION_STRICT = 1,
    }
    enum SSL_CT_VALIDATION_PERMISSIVE = _Anonymous_54.SSL_CT_VALIDATION_PERMISSIVE;
    enum SSL_CT_VALIDATION_STRICT = _Anonymous_54.SSL_CT_VALIDATION_STRICT;
    int SSL_enable_ct(SSL*, int, );


    int SSL_CTX_enable_ct(SSL_CTX*, int, );
    int SSL_ct_is_enabled(const(SSL)*, );
    int SSL_CTX_ct_is_enabled(const(SSL_CTX)*, );






    const(stack_st_SCT)* SSL_get0_peer_scts(SSL*, );
    int SSL_CTX_set_default_ctlog_list_file(SSL_CTX*, );
    int SSL_CTX_set_ctlog_list_file(SSL_CTX*, const(char)*, );
    void SSL_CTX_set0_ctlog_store(SSL_CTX*, CTLOG_STORE*, );
    const(CTLOG_STORE)* SSL_CTX_get0_ctlog_store(const(SSL_CTX)*, );
    void SSL_set_security_level(SSL*, int, );
    int SSL_get_security_level(const(SSL)*, );




    void SSL_set_security_callback(SSL*, int function(const(ssl_st)*, const(ssl_ctx_st)*, int, int, int, void*, void*), );






    int function(const(ssl_st)*, const(ssl_ctx_st)*, int, int, int, void*, void*) SSL_get_security_callback(const(SSL)*, const(SSL_CTX)*, int, int, int, void*, void*, const(SSL)*, );




    void SSL_set0_security_ex_data(SSL*, void*, );
    void* SSL_get0_security_ex_data(const(SSL)*, );




    void SSL_CTX_set_security_level(SSL_CTX*, int, );


    int SSL_CTX_get_security_level(const(SSL_CTX)*, );


    void SSL_CTX_set_security_callback(SSL_CTX*, int function(const(ssl_st)*, const(ssl_ctx_st)*, int, int, int, void*, void*), );






    int function(const(ssl_st)*, const(ssl_ctx_st)*, int, int, int, void*, void*) SSL_CTX_get_security_callback(const(SSL)*, const(SSL_CTX)*, int, int, int, void*, void*, const(SSL_CTX)*, );
    void SSL_CTX_set0_security_ex_data(SSL_CTX*, void*, );




    void* SSL_CTX_get0_security_ex_data(const(SSL_CTX)*, );
    int OPENSSL_init_ssl(uint64_t, const(OPENSSL_INIT_SETTINGS)*, );
    extern __gshared const(char)[0] SSL_version_str;
    int ERR_load_SSL_strings();
}

extern(C)
{
    struct _Anonymous_55
    {
        c_ulong[16] __val;
    }
    struct _Anonymous_56
    {
        int __count;
        union _Anonymous_57
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_57 __value;
    }
    struct _Anonymous_58
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    struct _Anonymous_59
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    union _Anonymous_60
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_61
    {
        __cpu_mask[16] __bits;
    }
    union _Anonymous_62
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_63
    {
        int quot;
        int rem;
    }
    struct _Anonymous_64
    {
        __fd_mask[16] __fds_bits;
    }
    struct _Anonymous_65
    {
        c_long quot;
        c_long rem;
    }
    struct _Anonymous_66
    {
        int dummy;
    }
    union _Anonymous_67
    {
        __pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    union _Anonymous_68
    {
        __pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    struct _Anonymous_69
    {
        long quot;
        long rem;
    }
    union _Anonymous_70
    {
        __pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    union _Anonymous_71
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_72
    {
        char[32] __size;
        c_long __align;
    }
    union _Anonymous_73
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_74
    {
        int[2] __val;
    }
    struct _Anonymous_75
    {
        c_long quot;
        c_long rem;
    }
    struct _Anonymous_76
    {
        ubyte* out_;
        const(ubyte)* inp;
        size_t len;
        uint interleave;
    }
    struct _Anonymous_77
    {
        int nid;
        const(char)* comment;
    }
    struct _Anonymous_78
    {
        long __max_align_ll;
        real __max_align_ld;
    }
    struct _Anonymous_79
    {
        struct _Anonymous_80
        {
            __jmp_buf __cancel_jmp_buf;
            int __mask_was_saved;
        }
        _Anonymous_80[1] __cancel_jmp_buf;
        void*[4] __pad;
    }
}

extern(C)
{


    struct list
    {
        void* data;
        list* next;
        list* prev;
    }
    list* list_append(list*, void*, );
    list* list_remove(list*, void*, );
}

extern(C)
{






}

extern(C)
{


    struct buffer
    {
        char* data;
        size_t len;
        size_t size;
    }
    struct _Anonymous_81
    {
        int __count;
        union _Anonymous_82
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_82 __value;
    }
    void buffer_init(buffer*, size_t, );
    void buffer_free(buffer*, );
    void buffer_reset(buffer*, );
    void buffer_check(buffer*, size_t, );
    struct _Anonymous_83
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    struct _Anonymous_84
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    struct _Anonymous_85
    {
        int[2] __val;
    }
}

extern(C)
{
}

extern(C)
{


    struct _Anonymous_86
    {
        c_ulong[16] __val;
    }
    struct regexp
    {
        const(char)* pattern;
        regex_t* preg;
        size_t nmatch;
        regmatch_t* pmatch;
    }
    struct _Anonymous_87
    {
        int __count;
        union _Anonymous_88
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_88 __value;
    }
    void regexp_compile(regexp*, );


    void regexp_free(regexp*, );
    struct _Anonymous_89
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    struct _Anonymous_90
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    union _Anonymous_91
    {
        char[4] __size;
        int __align;
    }
    alias s_reg_t = c_long;
    alias active_reg_t = c_ulong;
    union _Anonymous_92
    {
        char[4] __size;
        int __align;
    }
    alias reg_syntax_t = c_ulong;
    struct _Anonymous_93
    {
        __fd_mask[16] __fds_bits;
    }
    union _Anonymous_94
    {
        __pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    union _Anonymous_95
    {
        __pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    union _Anonymous_96
    {
        __pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    union _Anonymous_97
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_98
    {
        char[32] __size;
        c_long __align;
    }
    union _Anonymous_99
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_100
    {
        int[2] __val;
    }
    extern __gshared reg_syntax_t re_syntax_options;
    alias reg_errcode_t = _Anonymous_101;
    enum _Anonymous_101
    {
        REG_ENOSYS = -1,
        REG_NOERROR = 0,
        REG_NOMATCH = 1,
        REG_BADPAT = 2,
        REG_ECOLLATE = 3,
        REG_ECTYPE = 4,
        REG_EESCAPE = 5,
        REG_ESUBREG = 6,
        REG_EBRACK = 7,
        REG_EPAREN = 8,
        REG_EBRACE = 9,
        REG_BADBR = 10,
        REG_ERANGE = 11,
        REG_ESPACE = 12,
        REG_BADRPT = 13,
        REG_EEND = 14,
        REG_ESIZE = 15,
        REG_ERPAREN = 16,
    }
    enum REG_ENOSYS = _Anonymous_101.REG_ENOSYS;
    enum REG_NOERROR = _Anonymous_101.REG_NOERROR;
    enum REG_NOMATCH = _Anonymous_101.REG_NOMATCH;
    enum REG_BADPAT = _Anonymous_101.REG_BADPAT;
    enum REG_ECOLLATE = _Anonymous_101.REG_ECOLLATE;
    enum REG_ECTYPE = _Anonymous_101.REG_ECTYPE;
    enum REG_EESCAPE = _Anonymous_101.REG_EESCAPE;
    enum REG_ESUBREG = _Anonymous_101.REG_ESUBREG;
    enum REG_EBRACK = _Anonymous_101.REG_EBRACK;
    enum REG_EPAREN = _Anonymous_101.REG_EPAREN;
    enum REG_EBRACE = _Anonymous_101.REG_EBRACE;
    enum REG_BADBR = _Anonymous_101.REG_BADBR;
    enum REG_ERANGE = _Anonymous_101.REG_ERANGE;
    enum REG_ESPACE = _Anonymous_101.REG_ESPACE;
    enum REG_BADRPT = _Anonymous_101.REG_BADRPT;
    enum REG_EEND = _Anonymous_101.REG_EEND;
    enum REG_ESIZE = _Anonymous_101.REG_ESIZE;
    enum REG_ERPAREN = _Anonymous_101.REG_ERPAREN;




    struct re_pattern_buffer
    {
        ubyte* __buffer;
        c_ulong __allocated;
        c_ulong __used;
        reg_syntax_t __syntax;
        char* __fastmap;
        ubyte* __translate;
        size_t re_nsub;
        uint __can_be_null;
        uint __regs_allocated;
        uint __fastmap_accurate;
        uint __no_sub;
        uint __not_bol;
        uint __not_eol;
        uint __newline_anchor;
    }
    alias regex_t = re_pattern_buffer;
    alias regoff_t = int;
    //alias regmatch_t = _Anonymous_102;
    struct _Anonymous_102
    {
        regoff_t rm_so;
        regoff_t rm_eo;
    }
    int regcomp(regex_t*, const(char)*, int, );
    int regexec(const(regex_t)*, const(char)*, size_t, regmatch_t*, int, );
    size_t regerror(int, const(regex_t)*, char*, size_t, );
    void regfree(regex_t*, );
}

