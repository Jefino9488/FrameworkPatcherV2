.class public final Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;
.super Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;

# interfaces
.implements Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0x80

    if-eq p1, v0, :cond_22

    const/16 v0, 0x100

    if-ne p1, v0, :cond_9

    goto :goto_22

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'bitStrength\' "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported for SHAKE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final K8Ak17imO9w5w4RppI([BII)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V

    iget p1, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->Kgs66qnAfO491Ra48r7aI(I)V

    return p3
.end method

.method public final KmwO02nawgUws9Syxnq2rElI(I[B)I
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->K8Ak17imO9w5w4RppI([BII)I

    return v0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([BII)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-nez v0, :cond_a

    const/16 v0, 0xf

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->K91vAo8w086Op21a5bR8uI(II)V

    :cond_a
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->K8c63Ooauv32UndyuScEgI(IJ[B)V

    return-void
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHAKE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
