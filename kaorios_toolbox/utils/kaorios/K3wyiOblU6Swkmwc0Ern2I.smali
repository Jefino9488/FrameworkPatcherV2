.class public final Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:[B

.field public final Kq4snztAiatOsRsxI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;->KmwO02nawgUws9Syxnq2rElI:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;->Kq4snztAiatOsRsxI:[B

    array-length p0, p1

    if-eqz p0, :cond_17

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;[B[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_15

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;->Kq4snztAiatOsRsxI:[B

    return-void

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "t1 cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rho cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
