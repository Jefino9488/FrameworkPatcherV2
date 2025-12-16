.class public final Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient KmwO02nawgUws9Syxnq2rElI:[B

.field public transient Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->getEncoded()[B

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

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:[B

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K2cfOkpuwqUp9SlEuy75ssI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:[B

    :cond_c
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
