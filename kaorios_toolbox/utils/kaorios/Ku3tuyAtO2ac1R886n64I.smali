.class public final Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

.field public Kq4snztAiatOsRsxI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:[B

.field public KyqOjqyU2SoxvE3gI:I


# direct methods
.method public constructor <init>([B[BLcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Ku5O3sihzbUhwSewE8uI:[B

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI(IZ[B)V
    .registers 8

    array-length v0, p3

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v2

    if-lt v0, v2, :cond_53

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq4snztAiatOsRsxI:I

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq4snztAiatOsRsxI:I

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq4snztAiatOsRsxI:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq4snztAiatOsRsxI:I

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KyqOjqyU2SoxvE3gI:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KyqOjqyU2SoxvE3gI:I

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    const/4 v0, -0x1

    invoke-interface {v1, v0}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KyqOjqyU2SoxvE3gI(B)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq4snztAiatOsRsxI([BII)V

    invoke-interface {v1, p1, p3}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KmwO02nawgUws9Syxnq2rElI(I[B)I

    if-eqz p2, :cond_52

    iget p1, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KyqOjqyU2SoxvE3gI:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/Ku3tuyAtO2ac1R886n64I;->KyqOjqyU2SoxvE3gI:I

    :cond_52
    return-void

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target length is less than digest size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
