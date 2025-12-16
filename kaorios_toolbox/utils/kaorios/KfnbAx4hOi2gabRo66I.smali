.class public final Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;
.super Ljava/security/Provider;


# static fields
.field public static final K7b6cynAykO75yzw1Ri5kI:[Ljava/lang/String;

.field public static final K8Ak17imO9w5w4RppI:[Ljava/lang/String;

.field public static final K8c63Ooauv32UndyuScEgI:[Ljava/lang/String;

.field public static final K91vAo8w086Op21a5bR8uI:[Ljava/lang/String;

.field public static final Kgs66qnAfO491Ra48r7aI:[Ljava/lang/String;

.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashMap;

.field public static final KmzodnwO1tUkgkS8cymEofiI:[Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

.field public static final Kq4snztAiatOsRsxI:Ljava/lang/Class;

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public static final KtbuouOlomiUohgSxfezrEyv01I:[Ljava/lang/String;

.field public static final KyqOjqyU2SoxvE3gI:[Ljava/lang/String;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 40

    const-class v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    const-string v1, "BouncyCastle Security Provider v1.82"

    sput-object v1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashMap;

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2e} :catch_44

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    if-eqz v0, :cond_37

    :try_start_32
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_45

    :cond_37
    new-instance v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/io/Serializable;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    const/4 v0, 0x0

    :goto_45
    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kq4snztAiatOsRsxI:Ljava/lang/Class;

    const-string v0, "TLSKDF"

    const-string v1, "SCRYPT"

    const-string v2, "PBEPBKDF1"

    const-string v3, "PBEPBKDF2"

    const-string v4, "PBEPKCS12"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KyqOjqyU2SoxvE3gI:[Ljava/lang/String;

    const-string v0, "SipHash128"

    const-string v1, "Poly1305"

    const-string v2, "SipHash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->K7b6cynAykO75yzw1Ri5kI:[Ljava/lang/String;

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const/4 v0, 0x0

    const-string v2, "AES"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v3, "ARC4"

    invoke-direct {v2, v3, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v4, "ARIA"

    invoke-direct {v3, v4, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v5, "Blowfish"

    invoke-direct {v4, v5, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v6, "Camellia"

    invoke-direct {v5, v6, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v7, "CAST5"

    invoke-direct {v6, v7, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v8, "CAST6"

    invoke-direct {v7, v8, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v9, "ChaCha"

    invoke-direct {v8, v9, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v10, "DES"

    invoke-direct {v9, v10, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v11, "DESede"

    invoke-direct {v10, v11, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v12, "GOST28147"

    invoke-direct {v11, v12, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v13, "Grainv1"

    invoke-direct {v12, v13, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v14, "Grain128"

    invoke-direct {v13, v14, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v15, "HC128"

    invoke-direct {v14, v15, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v16, v1

    const-string v1, "HC256"

    invoke-direct {v15, v1, v0}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const/4 v1, 0x0

    move-object/from16 v17, v2

    const-string v2, "IDEA"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const/4 v2, 0x0

    move-object/from16 v18, v0

    const-string v0, "Noekeon"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v19, v1

    const-string v1, "RC2"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v20, v0

    const-string v0, "RC5"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v21, v1

    const-string v1, "RC6"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v22, v0

    const-string v0, "Rijndael"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v23, v1

    const-string v1, "Salsa20"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v24, v0

    const-string v0, "SEED"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v25, v1

    const-string v1, "Serpent"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v26, v0

    const-string v0, "Shacal2"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v27, v1

    const-string v1, "Skipjack"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v28, v0

    const-string v0, "SM4"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v29, v1

    const-string v1, "TEA"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v30, v0

    const-string v0, "Twofish"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v31, v1

    const-string v1, "Threefish"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v32, v0

    const-string v0, "VMPC"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v33, v1

    const-string v1, "VMPCKSA3"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v34, v0

    const-string v0, "XTEA"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v35, v1

    const-string v1, "XSalsa20"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v36, v0

    const-string v0, "OpenSSLPBKDF"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v37, v1

    const-string v1, "DSTU7624"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v38, v0

    const-string v0, "GOST3412_2015"

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-object/from16 v39, v1

    const-string v1, "Zuc"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v0

    filled-new-array/range {v1 .. v38}, [Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KmzodnwO1tUkgkS8cymEofiI:[Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    const-string v5, "CompositeSignatures"

    const-string v6, "NoSig"

    const-string v1, "X509"

    const-string v2, "IES"

    const-string v3, "COMPOSITE"

    const-string v4, "EXTERNAL"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->K91vAo8w086Op21a5bR8uI:[Ljava/lang/String;

    const-string v18, "MLDSA"

    const-string v19, "MLKEM"

    const-string v1, "DSA"

    const-string v2, "DH"

    const-string v3, "EC"

    const-string v4, "RSA"

    const-string v5, "GOST"

    const-string v6, "ECGOST"

    const-string v7, "ElGamal"

    const-string v8, "DSTU4145"

    const-string v9, "GM"

    const-string v10, "EdEC"

    const-string v11, "LMS"

    const-string v12, "SPHINCSPlus"

    const-string v13, "Dilithium"

    const-string v14, "Falcon"

    const-string v15, "NTRU"

    const-string v16, "CONTEXT"

    const-string v17, "SLHDSA"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KtbuouOlomiUohgSxfezrEyv01I:[Ljava/lang/String;

    const-string v23, "Haraka"

    const-string v24, "Blake3"

    const-string v1, "GOST3411"

    const-string v2, "Keccak"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "MD5"

    const-string v6, "SHA1"

    const-string v7, "RIPEMD128"

    const-string v8, "RIPEMD160"

    const-string v9, "RIPEMD256"

    const-string v10, "RIPEMD320"

    const-string v11, "SHA224"

    const-string v12, "SHA256"

    const-string v13, "SHA384"

    const-string v14, "SHA512"

    const-string v15, "SHA3"

    const-string v16, "Skein"

    const-string v17, "SM3"

    const-string v18, "Tiger"

    const-string v19, "Whirlpool"

    const-string v20, "Blake2b"

    const-string v21, "Blake2s"

    const-string v22, "DSTU7564"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kgs66qnAfO491Ra48r7aI:[Ljava/lang/String;

    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->K8c63Ooauv32UndyuScEgI:[Ljava/lang/String;

    const-string v0, "DRBG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->K8Ak17imO9w5w4RppI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide v0, 0x3ffd1eb851eb851fL    # 1.82

    sget-object v2, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/io/Serializable;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;)V
    .registers 3

    sget-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static Kq4snztAiatOsRsxI(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_c

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public static synthetic Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/security/Provider$Service;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method public static synthetic Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    const/4 v2, 0x0

    :try_start_17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_30

    :cond_22
    new-instance v1, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/io/Serializable;I)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-object v0, v2

    :goto_30
    if-nez v0, :cond_33

    return-void

    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3c

    throw v2

    :catch_3a
    move-exception v0

    goto :goto_42

    :cond_3c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_3a

    :goto_42
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$Mappings : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    if-nez v1, :cond_44

    monitor-enter p0

    :try_start_23
    iget-object v1, p0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v1, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;-><init>(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    :goto_34
    check-cast p1, Ljava/security/Provider$Service;

    goto :goto_40

    :catchall_37
    move-exception p1

    goto :goto_42

    :cond_39
    iget-object p1, p0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_34

    :goto_40
    monitor-exit p0

    return-object p1

    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_37

    throw p1

    :cond_44
    return-object v1
.end method
