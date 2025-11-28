.class public abstract Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI([BI)[B
    .registers 14

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p1, :cond_d

    goto :goto_40

    :cond_d
    const/16 v2, 0x48

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-lez p1, :cond_40

    const/16 v5, 0x24

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v4, v5

    move v7, v3

    :goto_1e
    if-ge v4, v6, :cond_3a

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v9, v4, 0xff

    add-int/lit8 v10, v7, 0x1

    iget-object v11, v1, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Ku5O3sihzbUhwSewE8uI:[B

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

    sub-int/2addr p1, v5

    move v4, v6

    goto :goto_13

    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_45
    move-exception p0

    new-instance p1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encoding Hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;I)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    throw p1
.end method
