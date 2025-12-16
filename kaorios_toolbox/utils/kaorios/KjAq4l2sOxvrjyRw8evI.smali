.class public final Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;
.super Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;


# virtual methods
.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    :goto_5
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return p1
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/16 v0, 0x31

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kr021bO9Updrd4Sc925kEfdq29I(ZI[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method
