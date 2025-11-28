.class public abstract Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

# interfaces
.implements Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;
.implements Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:[C

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI:[C

    return-void

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_30

    array-length v0, p1

    if-nez v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, 0x7

    if-gt p2, v0, :cond_28

    if-ltz p2, :cond_28

    int-to-byte p2, p2

    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p2, v1, v2

    iput-object v1, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'data\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K0wipv9AtliO55qRn6mI([B)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_33

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-lez v2, :cond_2b

    const/4 v4, 0x7

    if-gt v2, v4, :cond_23

    const/4 v4, 0x2

    if-lt v0, v4, :cond_23

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    shl-int v1, v3, v2

    and-int/2addr v1, v0

    int-to-byte v1, v1

    if-eq v0, v1, :cond_2b

    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid pad bits detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
    .registers 4

    if-eqz p0, :cond_58

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v0, :cond_7

    goto :goto_58

    :cond_7
    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v1, :cond_44

    check-cast v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    :try_start_1d
    sget-object v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    check-cast p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct BIT STRING from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_58
    check-cast p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-object p0
.end method


# virtual methods
.method public final K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_33

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_14
    array-length v2, p0

    if-eq v1, v2, :cond_2e

    aget-byte v2, p0, v1

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    sget-object v4, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_33
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error encoding BitString: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final Kq4snztAiatOsRsxI()I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 8

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, p0

    array-length v2, p1

    if-eq v2, v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    return v2

    :cond_15
    sub-int/2addr v0, v2

    move v3, v1

    :goto_17
    if-ge v3, v0, :cond_23

    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    aget-byte v3, p0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aget-byte p0, p0, v0

    shl-int v3, v4, v3

    and-int/2addr p0, v3

    int-to-byte p0, p0

    aget-byte p1, p1, v0

    and-int/2addr p1, v3

    int-to-byte p1, p1

    if-ne p0, p1, :cond_35

    return v2

    :cond_35
    return v1
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    return-object p0
.end method

.method public final hashCode()I
    .registers 7

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    array-length v3, p0

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, p0, v4

    shl-int v1, v2, v1

    and-int/2addr v1, v5

    int-to-byte v1, v1

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    move v0, v3

    :goto_1b
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_25

    mul-int/lit16 v0, v0, 0x101

    aget-byte v2, p0, v4

    xor-int/2addr v0, v2

    goto :goto_1b

    :cond_25
    :goto_25
    mul-int/lit16 v0, v0, 0x101

    xor-int p0, v0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
