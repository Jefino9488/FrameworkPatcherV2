.class public final Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Ku5O3sihzbUhwSewE8uI:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Ku5O3sihzbUhwSewE8uI:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Ku5O3sihzbUhwSewE8uI:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    aget-object p0, v1, v0

    return-object p0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of elements: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot remove element from an Array."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
