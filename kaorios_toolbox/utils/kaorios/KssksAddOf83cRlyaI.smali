.class public final Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

.field public static final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    new-instance v1, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;

    const-string v1, "DILITHIUM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCS+"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCSPlus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ML-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SLH-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HASH-ML-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HASH-SLH-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    return-void
.end method
