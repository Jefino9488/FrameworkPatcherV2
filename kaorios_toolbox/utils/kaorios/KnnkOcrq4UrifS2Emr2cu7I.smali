.class public final Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public transient Kq4snztAiatOsRsxI:[B

.field public transient Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq4snztAiatOsRsxI:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6okO5hUclibxShsEkbgopaI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object v3, v2, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    iget-object v2, v2, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    invoke-static {v3, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v3, 0x100

    invoke-direct {p0, v3}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    const/16 v3, 0x14

    new-array v5, v3, [B

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->K8Ak17imO9w5w4RppI([BII)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_33
    if-eq v4, v3, :cond_55

    if-lez v4, :cond_3c

    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    sget-object v6, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kq5pt6AeqxqwOjab0R8ioI:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    public data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v2

    invoke-static {p0, v2}, Lcom/android/internal/util/kaorios/K7aA2nu3OpjybddRuI;->Kq5pt6AeqxqwOjab0R8ioI(I[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
