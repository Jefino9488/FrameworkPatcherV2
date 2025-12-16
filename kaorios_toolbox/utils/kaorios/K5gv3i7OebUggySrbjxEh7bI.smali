.class public final Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;
.super Ljava/security/SecureRandom;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>([BLcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;)V
    .registers 13

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    array-length v0, p1

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_1e

    new-array p2, v4, [B

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI([B[B[B)V

    return-void

    :cond_1e
    array-length v0, p1

    rsub-int/lit8 v0, v0, 0x30

    invoke-interface {p2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v5

    array-length v6, p1

    invoke-virtual {p2, p1, v3, v6}, Lcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;->Kq4snztAiatOsRsxI([BII)V

    new-array v6, v5, [B

    invoke-interface {p2, v3, v6}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    if-ne v0, v5, :cond_31

    goto :goto_74

    :cond_31
    if-ge v0, v5, :cond_3e

    new-array p2, v0, [B

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, p2

    goto :goto_74

    :cond_3e
    new-array v7, v5, [B

    invoke-static {v5, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_47
    sub-int/2addr v0, v5

    if-lt v0, v5, :cond_57

    invoke-virtual {p2, v6, v3, v5}, Lcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;->Kq4snztAiatOsRsxI([BII)V

    new-array v6, v5, [B

    invoke-interface {p2, v3, v6}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    invoke-static {v7, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object v7

    goto :goto_47

    :cond_57
    if-lez v0, :cond_73

    invoke-virtual {p2, v6, v3, v5}, Lcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;->Kq4snztAiatOsRsxI([BII)V

    new-array v5, v5, [B

    invoke-interface {p2, v3, v5}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    array-length p2, v7

    add-int v6, p2, v0

    new-array v8, v6, [B

    array-length v9, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v3, v8, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v3, v8, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v8

    goto :goto_74

    :cond_73
    move-object v6, v7

    :goto_74
    invoke-static {p1, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p1

    new-array p2, v4, [B

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI([B[B[B)V

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI([B[B[BI)V
    .registers 9

    :try_start_0
    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI:[[I

    sget-object v1, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/Kf25ctmAjnmi1O57RsI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    array-length v2, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-array v3, v2, [B

    iput-object v3, v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;)V

    :goto_24
    array-length p0, p1

    if-eq v4, p0, :cond_2f

    add-int p0, p3, v4

    invoke-virtual {v0, p1, v4, p2, p0}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI([BI[BI)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_30

    add-int/lit8 v4, v4, 0x10

    goto :goto_24

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "drbg failure: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static Ku5O3sihzbUhwSewE8uI([B[B[B)V
    .registers 11

    const/16 v0, 0x30

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x3

    if-ge v3, v4, :cond_27

    const/16 v4, 0xf

    :goto_b
    if-ltz v4, :cond_1f

    aget-byte v5, p2, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1a

    aput-byte v2, p2, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    :cond_1f
    mul-int/lit8 v4, v3, 0x10

    invoke-static {p1, p2, v1, v4}, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI([B[B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_27
    if-eqz p0, :cond_37

    move v3, v2

    :goto_2a
    if-ge v3, v0, :cond_37

    aget-byte v4, v1, v3

    aget-byte v5, p0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_37
    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x20

    array-length p1, p2

    invoke-static {v1, p0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final nextBytes([B)V
    .registers 13

    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-lez v2, :cond_38

    const/16 v5, 0xf

    move v6, v5

    :goto_c
    if-ltz v6, :cond_22

    iget-object v7, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    aget-byte v8, v7, v6

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1d

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :cond_22
    iget-object v6, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object v7, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v6, v7, v1, v3}, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI([B[B[BI)V

    if-le v2, v5, :cond_33

    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_7

    :cond_33
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    goto :goto_7

    :cond_38
    iget-object p1, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/kaorios/K5gv3i7OebUggySrbjxEh7bI;->Ku5O3sihzbUhwSewE8uI([B[B[B)V

    return-void
.end method
