.class public final Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PrivateKey;


# instance fields
.field public transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;->Kq5pt6AeqxqwOjab0R8ioI:[S

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8Ak17imO9w5w4RppI([S)[S

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;->Kq5pt6AeqxqwOjab0R8ioI:[S

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8Ak17imO9w5w4RppI([S)[S

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "NH"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6okO5hUclibxShsEkbgopaI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K828toO2iaa1xUclv55S54aEtcatI;->Kq5pt6AeqxqwOjab0R8ioI:[S

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8Ak17imO9w5w4RppI([S)[S

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    mul-int/lit16 v1, v1, 0x101

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_f

    :cond_1b
    return v1
.end method
