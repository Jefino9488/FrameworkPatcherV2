.class public final Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;
.super Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;


# instance fields
.field public final synthetic KyqOjqyU2SoxvE3gI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KyqOjqyU2SoxvE3gI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K3y30Amv7herO13ji1Rdksg9I(SS)S
    .registers 7

    iget v0, p0, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_32

    and-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_a
    const/16 v3, 0xd

    if-ge v2, v3, :cond_16

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result p0

    return p0

    :pswitch_1b
    and-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_20
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2c

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result p0

    return p0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public final K9nnAo787pvOndinpyRa464qI(I)S
    .registers 6

    iget p0, p0, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KyqOjqyU2SoxvE3gI:I

    packed-switch p0, :pswitch_data_3a

    and-int/lit16 p0, p1, 0x1fff

    ushr-int/lit8 p1, p1, 0xd

    shl-int/lit8 v0, p1, 0x4

    shl-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    and-int/lit16 v0, v0, 0x1fff

    shl-int/lit8 v2, v1, 0x4

    shl-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    xor-int/2addr p0, p1

    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    xor-int/2addr p0, v2

    :goto_21
    int-to-short p0, p0

    return p0

    :pswitch_23
    and-int/lit16 p0, p1, 0xfff

    ushr-int/lit8 v0, p1, 0xc

    const v1, 0x1ff000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x9

    const/high16 v2, 0xe00000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x12

    ushr-int/lit8 p1, p1, 0x15

    xor-int/2addr p0, v0

    xor-int/2addr p0, v1

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    goto :goto_21

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public Kmwa3xOys6uqrUbpSqo6E4zI(S)S
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K5xqAvmsOm1i32RieckI(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result p0

    return p0
.end method

.method public final KoOfU1gyz2hSdEp4I(S)S
    .registers 5

    iget v0, p0, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_7c

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kp28Oys1U8Sprzc8zEd96mraI(SS)S

    move-result p1

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KunvqmxA2OhnlR986I(SS)S

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K5xqAvmsOm1i32RieckI(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K5xqAvmsOm1i32RieckI(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KunvqmxA2OhnlR986I(SS)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K5xqAvmsOm1i32RieckI(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K5xqAvmsOm1i32RieckI(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->KunvqmxA2OhnlR986I(SS)S

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kp28Oys1U8Sprzc8zEd96mraI(SS)S

    move-result p0

    return p0

    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K3y30Amv7herO13ji1Rdksg9I(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K3y30Amv7herO13ji1Rdksg9I(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K3y30Amv7herO13ji1Rdksg9I(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K3y30Amv7herO13ji1Rdksg9I(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K3y30Amv7herO13ji1Rdksg9I(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->Kmwa3xOys6uqrUbpSqo6E4zI(S)S

    move-result p0

    return p0

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method

.method public Kp28Oys1U8Sprzc8zEd96mraI(SS)S
    .registers 11

    int-to-long v0, p1

    int-to-long p1, p2

    const/4 v2, 0x6

    shl-long v2, p1, v2

    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    mul-long/2addr v2, v4

    const/4 v4, 0x7

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x4001

    and-long/2addr v4, v0

    mul-long/2addr v4, p1

    xor-long/2addr v2, v4

    const/4 v4, 0x1

    shl-long v4, p1, v4

    const-wide/32 v6, 0x8002

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    shl-long v4, p1, v4

    const-wide/32 v6, 0x10004

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    shl-long v4, p1, v4

    const-wide/32 v6, 0x20008

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    shl-long v4, p1, v4

    const-wide/32 v6, 0x40010

    and-long/2addr v6, v0

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    shl-long/2addr p1, v4

    const-wide/32 v4, 0x80020

    and-long/2addr v0, v4

    mul-long/2addr p1, v0

    xor-long/2addr p1, v2

    const-wide v0, 0x1ffc000000L

    and-long/2addr v0, p1

    const/16 v2, 0x12

    ushr-long v2, v0, v2

    const/16 v4, 0x14

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result p0

    return p0
.end method

.method public KunvqmxA2OhnlR986I(SS)S
    .registers 12

    int-to-long v0, p1

    int-to-long p1, p2

    const/16 v2, 0x12

    shl-long v3, p1, v2

    const-wide/16 v5, 0x40

    and-long/2addr v5, v0

    mul-long/2addr v3, v5

    const/16 v5, 0x15

    shl-long v5, v0, v5

    xor-long/2addr v0, v5

    const-wide/32 v5, 0x10000001

    and-long/2addr v5, v0

    mul-long/2addr v5, p1

    xor-long/2addr v3, v5

    const/4 v5, 0x3

    shl-long v5, p1, v5

    const-wide/32 v7, 0x20000002

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/4 v5, 0x6

    shl-long v5, p1, v5

    const-wide/32 v7, 0x40000004

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0x9

    shl-long v5, p1, v5

    const-wide v7, 0x80000008L

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xc

    shl-long v5, p1, v5

    const-wide v7, 0x100000010L

    and-long/2addr v7, v0

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    const/16 v5, 0xf

    shl-long/2addr p1, v5

    const-wide v5, 0x200000020L

    and-long/2addr v0, v5

    mul-long/2addr p1, v0

    xor-long/2addr p1, v3

    const-wide v0, 0x1ffff80000000000L

    and-long/2addr v0, p1

    ushr-long v3, v0, v2

    const/16 v5, 0x14

    ushr-long v6, v0, v5

    xor-long/2addr v3, v6

    const/16 v6, 0x18

    ushr-long v7, v0, v6

    xor-long/2addr v3, v7

    const/16 v7, 0x1a

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v3

    xor-long/2addr p1, v0

    const-wide v0, 0x7fffc000000L

    and-long/2addr v0, p1

    ushr-long v2, v0, v2

    ushr-long v4, v0, v5

    xor-long/2addr v2, v4

    ushr-long v4, v0, v6

    xor-long/2addr v2, v4

    ushr-long/2addr v0, v7

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x3ffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvoAn1sOmR3khcebI;->K9nnAo787pvOndinpyRa464qI(I)S

    move-result p0

    return p0
.end method
