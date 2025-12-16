.class public final Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:[B

.field public final Kq4snztAiatOsRsxI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;-><init>(II)V

    array-length p1, p2

    iget v2, v1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    if-ne p1, v2, :cond_33

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->KmwO02nawgUws9Syxnq2rElI:[B

    array-length v0, p2

    add-int/lit8 v0, v0, -0x20

    array-length v2, p2

    invoke-static {p2, v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->Kq4snztAiatOsRsxI:[B

    invoke-virtual {v1, p1}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI([B)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Modulus check failed for ML-KEM public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'encoding\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[B[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;-><init>(II)V

    array-length p1, p2

    iget v1, v0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne p1, v1, :cond_39

    array-length p1, p3

    const/16 v1, 0x20

    if-ne p1, v1, :cond_31

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->Kq4snztAiatOsRsxI:[B

    invoke-virtual {v0, p1}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI([B)Z

    move-result p0

    if-eqz p0, :cond_29

    return-void

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Modulus check failed for ML-KEM public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'rho\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'t\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->KmwO02nawgUws9Syxnq2rElI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->Kq4snztAiatOsRsxI:[B

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    return-object p0
.end method
