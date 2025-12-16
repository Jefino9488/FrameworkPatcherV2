.class public final Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;

.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v3, p1, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;->KmwO02nawgUws9Syxnq2rElI:[B

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
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6okO5hUclibxShsEkbgopaI(Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
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

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KyrnAk2O4sdRpnxj5wI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
