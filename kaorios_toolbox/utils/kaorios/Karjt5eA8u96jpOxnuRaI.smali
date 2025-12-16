.class public abstract Lcom/android/internal/util/kaorios/Karjt5eA8u96jpOxnuRaI;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Karjt5eA8u96jpOxnuRaI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    const-string v1, "ML-KEM-512"

    sget-object v2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ML-KEM-768"

    sget-object v2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ML-KEM-1024"

    sget-object v2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
