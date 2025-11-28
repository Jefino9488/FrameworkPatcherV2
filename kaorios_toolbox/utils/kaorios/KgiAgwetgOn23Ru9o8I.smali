.class public final Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    return-void
.end method


# virtual methods
.method public final K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v1, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_27

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->read()I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-lez v2, :cond_26

    const/4 p0, 0x2

    if-lt v1, p0, :cond_1e

    const/4 p0, 0x7

    if-gt v2, p0, :cond_16

    goto :goto_26

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "zero length data with non-zero pad bits"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "content octets cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Kq4snztAiatOsRsxI()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->K0wipv9AtliO55qRn6mI([B)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p0

    return-object p0
.end method
