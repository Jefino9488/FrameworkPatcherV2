.class public final Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;
.super Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# instance fields
.field public final Kq4snztAiatOsRsxI:I

.field public final KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# direct methods
.method public constructor <init>([B[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kq4snztAiatOsRsxI:I

    return-void
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)[B
    .registers 8

    array-length v0, p0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    move v1, v2

    move v3, v1

    :goto_9
    if-ge v1, v0, :cond_14

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    new-array v1, v3, [B

    move v3, v2

    move v4, v3

    :goto_18
    if-ge v3, v0, :cond_27

    aget-object v5, p0, v3

    iget-object v5, v5, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v6, v5

    invoke-static {v5, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    return-object v1

    :cond_28
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    return-object p0

    :cond_2d
    sget-object p0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KmwO02nawgUws9Syxnq2rElI:[B

    return-object p0
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 8

    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7xuO3UlvknmcS4irn11EomI([Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    goto :goto_2e

    :cond_13
    move v0, p2

    :goto_14
    iget-object v1, p0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    array-length v2, v1

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kq4snztAiatOsRsxI:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1, v2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    add-int/2addr v0, v2

    goto :goto_14

    :cond_2e
    :goto_2e
    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    :goto_5
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 p0, 0x0

    :goto_b
    array-length v2, v0

    if-ge p0, v2, :cond_18

    aget-object v2, v0, p0

    invoke-virtual {v2, v1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_18
    return p1

    :cond_19
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v2, v0

    iget p0, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kq4snztAiatOsRsxI:I

    div-int/2addr v2, p0

    invoke-static {v1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v3, p1

    array-length p1, v0

    mul-int/2addr v2, p0

    sub-int/2addr p1, v2

    if-lez p1, :cond_30

    invoke-static {v1, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :cond_30
    return v3
.end method
