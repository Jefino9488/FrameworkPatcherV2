.class public abstract Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;
.super Ljava/lang/Object;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:I

.field public Kq5pt6AeqxqwOjab0R8ioI:J

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput p1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iget-wide v0, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v0, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget p1, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput p1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    return-void
.end method


# virtual methods
.method public Ku5O3sihzbUhwSewE8uI()[B
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ki3o82qAhyOxbRtI(IJ[B)V

    iget v1, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget p0, p0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    const/16 v1, 0x1c

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    return-object v0
.end method
