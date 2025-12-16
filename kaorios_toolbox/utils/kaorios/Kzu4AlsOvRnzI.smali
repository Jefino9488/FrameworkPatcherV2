.class public final Lcom/android/internal/util/kaorios/Kzu4AlsOvRnzI;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

.field public final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KadOg8f8U2bSysEs23oI;[B)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KadOg8f8U2bSysEs23oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KolAe9drpO8gwRpI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KolAe9drpO8gwRpI;->Ku5O3sihzbUhwSewE8uI()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_33

    new-instance v0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p2, p1, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;-><init>([B[B)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kzu4AlsOvRnzI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    new-instance v0, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p2, v3, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v2

    invoke-static {p2, p1, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;-><init>([B[B)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kzu4AlsOvRnzI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    return-void

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "private key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
