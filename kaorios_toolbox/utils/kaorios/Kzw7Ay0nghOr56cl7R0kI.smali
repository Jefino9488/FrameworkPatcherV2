.class public Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;
.super Ljava/lang/Object;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    return-void
.end method

.method public static K7b6cynAykO75yzw1Ri5kI(I)I
    .registers 2

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method public static Kq4snztAiatOsRsxI(I)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method public static KyqOjqyU2SoxvE3gI(ZI)I
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public K7xuO3UlvknmcS4irn11EomI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    return-void
.end method

.method public K8Ak17imO9w5w4RppI(ZI[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KcxerAdpv60xOdaR8bI(ZI)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    return-void
.end method

.method public K8c63Ooauv32UndyuScEgI(ZI[B)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KcxerAdpv60xOdaR8bI(ZI)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI([BII)V

    return-void
.end method

.method public K91vAo8w086Op21a5bR8uI([BII)V
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public KcxerAdpv60xOdaR8bI(ZI)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    :cond_5
    return-void
.end method

.method public Kgs66qnAfO491Ra48r7aI([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public KmzodnwO1tUkgkS8cymEofiI(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(II)V
    .registers 7

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    return-void

    :cond_9
    const/4 v1, 0x6

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    :goto_12
    const/16 v2, 0x7f

    if-le p2, v2, :cond_22

    ushr-int/lit8 p2, p2, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_12

    :cond_22
    add-int/lit8 v3, v3, -0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI([BII)V

    return-void
.end method

.method public KtbuouOlomiUohgSxfezrEyv01I(I)V
    .registers 7

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI(I)V

    return-void

    :cond_8
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_b
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_22

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI([BII)V

    return-void

    :cond_22
    move v1, v3

    goto :goto_b
.end method

.method public Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;)Ljava/security/cert/X509Certificate;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;

    const-string v0, "X.509"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_21
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    goto :goto_3d

    :goto_23
    new-instance p1, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot find required provider:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI:Ljava/security/NoSuchProviderException;

    throw p1

    :goto_3d
    new-instance p1, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception parsing certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/IOException;

    throw p1
.end method

.method public Kv20eAs5x8fqOila11RtI([Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method
