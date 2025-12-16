.class public final Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PublicKey;


# instance fields
.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_1e

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;

    if-nez v0, :cond_7

    goto :goto_1e

    :cond_7
    check-cast p1, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "NH"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;

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

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5awpaA2exoeeOrtkahR0oiqmiI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
