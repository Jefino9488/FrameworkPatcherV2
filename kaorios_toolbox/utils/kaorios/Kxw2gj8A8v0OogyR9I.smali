.class public abstract Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;
.super Ljava/io/InputStream;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;->K7b6cynAykO75yzw1Ri5kI:Z

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    :cond_e
    return-void
.end method
