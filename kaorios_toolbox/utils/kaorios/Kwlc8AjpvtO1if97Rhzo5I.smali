.class public final Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:[B

.field public final K91vAo8w086Op21a5bR8uI:[B

.field public final KmwO02nawgUws9Syxnq2rElI:[B

.field public final KmzodnwO1tUkgkS8cymEofiI:[B

.field public final Kq4snztAiatOsRsxI:[B

.field public final KtbuouOlomiUohgSxfezrEyv01I:I

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[BLcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    new-instance v5, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v1, v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;-><init>(II)V

    array-length v1, v2

    const/4 v7, 0x0

    const/16 v8, 0x20

    iget v9, v5, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    iget v10, v5, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    const/16 v11, 0x40

    if-ne v1, v11, :cond_25d

    invoke-static {v2, v7, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v1

    array-length v12, v2

    invoke-static {v2, v8, v12}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v2

    iget-object v12, v5, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;

    new-instance v13, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;

    iget-object v14, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    invoke-direct {v13, v14}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    new-instance v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;

    invoke-direct {v15, v14}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    move/from16 v19, v4

    new-instance v4, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;

    invoke-direct {v4, v14}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    new-array v11, v11, [B

    const/16 p1, 0x2

    iget-object v6, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget v8, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    int-to-byte v7, v8

    move/from16 v17, v7

    array-length v7, v1

    add-int/lit8 v3, v7, 0x1

    new-array v3, v3, [B

    const/4 v0, 0x0

    invoke-static {v1, v0, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v17, v3, v7

    iget-object v7, v6, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;

    iget-object v6, v6, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    move-object/from16 v17, v1

    array-length v1, v3

    invoke-virtual {v7, v3, v0, v1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v7, v0, v11}, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    const/16 v1, 0x20

    new-array v3, v1, [B

    new-array v7, v1, [B

    invoke-static {v11, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v1, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v8, [Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;

    const/4 v1, 0x0

    :goto_74
    if-ge v1, v8, :cond_80

    new-instance v11, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;

    invoke-direct {v11, v14}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    aput-object v11, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_80
    iget v1, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->K7b6cynAykO75yzw1Ri5kI:I

    mul-int/lit16 v1, v1, 0xa8

    add-int/lit8 v11, v1, 0x2

    new-array v11, v11, [B

    move-object/from16 v18, v0

    move-object/from16 p2, v2

    const/4 v0, 0x0

    :goto_8d
    if-ge v0, v8, :cond_109

    const/4 v2, 0x0

    :goto_90
    if-ge v2, v8, :cond_100

    move/from16 v21, v9

    int-to-byte v9, v2

    move/from16 v22, v2

    int-to-byte v2, v0

    move/from16 v23, v0

    iget v0, v6, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {v6, v0}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kgs66qnAfO491Ra48r7aI(I)V

    const/16 v0, 0x22

    move/from16 v24, v2

    new-array v2, v0, [B

    move/from16 v16, v9

    const/4 v0, 0x0

    const/16 v9, 0x20

    invoke-static {v3, v0, v2, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v16, v2, v9

    const/16 v9, 0x21

    aput-byte v24, v2, v9

    const/16 v9, 0x22

    invoke-virtual {v6, v2, v0, v9}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v6, v11, v0, v1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    aget-object v2, v18, v23

    iget-object v2, v2, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v2, v2, v22

    const/16 v9, 0x100

    invoke-static {v2, v0, v9, v11, v1}, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;II[BI)I

    move-result v2

    move v0, v1

    :goto_c8
    if-ge v2, v9, :cond_f7

    rem-int/lit8 v9, v0, 0x3

    move/from16 v24, v0

    const/4 v0, 0x0

    :goto_cf
    if-ge v0, v9, :cond_dc

    sub-int v25, v24, v9

    add-int v25, v25, v0

    aget-byte v25, v11, v25

    aput-byte v25, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    :cond_dc
    const/16 v0, 0x150

    invoke-virtual {v6, v11, v9, v0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    add-int/lit16 v0, v9, 0xa8

    aget-object v9, v18, v23

    iget-object v9, v9, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v9, v9, v22

    move/from16 v24, v1

    rsub-int v1, v2, 0x100

    invoke-static {v9, v2, v1, v11, v0}, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;II[BI)I

    move-result v1

    add-int/2addr v2, v1

    move/from16 v1, v24

    const/16 v9, 0x100

    goto :goto_c8

    :cond_f7
    move/from16 v24, v1

    add-int/lit8 v2, v22, 0x1

    move/from16 v9, v21

    move/from16 v0, v23

    goto :goto_90

    :cond_100
    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v21, v9

    add-int/lit8 v0, v23, 0x1

    goto :goto_8d

    :cond_109
    move/from16 v21, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10d
    if-ge v0, v8, :cond_11c

    iget-object v2, v13, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7, v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Kq5pt6AeqxqwOjab0R8ioI([BB)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    :cond_11c
    const/4 v0, 0x0

    :goto_11d
    if-ge v0, v8, :cond_12c

    iget-object v2, v4, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7, v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Kq5pt6AeqxqwOjab0R8ioI([BB)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    :cond_12c
    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI()V

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI()V

    const/4 v0, 0x0

    :goto_133
    if-ge v0, v8, :cond_1ac

    iget-object v1, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v1, v1, v0

    aget-object v2, v18, v0

    new-instance v6, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-direct {v6, v14}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    iget-object v7, v2, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    const/16 v20, 0x0

    aget-object v7, v7, v20

    iget-object v9, v13, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v9, v9, v20

    invoke-static {v1, v7, v9}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    move/from16 v7, v19

    :goto_14f
    iget v9, v14, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    if-ge v7, v9, :cond_183

    iget-object v9, v2, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v9, v9, v7

    iget-object v11, v13, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v11, v11, v7

    invoke-static {v6, v9, v11}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    const/4 v9, 0x0

    :goto_15f
    const/16 v11, 0x100

    if-ge v9, v11, :cond_17b

    iget-object v11, v1, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v11, [S

    aget-short v22, v11, v9

    move/from16 v23, v0

    iget-object v0, v6, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v0, [S

    aget-short v0, v0, v9

    add-int v0, v22, v0

    int-to-short v0, v0

    aput-short v0, v11, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v23

    goto :goto_15f

    :cond_17b
    move/from16 v23, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v7, v7, 0x1

    goto :goto_14f

    :cond_183
    move/from16 v23, v0

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->K7b6cynAykO75yzw1Ri5kI()V

    iget-object v0, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v0, v0, v23

    const/4 v1, 0x0

    :goto_18d
    const/16 v9, 0x100

    if-ge v1, v9, :cond_1a6

    iget-object v2, v0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v2, [S

    aget-short v2, v2, v1

    mul-int/lit16 v2, v2, 0x549

    invoke-static {v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr6rsObslodhU0vqhcSsomjEe0djt2I(I)S

    move-result v2

    iget-object v6, v0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v6, [S

    aput-short v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    :cond_1a6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v23, 0x1

    goto :goto_133

    :cond_1ac
    const/4 v0, 0x0

    :goto_1ad
    iget v1, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v0, v1, :cond_1d7

    iget-object v1, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v1, v1, v0

    iget-object v2, v4, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v2, v2, v0

    const/4 v6, 0x0

    const/16 v9, 0x100

    :goto_1bc
    if-ge v6, v9, :cond_1d1

    iget-object v7, v1, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v7, [S

    aget-short v8, v7, v6

    iget-object v11, v2, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v11, [S

    aget-short v11, v11, v6

    add-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1bc

    :cond_1d1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ad

    :cond_1d7
    const/4 v0, 0x0

    :goto_1d8
    iget v1, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v0, v1, :cond_1e6

    iget-object v1, v15, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->K7b6cynAykO75yzw1Ri5kI()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d8

    :cond_1e6
    iget v0, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v0, v0, [B

    invoke-virtual {v15}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object v1

    iget v2, v12, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Kq4snztAiatOsRsxI:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Ky2Ai7h27O88uRkb79tI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v0

    new-array v15, v10, [B

    aget-object v2, v0, v19

    invoke-static {v2, v4, v15, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [B

    iget-object v2, v5, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    aget-object v3, v0, v4

    iget-object v2, v2, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq4snztAiatOsRsxI([BII)V

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    move/from16 v3, v21

    new-array v2, v3, [B

    aget-object v0, v0, v4

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v3, -0x20

    invoke-static {v2, v4, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v13

    invoke-static {v2, v9, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v14

    move-object/from16 v2, p2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object v18

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    filled-new-array/range {v13 .. v18}, [[B

    move-result-object v0

    aget-object v1, v0, p1

    move-object/from16 v4, p0

    iput-object v1, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmwO02nawgUws9Syxnq2rElI:[B

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->Kq4snztAiatOsRsxI:[B

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KyqOjqyU2SoxvE3gI:[B

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    aget-object v2, v0, v19

    iput-object v2, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K91vAo8w086Op21a5bR8uI:[B

    goto :goto_292

    :cond_25d
    move-object v4, v0

    move v1, v7

    move v3, v9

    const/16 p1, 0x2

    invoke-static {v2, v1, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmwO02nawgUws9Syxnq2rElI:[B

    add-int v9, v10, v3

    const/16 v16, 0x20

    add-int/lit8 v9, v9, -0x20

    invoke-static {v2, v10, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    add-int/lit8 v9, v3, -0x20

    add-int/2addr v9, v10

    add-int/lit8 v0, v9, 0x20

    invoke-static {v2, v9, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    add-int/lit8 v3, v9, 0x40

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->Kq4snztAiatOsRsxI:[B

    add-int/lit8 v9, v9, 0x60

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KyqOjqyU2SoxvE3gI:[B

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K91vAo8w086Op21a5bR8uI:[B

    :goto_292
    if-eqz p3, :cond_2b3

    iget-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    move-object/from16 v3, p3

    iget-object v2, v3, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v0

    if-eqz v0, :cond_2ab

    iget-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    iget-object v2, v3, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->Kq4snztAiatOsRsxI:[B

    invoke-static {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v0

    if-eqz v0, :cond_2ab

    goto :goto_2b3

    :cond_2ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "passed in public key does not match private values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b3
    :goto_2b3
    iget-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K91vAo8w086Op21a5bR8uI:[B

    if-nez v0, :cond_2ba

    move/from16 v6, p1

    goto :goto_2bb

    :cond_2ba
    move v6, v1

    :goto_2bb
    iput v6, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KtbuouOlomiUohgSxfezrEyv01I:I

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->Kq4snztAiatOsRsxI:[B

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KyqOjqyU2SoxvE3gI:[B

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmwO02nawgUws9Syxnq2rElI:[B

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    filled-new-array {v2, v3, p0, v0, v1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K0wipv9AtliO55qRn6mI([[B)[B

    move-result-object p0

    return-object p0
.end method
