.class public final Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;


# direct methods
.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_23

    new-instance v0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6soxO6Uyq4kSudkfErjpxI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-object v0
.end method
