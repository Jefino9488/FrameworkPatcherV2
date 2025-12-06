.class public abstract Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method private static constructor <clinit>()V
    .registers 2

    const-wide v0, -0x2062c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 8

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v0

    const-wide v1, -0x202cc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b6

    :try_start_18
    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;

    move-result-object p0

    const-wide v3, -0x202fc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    if-eqz p0, :cond_49

    new-instance p1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    goto :goto_4a

    :cond_49
    move-object p1, v2

    :goto_4a
    new-instance p0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    sget-object v0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    instance-of v4, v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    if-eqz v4, :cond_54

    check-cast v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    iget v4, v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_54

    iget v4, v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->KmwO02nawgUws9Syxnq2rElI:I

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    instance-of v2, v1, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    if-eqz v2, :cond_7f

    check-cast v1, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    goto :goto_83

    :cond_7f
    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    goto :goto_90

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    :goto_90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance v0, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v0, -0x2032c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_b6
    const-wide v3, -0x2035c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    const-wide v3, -0x2039c885e6b8L

    :try_start_ca
    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_db} :catch_dc

    return-object p0

    :catch_dc
    if-eqz v0, :cond_18b

    new-instance p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v2, v1

    iget v3, v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    sub-int/2addr v2, v3

    const/4 v4, 0x4

    if-gt v2, v4, :cond_183

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K4cv12eOhp5UsS8gpsE2q2z1I([BI)I

    move-result v1

    if-ltz v1, :cond_17b

    const/4 v2, 0x1

    if-gt v1, v2, :cond_17b

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq4snztAiatOsRsxI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KyqOjqyU2SoxvE3gI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K91vAo8w086Op21a5bR8uI:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KtbuouOlomiUohgSxfezrEyv01I:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    :cond_179
    move-object v2, p0

    goto :goto_18b

    :cond_17b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_183
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "ASN.1 Integer out of int range"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18b
    :goto_18b
    new-instance p0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    sget-object p1, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    sget-object v0, Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance p1, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;

    invoke-direct {p1, p0, v2}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-wide v0, -0x203dc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_1b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x2041c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B
    .registers 5

    const-wide v0, -0x2059c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    sget p0, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance p0, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    const-wide v0, -0x2325c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    :cond_24
    sget p0, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance p0, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;-><init>()V

    const-wide v0, -0x2328c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v1, :cond_4d

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[B
    .registers 4

    const-wide v0, -0x1ffbc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x2011c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x2012c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x2026c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x2027c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x202bc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
