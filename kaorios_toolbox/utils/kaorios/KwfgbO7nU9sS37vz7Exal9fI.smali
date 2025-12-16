.class public final Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

.field public static final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    const-string v1, "hqc-128"

    const/16 v2, 0x4505

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    new-instance v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    const-string v1, "hqc-192"

    const v2, 0x8c0b

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    new-instance v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    const-string v1, "hqc-256"

    const v2, 0xe125

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwfgbO7nU9sS37vz7Exal9fI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    const-wide/32 p0, 0x1000000

    int-to-long v0, p2

    div-long/2addr p0, v0

    return-void
.end method
