.class public final Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;
.super Ljava/io/InputStream;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

.field public Kq5pt6AeqxqwOjab0R8ioI:Z

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_d

    move-object v0, v2

    goto :goto_11

    :cond_d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_14

    return-object v2

    :cond_14
    instance-of v1, v0, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-eqz v1, :cond_27

    iget p0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez p0, :cond_1f

    check-cast v0, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    return-object v0

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
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

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-nez v0, :cond_13

    :goto_12
    return v1

    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_16
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_25

    return v0

    :cond_25
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kq4snztAiatOsRsxI()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez v0, :cond_a

    goto :goto_41

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-nez v0, :cond_13

    goto :goto_41

    :cond_13
    iput-boolean v1, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    :cond_15
    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2b

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_1b

    return v1

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kq4snztAiatOsRsxI()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-nez v0, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KyqOjqyU2SoxvE3gI:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_43

    :goto_41
    const/4 p0, -0x1

    return p0

    :cond_43
    return v1
.end method
