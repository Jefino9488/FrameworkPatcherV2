.class public abstract Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;
.super Ljava/io/InputStream;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->K7b6cynAykO75yzw1Ri5kI:Z

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    :cond_e
    return-void
.end method
