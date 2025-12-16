.class public final Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "Picnic"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;

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

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjrworOdUd5S104hExvzjI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
