.class public abstract Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

.field public final Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq4snztAiatOsRsxI()[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public constructor <init>(Z[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-nez p1, :cond_d

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :cond_d
    :goto_d
    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {p1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_21

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_21
    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public static K0wipv9AtliO55qRn6mI([B[B)Z
    .registers 8

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    const/4 v3, 0x1

    if-eq v1, v2, :cond_10

    if-ge v1, v2, :cond_f

    return v3

    :cond_f
    return v0

    :cond_10
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    move v2, v3

    :goto_18
    if-ge v2, v1, :cond_2b

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_28

    and-int/lit16 p0, v4, 0xff

    and-int/lit16 p1, v5, 0xff

    if-ge p0, p1, :cond_27

    return v3

    :cond_27
    return v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    if-gt p0, p1, :cond_36

    return v3

    :cond_36
    return v0
.end method

.method public static Kr021bO9Updrd4Sc925kEfdq29I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[B
    .registers 2

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 14

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kr021bO9Updrd4Sc925kEfdq29I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[B

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kr021bO9Updrd4Sc925kEfdq29I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K0wipv9AtliO55qRn6mI([B[B)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    :cond_1f
    :goto_1f
    if-ge v1, v0, :cond_61

    aget-object v7, p0, v1

    invoke-static {v7}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kr021bO9Updrd4Sc925kEfdq29I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[B

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K0wipv9AtliO55qRn6mI([B[B)Z

    move-result v9

    if-eqz v9, :cond_36

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v4

    move-object v5, v6

    move-object v4, v7

    move-object v6, v8

    goto :goto_5e

    :cond_36
    invoke-static {v5, v8}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K0wipv9AtliO55qRn6mI([B[B)Z

    move-result v9

    if-eqz v9, :cond_43

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v7

    move-object v5, v8

    goto :goto_5e

    :cond_43
    add-int/lit8 v9, v1, -0x1

    :goto_45
    add-int/lit8 v10, v9, -0x1

    if-lez v10, :cond_5c

    add-int/lit8 v9, v9, -0x2

    aget-object v9, p0, v9

    invoke-static {v9}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kr021bO9Updrd4Sc925kEfdq29I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[B

    move-result-object v11

    invoke-static {v11, v8}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K0wipv9AtliO55qRn6mI([B[B)Z

    move-result v11

    if-eqz v11, :cond_58

    goto :goto_5c

    :cond_58
    aput-object v9, p0, v10

    move v9, v10

    goto :goto_45

    :cond_5c
    :goto_5c
    aput-object v7, p0, v10

    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_61
    add-int/lit8 v1, v0, -0x2

    aput-object v2, p0, v1

    sub-int/2addr v0, v3

    aput-object v4, p0, v0

    return-void
.end method


# virtual methods
.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {v0}, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_11
    new-instance v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>(Z[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->KyqOjqyU2SoxvE3gI:I

    return-object v0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_38

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v2, v2

    if-eq v2, v0, :cond_11

    goto :goto_38

    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    move v2, v1

    :goto_1e
    if-ge v2, v0, :cond_3c

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v4

    if-eq v3, v4, :cond_39

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v3

    if-nez v3, :cond_39

    :goto_38
    return v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->KyqOjqyU2SoxvE3gI:I

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    aget-object v2, p0, v0

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_15
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, p0

    if-nez v0, :cond_8

    const-string p0, "[]"

    return-object p0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_10
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_23

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method
