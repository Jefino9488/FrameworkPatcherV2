.class public final Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

.field public final Kq4snztAiatOsRsxI:Ljava/lang/Object;

.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    new-instance p2, Lcom/android/internal/util/kaorios/KzvomAafdza9Okvd1nRszluI;

    invoke-direct {p2}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p2, Lcom/android/internal/util/kaorios/KzvomAafdza9Okvd1nRszluI;->Ku5O3sihzbUhwSewE8uI:Ljava/security/Signature;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BII)I
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_2
    if-ge v0, p2, :cond_62

    if-ge v1, p4, :cond_62

    aget-byte v2, p3, v1

    and-int/lit8 v3, v2, 0xf

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    const/4 v5, 0x2

    if-ne p5, v5, :cond_41

    const/16 v4, 0xf

    if-ge v3, v4, :cond_2a

    mul-int/lit16 v6, v3, 0xcd

    shr-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0x5

    sub-int/2addr v3, v6

    add-int v6, p1, v0

    rsub-int/lit8 v3, v3, 0x2

    iget-object v7, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v7, [I

    aput v3, v7, v6

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    if-ge v2, v4, :cond_2

    if-ge v0, p2, :cond_2

    mul-int/lit16 v3, v2, 0xcd

    shr-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    add-int v3, p1, v0

    sub-int/2addr v5, v2

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, [I

    aput v5, v2, v3

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_41
    if-ne p5, v4, :cond_2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_53

    add-int v5, p1, v0

    rsub-int/lit8 v3, v3, 0x4

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v6, [I

    aput v3, v6, v5

    add-int/lit8 v0, v0, 0x1

    :cond_53
    if-ge v2, v4, :cond_2

    if-ge v0, p2, :cond_2

    add-int v3, p1, v0

    rsub-int/lit8 v2, v2, 0x4

    iget-object v4, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v4, [I

    aput v2, v4, v3

    goto :goto_3e

    :cond_62
    return v0
.end method

.method public static Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BI)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_33

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_33

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p3, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x2

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    const v3, 0x7fffff

    and-int/2addr v1, v3

    const v3, 0x7fe001

    if-ge v1, v3, :cond_31

    add-int v3, p1, v0

    iget-object v4, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v4, [I

    aput v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    :cond_31
    move v1, v2

    goto :goto_2

    :cond_33
    return v0
.end method


# virtual methods
.method public Kq5pt6AeqxqwOjab0R8ioI(I[B)V
    .registers 16

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v0, v0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9c

    :goto_a
    const/16 v3, 0x20

    if-ge v1, v3, :cond_c7

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v4, v1, 0x8

    aget-byte v5, p2, v3

    and-int/lit8 v6, v5, 0x7

    iget-object v7, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v7, [I

    aput v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v8, v5, 0x3

    and-int/lit8 v8, v8, 0x7

    aput v8, v7, v6

    add-int/lit8 v8, v4, 0x2

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v9, 0x2

    and-int/lit8 v10, v10, 0x7

    or-int/2addr v5, v10

    aput v5, v7, v8

    add-int/lit8 v5, v4, 0x3

    shr-int/lit8 v10, v9, 0x1

    and-int/lit8 v10, v10, 0x7

    aput v10, v7, v5

    add-int/lit8 v10, v4, 0x4

    shr-int/lit8 v11, v9, 0x4

    and-int/lit8 v11, v11, 0x7

    aput v11, v7, v10

    add-int/lit8 v11, v4, 0x5

    shr-int/lit8 v9, v9, 0x7

    add-int/2addr v3, v2

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v12, v3, 0x1

    and-int/lit8 v12, v12, 0x7

    or-int/2addr v9, v12

    aput v9, v7, v11

    add-int/lit8 v9, v4, 0x6

    shr-int/lit8 v12, v3, 0x2

    and-int/lit8 v12, v12, 0x7

    aput v12, v7, v9

    add-int/lit8 v12, v4, 0x7

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x7

    aput v3, v7, v12

    aget v3, v7, v4

    sub-int v3, v0, v3

    aput v3, v7, v4

    aget v3, v7, v6

    sub-int v3, v0, v3

    aput v3, v7, v6

    aget v3, v7, v8

    sub-int v3, v0, v3

    aput v3, v7, v8

    aget v3, v7, v5

    sub-int v3, v0, v3

    aput v3, v7, v5

    aget v3, v7, v10

    sub-int v3, v0, v3

    aput v3, v7, v10

    aget v3, v7, v11

    sub-int v3, v0, v3

    aput v3, v7, v11

    aget v3, v7, v9

    sub-int v3, v0, v3

    aput v3, v7, v9

    aget v3, v7, v12

    sub-int v3, v0, v3

    aput v3, v7, v12

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_9c
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c7

    :goto_9f
    const/16 v3, 0x80

    if-ge v1, v3, :cond_c7

    mul-int/lit8 v3, v1, 0x2

    add-int v4, p1, v1

    aget-byte v4, p2, v4

    and-int/lit8 v5, v4, 0xf

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v6, [I

    aput v5, v6, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v2

    aput v4, v6, v5

    aget v4, v6, v3

    sub-int v4, v0, v4

    aput v4, v6, v3

    aget v3, v6, v5

    sub-int v3, v0, v3

    aput v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_c7
    return-void
.end method

.method public Ku5O3sihzbUhwSewE8uI(I[B)V
    .registers 20

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-object v2, v0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v2, v2, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_9b

    move v7, v3

    :goto_13
    const/16 v8, 0x20

    if-ge v7, v8, :cond_c1

    mul-int/lit8 v8, v7, 0x8

    iget-object v9, v0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v9, [I

    aget v10, v9, v8

    sub-int v10, v2, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    add-int/lit8 v11, v8, 0x1

    aget v11, v9, v11

    sub-int v11, v2, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    add-int/lit8 v12, v8, 0x2

    aget v12, v9, v12

    sub-int v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v13, v8, 0x3

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/4 v14, 0x3

    aput-byte v13, v1, v14

    add-int/lit8 v13, v8, 0x4

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v13, v8, 0x5

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/4 v15, 0x5

    aput-byte v13, v1, v15

    add-int/lit8 v13, v8, 0x6

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/16 v16, 0x6

    aput-byte v13, v1, v16

    const/4 v13, 0x7

    add-int/2addr v8, v13

    aget v8, v9, v8

    sub-int v8, v2, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v13

    mul-int/lit8 v8, v7, 0x3

    add-int v8, v8, p1

    shl-int/lit8 v9, v11, 0x3

    or-int/2addr v9, v10

    shl-int/lit8 v10, v12, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v9, v8, 0x1

    aget-byte v10, v1, v6

    shr-int/2addr v10, v6

    aget-byte v11, v1, v14

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    aget-byte v11, v1, v4

    shl-int/2addr v11, v4

    or-int/2addr v10, v11

    aget-byte v11, v1, v15

    shl-int/2addr v11, v13

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    add-int/2addr v8, v6

    aget-byte v9, v1, v15

    shr-int/2addr v9, v5

    aget-byte v10, v1, v16

    shl-int/2addr v10, v6

    or-int/2addr v9, v10

    aget-byte v10, v1, v13

    shl-int/2addr v10, v15

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13

    :cond_9b
    if-ne v2, v4, :cond_c2

    move v6, v3

    :goto_9e
    const/16 v7, 0x80

    if-ge v6, v7, :cond_c1

    mul-int/lit8 v7, v6, 0x2

    iget-object v8, v0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v8, [I

    aget v9, v8, v7

    sub-int v9, v2, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    add-int/2addr v7, v5

    aget v7, v8, v7

    sub-int v7, v2, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int v8, p1, v6

    shl-int/2addr v7, v4

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :cond_c1
    return-void

    :cond_c2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Eta needs to be 2 or 4!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public KyqOjqyU2SoxvE3gI([BS)V
    .registers 13

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v7, v1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v7, v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v1

    goto :goto_1a

    :cond_13
    const/4 v3, 0x4

    if-ne v7, v3, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v8, 0x88

    mul-int/lit16 v6, v3, 0x88

    new-array v5, v6, [B

    iget v3, v0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {v0, v3}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kgs66qnAfO491Ra48r7aI(I)V

    int-to-byte v3, p2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    new-array v4, v2, [B

    const/4 v9, 0x0

    aput-byte v3, v4, v9

    aput-byte p2, v4, v1

    array-length p2, p1

    invoke-virtual {v0, p1, v9, p2}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v0, v4, v9, v2}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v0, v5, v9, v6}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    const/4 v3, 0x0

    const/16 v4, 0x100

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BII)I

    move-result p0

    move v3, p0

    :goto_4a
    const/16 p0, 0x100

    if-ge v3, p0, :cond_5b

    invoke-virtual {v0, v5, v9, v8}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    rsub-int v4, v3, 0x100

    const/16 v6, 0x88

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BII)I

    move-result p0

    add-int/2addr v3, p0

    goto :goto_4a

    :cond_5b
    return-void

    :cond_5c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Eta!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_3a

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2c

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
