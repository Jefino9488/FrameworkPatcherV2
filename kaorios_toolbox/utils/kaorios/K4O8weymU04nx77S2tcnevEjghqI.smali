.class public final Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2a
    const/16 p0, 0x41

    const/16 v1, 0x61

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    const/16 p0, 0x42

    const/16 v1, 0x62

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    const/16 p0, 0x43

    const/16 v1, 0x63

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    const/16 p0, 0x44

    const/16 v1, 0x64

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    const/16 p0, 0x45

    const/16 v1, 0x65

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    const/16 p0, 0x46

    const/16 v1, 0x66

    aget-byte v1, v0, v1

    aput-byte v1, v0, p0

    return-void

    nop

    :array_5c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public synthetic constructor <init>([B[B)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Ku5O3sihzbUhwSewE8uI:[B

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;II)[B
    .registers 9

    if-ltz p2, :cond_44

    if-ltz p3, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_44

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3c

    ushr-int/lit8 p3, p3, 0x1

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p3, :cond_3b

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    aget-byte v3, v4, v3

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v4, v2

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    if-ltz v2, :cond_33

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_33
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    return-object v0

    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
