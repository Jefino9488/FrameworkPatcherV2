.class public abstract Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide v0, -0x205eb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-wide v1, -0x2073b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 5

    sget v0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-nez v0, :cond_16

    const-wide v0, -0x1d69b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    return-object p0

    :cond_16
    if-eqz p0, :cond_8d

    iget-object v0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-nez v0, :cond_1d

    goto :goto_8d

    :cond_1d
    :try_start_1d
    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v0, :cond_39

    const-wide v0, -0x1db4b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1dc9b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_37
    move-exception v0

    goto :goto_78

    :cond_39
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_5f

    const-wide v0, -0x1df4b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1e09b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_5f
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iget-object v0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->KmzodnwO1tUkgkS8cymEofiI(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_77} :catch_37

    return-object p0

    :goto_78
    const-wide v1, -0x1e3eb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x1e53b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8d
    :goto_8d
    return-object p0
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .registers 36

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;-><init>([B)V

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v4, v1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    if-eqz v4, :cond_1b

    iget-object v5, v4, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    goto :goto_1c

    :cond_1b
    move-object v5, v2

    :goto_1c
    iget-object v5, v5, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v5, v5, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v7, v5, v6

    check-cast v7, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    new-instance v8, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v8}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_36
    :goto_36
    move-object v9, v7

    check-cast v9, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;

    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->hasNext()Z

    move-result v10

    const/16 v11, 0x2cf

    const/16 v12, 0x2ce

    const/16 v13, 0x2c2

    const/16 v14, 0x2c1

    const/16 v15, 0x2c0

    if-eqz v10, :cond_63

    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-object v10, v9

    check-cast v10, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    iget v10, v10, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    if-eq v10, v15, :cond_36

    if-eq v10, v14, :cond_36

    if-eq v10, v13, :cond_36

    if-eq v10, v12, :cond_36

    if-ne v10, v11, :cond_5f

    goto :goto_36

    :cond_5f
    invoke-virtual {v8, v9}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    goto :goto_36

    :cond_63
    sget v7, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v7, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-direct {v7}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>()V

    const-wide v9, -0x20edb49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v7, v7, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    if-eqz v9, :cond_8b

    const-wide v9, -0x2399b49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_9a

    :cond_8b
    const-wide v9, -0x23a1b49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_9a
    invoke-static {v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v9

    const-wide v16, -0x20bdb49a02cfL

    invoke-static/range {v16 .. v17}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    move/from16 v16, v6

    const/4 v6, 0x4

    const/4 v11, 0x1

    if-eqz v10, :cond_15f

    :try_start_b5
    invoke-static {v9}, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;

    move-result-object v7

    const-wide v18, -0x20c0b49a02cfL

    invoke-static/range {v18 .. v19}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d3} :catch_d5

    goto/16 :goto_25b

    :catch_d5
    invoke-static {v9}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v7

    if-eqz v7, :cond_e7

    new-instance v9, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;

    invoke-static {v7}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v7

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v7, v9, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    goto :goto_e8

    :cond_e7
    move-object v9, v2

    :goto_e8
    new-instance v7, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    sget-object v10, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v12, v9, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object v12

    :goto_f2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_137

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    instance-of v14, v13, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    if-eqz v14, :cond_130

    check-cast v13, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    iget v14, v13, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/16 v15, 0x80

    if-ne v14, v15, :cond_130

    iget v14, v13, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez v14, :cond_130

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->K0wipv9AtliO55qRn6mI()Z

    move-result v12

    if-eqz v12, :cond_128

    iget-object v12, v13, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    instance-of v13, v12, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    if-eqz v13, :cond_11f

    check-cast v12, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    goto :goto_123

    :cond_11f
    invoke-interface {v12}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v12

    :goto_123
    invoke-interface {v12}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v12

    goto :goto_138

    :cond_128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_130
    const/16 v13, 0x2c2

    const/16 v14, 0x2c1

    const/16 v15, 0x2c0

    goto :goto_f2

    :cond_137
    move-object v12, v2

    :goto_138
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v10, v12}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v10, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;

    invoke-direct {v10, v7, v9}, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v9, -0x20c3b49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    goto/16 :goto_25b

    :cond_15f
    const-wide v12, -0x20c6b49a02cfL

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_786

    const-wide v12, -0x20cab49a02cfL

    :try_start_173
    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v12, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_184} :catch_186

    goto/16 :goto_25b

    :catch_186
    if-eqz v9, :cond_232

    new-instance v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v9

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v12, v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v13, v12

    iget v14, v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    sub-int/2addr v13, v14

    if-gt v13, v6, :cond_22a

    invoke-static {v12, v14}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K4cv12eOhp5UsS8gpsE2q2z1I([BI)I

    move-result v12

    if-ltz v12, :cond_222

    if-gt v12, v11, :cond_222

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Kq4snztAiatOsRsxI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->KyqOjqyU2SoxvE3gI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->K7b6cynAykO75yzw1Ri5kI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->K91vAo8w086Op21a5bR8uI:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->KtbuouOlomiUohgSxfezrEyv01I:Ljava/math/BigInteger;

    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_233

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    iput-object v9, v7, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    goto :goto_233

    :cond_222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong version for RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_232
    move-object v7, v2

    :cond_233
    :goto_233
    new-instance v9, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    sget-object v10, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    sget-object v12, Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;

    invoke-direct {v9, v10, v12}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v10, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;

    invoke-direct {v10, v9, v7}, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v9, -0x20ceb49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    :goto_25b
    new-instance v9, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-direct {v9}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>()V

    const-wide v12, -0x20f0b49a02cfL

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_280

    const-wide v12, -0x23aab49a02cfL

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    goto :goto_28f

    :cond_280
    const-wide v12, -0x23adb49a02cfL

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    :goto_28f
    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v9, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    invoke-direct {v9, v0}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;-><init>([B)V

    iget-object v0, v9, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v0

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    iget-object v9, v1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v9, v9, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v12, v1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v12, v12, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iget-object v12, v12, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v13, v13, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iget-object v13, v13, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-static {v14}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v14

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    new-instance v15, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-direct {v15, v12}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;-><init>(Ljava/util/Date;)V

    new-instance v12, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-direct {v12, v13}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;-><init>(Ljava/util/Date;)V

    new-instance v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move/from16 v21, v11

    new-instance v11, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-direct {v11, v9}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/math/BigInteger;)V

    iput-object v11, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object v0, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v15, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    iput-object v12, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    iput-object v14, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v1, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    new-instance v1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;

    invoke-direct {v1}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;-><init>(Ljava/lang/String;)V

    :try_start_2fc
    sget-object v9, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;

    sget-object v11, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    iget-object v12, v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_318

    invoke-interface {v7}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v9

    goto :goto_31f

    :cond_318
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v9

    :goto_31f
    iget-object v0, v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    invoke-virtual {v0, v9}, Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;)Ljava/security/Signature;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    new-instance v7, Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;

    invoke-direct {v7}, Ljava/io/OutputStream;-><init>()V

    iput-object v11, v7, Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;->Ku5O3sihzbUhwSewE8uI:Ljava/security/Signature;
    :try_end_32f
    .catch Ljava/security/GeneralSecurityException; {:try_start_2fc .. :try_end_32f} :catch_76b

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v12

    if-nez v12, :cond_34b

    const-wide v0, -0x1e6ab49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x1e7fb49a02cfL

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_34b
    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    const-wide v22, -0x1ea8b49a02cfL

    invoke-static/range {v22 .. v23}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x20

    const/4 v6, 0x2

    if-nez v0, :cond_379

    new-array v0, v15, [B

    invoke-virtual {v14, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    const-wide v23, -0x1eb2b49a02cfL

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v15}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_377
    move-object v2, v0

    goto :goto_37e

    :cond_379
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_377

    :goto_37e
    const-wide v23, -0x1ebcb49a02cfL

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v10}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_439

    const-wide v23, -0x1fc4b49a02cfL

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    move/from16 p1, v10

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3a5

    goto/16 :goto_43b

    :cond_3a5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v6, 0x40

    if-eq v10, v6, :cond_3da

    const-wide v25, -0x1fdab49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v25, -0x1fefb49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43b

    :cond_3da
    const/16 v6, 0x20

    :try_start_3dc
    new-array v10, v6, [B

    move/from16 v6, p1

    :goto_3e0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_43c

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v25, v6

    const/16 v6, 0x10

    invoke-static {v15, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v15

    add-int/lit8 v6, v25, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object/from16 v27, v0

    const/16 v0, 0x10

    invoke-static {v6, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v6, -0x1

    if-eq v15, v6, :cond_414

    if-eq v0, v6, :cond_414

    div-int/lit8 v6, v25, 0x2

    shl-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v0

    int-to-byte v0, v15

    aput-byte v0, v10, v6

    add-int/lit8 v6, v25, 0x2

    move-object/from16 v0, v27

    goto :goto_3e0

    :catch_412
    move-exception v0

    goto :goto_423

    :cond_414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-wide v25, -0x200fb49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_423
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_423} :catch_412

    :goto_423
    const-wide v25, -0x2021b49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    const-wide v25, -0x2036b49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43b

    :cond_439
    move/from16 p1, v10

    :goto_43b
    const/4 v10, 0x0

    :cond_43c
    if-nez v10, :cond_46e

    const-wide v25, -0x1ed1b49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v12, v0, v6}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46e

    const/4 v6, 0x2

    :try_start_453
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10
    :try_end_457
    .catch Ljava/lang/IllegalArgumentException; {:try_start_453 .. :try_end_457} :catch_458

    goto :goto_46e

    :catch_458
    move-exception v0

    const-wide v25, -0x1edcb49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    const-wide v25, -0x1ef1b49a02cfL

    invoke-static/range {v25 .. v26}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46e
    :goto_46e
    if-nez v10, :cond_488

    const/16 v6, 0x20

    new-array v10, v6, [B

    invoke-virtual {v14, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v6, 0x2

    invoke-static {v10, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-wide v14, -0x1f1fb49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_488
    new-instance v0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-direct {v0, v2}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    new-instance v2, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v2}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    new-instance v6, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-direct {v6, v10}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aput-object v0, v10, p1

    sget-object v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    aput-object v0, v10, v21

    const/16 v23, 0x2

    aput-object v2, v10, v23

    const/4 v2, 0x3

    aput-object v6, v10, v2

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    move/from16 v6, p1

    invoke-direct {v0, v10, v6}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v6, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    move/from16 v14, v21

    const/16 v10, 0x2c0

    invoke-direct {v6, v14, v10, v0, v14}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v8, v6}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    new-instance v6, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-wide v14, -0x1f2ab49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    if-lez v14, :cond_4d8

    const/4 v14, 0x0

    aget-object v15, v10, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_4d9

    :cond_4d8
    const/4 v14, 0x0

    :goto_4d9
    array-length v15, v10

    const/4 v2, 0x1

    if-le v15, v2, :cond_4e4

    aget-object v15, v10, v2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4e5

    :cond_4e4
    const/4 v2, 0x0

    :goto_4e5
    array-length v15, v10

    move/from16 v20, v2

    const/4 v2, 0x2

    if-le v15, v2, :cond_4f2

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4f3

    :cond_4f2
    const/4 v2, 0x0

    :goto_4f3
    mul-int/lit16 v14, v14, 0x2710

    mul-int/lit8 v10, v20, 0x64

    add-int/2addr v10, v14

    add-int/2addr v10, v2

    int-to-long v14, v10

    invoke-direct {v6, v14, v15}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v2, 0x2c1

    const/4 v14, 0x1

    invoke-direct {v0, v14, v2, v6, v14}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const-wide v14, -0x1f2db49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v12, v0, v6}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54a

    :try_start_51a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v14, -0x1f47b49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_530
    .catch Lorg/json/JSONException; {:try_start_51a .. :try_end_530} :catch_534

    if-nez v2, :cond_54a

    :goto_532
    const/4 v14, 0x0

    goto :goto_54d

    :catch_534
    move-exception v0

    const-wide v14, -0x1f56b49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v14, -0x1f6bb49a02cfL

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54a
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    goto :goto_532

    :goto_54d
    invoke-static {v0, v14}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v2

    const/4 v14, 0x1

    invoke-static {v0, v14}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v0

    new-instance v10, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    new-instance v12, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    move-object v15, v7

    int-to-long v6, v2

    invoke-direct {v12, v6, v7}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v2, 0x2c2

    invoke-direct {v10, v14, v2, v12, v14}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v8, v10}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v2, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    new-instance v6, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    move-object v7, v11

    int-to-long v10, v0

    invoke-direct {v6, v10, v11}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v12, 0x2ce

    invoke-direct {v2, v14, v12, v6, v14}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v8, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    new-instance v2, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-direct {v2, v10, v11}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v6, 0x2cf

    invoke-direct {v0, v14, v6, v2, v14}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v14, 0x0

    invoke-direct {v0, v8, v14}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    aput-object v0, v5, v16

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v0, v5, v14}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v2, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-direct {v2, v0}, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;-><init>(Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    invoke-direct {v0, v3, v14, v2}, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;)V

    iget-object v0, v4, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v5, v2, [Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const/4 v6, 0x0

    :goto_5ad
    if-eq v6, v2, :cond_5ba

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5ad

    :cond_5ba
    const/4 v6, 0x0

    :goto_5bb
    if-ge v6, v2, :cond_5e1

    aget-object v0, v5, v6

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5ce

    goto :goto_5de

    :cond_5ce
    if-eqz v4, :cond_5da

    iget-object v8, v4, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    goto :goto_5db

    :cond_5da
    const/4 v10, 0x0

    :goto_5db
    invoke-virtual {v1, v10}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;)V

    :goto_5de
    add-int/lit8 v6, v6, 0x1

    goto :goto_5bb

    :cond_5e1
    iput-object v9, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iget-object v0, v1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70d

    sget-object v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v2, v1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    if-eqz v0, :cond_6f4

    :try_start_5f7
    iget-object v2, v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v2, v2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2
    :try_end_5ff
    .catch Ljava/io/IOException; {:try_start_5f7 .. :try_end_5ff} :catch_6df

    if-eqz v2, :cond_60b

    new-instance v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V

    goto :goto_60c

    :cond_60b
    const/4 v10, 0x0

    :goto_60c
    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    move-result-object v3

    iget-object v4, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v5, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    if-eqz v5, :cond_625

    iget-object v6, v2, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_625

    const/16 v27, 0x0

    goto :goto_627

    :cond_625
    move-object/from16 v27, v5

    :goto_627
    iget-object v5, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    if-eqz v5, :cond_636

    iget-object v6, v2, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_636

    const/16 v28, 0x0

    goto :goto_638

    :cond_636
    move-object/from16 v28, v5

    :goto_638
    iget-object v5, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    if-eqz v5, :cond_647

    iget-object v6, v2, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_647

    const/16 v29, 0x0

    goto :goto_649

    :cond_647
    move-object/from16 v29, v5

    :goto_649
    iget-object v5, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    if-eqz v5, :cond_658

    iget-object v2, v2, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-virtual {v5, v2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_658

    const/16 v30, 0x0

    goto :goto_65a

    :cond_658
    move-object/from16 v30, v5

    :goto_65a
    iget-object v2, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    iget-object v5, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    if-eqz v5, :cond_6ad

    new-instance v6, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;

    invoke-direct {v6}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;-><init>()V

    iget-object v8, v3, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    :cond_66b
    :goto_66b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_69c

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    sget-object v12, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v12, v11}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z

    move-result v12

    if-eqz v12, :cond_680

    goto :goto_66b

    :cond_680
    iget-object v12, v5, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v12, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    if-eqz v12, :cond_66b

    iget-object v14, v3, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v14, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    invoke-virtual {v12, v11}, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_66b

    invoke-virtual {v6, v12}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;)V

    goto :goto_66b

    :cond_69c
    iget-object v3, v6, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6a6

    const/4 v3, 0x0

    goto :goto_6aa

    :cond_6a6
    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    move-result-object v3

    :goto_6aa
    move-object/from16 v32, v3

    goto :goto_6af

    :cond_6ad
    move-object/from16 v32, v5

    :goto_6af
    iget-object v3, v10, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    new-instance v25, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    move-object/from16 v26, v4

    invoke-direct/range {v25 .. v33}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;-><init>(Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)V

    move-object/from16 v2, v25

    :try_start_6be
    sget-object v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-boolean v0, v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;)V
    :try_end_6c5
    .catch Ljava/io/IOException; {:try_start_6be .. :try_end_6c5} :catch_6c6

    goto :goto_6f4

    :catch_6c6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to replace deltaCertificateDescriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6df
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t convert extension: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6f4
    :goto_6f4
    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    move-result-object v0

    iput-object v0, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    sget-object v1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    if-eqz v0, :cond_70d

    iget-boolean v0, v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-eqz v0, :cond_70d

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KtbuouOlomiUohgSxfezrEyv01I:Z

    :cond_70d
    :try_start_70d
    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K8Ak17imO9w5w4RppI(Ljava/io/OutputStream;)V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_71b
    .catch Ljava/io/IOException; {:try_start_70d .. :try_end_71b} :catch_762

    :try_start_71b
    invoke-virtual {v7}, Ljava/security/Signature;->sign()[B

    move-result-object v1
    :try_end_71f
    .catch Ljava/security/SignatureException; {:try_start_71b .. :try_end_71f} :catch_749
    .catch Ljava/io/IOException; {:try_start_71b .. :try_end_71f} :catch_762

    :try_start_71f
    new-instance v2, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    invoke-virtual {v2, v9}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BI)V

    invoke-virtual {v2, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v0, v2, v14}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;
    :try_end_744
    .catch Ljava/io/IOException; {:try_start_71f .. :try_end_744} :catch_762

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v0

    return-object v0

    :catch_749
    move-exception v0

    :try_start_74a
    new-instance v1, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception obtaining signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;-><init>(Ljava/lang/String;Ljava/security/SignatureException;)V

    throw v1
    :try_end_762
    .catch Ljava/io/IOException; {:try_start_74a .. :try_end_762} :catch_762

    :catch_762
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot produce certificate signature"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_76b
    move-exception v0

    new-instance v1, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create signer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;->Ku5O3sihzbUhwSewE8uI:Ljava/security/GeneralSecurityException;

    throw v1

    :cond_786
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x20d2b49a02cfL

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3170e

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-wide v2, -0x1f97b49a02cfL

    :try_start_f
    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz p1, :cond_3b

    array-length p1, v0

    const/4 v5, 0x2

    if-le p1, v5, :cond_34

    aget-object p1, v0, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_32

    goto :goto_34

    :catch_32
    move-exception p1

    goto :goto_3f

    :cond_34
    :goto_34
    mul-int/lit16 v2, v2, 0x2710

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    return v4

    :cond_3b
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v4

    return v2

    :goto_3f
    const-wide v2, -0x1f99b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1faeb49a02cfL

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
