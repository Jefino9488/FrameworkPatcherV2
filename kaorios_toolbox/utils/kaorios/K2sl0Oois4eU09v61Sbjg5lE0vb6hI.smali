.class public final Lcom/android/internal/util/kaorios/K2sl0Oois4eU09v61Sbjg5lE0vb6hI;
.super Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->Kbc3OwUxw5vStpnb16E6soI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;->Kamc8A7a9h8OyR3tI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;
    .registers 3

    new-instance p0, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KgdivAliuhhnOe2iR73uaI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K3g0AvpO6RjfrI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K3g0AvpO6RjfrI;

    iget-object p1, v0, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzojxr7Ae7o4atOyvR7lk8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K4izf2uA7gO2r0wuRrvcyI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K4izf2uA7gO2r0wuRrvcyI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ktyh1kAwjehxiO3zRjdjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;

    const-string v0, "."

    if-eqz p0, :cond_1a

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1a
    instance-of p0, p1, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    if-eqz p0, :cond_49

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->getEncoded()[B

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

    instance-of p0, p1, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

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
