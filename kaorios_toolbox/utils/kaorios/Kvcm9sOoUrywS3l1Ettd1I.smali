.class public final Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    invoke-static {p2}, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    iput p1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    iput p2, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K7b6cynAykO75yzw1Ri5kI([B[B)[B
    .registers 5

    array-length v0, p1

    iget v1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v0, v1, :cond_18

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->KmzodnwO1tUkgkS8cymEofiI(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong address length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public KmwO02nawgUws9Syxnq2rElI(I[B)I
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    iget p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {v1, v2, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public KmzodnwO1tUkgkS8cymEofiI(I[B[B)[B
    .registers 7

    int-to-long v0, p1

    iget p1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Knfz4Orf1pcUmo7dSw1xEk4I(IJ)[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    array-length v0, p2

    invoke-interface {p0, p2, v2, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    array-length p2, p3

    invoke-interface {p0, p3, v2, p2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    new-array p2, p1, [B

    instance-of p3, p0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    if-eqz p3, :cond_24

    check-cast p0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;->K8Ak17imO9w5w4RppI([BII)I

    return-object p2

    :cond_24
    invoke-interface {p0, v2, p2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    return-object p2
.end method

.method public Kq4snztAiatOsRsxI([BII)V
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    return-void
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return p0
.end method

.method public Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public KyqOjqyU2SoxvE3gI(B)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-interface {p0, p1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    return-void
.end method
