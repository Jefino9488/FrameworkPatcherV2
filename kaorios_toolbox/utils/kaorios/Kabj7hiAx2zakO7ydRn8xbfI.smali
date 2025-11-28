.class public final Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;
.super Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Z

.field public KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:I

.field public KyqOjqyU2SoxvE3gI:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KyqOjqyU2SoxvE3gI:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->K7b6cynAykO75yzw1Ri5kI:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    if-ltz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    return-void

    :cond_1b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KyqOjqyU2SoxvE3gI:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KyqOjqyU2SoxvE3gI:Z

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI()V

    :cond_16
    iget-boolean p0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KyqOjqyU2SoxvE3gI:Z

    return p0
.end method

.method public final read()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_19

    iget v1, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    iget v2, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    iput v2, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    return v1

    :cond_19
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final read([BII)I
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-nez v0, :cond_43

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_43

    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KyqOjqyU2SoxvE3gI:Z

    if-eqz v0, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_3d

    iget v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq4snztAiatOsRsxI:I

    if-ltz p1, :cond_37

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_37
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3d
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_43
    :goto_43
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method
