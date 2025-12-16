.class public final Lcom/android/internal/util/kaorios/Kcx9A6yOi5k7vrRzuI;
.super Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Kcx9A6yOi5k7vrRzuI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->KxbArb8ylO9mRkI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->Kv1h0wpO5U1hen2iS5E6I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->K3uiqkAajOgR35zo6I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->K8qa2d5OcevukU5ob8aSrrEiqI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/android/internal/util/kaorios/Kcx9A6yOi5k7vrRzuI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;
    .registers 3

    new-instance p0, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KgdivAliuhhnOe2iR73uaI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K2p6xm6AxOlq4cpRt6gI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K2p6xm6AxOlq4cpRt6gI;

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzojxr7Ae7o4atOyvR7lk8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K9fO6Us9jS7wx36Ef3y6mzI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K9fO6Us9jS7wx36Ef3y6mzI;

    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;

    const-string v0, "."

    if-eqz p0, :cond_1a

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1a
    instance-of p0, p1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    if-eqz p0, :cond_49

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->getEncoded()[B

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

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

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
