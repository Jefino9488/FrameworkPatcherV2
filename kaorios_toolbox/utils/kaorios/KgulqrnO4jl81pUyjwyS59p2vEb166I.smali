.class public abstract Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;
.super Ljava/lang/Object;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public static final Ku5O3sihzbUhwSewE8uI:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Ku5O3sihzbUhwSewE8uI:[[B

    new-array v0, v2, [B

    sput-object v0, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    const-wide v4, 0x101010101010101L

    move-wide v6, v4

    :goto_1f
    const/16 v0, 0xff

    const-wide v8, 0x808080808080808L

    const-wide v10, 0x706050403020100L

    if-gt v1, v0, :cond_43

    move v0, v3

    :goto_2e
    if-ge v0, v2, :cond_3f

    invoke-static {v6, v7, v10, v11}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI(JJ)J

    move-result-wide v12

    sget-object v14, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Ku5O3sihzbUhwSewE8uI:[[B

    aget-object v14, v14, v1

    invoke-static {v0, v12, v13, v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KqeOyoUgkmslS1slEgI(IJ[B)V

    add-long/2addr v10, v8

    add-int/lit8 v0, v0, 0x8

    goto :goto_2e

    :cond_3f
    add-long/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_43
    :goto_43
    if-ge v3, v2, :cond_7a

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v6

    invoke-static {v4, v5, v0, v1}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI(JJ)J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->KmwO02nawgUws9Syxnq2rElI(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI(JJ)J

    move-result-wide v0

    sget-object v4, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v3, v0, v1, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KqeOyoUgkmslS1slEgI(IJ[B)V

    add-long/2addr v10, v8

    add-int/lit8 v3, v3, 0x8

    goto :goto_43

    :cond_7a
    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(J)J
    .registers 11

    const-wide v0, -0x5555555555555556L

    and-long v2, p0, v0

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    xor-long/2addr p0, v2

    const-wide v2, 0x4444444444444444L    # 7.477080264543605E20

    and-long/2addr v2, p0

    const-wide v5, -0x7777777777777778L    # -1.48603973805866E-267

    and-long/2addr v5, p0

    shl-long/2addr v2, v4

    xor-long/2addr v2, v5

    ushr-long/2addr v5, v4

    xor-long/2addr v2, v5

    const/4 v5, 0x2

    ushr-long/2addr v2, v5

    xor-long/2addr p0, v2

    const-wide v2, 0x3030303030303030L    # 1.398043286095289E-76

    and-long/2addr v2, p0

    const-wide v6, -0x3f3f3f3f3f3f3f40L    # -8577.50588235294

    and-long/2addr v6, p0

    shl-long/2addr v2, v5

    xor-long/2addr v2, v6

    ushr-long v5, v6, v5

    xor-long/2addr v2, v5

    const-wide v7, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v7, v2

    and-long/2addr v0, v2

    shl-long v2, v7, v4

    xor-long/2addr v2, v0

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr v0, v5

    const/4 v2, 0x4

    ushr-long/2addr v0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(JJ)J
    .registers 13

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Ku5O3sihzbUhwSewE8uI(JJ)J

    move-result-wide v0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v0

    const-wide v4, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v0, v4

    const/4 v6, 0x4

    shl-long v7, p0, v6

    xor-long/2addr p0, v7

    and-long/2addr p0, v4

    ushr-long/2addr v0, v6

    xor-long/2addr p0, v0

    shl-long v0, p2, v6

    xor-long/2addr p2, v0

    and-long/2addr p2, v4

    const-wide v0, 0x808080808080808L

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/KgulqrnO4jl81pUyjwyS59p2vEb166I;->Ku5O3sihzbUhwSewE8uI(JJ)J

    move-result-wide p0

    shl-long p2, v2, v6

    xor-long/2addr p0, p2

    xor-long/2addr p0, v2

    return-wide p0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(JJ)J
    .registers 16

    const/4 v0, 0x1

    shl-long v1, p0, v0

    and-long/2addr v1, p2

    shl-long v3, p2, v0

    and-long/2addr v3, p0

    xor-long/2addr v1, v3

    const-wide v3, -0x5555555555555556L

    and-long/2addr v1, v3

    and-long v5, p0, p2

    xor-long/2addr v1, v5

    and-long/2addr v5, v3

    ushr-long/2addr v5, v0

    xor-long/2addr v1, v5

    const-wide v5, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v5, v1

    const-wide v7, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v1, v7

    const/4 v9, 0x2

    shl-long v10, p0, v9

    xor-long/2addr p0, v10

    and-long/2addr p0, v7

    ushr-long/2addr v1, v9

    xor-long/2addr p0, v1

    shl-long v1, p2, v9

    xor-long/2addr p2, v1

    and-long/2addr p2, v7

    const-wide v1, 0x2222222222222222L

    xor-long/2addr p2, v1

    shl-long v1, p0, v0

    and-long/2addr v1, p2

    shl-long v7, p2, v0

    and-long/2addr v7, p0

    xor-long/2addr v1, v7

    and-long/2addr v1, v3

    and-long/2addr p0, p2

    xor-long p2, p0, v1

    and-long/2addr p0, v3

    ushr-long/2addr p0, v0

    xor-long/2addr p0, p2

    shl-long p2, v5, v9

    xor-long/2addr p0, p2

    xor-long/2addr p0, v5

    return-wide p0
.end method
