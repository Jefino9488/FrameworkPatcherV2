.class public Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;
.super Ljava/lang/Object;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

.field public static final Ku5O3sihzbUhwSewE8uI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide v0, -0x1a3b65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    const-wide v0, -0x1a4765922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    new-instance v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-wide v1, -0x1a5365922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KaoriGetCertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .registers 29

    if-eqz p0, :cond_37b

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    if-nez v1, :cond_17

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return-object p0

    :cond_17
    :goto_17
    const-wide v0, -0x18a765922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x18bb65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    sget-boolean v0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz v0, :cond_c7

    const-wide v0, -0x18c265922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x18ce65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4e
    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->KmwO02nawgUws9Syxnq2rElI()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_72

    const-wide v4, -0x18fe65922ce2L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_72

    const-wide v2, -0x191365922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object v1

    :cond_72
    if-eqz v0, :cond_90

    const-wide v4, -0x192d65922ce2L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_90

    const-wide v0, -0x194065922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object p0

    :cond_90
    const-wide v4, -0x197665922ce2L

    :try_start_95
    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    new-instance v5, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-wide v7, -0x197c65922ce2L

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_c8

    :cond_c7
    return-object p0

    :cond_c8
    new-instance v7, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;-><init>([B)V

    iget-object v8, v7, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    if-eqz v8, :cond_e0

    iget-object v9, v8, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    goto :goto_e1

    :cond_e0
    move-object v9, v1

    :goto_e1
    iget-object v9, v9, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    iget-object v9, v9, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KnAacuOafajtRj61vuuI()[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v9

    const/4 v10, 0x7

    aget-object v11, v9, v10

    check-cast v11, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    new-instance v12, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v12}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_fb
    move-object v13, v11

    check-cast v13, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->hasNext()Z

    move-result v14

    const/16 v15, 0x2cf

    move/from16 v16, v10

    const/16 v10, 0x2ce

    move/from16 v17, v3

    const/16 v3, 0x2c2

    const/16 v2, 0x2c1

    const/16 v1, 0x2c0

    if-eqz v14, :cond_134

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    check-cast v13, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v14, v13, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    if-eq v14, v1, :cond_126

    if-eq v14, v2, :cond_126

    if-eq v14, v3, :cond_126

    if-eq v14, v10, :cond_126

    if-ne v14, v15, :cond_12d

    :cond_126
    :goto_126
    move/from16 v10, v16

    move/from16 v3, v17

    const/4 v1, 0x0

    const/4 v2, 0x2

    goto :goto_fb

    :cond_12d
    invoke-virtual {v12, v13}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    goto :goto_126

    :catchall_131
    move-exception v0

    goto/16 :goto_365

    :cond_134
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    const-wide v13, -0x199565922ce2L

    invoke-static {v13, v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    new-instance v13, Ljava/util/LinkedList;

    if-eqz v11, :cond_157

    const-wide v19, -0x199865922ce2L

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_160

    :cond_157
    const-wide v19, -0x199b65922ce2L

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v14

    :goto_160
    invoke-static {v14}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->getCertificateChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_183

    const-wide v0, -0x199f65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x19ab65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_183
    if-eqz v11, :cond_18f

    const-wide v19, -0x19cd65922ce2L

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_198

    :cond_18f
    const-wide v19, -0x19d065922ce2L

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v11

    :goto_198
    invoke-static {v11}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v11

    new-instance v14, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/Certificate;

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;-><init>([B)V

    new-instance v21, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    invoke-static {v14}, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    move-result-object v22

    iget-object v14, v7, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v14}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v23

    iget-object v14, v7, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    invoke-virtual {v14}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->K91vAo8w086Op21a5bR8uI()Ljava/util/Date;

    move-result-object v24

    iget-object v14, v7, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    invoke-virtual {v14}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->K91vAo8w086Op21a5bR8uI()Ljava/util/Date;

    move-result-object v25

    iget-object v14, v7, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v14, v14, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    invoke-static {v14}, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    move-result-object v26

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    move-object/from16 v27, v7

    invoke-direct/range {v21 .. v27}, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;-><init>(Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)V

    move-object/from16 v7, v21

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    const-wide v21, -0x183465922ce2L

    invoke-static/range {v21 .. v22}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    invoke-static {v0, v15, v10}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_214

    const/16 v15, 0x20

    new-array v15, v15, [B

    invoke-virtual {v14, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v10, 0x2

    invoke-static {v15, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-wide v22, -0x183e65922ce2L

    invoke-static/range {v22 .. v23}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->putKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_219

    :cond_214
    const/4 v10, 0x2

    invoke-static {v15, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v15

    :goto_219
    invoke-static {v0, v14}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->KyqOjqyU2SoxvE3gI(Landroid/content/Context;Ljava/security/SecureRandom;)[B

    move-result-object v0

    new-instance v3, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v3, v15}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    new-instance v10, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    invoke-direct {v10, v6}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(I)V

    new-instance v14, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v14, v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aput-object v3, v0, v6

    sget-object v3, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    aput-object v3, v0, v17

    const/16 v18, 0x2

    aput-object v10, v0, v18

    const/4 v3, 0x3

    aput-object v14, v0, v3

    new-instance v3, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    invoke-direct {v3, v0, v6}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    move/from16 v10, v17

    invoke-direct {v0, v10, v1, v3, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v12, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq4snztAiatOsRsxI()I

    move-result v3

    int-to-long v14, v3

    invoke-direct {v1, v14, v15}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    const/4 v10, 0x1

    invoke-direct {v0, v10, v2, v1, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v12, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    const/16 v2, 0x2c2

    const/4 v10, 0x1

    invoke-direct {v0, v10, v2, v1, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v12, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v10, v3

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    add-int/2addr v2, v10

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    const/16 v2, 0x2ce

    const/4 v10, 0x1

    invoke-direct {v0, v10, v2, v1, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v12, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v10, v3

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    add-int/2addr v2, v10

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    const/16 v2, 0x2cf

    const/4 v10, 0x1

    invoke-direct {v0, v10, v2, v1, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v12, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    invoke-direct {v0, v12, v6}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    aput-object v0, v9, v16

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    invoke-direct {v0, v9, v6}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v1, v0}, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;-><init>(Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-direct {v0, v5, v6, v1}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;ZLcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;)V

    iget-object v1, v7, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;)V

    iget-object v0, v8, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move v3, v6

    :goto_2f5
    if-eq v3, v1, :cond_302

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    aput-object v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f5

    :cond_302
    move v0, v6

    :goto_303
    if-ge v0, v1, :cond_32c

    aget-object v3, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_316

    goto :goto_329

    :cond_316
    if-eqz v8, :cond_321

    iget-object v9, v8, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    goto :goto_322

    :cond_321
    const/4 v3, 0x0

    :goto_322
    iget-object v9, v7, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;

    invoke-virtual {v9, v3}, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;)V

    :goto_329
    add-int/lit8 v0, v0, 0x1

    goto :goto_303

    :cond_32c
    new-instance v0, Lcom/android/internal/util/kaorios/K9Oz9u1wUtmSp0f83Elxds3I;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K9Oz9u1wUtmSp0f83Elxds3I;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/internal/util/kaorios/K9Oz9u1wUtmSp0f83Elxds3I;->Ku5O3sihzbUhwSewE8uI(Ljava/security/PrivateKey;)Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;)Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const-wide v0, -0x19d465922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/security/cert/Certificate;

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;
    :try_end_364
    .catchall {:try_start_95 .. :try_end_364} :catchall_131

    return-object v0

    :goto_365
    const-wide v1, -0x1a0c65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x1a1865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_37b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static KaoriGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return-object v2

    :cond_16
    :goto_16
    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->KmwO02nawgUws9Syxnq2rElI()Landroid/content/Context;

    move-result-object v0

    const-wide v3, -0x149065922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x14a465922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-boolean p0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz p0, :cond_a7

    const-wide v0, -0x14ab65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x14b765922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_50
    const/4 v1, 0x1

    if-eqz v0, :cond_70

    const-wide v3, -0x14e665922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_70

    const-wide v0, -0x14fb65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object v2

    :cond_70
    if-eqz v0, :cond_8e

    const-wide v3, -0x151565922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_8e

    const-wide v0, -0x152865922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object v2

    :cond_8e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->retrieve(ILjava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    if-eqz p0, :cond_a7

    const-wide v0, -0x154c65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object p0

    :cond_a7
    return-object v2
.end method

.method public static KaoriGetKeyEntry(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    if-nez v1, :cond_21

    if-eqz v0, :cond_14

    goto :goto_21

    :cond_14
    const-wide v0, -0x155e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object p0

    :cond_21
    :goto_21
    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->KmwO02nawgUws9Syxnq2rElI()Landroid/content/Context;

    move-result-object v0

    const-wide v1, -0x15a965922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x15bd65922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    sget-boolean p0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz p0, :cond_5b

    const-wide v0, -0x15c465922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x15d065922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-object v2

    :cond_5c
    const/4 v1, 0x1

    if-eqz v0, :cond_7c

    const-wide v3, -0x15ff65922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7c

    const-wide v0, -0x161465922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object v2

    :cond_7c
    if-eqz v0, :cond_9a

    const-wide v2, -0x162e65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_9a

    const-wide v0, -0x164165922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V

    return-object p0

    :cond_9a
    if-eqz p0, :cond_111

    iget-object v0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-nez v0, :cond_a1

    goto :goto_111

    :cond_a1
    :try_start_a1
    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v0, :cond_bd

    const-wide v0, -0x166565922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x167165922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_bb
    move-exception v0

    goto :goto_fc

    :cond_bd
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_e3

    const-wide v0, -0x169c65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x16a865922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_e3
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/K99O4g2hUgeSfEz3I;->Kgs66qnAfO491Ra48r7aI(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iget-object v0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->getCertificateChains(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_fb} :catch_bb

    return-object p0

    :goto_fc
    const-wide v1, -0x16dd65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x16e965922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_111
    :goto_111
    return-object p0
.end method

.method public static KmwO02nawgUws9Syxnq2rElI()Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v1

    goto :goto_13

    :cond_12
    return-object v0

    :goto_13
    const-wide v2, -0x17d865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x17e465922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static Kq4snztAiatOsRsxI()I
    .registers 7

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-wide v1, -0x180665922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide v2, -0x180865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    :try_start_21
    array-length v4, v2

    if-lez v4, :cond_2d

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2d

    :catch_2b
    move v4, v1

    goto :goto_44

    :cond_2d
    :goto_2d
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_38

    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_37} :catch_2b

    goto :goto_39

    :cond_38
    move v4, v1

    :goto_39
    :try_start_39
    array-length v5, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_5d

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    :goto_44
    const-wide v5, -0x180b65922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v5, -0x181765922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    mul-int/lit16 v3, v3, 0x2710

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    return v4
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz v0, :cond_10

    const-wide v0, -0x17cc65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Landroid/system/keystore2/IKeystoreSecurityLevel;Ljava/util/List;Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 14

    :try_start_0
    new-instance v0, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v0}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    new-instance v1, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {v1}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    iget v2, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K0wipv9AtliO55qRn6mI:I

    iput v2, v1, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/Certificate;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    invoke-static {v1, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V

    new-instance p1, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p1}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iget v3, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v3, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide v3, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v3, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p1, v1, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kgs66qnAfO491Ra48r7aI:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_39
    if-ge v5, v3, :cond_64

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    new-instance v7, Landroid/system/keystore2/Authorization;

    invoke-direct {v7}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v8, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v8}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v8, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v9, 0x20000001

    iput v9, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_64
    iget-object p3, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K8c63Ooauv32UndyuScEgI:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_6b
    if-ge v5, v3, :cond_96

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    new-instance v7, Landroid/system/keystore2/Authorization;

    invoke-direct {v7}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v8, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v8}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v8, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v9, 0x20000005

    iput v9, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_96
    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x10000002

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x30000003

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x1000000a

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K91vAo8w086Op21a5bR8uI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x700001f7

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x100002be

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {v4}, Landroid/hardware/security/keymint/KeyParameterValue;->origin(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x300002c1

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KvyA01pu5yOryrRk3kI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x300002c2

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K4cv12eOhp5UsS8gpsE2q2z1I:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x300002ce

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KfhA0xayiqO65hivnRnnoh8cI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x300002cf

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K4qxes9O6f26i8U6Sqj8EgiI:I

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x600002bd

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget-wide v5, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KgdivAliuhhnOe2iR73uaI:J

    invoke-static {v5, v6}, Landroid/hardware/security/keymint/KeyParameterValue;->longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/system/keystore2/Authorization;

    invoke-direct {p3}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v3, p3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const v5, 0x300001f5

    iput v5, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iget p2, p2, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K6okO5hUclibxShsEkbgopaI:I

    invoke-static {p2}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    iput-object p2, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput v2, p3, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p2, v4, [Landroid/system/keystore2/Authorization;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/system/keystore2/Authorization;

    iput-object p1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    iput-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iput-object p0, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f1} :catch_1f2

    return-object v0

    :catch_1f2
    move-exception p0

    const-wide p1, -0x179d65922ce2L

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    const-wide p2, -0x17a965922ce2L

    invoke-static {p2, p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static KyqOjqyU2SoxvE3gI(Landroid/content/Context;Ljava/security/SecureRandom;)[B
    .registers 10

    const-wide v0, -0x185e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x187465922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eq v1, v2, :cond_23

    :cond_21
    :goto_21
    move-object v1, v4

    goto :goto_64

    :cond_23
    :try_start_23
    new-array v1, v3, [B

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v3, :cond_64

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_21

    if-ne v5, v7, :cond_44

    goto :goto_21

    :cond_44
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4d

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :catch_4d
    move-exception v0

    const-wide v1, -0x187565922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v5, -0x188165922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :cond_64
    :goto_64
    if-eqz v1, :cond_67

    return-object v1

    :cond_67
    const-wide v0, -0x184865922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_8d

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-wide v1, -0x185365922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->putKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0

    :cond_8d
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Landroid/system/keystore2/IKeystoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/system/keystore2/KeyMetadata;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/IKeystoreSecurityLevel;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return-object v2

    :cond_16
    :goto_16
    new-instance v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0, p2}, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    iget-object p2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K8Ak17imO9w5w4RppI:[B

    if-nez p2, :cond_2d

    goto/16 :goto_db

    :cond_2d
    const-wide v3, -0x170065922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide v3, -0x171465922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_63

    sget-boolean p0, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz p0, :cond_db

    const-wide p0, -0x171b65922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide p1, -0x172765922ce2L

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_63
    iget-object p2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kgs66qnAfO491Ra48r7aI:Ljava/util/ArrayList;

    if-eqz p2, :cond_db

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_73

    goto :goto_db

    :cond_73
    iget-boolean p2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kvvx152O1Uo652lSpg5iE1I:Z

    if-nez p2, :cond_78

    goto :goto_db

    :cond_78
    const/4 p2, 0x3

    iget v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-eq v1, p2, :cond_a5

    const/4 p2, 0x1

    if-eq v1, p2, :cond_a5

    const-wide p0, -0x175665922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x176265922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_a5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    :try_start_a9
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/kaorios/K99O4g2hUgeSfEz3I;->KyqOjqyU2SoxvE3gI(ILandroid/system/keystore2/KeyDescriptor;Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b6

    goto :goto_db

    :cond_b6
    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxHooks;->Ku5O3sihzbUhwSewE8uI(Landroid/system/keystore2/IKeystoreSecurityLevel;Ljava/util/List;Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    if-nez p0, :cond_bd

    goto :goto_db

    :cond_bd
    iget-object p1, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->append(ILjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V

    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c4} :catch_c5

    return-object p0

    :catch_c5
    move-exception p0

    const-wide p1, -0x177a65922ce2L

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x178665922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_db
    :goto_db
    return-object v2
.end method
