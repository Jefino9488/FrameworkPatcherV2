.class public abstract Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;
.super Ljava/security/KeyFactorySpi;

# interfaces
.implements Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 4

    const-string v0, "incorrect algorithm OID for key: "

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_27

    :cond_d
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    :goto_27
    return-void

    :cond_28
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_32

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p1

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    invoke-interface {p0, p1}, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_19} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_25
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_30
    move-exception p0

    throw p0

    :cond_32
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key specification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_27

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    move-result-object p1

    iget-object v0, p1, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    invoke-interface {p0, p1}, Lcom/android/internal/util/kaorios/Ko0kyA0iz1caO1R62tI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_25
    move-exception p0

    throw p0

    :cond_27
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown key specification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
