.class public final Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;
.super Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;


# virtual methods
.method public final Kd5bO1pa591Ur4pdqSlo7E61nctqI()[B
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->K4qxes9O6f26i8U6Sqj8EgiI()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    array-length p0, v0

    add-int/lit8 p0, p0, 0x4

    new-array p0, p0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "0000Z"

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x5

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->KgdivAliuhhnOe2iR73uaI()Z

    move-result v1

    if-nez v1, :cond_4a

    array-length p0, v0

    add-int/lit8 p0, p0, 0x2

    new-array p0, p0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "00Z"

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x3

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->KfhA0xayiqO65hivnRnnoh8cI()Z

    move-result p0

    if-eqz p0, :cond_7a

    array-length p0, v0

    add-int/lit8 p0, p0, -0x2

    :goto_53
    if-lez p0, :cond_5e

    aget-byte v1, v0, p0

    const/16 v4, 0x30

    if-ne v1, v4, :cond_5e

    add-int/lit8 p0, p0, -0x1

    goto :goto_53

    :cond_5e
    aget-byte v1, v0, p0

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_6e

    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [B

    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v1, p0

    return-object v1

    :cond_6e
    add-int/lit8 v1, p0, 0x2

    new-array v1, v1, [B

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v1, p0

    return-object v1

    :cond_7a
    return-object v0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()[B

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    return-object p0
.end method
