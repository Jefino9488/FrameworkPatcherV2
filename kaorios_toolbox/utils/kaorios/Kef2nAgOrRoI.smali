.class public final Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;
    .registers 6

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_54

    new-instance v1, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->K4cv12eOhp5UsS8gpsE2q2z1I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v2

    if-ne v2, v4, :cond_39

    invoke-virtual {p0, v3}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-object v1

    :cond_39
    iput-object v0, v1, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-object v1

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    return-object v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-eqz p0, :cond_12

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_12
    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
