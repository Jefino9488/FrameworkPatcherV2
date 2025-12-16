.class public Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;
.super Ljava/lang/Object;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array v1, v0, [Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;

    new-instance v3, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(ZI)I
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KmzodnwO1tUkgkS8cymEofiI(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static KmzodnwO1tUkgkS8cymEofiI(I)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method public static KtbuouOlomiUohgSxfezrEyv01I(I)I
    .registers 2

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method


# virtual methods
.method public K0wipv9AtliO55qRn6mI(II)V
    .registers 7

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    return-void

    :cond_9
    const/4 v1, 0x6

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    :goto_12
    const/16 v2, 0x7f

    if-le p2, v2, :cond_22

    ushr-int/lit8 p2, p2, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_12

    :cond_22
    add-int/lit8 v3, v3, -0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    return-void
.end method

.method public K4cv12eOhp5UsS8gpsE2q2z1I([Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public K7xuO3UlvknmcS4irn11EomI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public K8Ak17imO9w5w4RppI(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public K8c63Ooauv32UndyuScEgI(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public KcxerAdpv60xOdaR8bI(I)V
    .registers 7

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    return-void

    :cond_8
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_b
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_22

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    return-void

    :cond_22
    move v1, v3

    goto :goto_b
.end method

.method public Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;)V
    .registers 19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    move-object/from16 v2, p0

    iget-object v4, v2, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;

    array-length v5, v4

    if-ge v3, v5, :cond_8d

    move-object/from16 v5, p1

    iget-object v6, v5, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    aget-object v6, v6, v3

    aget-object v4, v4, v3

    iget-object v7, v6, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    const/16 v8, 0x100

    new-array v9, v8, [I

    iget-object v10, v7, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v4, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    aget-object v10, v10, v1

    aget-object v11, v0, v1

    move v12, v1

    :goto_2d
    if-ge v12, v8, :cond_4e

    iget-object v13, v10, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v13, [I

    aget v13, v13, v12

    int-to-long v13, v13

    iget-object v15, v11, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v15, [I

    aget v15, v15, v12

    int-to-long v1, v15

    mul-long/2addr v13, v1

    invoke-static {v13, v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4wewAxOmjmhR7wgbmhI(J)I

    move-result v1

    iget-object v2, v6, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, [I

    aput v1, v2, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    const/4 v1, 0x0

    goto :goto_2d

    :cond_4e
    const/4 v1, 0x1

    :goto_4f
    iget v2, v7, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    if-ge v1, v2, :cond_88

    iget-object v2, v4, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    aget-object v2, v2, v1

    aget-object v10, v0, v1

    const/4 v11, 0x0

    :goto_5a
    if-ge v11, v8, :cond_74

    iget-object v12, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v12, [I

    aget v12, v12, v11

    int-to-long v12, v12

    iget-object v14, v10, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v14, [I

    aget v14, v14, v11

    int-to-long v14, v14

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4wewAxOmjmhR7wgbmhI(J)I

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    :cond_74
    const/4 v2, 0x0

    :goto_75
    if-ge v2, v8, :cond_85

    iget-object v10, v6, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v10, [I

    aget v11, v10, v2

    aget v12, v9, v2

    add-int/2addr v11, v12

    aput v11, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_88
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_8d
    return-void
.end method

.method public KmwO02nawgUws9Syxnq2rElI([B)V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;

    array-length v3, v2

    if-ge v1, v3, :cond_6f

    aget-object v2, v2, v1

    shl-int/lit8 v3, v1, 0x8

    move v4, v0

    :goto_e
    iget-object v5, v2, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v6, v5

    if-ge v4, v6, :cond_6c

    aget-object v5, v5, v4

    add-int v6, v3, v4

    int-to-short v6, v6

    iget-object v7, v5, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v8, 0x34a

    new-array v8, v8, [B

    iget v9, v7, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {v7, v9}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kgs66qnAfO491Ra48r7aI(I)V

    int-to-byte v9, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    const/4 v10, 0x2

    new-array v11, v10, [B

    aput-byte v9, v11, v0

    const/4 v9, 0x1

    aput-byte v6, v11, v9

    array-length v6, p1

    invoke-virtual {v7, p1, v0, v6}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v7, v11, v0, v10}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    const/16 v6, 0x348

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    const/16 v9, 0x100

    invoke-static {v5, v0, v9, v8, v6}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BI)I

    move-result v10

    :goto_4a
    if-ge v10, v9, :cond_69

    rem-int/lit8 v11, v6, 0x3

    move v12, v0

    :goto_4f
    if-ge v12, v11, :cond_5b

    sub-int v13, v6, v11

    add-int/2addr v13, v12

    aget-byte v13, v8, v13

    aput-byte v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4f

    :cond_5b
    const/16 v6, 0xa8

    invoke-virtual {v7, v8, v11, v6}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    add-int/2addr v6, v11

    rsub-int v11, v10, 0x100

    invoke-static {v5, v10, v11, v8, v6}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;II[BI)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_4a

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6f
    return-void
.end method

.method public Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;)Ljava/security/cert/X509Certificate;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;

    const-string v0, "X.509"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_21
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    goto :goto_3d

    :goto_23
    new-instance p1, Lcom/android/internal/util/kaorios/Knhw7A1oiOvRyw22I;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot find required provider:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/Knhw7A1oiOvRyw22I;->Ku5O3sihzbUhwSewE8uI:Ljava/security/NoSuchProviderException;

    throw p1

    :goto_3d
    new-instance p1, Lcom/android/internal/util/kaorios/K2OpafdmUub1nSm8eeExy2ehI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception parsing certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/K2OpafdmUub1nSm8eeExy2ehI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/IOException;

    throw p1
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI([B)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public Kr021bO9Updrd4Sc925kEfdq29I(ZI[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K7xuO3UlvknmcS4irn11EomI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    return-void
.end method

.method public Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public Kv20eAs5x8fqOila11RtI(IZ[B)V
    .registers 4

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    return-void
.end method

.method public Kvvx152O1Uo652lSpg5iE1I(ZI)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    :cond_5
    return-void
.end method

.method public KvyA01pu5yOryrRk3kI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    return-void
.end method

.method public KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
