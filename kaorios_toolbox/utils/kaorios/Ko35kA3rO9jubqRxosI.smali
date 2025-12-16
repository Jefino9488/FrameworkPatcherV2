.class public final Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;

    if-eqz v0, :cond_27

    check-cast p1, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Kiw4Og85dtUpsSuE4zI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kiw4Og85dtUpsSuE4zI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPHINCS+-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;

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
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
