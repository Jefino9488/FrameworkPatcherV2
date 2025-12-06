.class public final Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

.field public static final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    new-instance v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;

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

    new-instance v0, Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI(Ljava/security/PrivateKey;)Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;
    .registers 6

    :try_start_0
    sget-object v0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;

    sget-object v1, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v0

    goto :goto_23

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v0

    :goto_23
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kdu8dA997akO8eR1t2aI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;)Ljava/security/Signature;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    new-instance p1, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;-><init>(Ljava/security/Signature;Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;)V
    :try_end_31
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p0

    new-instance p1, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;->Ku5O3sihzbUhwSewE8uI:Ljava/security/GeneralSecurityException;

    throw p1
.end method
