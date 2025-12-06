.class public final Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;
.super Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;


# instance fields
.field public Kq4snztAiatOsRsxI:I


# virtual methods
.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 11

    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KcxerAdpv60xOdaR8bI(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_40

    const/16 v2, 0x10

    if-le v1, v2, :cond_17

    goto :goto_40

    :cond_17
    new-array v2, v1, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v5, v3

    move v6, v5

    :goto_1b
    if-ge v5, v1, :cond_31

    aget-object v7, v0, v5

    invoke-interface {v7}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v7, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_31
    iput v6, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v6}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I(I)V

    :goto_36
    if-ge v3, v1, :cond_59

    aget-object p0, v2, v3

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I(I)V

    :goto_47
    if-ge v3, v1, :cond_59

    aget-object p0, v0, v3

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_59
    return-void
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KyqOjqyU2SoxvE3gI(ZI)I

    move-result p0

    return p0
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-super {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    return-object p0
.end method

.method public final KvyA01pu5yOryrRk3kI()I
    .registers 7

    iget v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    iput v3, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    :cond_20
    iget p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    return p0
.end method
