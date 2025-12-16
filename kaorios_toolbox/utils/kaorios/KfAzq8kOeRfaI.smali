.class public final Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_23

    new-instance v0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0
.end method
