.class public final Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;
.super Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;


# instance fields
.field public final Kq4snztAiatOsRsxI:I

.field public final KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>([BI)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:I

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KvyA01pu5yOryrRk3kI([Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>([B)V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:I

    return-void
.end method

.method public static KvyA01pu5yOryrRk3kI([Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)[B
    .registers 9

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    if-eq v0, v2, :cond_40

    add-int/lit8 v3, v0, -0x1

    move v4, v1

    move v5, v4

    :goto_b
    if-ge v4, v3, :cond_23

    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    aget-byte v7, v6, v1

    if-nez v7, :cond_1b

    array-length v6, v6

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    aget-object v3, p0, v3

    iget-object v3, v3, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    aget-byte v4, v3, v1

    array-length v3, v3

    add-int/2addr v5, v3

    new-array v3, v5, [B

    aput-byte v4, v3, v1

    move v4, v2

    :goto_30
    if-ge v1, v0, :cond_3f

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-static {v5, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3f
    return-object v3

    :cond_40
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    return-object p0

    :cond_45
    new-array p0, v2, [B

    aput-byte v1, p0, v1

    return-object p0
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, v0

    iget p0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:I

    if-le v0, p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->K8c63Ooauv32UndyuScEgI()Z

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v3, 0x0

    if-nez v0, :cond_15

    array-length p0, v2

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    invoke-virtual {p1, v2, v3, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    return-void

    :cond_15
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    iget-object p2, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz p2, :cond_27

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7xuO3UlvknmcS4irn11EomI([Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    goto :goto_56

    :cond_27
    array-length p2, v2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_2c

    goto :goto_56

    :cond_2c
    aget-byte p2, v2, v3

    array-length v0, v2

    add-int/lit8 v4, v0, -0x1

    iget p0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:I

    add-int/lit8 v5, p0, -0x1

    :goto_35
    if-le v4, v5, :cond_47

    sub-int v6, v0, v4

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    invoke-virtual {p1, v3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p1, v2, v6, v5}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    sub-int/2addr v4, v5

    goto :goto_35

    :cond_47
    sub-int/2addr v0, v4

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    add-int/lit8 p0, v4, 0x1

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p1, v2, v0, v4}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    :goto_56
    invoke-virtual {p1, v3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p1, v3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->K8c63Ooauv32UndyuScEgI()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    if-nez v0, :cond_e

    array-length p0, v1

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_12

    const/4 p1, 0x4

    goto :goto_13

    :cond_12
    const/4 p1, 0x3

    :goto_13
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KyqOjqyU2SoxvE3gI:[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    const/4 p0, 0x0

    :goto_19
    array-length v1, v0

    if-ge p0, v1, :cond_26

    aget-object v1, v0, p0

    invoke-virtual {v1, v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_19

    :cond_26
    return p1

    :cond_27
    array-length v0, v1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2c

    return p1

    :cond_2c
    array-length v0, v1

    sub-int/2addr v0, v3

    iget p0, p0, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->Kq4snztAiatOsRsxI:I

    add-int/lit8 v3, p0, -0x1

    div-int/2addr v0, v3

    invoke-static {v2, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    array-length p1, v1

    mul-int/2addr v3, v0

    sub-int/2addr p1, v3

    invoke-static {v2, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
