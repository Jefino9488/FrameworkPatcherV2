.class public final Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;
.super Ljava/io/InputStream;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

.field public Kq5pt6AeqxqwOjab0R8ioI:Z

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

.field public KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_f

    move-object v0, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_16

    return-object v2

    :cond_16
    instance-of v1, v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-eqz v1, :cond_29

    iget p0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez p0, :cond_21

    check-cast v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-object v0

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-nez v0, :cond_13

    :goto_12
    return v1

    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_16
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_25

    return v0

    :cond_25
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kq4snztAiatOsRsxI()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_41

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-nez v0, :cond_13

    goto :goto_41

    :cond_13
    iput-boolean v1, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_15
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2b

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_1b

    return v1

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kq4snztAiatOsRsxI()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-nez v0, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_43

    :goto_41
    const/4 p0, -0x1

    return p0

    :cond_43
    return v1
.end method
