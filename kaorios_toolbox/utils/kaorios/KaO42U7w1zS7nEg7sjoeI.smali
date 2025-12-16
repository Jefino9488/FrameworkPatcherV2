.class public final Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient KmwO02nawgUws9Syxnq2rElI:[B

.field public transient Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public transient Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KmwO02nawgUws9Syxnq2rElI:[B

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-boolean v2, v0, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6okO5hUclibxShsEkbgopaI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_15

    :catch_15
    iput-object v2, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KmwO02nawgUws9Syxnq2rElI:[B

    goto :goto_20

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
