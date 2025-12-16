.class public final Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:[B

.field public Kq4snztAiatOsRsxI:[B

.field public KyqOjqyU2SoxvE3gI:[B


# virtual methods
.method public final getEncoded()[B
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmwO02nawgUws9Syxnq2rElI:[B

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq4snztAiatOsRsxI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KyqOjqyU2SoxvE3gI:[B

    if-nez v0, :cond_d

    invoke-static {v1, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    return-object p0

    :cond_d
    if-nez v1, :cond_14

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    return-object p0

    :cond_14
    if-nez p0, :cond_1b

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1b
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
