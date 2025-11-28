.class public final Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

# interfaces
.implements Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2f

    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_27

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_f
    if-eq v2, v0, :cond_24

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    iput-object v1, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    return-void

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed BMPString encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    return-void
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 15

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    array-length v0, p0

    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    mul-int/lit8 p2, v0, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    const/16 p2, 0x8

    new-array v1, p2, [B

    and-int/lit8 v2, v0, -0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v2, :cond_52

    aget-char v7, p0, v4

    add-int/lit8 v8, v4, 0x1

    aget-char v8, p0, v8

    add-int/lit8 v9, v4, 0x2

    aget-char v9, p0, v9

    add-int/lit8 v10, v4, 0x3

    aget-char v10, p0, v10

    add-int/lit8 v4, v4, 0x4

    shr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    shr-int/lit8 v5, v8, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    int-to-byte v5, v8

    const/4 v6, 0x3

    aput-byte v5, v1, v6

    shr-int/lit8 v5, v9, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v1, v6

    const/4 v5, 0x5

    int-to-byte v6, v9

    aput-byte v6, v1, v5

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    const/4 v5, 0x7

    int-to-byte v6, v10

    aput-byte v6, v1, v5

    invoke-virtual {p1, v1, v3, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    goto :goto_15

    :cond_52
    if-ge v4, v0, :cond_68

    move p2, v3

    :cond_55
    aget-char v2, p0, v4

    add-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x1

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, p2

    add-int/2addr p2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    if-lt v4, v0, :cond_55

    invoke-virtual {p1, v1, v3, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    :cond_68
    return-void
.end method

.method public final KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->Ku5O3sihzbUhwSewE8uI:[C

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    mul-int/lit16 v1, v1, 0x101

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_9

    :cond_13
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;->KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
