.class public final Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;
.super Ljava/lang/Object;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

.field public Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_15
    if-eqz v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p1, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    xor-int/2addr p0, v0

    return p0
.end method
