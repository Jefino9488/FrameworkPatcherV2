.class public final Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;
.super Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x180

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x200

    if-ne p1, v0, :cond_11

    goto :goto_2a

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'bitLength\' "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported for SHA-3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI(I[B)I
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->K91vAo8w086Op21a5bR8uI(II)V

    iget v0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->K8c63Ooauv32UndyuScEgI(IJ[B)V

    iget p1, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kgs66qnAfO491Ra48r7aI(I)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result p0

    return p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHA3-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
