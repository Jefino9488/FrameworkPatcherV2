.class public final Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;I)V
    .registers 6

    iput p2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p2, :pswitch_data_34

    iget p2, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array v0, p2, [Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p2, :cond_1d

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    new-instance v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    invoke-direct {v2, p1}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-void

    :pswitch_1e
    iget p2, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v0, p2, [Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p2, :cond_33

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    new-instance v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    invoke-direct {v2, p1}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public KmwO02nawgUws9Syxnq2rElI()V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_54

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v3, [I

    array-length v4, v3

    invoke-static {v0, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K0AhkjObgR6cxt3cI(II)I

    move-result v4

    new-array v5, v4, [I

    array-length v6, v3

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x80

    move v4, v0

    :goto_1f
    if-lez v3, :cond_4f

    move v6, v0

    :goto_22
    const/16 v7, 0x100

    if-ge v6, v7, :cond_4c

    sget-object v7, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kq4snztAiatOsRsxI:[I

    add-int/lit8 v4, v4, 0x1

    aget v7, v7, v4

    move v8, v6

    :goto_2d
    add-int v9, v6, v3

    if-ge v8, v9, :cond_49

    int-to-long v9, v7

    add-int v11, v8, v3

    aget v12, v5, v11

    int-to-long v12, v12

    mul-long/2addr v9, v12

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4wewAxOmjmhR7wgbmhI(J)I

    move-result v9

    aget v10, v5, v8

    sub-int/2addr v10, v9

    aput v10, v5, v11

    aget v10, v5, v8

    add-int/2addr v10, v9

    aput v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_49
    add-int v6, v8, v3

    goto :goto_22

    :cond_4c
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_4f
    iput-object v5, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_54
    return-void
.end method

.method public Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_39

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    aget-object v3, v3, v1

    move v4, v0

    :goto_e
    const/16 v5, 0x100

    if-ge v4, v5, :cond_33

    iget-object v5, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v5, [I

    aget v6, v5, v4

    add-int/lit16 v7, v6, 0xfff

    shr-int/lit8 v7, v7, 0xd

    shl-int/lit8 v8, v7, 0xd

    sub-int/2addr v6, v8

    filled-new-array {v7, v6}, [I

    move-result-object v6

    aget v7, v6, v0

    aput v7, v5, v4

    const/4 v5, 0x1

    aget v5, v6, v5

    iget-object v6, v3, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v6, [I

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_39
    return-void
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI()V
    .registers 16

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v4, v3

    if-ge v2, v4, :cond_6e

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v4, [I

    array-length v5, v4

    invoke-static {v0, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K0AhkjObgR6cxt3cI(II)I

    move-result v5

    new-array v6, v5, [I

    array-length v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v0, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x1

    const/16 v5, 0x100

    move v7, v5

    :goto_20
    if-ge v4, v5, :cond_55

    move v8, v0

    :goto_23
    if-ge v8, v5, :cond_51

    sget-object v9, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kq4snztAiatOsRsxI:[I

    add-int/lit8 v7, v7, -0x1

    aget v9, v9, v7

    mul-int/lit8 v9, v9, -0x1

    move v10, v8

    :goto_2e
    add-int v11, v8, v4

    if-ge v10, v11, :cond_4d

    aget v11, v6, v10

    add-int v12, v10, v4

    aget v13, v6, v12

    add-int/2addr v13, v11

    aput v13, v6, v10

    aget v13, v6, v12

    sub-int/2addr v11, v13

    aput v11, v6, v12

    int-to-long v13, v9

    int-to-long v0, v11

    mul-long/2addr v13, v0

    invoke-static {v13, v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4wewAxOmjmhR7wgbmhI(J)I

    move-result v0

    aput v0, v6, v12

    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x0

    goto :goto_2e

    :cond_4d
    add-int v8, v10, v4

    const/4 v0, 0x0

    goto :goto_23

    :cond_51
    shl-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    goto :goto_20

    :cond_55
    const/4 v0, 0x0

    :goto_56
    if-ge v0, v5, :cond_68

    aget v1, v6, v0

    int-to-long v7, v1

    const-wide/32 v9, 0xa3fa

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4wewAxOmjmhR7wgbmhI(J)I

    move-result v1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_68
    iput-object v6, v3, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_2

    :cond_6e
    return-void
.end method

.method public Ku5O3sihzbUhwSewE8uI()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    aget-object v2, v2, v1

    move v3, v0

    :goto_a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_20

    iget-object v4, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v4, [I

    aget v5, v4, v3

    shr-int/lit8 v6, v5, 0x1f

    const v7, 0x7fe001

    and-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method

.method public KyqOjqyU2SoxvE3gI()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_29

    aget-object v2, v2, v1

    move v3, v0

    :goto_a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_23

    iget-object v4, v2, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v4, [I

    aget v5, v4, v3

    const/high16 v6, 0x400000

    add-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x17

    const v7, 0x7fe001

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_ac

    const-string v0, "\n["

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Inner Matrix "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_35

    goto :goto_46

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5b
    const-string v0, "["

    const/4 v1, 0x0

    :goto_5e
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kc6j5Orr6r5pUdSel0w6pEs0u5eI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;

    array-length v3, v2

    if-ge v1, v3, :cond_9a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/Kc3h8A4o6OejqR2I;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_86

    goto :goto_97

    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_9a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_5b
    .end packed-switch
.end method
