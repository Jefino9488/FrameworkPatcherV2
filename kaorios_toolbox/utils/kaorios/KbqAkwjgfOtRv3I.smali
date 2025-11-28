.class public final Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;
.super Ljava/io/InputStream;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

.field public Kq5pt6AeqxqwOjab0R8ioI:Z

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;
    .registers 4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_d

    move-object p0, v1

    goto :goto_11

    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p0

    :goto_11
    if-nez p0, :cond_14

    return-object v1

    :cond_14
    instance-of v0, p0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    if-eqz v0, :cond_1b

    check-cast p0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    return-object p0

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_10

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return v1

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_14
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_23

    return v0

    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_35

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_35

    :cond_11
    iput-boolean v1, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_13
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    :cond_19
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_29

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_19

    return v1

    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_37

    :goto_35
    const/4 p0, -0x1

    return p0

    :cond_37
    return v1
.end method
