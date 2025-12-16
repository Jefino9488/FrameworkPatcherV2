.class public Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;
    }
.end annotation


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KaoriRemove(ILjava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;-><init>(ILjava/lang/String;)V

    sget-object p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static append(ILjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;-><init>(ILjava/lang/String;)V

    sget-object p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static decodePemOrBase64(Ljava/lang/String;)[B
    .registers 4

    const-wide v0, -0x1a6c65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1a8265922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x1a8365922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1a9765922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x1a9865922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x1a9c65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCertificateChain(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    const-wide v1, -0x1ad065922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq5pt6AeqxqwOjab0R8ioI()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KmwO02nawgUws9Syxnq2rElI()[Ljava/lang/String;

    move-result-object v0

    :goto_1f
    if-eqz v0, :cond_77

    array-length v1, v0

    if-eqz v1, :cond_77

    const-wide v1, -0x1b0365922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_52

    aget-object v4, v0, v3

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_4f

    :cond_48
    invoke-static {v4}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    return-object v1

    :cond_59
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x1b0965922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x1ad365922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCertificateChains(Ljava/lang/String;)[B
    .registers 5

    const-wide v0, -0x1b3e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    sget p0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq5pt6AeqxqwOjab0R8ioI()[Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_1b
    sget p0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KmwO02nawgUws9Syxnq2rElI()[Ljava/lang/String;

    move-result-object p0

    :goto_26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_3b

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->decodePemOrBase64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getCertificateFromHolder(Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;)Ljava/security/cert/X509Certificate;
    .registers 3

    const-wide v0, -0x1b4165922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static getCertificateHolder(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;
    .registers 4

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    const-wide v1, -0x1b7465922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq5pt6AeqxqwOjab0R8ioI()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    goto :goto_24

    :cond_1e
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KmwO02nawgUws9Syxnq2rElI()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    :goto_24
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    new-instance v0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;-><init>([B)V

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6

    sget v0, Lcom/android/internal/util/kaorios/Kpb9hcwA2O0R9I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;-><init>()V

    const-wide v1, -0x1b4765922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v0

    if-nez v0, :cond_35

    const-wide v0, -0x3b3265922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x3b4765922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_35
    const-wide v0, -0x3b5f65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_72

    :cond_46
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    if-nez v0, :cond_62

    const-wide v0, -0x3b6765922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x3b7c65922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_62
    const-wide v0, -0x3b9565922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_72
    if-eqz v2, :cond_79

    invoke-static {v2, p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_79
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x1b4a65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->decodePemOrBase64(Ljava/lang/String;)[B

    move-result-object p0

    const-wide v0, -0x1aca65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 8

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->decodePemOrBase64(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    const-wide v1, -0x1a9d65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b7

    :try_start_18
    invoke-static {v0}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p0

    const-wide v3, -0x1aa065922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    if-eqz p0, :cond_49

    new-instance p1, Lcom/android/internal/util/kaorios/KyoA7jnycO09f0dRnI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/KyoA7jnycO09f0dRnI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    goto :goto_4a

    :cond_49
    move-object p1, v2

    :goto_4a
    new-instance p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    sget-object v0, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KyoA7jnycO09f0dRnI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    instance-of v4, v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-eqz v4, :cond_54

    check-cast v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v4, v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_54

    iget v4, v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    instance-of v3, v1, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

    if-eqz v3, :cond_7f

    check-cast v1, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

    goto :goto_83

    :cond_7f
    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    :goto_83
    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    goto :goto_91

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    move-object v1, v2

    :goto_91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    invoke-direct {v0, p0, p1, v2, v2}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v0, -0x1aa365922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_b7
    const-wide v3, -0x1aa665922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    const-wide v3, -0x1aaa65922ce2L

    :try_start_cb
    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_dc} :catch_dd

    return-object p0

    :catch_dd
    if-eqz v0, :cond_17a

    new-instance p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K4cv12eOhp5UsS8gpsE2q2z1I()I

    move-result v1

    if-ltz v1, :cond_172

    const/4 v3, 0x1

    if-gt v1, v3, :cond_172

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->Kq4snztAiatOsRsxI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->KyqOjqyU2SoxvE3gI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->K7b6cynAykO75yzw1Ri5kI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->KmzodnwO1tUkgkS8cymEofiI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->K91vAo8w086Op21a5bR8uI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K0wipv9AtliO55qRn6mI()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->KtbuouOlomiUohgSxfezrEyv01I:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KtOsUyu6SkE0yu0I;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    goto :goto_17b

    :cond_172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17a
    move-object p0, v2

    :cond_17b
    :goto_17b
    new-instance p1, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    sget-object v0, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    sget-object v1, Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    invoke-direct {v0, p1, p0, v2, v2}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v0, -0x1aae65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_1a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x1ab265922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putCertificateChain(Landroid/system/keystore2/KeyEntryResponse;[Ljava/security/cert/Certificate;)V
    .registers 2

    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public static putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    return-void
.end method

.method public static retrieve(ILjava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;-><init>(ILjava/lang/String;)V

    sget-object p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/system/keystore2/KeyEntryResponse;

    return-object p0
.end method
