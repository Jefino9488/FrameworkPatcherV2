.class public final Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notAfter\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notBefore\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0
.end method
