.class public abstract Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq4snztAiatOsRsxI()[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
    .registers 4

    if-eqz p0, :cond_58

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz v0, :cond_7

    goto :goto_58

    :cond_7
    instance-of v0, p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz v1, :cond_44

    check-cast v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    :try_start_1d
    sget-object v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    check-cast p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct sequence from byte[]: "

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

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_58
    check-cast p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    return-object p0
.end method


# virtual methods
.method public final K0wipv9AtliO55qRn6mI()[Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)V

    return-object v0
.end method

.method public abstract K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;
.end method

.method public abstract K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;
.end method

.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Z[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object v0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_2e

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v2

    if-eq v2, v0, :cond_13

    goto :goto_2e

    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v4

    if-eq v3, v4, :cond_2f

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v3

    if-nez v3, :cond_2f

    :goto_2e
    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public abstract KfhA0xayiqO65hivnRnnoh8cI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;
.end method

.method public abstract KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public KnAacuOafajtRj61vuuI()[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    return-object p0
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()[Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object v0
.end method

.method public KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    mul-int/lit16 v1, v1, 0x101

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_5

    :cond_19
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "[]"

    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_11
    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_26

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method
