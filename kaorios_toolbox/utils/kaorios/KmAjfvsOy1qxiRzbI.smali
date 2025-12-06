.class public abstract Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;
.super Ljava/lang/Object;


# static fields
.field public static K7b6cynAykO75yzw1Ri5kI:Ljava/security/PrivateKey;

.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

.field public static KmzodnwO1tUkgkS8cymEofiI:Z

.field public static final Kq4snztAiatOsRsxI:Ljava/util/ArrayList;

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/security/cert/CertificateFactory;

.field public static final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

.field public static KyqOjqyU2SoxvE3gI:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v0, -0x1c81c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-wide v1, -0x1c91c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq4snztAiatOsRsxI:Ljava/util/ArrayList;

    const-wide v0, -0x1caac885e6b8L

    :try_start_2b
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_3c

    sput-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/security/cert/CertificateFactory;

    invoke-static {}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq4snztAiatOsRsxI()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmzodnwO1tUkgkS8cymEofiI:Z

    return-void

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-wide v2, -0x1cb0c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Landroid/app/Application;Ljava/security/SecureRandom;)[B
    .registers 10

    const-wide v0, -0x1affc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eqz v0, :cond_b5

    const-wide v4, -0x1b61c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    :goto_26
    move-object v4, v2

    goto/16 :goto_b2

    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_5e

    const-wide v4, -0x1b77c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x1b87c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_5e
    :try_start_5e
    new-array v4, v3, [B

    :goto_60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_b2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_8c

    if-eq v6, v7, :cond_8c

    div-int/lit8 v7, v1, 0x2

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    add-int/lit8 v1, v1, 0x2

    goto :goto_60

    :catch_8a
    move-exception v0

    goto :goto_9b

    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-wide v4, -0x1ba7c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9b} :catch_8a

    :goto_9b
    const-wide v4, -0x1bb9c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v4, -0x1bc9c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    :cond_b2
    :goto_b2
    if-eqz v4, :cond_b5

    return-object v4

    :cond_b5
    const-wide v0, -0x1b14c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_e4

    :try_start_c9
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_cd} :catch_ce

    return-object p0

    :catch_ce
    move-exception v0

    const-wide v4, -0x1b1fc885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v4, -0x1b2fc885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e4
    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-wide v3, -0x1b56c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public static Kq4snztAiatOsRsxI()Z
    .registers 8

    sget-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq4snztAiatOsRsxI:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :try_start_5
    sget v3, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v3, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {v3}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    iget-object v4, v3, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v5

    if-nez v5, :cond_2d

    const-wide v0, -0x1936c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x1946c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_2a
    move-exception v0

    goto/16 :goto_fc

    :cond_2d
    const-wide v5, -0x2314c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, -0x231cc885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto/16 :goto_e6

    :cond_59
    const-wide v6, -0x198ec885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    sput-object v5, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI:Ljava/security/PrivateKey;

    const-wide v5, -0x1991c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    sput-object v4, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K7b6cynAykO75yzw1Ri5kI:Ljava/security/PrivateKey;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide v4, -0x2325c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_8c
    if-ge v6, v5, :cond_9a

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    :cond_9a
    const-wide v4, -0x2328c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_a9
    if-ge v5, v4, :cond_b7

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_b7
    sget-object v3, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI:Ljava/security/PrivateKey;

    if-eqz v3, :cond_cd

    sget-object v3, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K7b6cynAykO75yzw1Ri5kI:Ljava/security/PrivateKey;

    if-eqz v3, :cond_cd

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cd

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_ce

    :cond_cd
    move v0, v2

    :goto_ce
    if-nez v0, :cond_e5

    const-wide v3, -0x1995c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x19a5c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    return v0

    :cond_e6
    :goto_e6
    const-wide v0, -0x1962c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x1972c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_5 .. :try_end_fb} :catchall_2a

    return v2

    :goto_fc
    const-wide v3, -0x19bcc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x19ccc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .registers 26

    sget-object v1, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-eqz p0, :cond_3ad

    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    move-object v3, v0

    goto :goto_21

    :catchall_a
    move-exception v0

    const-wide v3, -0x1a83c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1a93c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_21
    if-nez v3, :cond_39

    const-wide v0, -0x19f0c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1a00c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_39
    :try_start_39
    sget-boolean v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmzodnwO1tUkgkS8cymEofiI:Z

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq4snztAiatOsRsxI()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmzodnwO1tUkgkS8cymEofiI:Z

    if-nez v0, :cond_5f

    const-wide v0, -0x1a33c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1a43c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39b

    :catchall_5c
    move-exception v0

    goto/16 :goto_39c

    :cond_5f
    sget-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/security/cert/CertificateFactory;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_7f

    goto/16 :goto_39b

    :cond_7f
    new-instance v4, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>([B)V

    iget-object v6, v4, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    iget-object v7, v4, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    if-eqz v6, :cond_97

    iget-object v8, v6, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    goto :goto_98

    :cond_97
    const/4 v8, 0x0

    :goto_98
    iget-object v8, v8, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v8, v8, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v8}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v8

    const/4 v9, 0x7

    aget-object v10, v8, v9

    check-cast v10, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    new-instance v11, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v11}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b2
    move-object v12, v10

    check-cast v12, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->hasNext()Z

    move-result v13

    const/16 v14, 0x2cf

    const/16 v15, 0x2ce

    move/from16 v16, v9

    const/16 v9, 0x2c2

    const/16 v2, 0x2c1

    const/16 v5, 0x2c0

    if-eqz v13, :cond_e3

    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    check-cast v12, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    iget v13, v12, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:I

    if-eq v13, v5, :cond_db

    if-eq v13, v2, :cond_db

    if-eq v13, v9, :cond_db

    if-eq v13, v15, :cond_db

    if-ne v13, v14, :cond_df

    :cond_db
    :goto_db
    move/from16 v9, v16

    const/4 v5, 0x0

    goto :goto_b2

    :cond_df
    invoke-virtual {v11, v12}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    goto :goto_db

    :cond_e3
    const-wide v12, -0x1a70c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_161

    sget-object v10, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI:Ljava/security/PrivateKey;

    if-eqz v10, :cond_39b

    sget-object v10, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_108

    goto/16 :goto_39b

    :cond_108
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    new-instance v13, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v13, v10}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>([B)V

    new-instance v18, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v19

    iget-object v10, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v20

    iget-object v10, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v21

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v22

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v23

    iget-object v4, v13, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget-object v4, v4, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v4, v4, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;-><init>(Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;)V

    new-instance v4, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KyqOjqyU2SoxvE3gI:Ljava/security/PrivateKey;

    invoke-virtual {v4, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI(Ljava/security/PrivateKey;)Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    move-result-object v0

    :goto_15d
    move-object v4, v0

    move-object/from16 v7, v18

    goto :goto_1c5

    :cond_161
    sget-object v10, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K7b6cynAykO75yzw1Ri5kI:Ljava/security/PrivateKey;

    if-eqz v10, :cond_39b

    sget-object v10, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq4snztAiatOsRsxI:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_16f

    goto/16 :goto_39b

    :cond_16f
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    new-instance v13, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v13, v10}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>([B)V

    new-instance v18, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v19

    iget-object v10, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v20

    iget-object v10, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v10, v10, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v10}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v21

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;

    move-result-object v22

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    move-result-object v23

    iget-object v4, v13, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget-object v4, v4, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    iget-object v4, v4, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;-><init>(Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;)V

    new-instance v4, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K7b6cynAykO75yzw1Ri5kI:Ljava/security/PrivateKey;

    invoke-virtual {v4, v0}, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI(Ljava/security/PrivateKey;)Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    move-result-object v0

    goto :goto_15d

    :goto_1c5
    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x20

    new-array v13, v0, [B

    const-wide v18, -0x1ab5c885e6b8L

    invoke-static/range {v18 .. v19}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1e0
    .catchall {:try_start_39 .. :try_end_1e0} :catchall_5c

    const/4 v15, 0x2

    if-nez v14, :cond_1fe

    :try_start_1e3
    invoke-static {v0, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13
    :try_end_1e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e3 .. :try_end_1e7} :catch_1e8
    .catchall {:try_start_1e3 .. :try_end_1e7} :catchall_5c

    goto :goto_211

    :catch_1e8
    move-exception v0

    const-wide v20, -0x1abfc885e6b8L

    :try_start_1ee
    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v14

    const-wide v20, -0x1acfc885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1fe
    invoke-virtual {v10, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-wide v20, -0x1af5c885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v0, v9}, Lcom/android/internal/util/kaorios/SettingsHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_211
    invoke-static {v3, v10}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI(Landroid/app/Application;Ljava/security/SecureRandom;)[B

    move-result-object v0

    new-instance v9, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v9, v13}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    new-instance v10, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v10}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    new-instance v13, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v13, v0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    const/16 v17, 0x0

    aput-object v9, v0, v17

    sget-object v9, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v14, 0x1

    aput-object v9, v0, v14

    aput-object v10, v0, v15

    const/4 v9, 0x3

    aput-object v13, v0, v9

    new-instance v9, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v13, 0x0

    invoke-direct {v9, v0, v13}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    invoke-direct {v0, v14, v5, v9, v14}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v11, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v5, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-wide v20, -0x1bf1c885e6b8L

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_256
    .catchall {:try_start_1ee .. :try_end_256} :catchall_5c

    :try_start_256
    array-length v10, v9

    if-lez v10, :cond_265

    const/16 v17, 0x0

    aget-object v10, v9, v17

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_261
    .catch Ljava/lang/NumberFormatException; {:try_start_256 .. :try_end_261} :catch_262
    .catchall {:try_start_256 .. :try_end_261} :catchall_5c

    goto :goto_266

    :catch_262
    const/4 v10, 0x0

    :catch_263
    const/4 v13, 0x0

    goto :goto_27b

    :cond_265
    const/4 v10, 0x0

    :goto_266
    :try_start_266
    array-length v13, v9

    if-le v13, v14, :cond_270

    aget-object v13, v9, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_26f
    .catch Ljava/lang/NumberFormatException; {:try_start_266 .. :try_end_26f} :catch_263
    .catchall {:try_start_266 .. :try_end_26f} :catchall_5c

    goto :goto_271

    :cond_270
    const/4 v13, 0x0

    :goto_271
    :try_start_271
    array-length v2, v9

    if-le v2, v15, :cond_27b

    aget-object v2, v9, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_27a
    .catch Ljava/lang/NumberFormatException; {:try_start_271 .. :try_end_27a} :catch_27b
    .catchall {:try_start_271 .. :try_end_27a} :catchall_5c

    goto :goto_27c

    :catch_27b
    :cond_27b
    :goto_27b
    const/4 v2, 0x0

    :goto_27c
    mul-int/lit16 v10, v10, 0x2710

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v13, v10

    add-int/2addr v13, v2

    int-to-long v9, v13

    :try_start_283
    invoke-direct {v5, v9, v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v2, 0x2c1

    invoke-direct {v0, v14, v2, v5, v14}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v11, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const-wide v9, -0x1bf4c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a6

    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;
    :try_end_2a4
    .catchall {:try_start_283 .. :try_end_2a4} :catchall_5c

    const/4 v3, 0x0

    goto :goto_2db

    :cond_2a6
    :try_start_2a6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v9, -0x1c0ec885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2b4
    .catch Lorg/json/JSONException; {:try_start_2a6 .. :try_end_2b4} :catch_2c2
    .catchall {:try_start_2a6 .. :try_end_2b4} :catchall_5c

    const/4 v3, 0x0

    :try_start_2b5
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2bd
    .catch Lorg/json/JSONException; {:try_start_2b5 .. :try_end_2bd} :catch_2c0
    .catchall {:try_start_2b5 .. :try_end_2bd} :catchall_5c

    if-nez v2, :cond_2d9

    goto :goto_2db

    :catch_2c0
    move-exception v0

    goto :goto_2c4

    :catch_2c2
    move-exception v0

    const/4 v3, 0x0

    :goto_2c4
    const-wide v9, -0x1c1dc885e6b8L

    :try_start_2c9
    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v9, -0x1c2dc885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d9
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    :goto_2db
    new-instance v2, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v5, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v5, v9, v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v9, 0x2c2

    invoke-direct {v2, v14, v9, v5, v14}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v11, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v2, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v5, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-static {v0, v14}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v5, v9, v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v9, 0x2ce

    invoke-direct {v2, v14, v9, v5, v14}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v11, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v2, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    new-instance v5, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-static {v0, v14}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I

    move-result v0

    int-to-long v9, v0

    invoke-direct {v5, v9, v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v9, 0x2cf

    invoke-direct {v2, v14, v9, v5, v14}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v11, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v13, 0x0

    invoke-direct {v0, v11, v13}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;->Kq4snztAiatOsRsxI:I

    aput-object v0, v8, v16

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    invoke-direct {v0, v8, v13}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    new-instance v2, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-direct {v2, v0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    invoke-direct {v0, v1, v13, v2}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/KjAjghbOpRzicI;)V

    iget-object v2, v7, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;)V

    iget-object v0, v6, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v5, v2, [Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const/4 v13, 0x0

    :goto_342
    if-eq v13, v2, :cond_34f

    invoke-virtual {v0, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    aput-object v8, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_342

    :cond_34f
    const/4 v13, 0x0

    :goto_350
    if-ge v13, v2, :cond_37a

    aget-object v0, v5, v13

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_363

    goto :goto_377

    :cond_363
    if-eqz v6, :cond_36f

    iget-object v8, v6, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    goto :goto_370

    :cond_36f
    move-object v14, v3

    :goto_370
    iget-object v0, v7, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-virtual {v0, v14}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;)V

    :goto_377
    add-int/lit8 v13, v13, 0x1

    goto :goto_350

    :cond_37a
    new-instance v0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    invoke-virtual {v7, v4}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;)Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v13, 0x0

    new-array v0, v13, [Ljava/security/cert/Certificate;

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;
    :try_end_39a
    .catchall {:try_start_2c9 .. :try_end_39a} :catchall_5c

    return-object v0

    :cond_39b
    :goto_39b
    return-object p0

    :goto_39c
    const-wide v1, -0x1a73c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3ad
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Z)I
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3170e

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-wide v2, -0x1c59c885e6b8L

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
    const-wide v2, -0x1c5bc885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1c6bc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_a
    sget-object p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_21

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p0

    :catchall_21
    move-exception p0

    :try_start_22
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method
