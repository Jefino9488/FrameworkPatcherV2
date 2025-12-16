.class public final Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;


# virtual methods
.method public final K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, p0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object p0

    return-object p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-object p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()[Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;
    .registers 5

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    new-array v1, v0, [Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_17

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v1
.end method
