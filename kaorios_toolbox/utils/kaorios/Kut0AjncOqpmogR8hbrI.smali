.class public final Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:[B

    iput p1, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    if-nez v0, :cond_5

    goto :goto_d

    :cond_5
    check-cast p1, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    iget v0, p1, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v1, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-eq v0, v1, :cond_f

    :goto_d
    const/4 p0, 0x0

    return p0

    :cond_f
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v0

    iget p0, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:I

    xor-int/2addr p0, v0

    return p0
.end method
