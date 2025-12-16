.class public final Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;

    :try_start_b
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    :cond_1c
    return v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "LMS"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KnAacuOafajtRj61vuuI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;)Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, -0x1

    return p0
.end method
