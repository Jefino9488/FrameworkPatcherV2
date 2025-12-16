.class public final Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v1, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v1, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v0, v0, [Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    new-instance v2, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-direct {v2, p1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()[B
    .registers 13

    iget v0, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget v3, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v2, v3, :cond_60

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v3, v3, v2

    move v4, v1

    :goto_f
    const/16 v5, 0x100

    if-ge v4, v5, :cond_27

    iget-object v5, v3, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v5, [S

    aget-short v6, v5, v4

    add-int/lit16 v6, v6, -0xd01

    int-to-short v6, v6

    shr-int/lit8 v7, v6, 0xf

    and-int/lit16 v7, v7, 0xd01

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_27
    const/16 v4, 0x180

    new-array v5, v4, [B

    move v6, v1

    :goto_2c
    const/16 v7, 0x80

    if-ge v6, v7, :cond_55

    iget-object v7, v3, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v7, [S

    mul-int/lit8 v8, v6, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    aget-short v7, v7, v8

    mul-int/lit8 v8, v6, 0x3

    int-to-byte v10, v9

    aput-byte v10, v5, v8

    add-int/lit8 v10, v8, 0x1

    shr-int/lit8 v9, v9, 0x8

    shl-int/lit8 v11, v7, 0x4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    add-int/lit8 v8, v8, 0x2

    shr-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit16 v3, v2, 0x180

    invoke-static {v5, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_60
    return-object v0
.end method

.method public final Ku5O3sihzbUhwSewE8uI()V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v3, [S

    const/16 v4, 0x100

    new-array v5, v4, [S

    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    const/16 v6, 0x80

    :goto_18
    const/4 v7, 0x2

    if-lt v6, v7, :cond_48

    move v7, v0

    :goto_1c
    if-ge v7, v4, :cond_45

    sget-object v8, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KmwO02nawgUws9Syxnq2rElI:[S

    add-int/lit8 v9, v3, 0x1

    aget-short v3, v8, v3

    move v8, v7

    :goto_25
    add-int v10, v7, v6

    if-ge v8, v10, :cond_41

    add-int v10, v8, v6

    aget-short v11, v5, v10

    mul-int/2addr v11, v3

    invoke-static {v11}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr6rsObslodhU0vqhcSsomjEe0djt2I(I)S

    move-result v11

    aget-short v12, v5, v8

    sub-int/2addr v12, v11

    int-to-short v12, v12

    aput-short v12, v5, v10

    aget-short v10, v5, v8

    add-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_41
    add-int v7, v8, v6

    move v3, v9

    goto :goto_1c

    :cond_45
    shr-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_48
    iput-object v5, v2, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->K7b6cynAykO75yzw1Ri5kI()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_50
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v1, v2, :cond_23

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_20

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
