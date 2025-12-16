.class public final Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;
.super Ljava/lang/Object;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:I

.field public final K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

.field public final KmwO02nawgUws9Syxnq2rElI:I

.field public final KmzodnwO1tUkgkS8cymEofiI:Ljava/lang/Object;

.field public final Kq4snztAiatOsRsxI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:I

.field public final KyqOjqyU2SoxvE3gI:I


# direct methods
.method public constructor <init>(II)V
    .registers 9

    packed-switch p2, :pswitch_data_d6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v0, 0x100

    invoke-direct {p2, v0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/lang/Object;

    const/high16 p2, 0x20000

    const/16 v0, 0x60

    const/4 v1, 0x4

    const/high16 v2, 0x80000

    const/4 v3, 0x2

    if-eq p1, v3, :cond_54

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq p1, v4, :cond_46

    if-ne p1, v5, :cond_2d

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v3, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    iput v2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    :goto_2a
    iput v0, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    goto :goto_5d

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The mode "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not supported by Crystals Dilithium!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    const/4 p1, 0x6

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v5, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    iput v2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    const/16 p1, 0x80

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    goto :goto_5d

    :cond_54
    iput v1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v3, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    goto :goto_2a

    :goto_5d
    new-instance p1, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;-><init>(I)V

    iput-object v0, p1, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    iput-object v0, p1, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    iget p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    mul-int/lit16 p1, p1, 0x140

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K7b6cynAykO75yzw1Ri5kI:I

    iget p0, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    if-ne p0, p2, :cond_83

    goto :goto_85

    :cond_83
    if-ne p0, v2, :cond_86

    :goto_85
    return-void

    :cond_86
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Gamma1!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b8

    if-eq p1, p2, :cond_9c

    const/4 p2, 0x4

    if-ne p1, p2, :cond_9f

    :cond_9c
    iput v0, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    goto :goto_ba

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "K: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for Crystals Kyber"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    iput p2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmwO02nawgUws9Syxnq2rElI:I

    :goto_ba
    mul-int/lit16 p1, p1, 0x180

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 p2, p1, 0x20

    iput p2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq4snztAiatOsRsxI:I

    iput p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KyqOjqyU2SoxvE3gI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K7b6cynAykO75yzw1Ri5kI:I

    new-instance p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    invoke-direct {p1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    new-instance p1, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;-><init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_8e
    .end packed-switch
.end method


# virtual methods
.method public Ku5O3sihzbUhwSewE8uI([B)Z
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    iget v4, p0, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    if-ge v2, v4, :cond_3e

    mul-int/lit16 v4, v2, 0x180

    move v6, v0

    move v5, v1

    :goto_c
    const/16 v7, 0x80

    if-ge v5, v7, :cond_3a

    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v4

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v10, v9, 0x8

    or-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xfff

    int-to-short v8, v8

    shr-int/lit8 v9, v9, 0x4

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v9

    and-int/lit16 v7, v7, 0xfff

    int-to-short v7, v7

    add-int/lit16 v8, v8, -0xd01

    and-int/2addr v6, v8

    add-int/lit16 v7, v7, -0xd01

    and-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_3a
    and-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3e
    if-gez v3, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    return v1
.end method
