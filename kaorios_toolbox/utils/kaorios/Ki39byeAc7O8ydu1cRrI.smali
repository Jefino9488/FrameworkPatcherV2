.class public final Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;


# static fields
.field public static final KcxerAdpv60xOdaR8bI:[I


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:I

.field public final K8Ak17imO9w5w4RppI:[I

.field public K8c63Ooauv32UndyuScEgI:I

.field public K91vAo8w086Op21a5bR8uI:I

.field public Kgs66qnAfO491Ra48r7aI:I

.field public KmwO02nawgUws9Syxnq2rElI:J

.field public KmzodnwO1tUkgkS8cymEofiI:I

.field public Kq4snztAiatOsRsxI:I

.field public Kq5pt6AeqxqwOjab0R8ioI:I

.field public Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

.field public KtbuouOlomiUohgSxfezrEyv01I:I

.field public final Ku5O3sihzbUhwSewE8uI:[B

.field public KyqOjqyU2SoxvE3gI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KcxerAdpv60xOdaR8bI:[I

    return-void

    :array_a
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI:[I

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kxqe2AyOovkR6xbf5I(Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;)Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    invoke-static {}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI()V

    return-void
.end method

.method public static K7b6cynAykO75yzw1Ri5kI(III)I
    .registers 3

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static K91vAo8w086Op21a5bR8uI(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static KmzodnwO1tUkgkS8cymEofiI(III)I
    .registers 4

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    and-int/2addr p0, p2

    or-int/2addr p0, v0

    return p0
.end method

.method public static KtbuouOlomiUohgSxfezrEyv01I(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final K8Ak17imO9w5w4RppI()V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    move v1, v0

    :goto_8
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v3, v2

    if-ge v1, v3, :cond_12

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    const v1, 0x6a09e667

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq4snztAiatOsRsxI:I

    const v1, -0x4498517b

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI:I

    const v1, 0x3c6ef372

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI:I

    const v1, -0x5ab00ac6

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI:I

    const v1, 0x510e527f

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI:I

    const v1, -0x64fa9774

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I:I

    const v1, 0x1f83d9ab

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI:I

    const v1, 0x5be0cd19

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    move v1, v0

    :goto_3d
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI:[I

    array-length v3, v2

    if-eq v1, v3, :cond_47

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_47
    return-void
.end method

.method public final K8c63Ooauv32UndyuScEgI(I[B)V
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KmzodnwO1tUkgkS8cymEofiI(I[B)I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI:[I

    aput p1, p2, v0

    iget p1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI()V

    :cond_17
    return-void
.end method

.method public final Kgs66qnAfO491Ra48r7aI()V
    .registers 20

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_5
    const/16 v3, 0x3f

    iget-object v4, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI:[I

    if-gt v2, v3, :cond_3f

    add-int/lit8 v3, v2, -0x2

    aget v3, v4, v3

    ushr-int/lit8 v5, v3, 0x11

    shl-int/lit8 v6, v3, 0xf

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v3, 0x13

    shl-int/lit8 v7, v3, 0xd

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x7

    aget v5, v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0xf

    aget v5, v4, v5

    ushr-int/lit8 v6, v5, 0x7

    shl-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x12

    shl-int/lit8 v8, v5, 0xe

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v4, v5

    add-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3f
    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq4snztAiatOsRsxI:I

    iget v3, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI:I

    iget v5, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v6, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v7, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI:I

    iget v8, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget v9, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI:I

    iget v10, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI:I

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_52
    const/16 v14, 0x8

    if-ge v12, v14, :cond_17a

    invoke-static {v7}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v15

    invoke-static {v7, v8, v9}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v16

    add-int v16, v16, v15

    sget-object v15, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KcxerAdpv60xOdaR8bI:[I

    aget v17, v15, v13

    add-int v16, v16, v17

    aget v17, v4, v13

    add-int v16, v16, v17

    add-int v16, v16, v10

    add-int v6, v6, v16

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v10

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v17

    add-int v17, v17, v10

    add-int v10, v17, v16

    add-int/lit8 v16, v13, 0x1

    invoke-static {v6}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v9

    add-int v5, v5, v18

    invoke-static {v10}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v9

    invoke-static {v10, v2, v3}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v9

    add-int v9, v16, v18

    add-int/lit8 v16, v13, 0x2

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v8

    add-int v3, v3, v18

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v8

    invoke-static {v9, v10, v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v8

    add-int v8, v16, v18

    add-int/lit8 v16, v13, 0x3

    invoke-static {v3}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v7

    add-int v2, v2, v18

    invoke-static {v8}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v7

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v7

    add-int v7, v16, v18

    add-int/lit8 v16, v13, 0x4

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v6

    add-int v10, v10, v18

    invoke-static {v7}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v6

    invoke-static {v7, v8, v9}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v6

    add-int v6, v16, v18

    add-int/lit8 v16, v13, 0x5

    invoke-static {v10}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v10, v2, v3}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v5

    add-int v9, v9, v18

    invoke-static {v6}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v5

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v5

    add-int v5, v16, v18

    add-int/lit8 v16, v13, 0x6

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v9, v10, v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v3

    add-int v8, v8, v18

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v3

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v16

    add-int v16, v16, v3

    add-int v3, v16, v18

    add-int/lit8 v16, v13, 0x7

    invoke-static {v8}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result v17

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI(III)I

    move-result v18

    add-int v18, v18, v17

    aget v15, v15, v16

    add-int v18, v18, v15

    aget v15, v4, v16

    add-int v18, v18, v15

    add-int v18, v18, v2

    add-int v7, v7, v18

    invoke-static {v3}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI(I)I

    move-result v2

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI(III)I

    move-result v15

    add-int/2addr v15, v2

    add-int v2, v15, v18

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_52

    :cond_17a
    iget v12, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq4snztAiatOsRsxI:I

    add-int/2addr v12, v2

    iput v12, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq4snztAiatOsRsxI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI:I

    iget v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI:I

    iput v11, v0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    move v0, v11

    :goto_1a5
    if-ge v0, v1, :cond_1ac

    aput v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a5

    :cond_1ac
    return-void
.end method

.method public final KmwO02nawgUws9Syxnq2rElI(I[B)I
    .registers 9

    iget-wide v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI(B)V

    iget v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    iget v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI()V

    :cond_18
    const/16 v2, 0x20

    ushr-long v4, v0, v2

    long-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI:[I

    aput v4, v5, v3

    const/16 v3, 0xf

    long-to-int v0, v0

    aput v0, v5, v3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI()V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq4snztAiatOsRsxI:I

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KyqOjqyU2SoxvE3gI:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K7b6cynAykO75yzw1Ri5kI:I

    add-int/lit8 v1, p1, 0x8

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmzodnwO1tUkgkS8cymEofiI:I

    add-int/lit8 v1, p1, 0xc

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K91vAo8w086Op21a5bR8uI:I

    add-int/lit8 v1, p1, 0x10

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KtbuouOlomiUohgSxfezrEyv01I:I

    add-int/lit8 v1, p1, 0x14

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kgs66qnAfO491Ra48r7aI:I

    add-int/lit8 v1, p1, 0x18

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI:I

    add-int/lit8 p1, p1, 0x1c

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8Ak17imO9w5w4RppI()V

    return v2
.end method

.method public final Kq4snztAiatOsRsxI([BII)V
    .registers 10

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Ku5O3sihzbUhwSewE8uI:[B

    if-eqz v1, :cond_28

    move v1, v0

    :goto_c
    if-ge v1, p3, :cond_27

    iget v3, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_25

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI(I[B)V

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    move v0, v5

    goto :goto_28

    :cond_25
    move v1, v5

    goto :goto_c

    :cond_27
    move v0, v1

    :cond_28
    :goto_28
    add-int/lit8 v1, p3, -0x3

    :goto_2a
    if-ge v0, v1, :cond_34

    add-int v3, p2, v0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI(I[B)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2a

    :cond_34
    :goto_34
    if-ge v0, p3, :cond_45

    iget v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_34

    :cond_45
    iget-wide p1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    return-void
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;
    .registers 1

    const-string p0, "SHA-256"

    return-object p0
.end method

.method public final KyqOjqyU2SoxvE3gI(B)V
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Ku5O3sihzbUhwSewE8uI:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->K8c63Ooauv32UndyuScEgI(I[B)V

    iput p1, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    :cond_13
    iget-wide v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;->KmwO02nawgUws9Syxnq2rElI:J

    return-void
.end method
