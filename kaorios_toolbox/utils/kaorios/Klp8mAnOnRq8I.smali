.class public final Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;
.super Ljava/lang/Object;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:I

.field public final KmwO02nawgUws9Syxnq2rElI:I

.field public final Kq4snztAiatOsRsxI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

.field public final KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v0, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v0, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->KmwO02nawgUws9Syxnq2rElI:I

    iget v0, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->Kq4snztAiatOsRsxI:I

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->K91vAo8w086Op21a5bR8uI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/internal/util/kaorios/Klp8mAnOnRq8I;->K7b6cynAykO75yzw1Ri5kI:I

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;II[BI)I
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_47

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_47

    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xfff

    int-to-short v3, v3

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xfff

    int-to-short v1, v1

    const/16 v4, 0xd01

    if-ge v3, v4, :cond_37

    add-int v5, p1, v0

    iget-object v6, p0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v6, [S

    aput-short v3, v6, v5

    add-int/lit8 v0, v0, 0x1

    :cond_37
    if-ge v0, p2, :cond_45

    if-ge v1, v4, :cond_45

    add-int v3, p1, v0

    iget-object v4, p0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v4, [S

    aput-short v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    :cond_45
    move v1, v2

    goto :goto_2

    :cond_47
    return v0
.end method
