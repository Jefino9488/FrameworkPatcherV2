.class public final Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v3, p1, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "SPHINCS-256"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KnAacuOafajtRj61vuuI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;)Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    move-result-object p0

    goto :goto_2c

    :cond_b
    new-instance v0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    sget-object v1, Lcom/android/internal/util/kaorios/K5t96qwA4OtRdI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    new-instance v2, Lcom/android/internal/util/kaorios/K8wdn37Oa9x3Uhg0SozqlnkEudrwlI;

    new-instance v3, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-direct {v3, v4}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/kaorios/K8wdn37Oa9x3Uhg0SozqlnkEudrwlI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v1, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;[B)V

    move-object p0, v1

    :goto_2c
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kip9oOzsnU7S3gE1ujh3I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
