.class public final Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_88

    const/16 p1, 0x40

    new-array p1, p1, [B

    fill-array-data p1, :array_8e

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    const/16 p1, 0x80

    new-array v1, p1, [B

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    move v2, v0

    :goto_17
    if-ge v2, p1, :cond_1f

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p1, [B

    array-length v2, p1

    if-ge v0, v2, :cond_2e

    aget-byte p1, p1, v0

    int-to-byte v2, v0

    aput-byte v2, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2e
    return-void

    :pswitch_2f
    const/16 p1, 0x10

    new-array p1, p1, [B

    fill-array-data p1, :array_b2

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    move v1, v0

    :goto_3f
    array-length v2, p1

    if-ge v1, v2, :cond_48

    const/4 v2, -0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, [B

    array-length v2, v1

    if-ge v0, v2, :cond_57

    aget-byte v1, v1, v0

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_57
    const/16 p0, 0x61

    aget-byte p0, p1, p0

    const/16 v0, 0x41

    aput-byte p0, p1, v0

    const/16 p0, 0x62

    aget-byte p0, p1, p0

    const/16 v0, 0x42

    aput-byte p0, p1, v0

    const/16 p0, 0x63

    aget-byte p0, p1, p0

    const/16 v0, 0x43

    aput-byte p0, p1, v0

    const/16 p0, 0x64

    aget-byte p0, p1, p0

    const/16 v0, 0x44

    aput-byte p0, p1, v0

    const/16 p0, 0x65

    aget-byte p0, p1, p0

    const/16 v0, 0x45

    aput-byte p0, p1, v0

    const/16 p0, 0x66

    aget-byte p0, p1, p0

    const/16 v0, 0x46

    aput-byte p0, p1, v0

    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch

    :array_8e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_b2
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;)V
    .registers 9

    new-instance v0, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-direct {v0, p3}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;-><init>(Ljava/util/Date;)V

    new-instance p3, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-direct {p3, p4}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;-><init>(Ljava/util/Date;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-direct {v1, p2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object p1, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    iput-object v0, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    iput-object p3, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    iput-object p5, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    iput-object p6, p4, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    new-instance p1, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-direct {p1}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    return-void
.end method

.method public static Kq4snztAiatOsRsxI(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq4snztAiatOsRsxI(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_f
    return p1
.end method


# virtual methods
.method public KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;I)[B
    .registers 8

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, [B

    if-ltz p2, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    if-gt v1, v0, :cond_44

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3c

    ushr-int/2addr p2, v1

    new-array v0, p2, [B

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p2, :cond_3b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, p0, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, p0, v3

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    if-ltz v3, :cond_33

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    return-object v0

    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v1, [B

    const/16 v3, 0x36

    new-array v4, v3, [B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_12
    if-lez v5, :cond_24

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq4snztAiatOsRsxI(C)Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    :cond_24
    :goto_24
    const/4 v6, 0x0

    if-nez v5, :cond_28

    return v6

    :cond_28
    move v7, v5

    move v8, v6

    :goto_2a
    const/4 v9, 0x4

    if-lez v7, :cond_40

    if-eq v8, v9, :cond_40

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq4snztAiatOsRsxI(C)Z

    move-result v9

    if-nez v9, :cond_3d

    add-int/lit8 v8, v8, 0x1

    :cond_3d
    add-int/lit8 v7, v7, -0x1

    goto :goto_2a

    :cond_40
    invoke-static {v0, v6, v7}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v8

    move v10, v6

    move v11, v10

    :goto_46
    if-ge v8, v7, :cond_af

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v8, v1, v8

    invoke-static {v0, v12, v7}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget-byte v12, v1, v12

    invoke-static {v0, v13, v7}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget-byte v13, v1, v13

    invoke-static {v0, v14, v7}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget-byte v14, v1, v14

    or-int v16, v8, v12

    or-int v16, v16, v13

    or-int v16, v16, v14

    if-ltz v16, :cond_a7

    add-int/lit8 v16, v10, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v17, v12, 0x4

    or-int v8, v8, v17

    int-to-byte v8, v8

    aput-byte v8, v4, v10

    add-int/lit8 v8, v10, 0x2

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v17, v13, 0x2

    or-int v12, v12, v17

    int-to-byte v12, v12

    aput-byte v12, v4, v16

    add-int/lit8 v10, v10, 0x3

    shl-int/lit8 v12, v13, 0x6

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v4, v8

    add-int/lit8 v11, v11, 0x3

    if-ne v10, v3, :cond_a2

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    move v10, v6

    :cond_a2
    invoke-static {v0, v15, v7}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v8

    goto :goto_46

    :cond_a7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    if-lez v10, :cond_b4

    invoke-virtual {v2, v4, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    :cond_b4
    invoke-static {v0, v8, v5}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v0, v7, v5}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v5, 0x2

    const-string v7, "invalid characters encountered at end of base64 data"

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_ff

    if-ne v0, v8, :cond_f9

    aget-byte v0, v1, v3

    aget-byte v1, v1, v4

    or-int v3, v0, v1

    if-ltz v3, :cond_f3

    shl-int/2addr v0, v5

    shr-int/2addr v1, v9

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x1

    goto :goto_146

    :cond_f3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    if-ne v0, v8, :cond_121

    aget-byte v0, v1, v3

    aget-byte v3, v1, v4

    aget-byte v1, v1, v6

    or-int v4, v0, v3

    or-int/2addr v4, v1

    if-ltz v4, :cond_11b

    shl-int/2addr v0, v5

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x4

    shr-int/2addr v1, v5

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_146

    :cond_11b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_121
    aget-byte v3, v1, v3

    aget-byte v4, v1, v4

    aget-byte v6, v1, v6

    aget-byte v0, v1, v0

    or-int v1, v3, v4

    or-int/2addr v1, v6

    or-int/2addr v1, v0

    if-ltz v1, :cond_148

    shl-int/lit8 v1, v3, 0x2

    shr-int/lit8 v3, v4, 0x4

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v4, 0x4

    shr-int/lit8 v3, v6, 0x2

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v6, 0x6

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x3

    :goto_146
    add-int/2addr v11, v5

    return v11

    :cond_148
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;)Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iget-object v3, v0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;

    iput-object v2, v3, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    iget-object v4, v0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_145

    sget-object v4, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v5, v0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    if-eqz v4, :cond_12c

    :try_start_24
    iget-object v5, v4, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v5, v5, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v5
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_117

    if-eqz v5, :cond_38

    new-instance v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V

    goto :goto_39

    :cond_38
    const/4 v7, 0x0

    :goto_39
    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    move-result-object v8

    iget-object v10, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v9, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    if-eqz v9, :cond_51

    iget-object v11, v5, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {v9, v11}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    const/4 v11, 0x0

    goto :goto_52

    :cond_51
    move-object v11, v9

    :goto_52
    iget-object v9, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    if-eqz v9, :cond_60

    iget-object v12, v5, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    invoke-virtual {v9, v12}, Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    const/4 v12, 0x0

    goto :goto_61

    :cond_60
    move-object v12, v9

    :goto_61
    iget-object v9, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    if-eqz v9, :cond_6f

    iget-object v13, v5, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    invoke-virtual {v9, v13}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    const/4 v13, 0x0

    goto :goto_70

    :cond_6f
    move-object v13, v9

    :goto_70
    iget-object v9, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    if-eqz v9, :cond_7e

    iget-object v5, v5, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    invoke-virtual {v9, v5}, Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const/4 v14, 0x0

    goto :goto_7f

    :cond_7e
    move-object v14, v9

    :goto_7f
    iget-object v15, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    iget-object v5, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    if-eqz v5, :cond_e5

    new-instance v9, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;

    invoke-direct {v9}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;-><init>()V

    iget-object v6, v8, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :goto_90
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_d3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-object/from16 v16, v10

    sget-object v10, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v10, v6}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z

    move-result v10

    if-eqz v10, :cond_af

    move-object/from16 v10, v16

    move-object/from16 v6, v17

    goto :goto_90

    :cond_af
    iget-object v10, v5, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    move-object/from16 v18, v5

    if-eqz v10, :cond_cc

    iget-object v5, v8, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    invoke-virtual {v10, v5}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    invoke-virtual {v9, v10}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;)V

    :cond_cc
    move-object/from16 v10, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto :goto_90

    :cond_d3
    move-object/from16 v16, v10

    iget-object v5, v9, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_df

    const/4 v6, 0x0

    goto :goto_e3

    :cond_df
    invoke-virtual {v9}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    move-result-object v6

    :goto_e3
    move-object v5, v6

    goto :goto_e9

    :cond_e5
    move-object/from16 v18, v5

    move-object/from16 v16, v10

    :goto_e9
    iget-object v6, v7, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    new-instance v9, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    move-object/from16 v17, v6

    move-object/from16 v10, v16

    move-object/from16 v16, v5

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;-><init>(Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)V

    :try_start_f6
    sget-object v5, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-boolean v4, v4, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    invoke-virtual {v0, v5, v4, v9}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;)V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fd} :catch_fe

    goto :goto_12c

    :catch_fe
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to replace deltaCertificateDescriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_117
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t convert extension: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12c
    :goto_12c
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    sget-object v4, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;

    if-eqz v0, :cond_145

    iget-boolean v0, v0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-eqz v0, :cond_145

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->KtbuouOlomiUohgSxfezrEyv01I:Z

    :cond_145
    :try_start_145
    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;

    move-result-object v0

    iget-object v3, v1, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K8Ak17imO9w5w4RppI(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_155} :catch_19c

    :try_start_155
    iget-object v1, v1, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1
    :try_end_15b
    .catch Ljava/security/SignatureException; {:try_start_155 .. :try_end_15b} :catch_183
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15b} :catch_19c

    :try_start_15b
    new-instance v3, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    new-instance v4, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    invoke-virtual {v4, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;-><init>([BI)V

    invoke-virtual {v4, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;->Kq4snztAiatOsRsxI:I

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>(Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;)V

    return-object v3

    :catch_183
    move-exception v0

    new-instance v1, Lcom/android/internal/util/kaorios/KgAcOcqsyqoRgoyk5I;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception obtaining signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/kaorios/KgAcOcqsyqoRgoyk5I;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_19c} :catch_19c

    :catch_19c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot produce certificate signature"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
