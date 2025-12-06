.class public abstract Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide v0, -0x1fcdc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-wide v1, -0x1fe2c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_9b

    :cond_e
    sget v1, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v1, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {v1}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v1

    if-nez v1, :cond_24

    const-wide v0, -0x1cd8c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    return-object p0

    :cond_24
    if-eqz p0, :cond_9b

    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-nez v1, :cond_2b

    goto :goto_9b

    :cond_2b
    :try_start_2b
    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v1, :cond_47

    const-wide v0, -0x1d23c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1d38c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_45
    move-exception v0

    goto :goto_86

    :cond_47
    invoke-static {v1}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6d

    const-wide v0, -0x1d63c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1d78c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_6d
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/security/cert/X509Certificate;Ljava/lang/String;Landroid/app/Application;)[B

    move-result-object v0

    iput-object v0, v3, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iget-object v0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_85} :catch_45

    return-object p0

    :goto_86
    const-wide v1, -0x1dadc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x1dc2c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9b
    :goto_9b
    return-object p0
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/security/cert/X509Certificate;Ljava/lang/String;Landroid/app/Application;)[B
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>([B)V

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v5, v2, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    if-eqz v5, :cond_1d

    iget-object v6, v5, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    goto :goto_1e

    :cond_1d
    move-object v6, v3

    :goto_1e
    iget-object v6, v6, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v6, v6, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v6}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v6

    const/4 v7, 0x7

    aget-object v8, v6, v7

    check-cast v8, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    new-instance v9, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v9}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_38
    move-object v10, v8

    check-cast v10, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->hasNext()Z

    move-result v11

    const/16 v12, 0x2cf

    const/16 v13, 0x2ce

    const/16 v14, 0x2c2

    const/16 v15, 0x2c1

    move/from16 v16, v7

    const/16 v7, 0x2c0

    if-eqz v11, :cond_69

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-object v11, v10

    check-cast v11, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    iget v11, v11, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:I

    if-eq v11, v7, :cond_62

    if-eq v11, v15, :cond_62

    if-eq v11, v14, :cond_62

    if-eq v11, v13, :cond_62

    if-ne v11, v12, :cond_65

    :cond_62
    :goto_62
    move/from16 v7, v16

    goto :goto_38

    :cond_65
    invoke-virtual {v9, v10}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    goto :goto_62

    :cond_69
    sget v8, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:I

    sget v8, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v8, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {v8}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    const-wide v10, -0x205cc885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v8, v8, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    if-eqz v10, :cond_93

    const-wide v10, -0x2314c885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_a2

    :cond_93
    const-wide v10, -0x231cc885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_a2
    invoke-static {v8, v0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v8

    new-instance v10, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {v10}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    const-wide v17, -0x205fc885e6b8L

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_cb

    const-wide v17, -0x2325c885e6b8L

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    goto :goto_da

    :cond_cb
    const-wide v17, -0x2328c885e6b8L

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    :goto_da
    invoke-static {v0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v10, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-direct {v10, v0}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>([B)V

    new-instance v17, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v18

    iget-object v0, v2, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget-object v10, v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v19

    iget-object v10, v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v20

    iget-object v10, v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v21

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v22

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;-><init>(Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;)V

    move-object/from16 v2, v17

    new-instance v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI(Ljava/security/PrivateKey;)Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    move-result-object v8

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    const-wide v17, -0x1e17c885e6b8L

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x20

    const/4 v13, 0x2

    if-nez v0, :cond_151

    new-array v0, v12, [B

    invoke-virtual {v10, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    const-wide v20, -0x1e21c885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15, v14}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_14f
    move-object v14, v0

    goto :goto_156

    :cond_151
    invoke-static {v0, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_14f

    :goto_156
    const-wide v20, -0x1e2bc885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v15, -0x1

    if-eqz v0, :cond_20d

    const-wide v20, -0x1f33c885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_17e

    move-object v7, v3

    move/from16 p1, v11

    goto/16 :goto_210

    :cond_17e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 p1, v11

    const/16 v11, 0x40

    if-eq v7, v11, :cond_1b6

    const-wide v23, -0x1f49c885e6b8L

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v23, -0x1f5ec885e6b8L

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v3

    goto :goto_210

    :cond_1b6
    :try_start_1b6
    new-array v7, v12, [B

    move/from16 v11, p1

    :goto_1ba
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_210

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v12, 0x10

    invoke-static {v13, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v13, v15, :cond_1e8

    if-eq v3, v15, :cond_1e8

    div-int/lit8 v12, v11, 0x2

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v13, v3

    int-to-byte v3, v13

    aput-byte v3, v7, v12

    add-int/lit8 v11, v11, 0x2

    const/4 v3, 0x0

    const/16 v12, 0x20

    goto :goto_1ba

    :catch_1e6
    move-exception v0

    goto :goto_1f7

    :cond_1e8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-wide v11, -0x1f7ec885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1f7} :catch_1e6

    :goto_1f7
    const-wide v11, -0x1f90c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    const-wide v11, -0x1fa5c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20f

    :cond_20d
    move/from16 p1, v11

    :goto_20f
    const/4 v7, 0x0

    :cond_210
    :goto_210
    if-nez v7, :cond_242

    const-wide v11, -0x1e40c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_242

    const/4 v3, 0x2

    :try_start_227
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_22b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_227 .. :try_end_22b} :catch_22c

    goto :goto_242

    :catch_22c
    move-exception v0

    const-wide v11, -0x1e4bc885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    const-wide v11, -0x1e60c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_242
    :goto_242
    if-nez v7, :cond_25c

    const/16 v3, 0x20

    new-array v7, v3, [B

    invoke-virtual {v10, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x2

    invoke-static {v7, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-wide v10, -0x1e8ec885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_25c
    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v0, v14}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    new-instance v3, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    new-instance v10, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v10, v7}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aput-object v0, v7, p1

    sget-object v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v11, 0x1

    aput-object v0, v7, v11

    const/4 v12, 0x2

    aput-object v3, v7, v12

    const/4 v0, 0x3

    aput-object v10, v7, v0

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    move/from16 v3, p1

    invoke-direct {v0, v7, v3}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    const/16 v7, 0x2c0

    invoke-direct {v3, v11, v7, v0, v11}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v9, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v3, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-wide v12, -0x1e99c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    if-lez v10, :cond_2aa

    const/4 v10, 0x0

    aget-object v12, v7, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2ab

    :cond_2aa
    const/4 v10, 0x0

    :goto_2ab
    array-length v12, v7

    if-le v12, v11, :cond_2b5

    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_2b6

    :cond_2b5
    const/4 v12, 0x0

    :goto_2b6
    array-length v13, v7

    const/4 v14, 0x2

    if-le v13, v14, :cond_2c1

    aget-object v7, v7, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2c2

    :cond_2c1
    const/4 v7, 0x0

    :goto_2c2
    mul-int/lit16 v10, v10, 0x2710

    mul-int/lit8 v12, v12, 0x64

    add-int/2addr v12, v10

    add-int/2addr v12, v7

    int-to-long v12, v12

    invoke-direct {v3, v12, v13}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v7, 0x2c1

    invoke-direct {v0, v11, v7, v3, v11}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v9, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const-wide v12, -0x1e9cc885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_318

    :try_start_2e8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v12, -0x1eb6c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2fe
    .catch Lorg/json/JSONException; {:try_start_2e8 .. :try_end_2fe} :catch_302

    if-nez v1, :cond_318

    :goto_300
    const/4 v10, 0x0

    goto :goto_31b

    :catch_302
    move-exception v0

    const-wide v12, -0x1ec5c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v12, -0x1edac885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_318
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    goto :goto_300

    :goto_31b
    invoke-static {v0, v10}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v0, v11}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v0

    new-instance v7, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v10, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    int-to-long v12, v1

    invoke-direct {v10, v12, v13}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v1, 0x2c2

    invoke-direct {v7, v11, v1, v10, v11}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v9, v7}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v7, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    int-to-long v12, v0

    invoke-direct {v7, v12, v13}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v10, 0x2ce

    invoke-direct {v1, v11, v10, v7, v11}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v9, v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-direct {v1, v12, v13}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v7, 0x2cf

    invoke-direct {v0, v11, v7, v1, v11}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v9, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    iput v15, v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;->Kq4snztAiatOsRsxI:I

    aput-object v0, v6, v16

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    invoke-direct {v0, v6, v10}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v1, v0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    invoke-direct {v0, v4, v10, v1}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/KjAjghbOpRzicI;)V

    iget-object v1, v2, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-virtual {v6, v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;)V

    iget-object v0, v5, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v7, v6, [Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move v9, v10

    :goto_37c
    if-eq v9, v6, :cond_389

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_37c

    :cond_389
    move v11, v10

    :goto_38a
    if-ge v11, v6, :cond_3b2

    aget-object v0, v7, v11

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39d

    goto :goto_3af

    :cond_39d
    if-eqz v5, :cond_3a8

    iget-object v9, v5, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    goto :goto_3a9

    :cond_3a8
    move-object v0, v3

    :goto_3a9
    move-object v9, v1

    check-cast v9, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-virtual {v9, v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;)V

    :goto_3af
    add-int/lit8 v11, v11, 0x1

    goto :goto_38a

    :cond_3b2
    invoke-virtual {v2, v8}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;)Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v0

    return-object v0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3170e

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-wide v2, -0x1f06c885e6b8L

    :try_start_f
    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

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
    const-wide v2, -0x1f08c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1f1dc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
