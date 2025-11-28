.class public final Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;


# virtual methods
.method public final Kgs66qnAfO491Ra48r7aI()[Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;
    .registers 5

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    new-array v1, v0, [Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_17

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v1
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    return-object p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, p0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    move-result-object p0

    return-object p0
.end method
