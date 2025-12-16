.class public abstract Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    new-instance v0, Lcom/android/internal/util/kaorios/Kmq6fbO6dn6Uyv8dS7E4pd2epI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    :try_start_e
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    const-string v0, "\n"

    sput-object v0, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_19

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, 0x20

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method

.method public static Kq4snztAiatOsRsxI([CILjava/io/ByteArrayOutputStream;)V
    .registers 13

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    goto/16 :goto_c4

    :cond_5
    const/16 v0, 0x40

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    add-int/lit8 v5, v3, 0x1

    aget-char v6, p0, v3

    const/16 v7, 0x80

    if-ge v6, v7, :cond_1b

    add-int/lit8 v3, v4, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    goto/16 :goto_b3

    :cond_1b
    const/16 v8, 0x800

    if-ge v6, v8, :cond_33

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    :goto_30
    move v3, v4

    goto/16 :goto_b3

    :cond_33
    const v8, 0xd800

    if-lt v6, v8, :cond_98

    const v8, 0xdfff

    if-gt v6, v8, :cond_98

    const v9, 0xdbff

    if-gt v6, v9, :cond_90

    if-ge v5, p1, :cond_88

    add-int/lit8 v3, v3, 0x2

    aget-char v5, p0, v5

    const v9, 0xdc00

    if-lt v5, v9, :cond_80

    if-gt v5, v8, :cond_80

    and-int/lit16 v6, v6, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v5, v5, 0x3ff

    or-int/2addr v5, v6

    const/high16 v6, 0x10000

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v8, v4, 0x2

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v4, 0x3

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    move v5, v3

    goto :goto_30

    :cond_80
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid UTF-16 low surrogate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid UTF-16 codepoint (truncated surrogate pair)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid UTF-16 high surrogate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v8, v4, 0x2

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    add-int/lit8 v3, v4, 0x3

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    :goto_b3
    add-int/lit8 v4, v3, 0x4

    if-le v4, v0, :cond_bc

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    move v4, v2

    goto :goto_bd

    :cond_bc
    move v4, v3

    :goto_bd
    if-lt v5, p1, :cond_c5

    if-lez v4, :cond_c4

    invoke-virtual {p2, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_c4
    :goto_c4
    return-void

    :cond_c5
    move v3, v5

    goto/16 :goto_c
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method

.method public static Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_6
    if-eq v3, v1, :cond_12

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_19

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, -0x20

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method
