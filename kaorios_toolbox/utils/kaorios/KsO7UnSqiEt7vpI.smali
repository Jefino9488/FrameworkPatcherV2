.class public final Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

.field public final Kq4snztAiatOsRsxI:Z

.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/16 v1, 0x40

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq4snztAiatOsRsxI:Z

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect length for seed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq4snztAiatOsRsxI:Z

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    return-void
.end method
