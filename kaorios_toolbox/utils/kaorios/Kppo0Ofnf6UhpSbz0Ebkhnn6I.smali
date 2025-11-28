.class public final Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed ASN.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final hasMoreElements()Z
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    return-object v0

    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
