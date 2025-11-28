.class public final Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KfhA0xayiqO65hivnRnnoh8cI([B)Z

    move-result v0

    if-nez v0, :cond_20

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    aget-byte v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_1d

    move v1, v3

    goto :goto_f

    :cond_1d
    iput v1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K0wipv9AtliO55qRn6mI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;
    .registers 4

    if-eqz p0, :cond_46

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    if-eqz v0, :cond_7

    goto :goto_46

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_32

    :try_start_b
    sget-object v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    check-cast p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_46
    check-cast p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    return-object p0
.end method

.method public static K4cv12eOhp5UsS8gpsE2q2z1I([BI)I
    .registers 5

    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget-byte v1, p0, p1

    :goto_9
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_15

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    goto :goto_9

    :cond_15
    return v1
.end method

.method public static KfhA0xayiqO65hivnRnnoh8cI([B)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    aget-byte v0, p0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_18

    const-string p0, "org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    return v2

    :cond_19
    return v1
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;
    .registers 2

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public final KvyA01pu5yOryrRk3kI(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_11

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K4cv12eOhp5UsS8gpsE2q2z1I([BI)I

    move-result p0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kvvx152O1Uo652lSpg5iE1I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
