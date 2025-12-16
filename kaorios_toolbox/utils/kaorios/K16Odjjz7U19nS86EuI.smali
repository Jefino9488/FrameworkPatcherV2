.class public final Lcom/android/internal/util/kaorios/K16Odjjz7U19nS86EuI;
.super Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K16Odjjz7U19nS86EuI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8hpl6qAmusuzOmg5xdRliI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Knfz4Orf1pcUmo7dSw1xEk4I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kqw88tkA8aOosqseRlp5mI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/android/internal/util/kaorios/K16Odjjz7U19nS86EuI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Ljava/security/PrivateKey;
    .registers 3

    new-instance p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq4snztAiatOsRsxI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KgdivAliuhhnOe2iR73uaI(Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzojxr7Ae7o4atOyvR7lk8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;)Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 7

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;

    if-eqz v0, :cond_7c

    check-cast p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;

    iget-object p0, p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-boolean v0, p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq4snztAiatOsRsxI:Z

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/util/kaorios/Karjt5eA8u96jpOxnuRaI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    const-string v2, "KeySpec represents long form"

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    new-instance p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-direct {p1, v1, p0, v3}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;-><init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[BLcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;)V

    goto :goto_5a

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    if-nez v0, :cond_74

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    invoke-direct {v4, v1, p0, v3}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;-><init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[BLcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;)V

    if-nez v0, :cond_6e

    iget-object p0, p1, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    if-eqz p0, :cond_59

    iget-object p1, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    iget-object v0, v4, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    invoke-static {p1, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kvvx152O1Uo652lSpg5iE1I([B[B)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_59

    :cond_51
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "public key data does not match private key data"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    move-object p1, v4

    :goto_5a
    new-instance p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeySpec represents seed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    invoke-super {p0, p1}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;

    new-instance p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    new-instance v0, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/util/kaorios/Karjt5eA8u96jpOxnuRaI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;-><init>(Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;[B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    iget-object p1, v0, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0

    :cond_37
    invoke-super {p0, p1}, Lcom/android/internal/util/kaorios/K02At1b97Ozi27aRngwg8sI;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 13

    instance-of p0, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    const-string v0, "."

    const-class v1, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;

    if-eqz p0, :cond_10e

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1c
    const-class p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const-string v2, "\'t\' has invalid length"

    const-string v3, "\'rho\' has invalid length"

    const-string v4, "Modulus check failed for ML-KEM public key"

    const/16 v5, 0x20

    if-eqz p0, :cond_ab

    check-cast p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    iget-object p0, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K91vAo8w086Op21a5bR8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    if-eqz p0, :cond_4a

    new-instance p2, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;-><init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B)V

    return-object p2

    :cond_4a
    new-instance p0, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;

    iget-object p2, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p2

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object v6, p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    new-instance v7, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v8, v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;-><init>(II)V

    array-length v8, v6

    iget v9, v7, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v8, v9, :cond_a5

    array-length v2, p1

    if-ne v2, v5, :cond_9f

    invoke-static {v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-virtual {v7, v2}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI([B)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v1, v1, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/util/kaorios/KsO7UnSqiEt7vpI;-><init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B[B)V

    return-object p0

    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ab
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_146

    check-cast p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    new-instance p0, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;

    iget-object p2, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->K7b6cynAykO75yzw1Ri5kI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kwlc8AjpvtO1if97Rhzo5I;->KmzodnwO1tUkgkS8cymEofiI:[B

    new-instance v6, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;

    iget v7, v0, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;-><init>(II)V

    array-length v7, v1

    iget v8, v6, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v7, v8, :cond_108

    array-length v2, p1

    if-ne v2, v5, :cond_102

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    invoke-virtual {v6, v1}, Lcom/android/internal/util/kaorios/Keofdd2A87Ov6kmpRpbI;->Ku5O3sihzbUhwSewE8uI([B)Z

    move-result v2

    if-eqz v2, :cond_fc

    iget-object v0, v0, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;-><init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B)V

    return-object p0

    :cond_fc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_108
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10e
    instance-of p0, p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    if-eqz p0, :cond_15d

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_126

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_126
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_146

    check-cast p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    new-instance p0, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;

    iget-object p2, p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/KtdwOlUySmm8rqEijI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K5vo6aArpOx66RnfnhzI;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/util/kaorios/Kwka1hOyvxogU0o6uSwxmEs6ggisI;-><init>(Lcom/android/internal/util/kaorios/Kh7Adv9Ox0eRivI;[B)V

    return-object p0

    :cond_146
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "unknown key specification: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15d
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

    instance-of p0, p1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unsupported key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-object p1
.end method
