.class public final Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;
.super Ljava/lang/Object;


# direct methods
.method public static Ku5O3sihzbUhwSewE8uI(III)I
    .registers 9

    const/4 v0, 0x1

    :goto_1
    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-lt p2, v3, :cond_18

    mul-int v4, p1, v0

    int-to-long v4, v4

    and-long/2addr v1, v4

    int-to-long v4, p0

    mul-long/2addr v1, v4

    int-to-long v4, v0

    add-long/2addr v1, v4

    ushr-long v0, v1, v3

    long-to-int v0, v0

    add-int/lit8 p2, p2, -0x20

    goto :goto_1

    :cond_18
    if-lez p2, :cond_29

    const/4 v3, -0x1

    neg-int v4, p2

    ushr-int/2addr v3, v4

    mul-int/2addr p1, v0

    and-int/2addr p1, v3

    int-to-long v3, p1

    and-long/2addr v1, v3

    int-to-long p0, p0

    mul-long/2addr v1, p0

    int-to-long p0, v0

    add-long/2addr v1, p0

    ushr-long p0, v1, p2

    long-to-int p0, p0

    return p0

    :cond_29
    return v0
.end method
