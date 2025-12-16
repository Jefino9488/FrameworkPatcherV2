.class public abstract Lcom/android/internal/util/kaorios/K7aA2nu3OpjybddRuI;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K7aA2nu3OpjybddRuI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(I[B)[B
    .registers 14

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Lcom/android/internal/util/kaorios/K7aA2nu3OpjybddRuI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p0, :cond_d

    goto :goto_40

    :cond_d
    const/16 v2, 0x48

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-lez p0, :cond_40

    const/16 v5, 0x24

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v4, v5

    move v7, v3

    :goto_1e
    if-ge v4, v6, :cond_3a

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v9, v4, 0xff

    add-int/lit8 v10, v7, 0x1

    iget-object v11, v1, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v9, v11, v9

    aput-byte v9, v2, v7

    add-int/lit8 v7, v7, 0x2

    and-int/lit8 v4, v4, 0xf

    aget-byte v4, v11, v4

    aput-byte v4, v2, v10

    move v4, v8

    goto :goto_1e

    :cond_3a
    invoke-virtual {v0, v2, v3, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_45

    sub-int/2addr p0, v5

    move v4, v6

    goto :goto_13

    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_45
    move-exception p0

    new-instance p1, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encoding Hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;I)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    throw p1
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    sget-object v0, Lcom/android/internal/util/kaorios/K7aA2nu3OpjybddRuI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;II)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception decoding Hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method
