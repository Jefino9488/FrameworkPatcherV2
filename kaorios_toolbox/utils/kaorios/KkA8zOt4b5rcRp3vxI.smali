.class public final Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;


# static fields
.field public static final K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

.field public Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

.field public Kq5pt6AeqxqwOjab0R8ioI:I

.field public Ku5O3sihzbUhwSewE8uI:Z

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;->Kr021bO9Updrd4Sc925kEfdq29I:Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    sput-object v0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {p2}, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    new-instance p2, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;
    .registers 12

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_83

    new-instance v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v2

    sget-object v3, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    iput-object v3, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    new-array v3, v2, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    iput-object v3, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_23
    if-ge v5, v2, :cond_6f

    invoke-virtual {p0, v5}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v7

    instance-of v8, v7, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    if-eqz v8, :cond_31

    move-object v8, v7

    check-cast v8, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    goto :goto_62

    :cond_31
    if-eqz v7, :cond_61

    new-instance v8, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    instance-of v9, v7, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    if-eqz v9, :cond_3d

    move-object v9, v7

    check-cast v9, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    goto :goto_47

    :cond_3d
    invoke-interface {v7}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v9

    instance-of v10, v9, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    if-eqz v10, :cond_4d

    check-cast v9, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    :goto_47
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v9, v8, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    goto :goto_62

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    move-object v8, v0

    :goto_62
    if-ne v8, v7, :cond_66

    move v7, v3

    goto :goto_67

    :cond_66
    move v7, v4

    :goto_67
    and-int/2addr v6, v7

    iget-object v7, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_6f
    if-eqz v6, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    :goto_77
    iput-object p0, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    return-object v1

    :cond_7a
    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object v0, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    goto :goto_77

    :cond_83
    return-object v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_3

    goto :goto_1b

    :cond_3
    instance-of v0, p1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-nez v0, :cond_c

    goto :goto_2b

    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KyqOjqyU2SoxvE3gI(Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 9

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Ku5O3sihzbUhwSewE8uI:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return p0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Ku5O3sihzbUhwSewE8uI:Z

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    invoke-virtual {v1}, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1a
    array-length v5, v1

    if-eq v3, v5, :cond_6a

    aget-object v5, v1, v3

    iget-object v6, v5, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v6, v6, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v6, v6

    if-le v6, v0, :cond_49

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->KtbuouOlomiUohgSxfezrEyv01I()[Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v5

    move v6, v2

    :goto_2b
    array-length v7, v5

    if-eq v6, v7, :cond_67

    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v7, v7, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v7

    xor-int/2addr v4, v7

    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-static {v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_49
    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v5, v5, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-static {v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_6a
    iput v4, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return v4
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    check-cast v0, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    invoke-virtual {p0}, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_18
    array-length v6, p0

    if-ge v4, v6, :cond_59

    if-eqz v5, :cond_1f

    move v5, v3

    goto :goto_24

    :cond_1f
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    aget-object v6, p0, v4

    iget-object v7, v0, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/Hashtable;

    iget-object v8, v6, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v8, v8, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v8, v8

    if-le v8, v2, :cond_49

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->KtbuouOlomiUohgSxfezrEyv01I()[Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v6

    move v9, v2

    move v8, v3

    :goto_35
    array-length v10, v6

    if-eq v8, v10, :cond_56

    if-eqz v9, :cond_3c

    move v9, v3

    goto :goto_41

    :cond_3c
    const/16 v10, 0x2b

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_41
    aget-object v10, v6, v8

    invoke-static {v1, v10, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kq4snztAiatOsRsxI(Ljava/lang/StringBuilder;Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;Ljava/util/Hashtable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_49
    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v8

    if-eqz v8, :cond_56

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v6

    invoke-static {v1, v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kq4snztAiatOsRsxI(Ljava/lang/StringBuilder;Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;Ljava/util/Hashtable;)V

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
