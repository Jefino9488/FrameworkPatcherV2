.class public final Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4001

    if-gt v0, v1, :cond_104

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_eb

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_eb

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_eb

    const/16 v5, 0x32

    if-gt v4, v5, :cond_eb

    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KvyA01pu5yOryrRk3kI(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_eb

    if-ne v4, v5, :cond_32

    goto :goto_54

    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v1, :cond_54

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3f

    goto :goto_54

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4c

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_eb

    :cond_4c
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x34

    if-ge v1, v4, :cond_eb

    :cond_54
    :goto_54
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_66

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v4, v5

    goto :goto_6b

    :cond_66
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v4, v0

    :goto_6b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    const/4 v6, 0x0

    if-ne v4, v5, :cond_76

    move-object v0, v6

    goto :goto_8a

    :cond_76
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ne v7, v5, :cond_82

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v4, v5

    goto :goto_8a

    :cond_82
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v7

    move-object v13, v4

    move v4, v0

    move-object v0, v13

    :goto_8a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12

    if-gt v7, v8, :cond_9c

    int-to-long v9, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-static {v1, v11, v12}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K4cv12eOhp5UsS8gpsE2q2z1I(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_ad

    :cond_9c
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KfhA0xayiqO65hivnRnnoh8cI(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    :goto_ad
    if-eq v4, v5, :cond_de

    if-ne v4, v5, :cond_b3

    move-object v0, v6

    goto :goto_c7

    :cond_b3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v5, :cond_bf

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v4, v5

    goto :goto_c7

    :cond_bf
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    move-object v0, v2

    :goto_c7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v8, :cond_d5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K4cv12eOhp5UsS8gpsE2q2z1I(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_ad

    :cond_d5
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KfhA0xayiqO65hivnRnnoh8cI(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_ad

    :cond_de
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kvvx152O1Uo652lSpg5iE1I(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-void

    :cond_eb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a valid OID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-void
.end method

.method public static KfhA0xayiqO65hivnRnnoh8cI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;
    .registers 3

    if-eqz p0, :cond_26

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-eqz v0, :cond_7

    goto :goto_26

    :cond_7
    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    return-object v0

    :cond_12
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

    :cond_26
    :goto_26
    check-cast p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    return-object p0
.end method

.method public static KgdivAliuhhnOe2iR73uaI([B)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v10, v4

    move v7, v6

    const-wide/16 v8, 0x0

    :goto_e
    array-length v11, v0

    if-eq v7, v11, :cond_87

    aget-byte v11, v0, v7

    const-wide v12, 0xffffffffffff80L

    cmp-long v12, v8, v12

    const/4 v13, 0x7

    const/16 v14, 0x2e

    const/16 v15, 0x32

    const-wide/16 v16, 0x50

    if-gtz v12, :cond_55

    and-int/lit8 v12, v11, 0x7f

    int-to-long v2, v12

    add-long/2addr v8, v2

    and-int/lit16 v2, v11, 0x80

    if-nez v2, :cond_53

    if-eqz v5, :cond_4a

    const-wide/16 v2, 0x28

    cmp-long v5, v8, v2

    if-gez v5, :cond_39

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_39
    cmp-long v5, v8, v16

    if-gez v5, :cond_44

    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v2

    goto :goto_49

    :cond_44
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long v8, v8, v16

    :goto_49
    move v5, v6

    :cond_4a
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_50
    const-wide/16 v8, 0x0

    goto :goto_84

    :cond_53
    shl-long/2addr v8, v13

    goto :goto_84

    :cond_55
    if-nez v10, :cond_5b

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_5b
    and-int/lit8 v2, v11, 0x7f

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    and-int/lit16 v3, v11, 0x80

    if-nez v3, :cond_80

    if-eqz v5, :cond_78

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move v5, v6

    :cond_78
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v10, v4

    goto :goto_50

    :cond_80
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    :goto_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I(I)V
    .registers 2

    const/16 v0, 0x1000

    if-gt p0, v0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "exceeded OID contents length limit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static KvyA01pu5yOryrRk3kI([BZ)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;
    .registers 4

    array-length v0, p0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kvvx152O1Uo652lSpg5iE1I(I)V

    new-instance v0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;-><init>([B)V

    sget-object v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kvvx152O1Uo652lSpg5iE1I([B)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-eqz p1, :cond_22

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->KyqOjqyU2SoxvE3gI([B)[B

    move-result-object p0

    :cond_22
    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid OID contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final K0wipv9AtliO55qRn6mI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;
    .registers 10

    sget-object v0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3fff

    if-gt v0, v1, :cond_cc

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KvyA01pu5yOryrRk3kI(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    if-gt v1, v2, :cond_41

    array-length v1, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v1}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kvvx152O1Uo652lSpg5iE1I(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_35

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    :cond_35
    int-to-byte v1, v1

    array-length v2, v3

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [B

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v1, v4, v2

    goto :goto_95

    :cond_41
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v0

    :goto_47
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7d

    if-ne v2, v4, :cond_4e

    const/4 v4, 0x0

    goto :goto_64

    :cond_4e
    const/16 v5, 0x2e

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v4, :cond_5e

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v7, v4

    move-object v4, v2

    move v2, v7

    goto :goto_64

    :cond_5e
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v5, 0x1

    :goto_64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-gt v5, v6, :cond_74

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K4cv12eOhp5UsS8gpsE2q2z1I(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_47

    :cond_74
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KfhA0xayiqO65hivnRnnoh8cI(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_47

    :cond_7d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v3

    array-length v4, v1

    add-int/2addr v2, v4

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kvvx152O1Uo652lSpg5iE1I(I)V

    array-length v2, v3

    array-length v4, v1

    add-int/2addr v2, v4

    new-array v4, v2, [B

    array-length v2, v3

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    array-length v3, v1

    invoke-static {v1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_95
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-direct {p1, v4, p0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a valid relative OID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded relative OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KgdivAliuhhnOe2iR73uaI([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_14

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_e

    monitor-exit p0

    return-object v0

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_e

    throw v0
.end method

.method public final K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;-><init>([B)V

    sget-object v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-nez v2, :cond_28

    monitor-enter v1

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    monitor-exit v1

    return-object p0

    :catchall_1d
    move-exception p0

    goto :goto_26

    :cond_1f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    goto :goto_1b

    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_1d

    throw p0

    :cond_28
    return-object v2
.end method

.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    const/4 v0, 0x6

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
