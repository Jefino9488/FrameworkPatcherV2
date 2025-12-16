.class public final Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

.field public static final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

.field public static final KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    const-string v1, "bike128"

    const/16 v2, 0x3023

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    new-instance v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    const-string v1, "bike192"

    const/16 v2, 0x6053

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    new-instance v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    const-string v1, "bike256"

    const v2, 0xa00d

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 p1, p2, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    neg-int v1, p2

    mul-int v2, v1, v1

    rsub-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v1

    mul-int v3, v1, v2

    rsub-int/lit8 v3, v3, 0x2

    mul-int/2addr v3, v2

    mul-int v2, v1, v3

    rsub-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v3

    mul-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v2

    const/4 v2, 0x1

    move v3, v2

    :goto_2a
    if-ge v3, v0, :cond_74

    add-int/lit8 v4, v3, -0x1

    shl-int v4, v2, v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_4d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v1, v4}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    shl-int v4, v2, v3

    and-int v6, p1, v4

    if-eqz v6, :cond_71

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, p1

    if-lt v4, v5, :cond_71

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2, v1, v4}, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_74
    return-void
.end method
