.class public final Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;->Ku5O3sihzbUhwSewE8uI:I

    return p0
.end method
