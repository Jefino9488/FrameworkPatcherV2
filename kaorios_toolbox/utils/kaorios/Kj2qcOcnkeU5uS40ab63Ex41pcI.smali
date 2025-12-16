.class public final Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

.field public Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:I

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length p0, p0

    if-ge v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:I

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:I

    aget-object p0, v1, v0

    return-object p0

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
