.class public final Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    :try_start_a
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to perform equals"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "LMS"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

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
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unable to calculate hashCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
