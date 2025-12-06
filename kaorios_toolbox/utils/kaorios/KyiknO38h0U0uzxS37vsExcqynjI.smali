.class public final Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;
.super Ljava/lang/Object;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_36

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;

    const/4 v0, 0x1

    if-eq p1, p0, :cond_37

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    if-ne v2, v3, :cond_13

    move v2, v0

    goto :goto_1e

    :cond_13
    if-eqz v2, :cond_1d

    if-nez v3, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v2, v1

    :goto_1e
    if-eqz v2, :cond_36

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    if-ne p0, p1, :cond_28

    move p0, v0

    goto :goto_33

    :cond_28
    if-eqz p0, :cond_32

    if-nez p1, :cond_2d

    goto :goto_32

    :cond_2d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_33

    :cond_32
    :goto_32
    move p0, v1

    :goto_33
    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    :goto_36
    return v1

    :cond_37
    :goto_37
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    if-nez p0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
