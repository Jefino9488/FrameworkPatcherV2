.class public final Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    const-string v1, "ML-KEM-512"

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    const-string v2, "ML-KEM-768"

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    const-string v3, "ML-KEM-1024"

    invoke-direct {v2, v3}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    const-string v4, "ml-kem-512"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ml-kem-768"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ml-kem-1024"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "kyber512"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "kyber768"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "kyber1024"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;
    .registers 3

    if-eqz p0, :cond_1d

    sget-object v0, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
