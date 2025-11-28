.class public Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;
.super Ljava/lang/Object;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(I)I
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

.method public static Kq4snztAiatOsRsxI(ZI)I
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmwO02nawgUws9Syxnq2rElI(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static KyqOjqyU2SoxvE3gI(I)I
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
.method public final K7b6cynAykO75yzw1Ri5kI(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public K7xuO3UlvknmcS4irn11EomI([Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public final K8Ak17imO9w5w4RppI(II)V
    .registers 7

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

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

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    return-void
.end method

.method public final K8c63Ooauv32UndyuScEgI(ZI[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    return-void
.end method

.method public final K91vAo8w086Op21a5bR8uI(I)V
    .registers 7

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

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

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    return-void

    :cond_22
    move v1, v3

    goto :goto_b
.end method

.method public KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    return-void
.end method

.method public final Kgs66qnAfO491Ra48r7aI(ZI[B)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    return-void
.end method

.method public final KmzodnwO1tUkgkS8cymEofiI([BII)V
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    :cond_5
    return-void
.end method

.method public KtbuouOlomiUohgSxfezrEyv01I([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
