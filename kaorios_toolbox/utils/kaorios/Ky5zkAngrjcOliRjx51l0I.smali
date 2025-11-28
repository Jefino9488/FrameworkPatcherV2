.class public abstract Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

.field public final Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq4snztAiatOsRsxI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-void

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-nez p1, :cond_d

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :cond_d
    :goto_d
    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-void
.end method

.method public static K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[B
    .registers 2

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->K91vAo8w086Op21a5bR8uI()[B

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

.method public static Kvvx152O1Uo652lSpg5iE1I([B[B)Z
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


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    return-object v0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_38

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v2, v2

    if-eq v2, v0, :cond_11

    goto :goto_38

    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    move v2, v1

    :goto_1e
    if-ge v2, v0, :cond_3c

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    if-eq v3, v4, :cond_39

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z

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

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 15

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-virtual {v0}, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_14

    goto/16 :goto_77

    :cond_14
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-static {v3}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[B

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object v13, v5

    move-object v5, v3

    move-object v3, v13

    move-object v13, v7

    move-object v7, v6

    move-object v6, v13

    :cond_2e
    :goto_2e
    if-ge v2, v1, :cond_70

    aget-object v8, v0, v2

    invoke-static {v8}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[B

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v10

    if-eqz v10, :cond_45

    add-int/lit8 v6, v2, -0x2

    aput-object v3, v0, v6

    move-object v3, v5

    move-object v6, v7

    move-object v5, v8

    move-object v7, v9

    goto :goto_6d

    :cond_45
    invoke-static {v6, v9}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v10

    if-eqz v10, :cond_52

    add-int/lit8 v6, v2, -0x2

    aput-object v3, v0, v6

    move-object v3, v8

    move-object v6, v9

    goto :goto_6d

    :cond_52
    add-int/lit8 v10, v2, -0x1

    :goto_54
    add-int/lit8 v11, v10, -0x1

    if-lez v11, :cond_6b

    add-int/lit8 v10, v10, -0x2

    aget-object v10, v0, v10

    invoke-static {v10}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[B

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result v12

    if-eqz v12, :cond_67

    goto :goto_6b

    :cond_67
    aput-object v10, v0, v11

    move v10, v11

    goto :goto_54

    :cond_6b
    :goto_6b
    aput-object v8, v0, v11

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_70
    add-int/lit8 v2, v1, -0x2

    aput-object v3, v0, v2

    sub-int/2addr v1, v4

    aput-object v5, v0, v1

    :cond_77
    :goto_77
    new-instance v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;-><init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    aget-object v2, p0, v0

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_15
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

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
