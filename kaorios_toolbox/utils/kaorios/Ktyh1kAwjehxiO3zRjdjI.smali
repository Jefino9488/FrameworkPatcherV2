.class public final Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

.field public static final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    const-string v1, "falcon-512"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    new-instance v0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    const-string v1, "falcon-1024"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_f

    const/16 v0, 0xa

    if-gt p2, v0, :cond_f

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Log N degree should be between 1 and 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
