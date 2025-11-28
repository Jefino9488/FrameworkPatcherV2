.class public final Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    iget v1, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v3, p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
