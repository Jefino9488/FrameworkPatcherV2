.class public final Lcom/android/internal/util/kaorios/K8fnAv41O5R8yerI;
.super Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K8fnAv41O5R8yerI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->K8p85A7eerO73bzzR9euuI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->K611fOmr7pnlUk7S68E68q0pI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->K8eAvqpOaly6fRddnI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/android/internal/util/kaorios/K8fnAv41O5R8yerI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;
    .registers 3

    new-instance p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KgdivAliuhhnOe2iR73uaI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/KofaArO43k0oR84i2hI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KofaArO43k0oR84i2hI;

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzojxr7Ae7o4atOyvR7lk8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/Ky98OtUfbvSwjE4pc8I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky98OtUfbvSwjE4pc8I;

    return-object p0
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_22

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K8fnAv41O5R8yerI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
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

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K8fnAv41O5R8yerI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
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

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    const-string v0, "."

    if-eqz p0, :cond_1a

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1a
    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    if-eqz p0, :cond_49

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_32
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown key specification: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Unsupported key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-object p1
.end method
