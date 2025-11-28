.class public final Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
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

    const-class v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-void
.end method

.method public static K0wipv9AtliO55qRn6mI([BZ)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 4

    array-length v0, p0

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_2f

    new-instance v0, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;-><init>([B)V

    sget-object v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kvvx152O1Uo652lSpg5iE1I([B)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-eqz p1, :cond_23

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->KyqOjqyU2SoxvE3gI([B)[B

    move-result-object p0

    :cond_23
    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;-><init>([B)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid relative OID contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded relative OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K4cv12eOhp5UsS8gpsE2q2z1I(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    const/16 v0, 0x9

    new-array v0, v0, [B

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    :goto_c
    const-wide/16 v3, 0x80

    cmp-long v1, p1, v3

    if-ltz v1, :cond_1d

    const/4 v1, 0x7

    shr-long/2addr p1, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_c

    :cond_1d
    rsub-int/lit8 p1, v2, 0x9

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public static KfhA0xayiqO65hivnRnnoh8cI(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 9

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_f
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_14
    if-ltz v5, :cond_26

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_26
    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public static Kvvx152O1Uo652lSpg5iE1I([B)Z
    .registers 6

    const-string v0, "org.bouncycastle.asn1.allow_wrong_oid_enc"

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    array-length v0, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_f

    return v2

    :cond_f
    move v3, v1

    move v0, v2

    :goto_11
    array-length v4, p0

    if-ge v0, v4, :cond_2a

    const/16 v4, 0x80

    if-eqz v3, :cond_1f

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v4, :cond_1f

    return v2

    :cond_1f
    aget-byte v3, p0, v0

    and-int/2addr v3, v4

    if-nez v3, :cond_26

    move v3, v1

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2a
    return v3
.end method

.method public static KvyA01pu5yOryrRk3kI(Ljava/lang/String;I)Z
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lt v3, p1, :cond_2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_22

    if-eqz v2, :cond_38

    if-le v2, v5, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_20

    goto :goto_38

    :cond_20
    move v2, v1

    goto :goto_2a

    :cond_22
    if-gt v4, v6, :cond_38

    const/16 v0, 0x39

    if-gt v6, v0, :cond_38

    add-int/lit8 v2, v2, 0x1

    :goto_2a
    move v0, v3

    goto :goto_6

    :cond_2c
    if-eqz v2, :cond_38

    if-le v2, v5, :cond_37

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_37

    goto :goto_38

    :cond_37
    return v5

    :cond_38
    :goto_38
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

    const/16 v0, 0xd

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

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
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    if-nez v0, :cond_6e

    iget-object v0, v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v11, v5

    move v8, v7

    const-wide/16 v9, 0x0

    :goto_15
    array-length v12, v0

    if-eq v8, v12, :cond_65

    aget-byte v12, v0, v8

    const-wide v13, 0xffffffffffff80L

    cmp-long v13, v9, v13

    const/4 v14, 0x7

    const/16 v15, 0x2e

    if-gtz v13, :cond_3d

    and-int/lit8 v13, v12, 0x7f

    int-to-long v3, v13

    add-long/2addr v9, v3

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_3b

    if-eqz v6, :cond_32

    move v6, v7

    goto :goto_35

    :cond_32
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_35
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_38
    const-wide/16 v9, 0x0

    goto :goto_62

    :cond_3b
    shl-long/2addr v9, v14

    goto :goto_62

    :cond_3d
    if-nez v11, :cond_43

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    :cond_43
    and-int/lit8 v3, v12, 0x7f

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    and-int/lit16 v4, v12, 0x80

    if-nez v4, :cond_5e

    if-eqz v6, :cond_56

    move v6, v7

    goto :goto_59

    :cond_56
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v11, v5

    goto :goto_38

    :cond_5e
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    :goto_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    goto :goto_6e

    :catchall_6c
    move-exception v0

    goto :goto_72

    :cond_6e
    :goto_6e
    iget-object v0, v1, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6c

    monitor-exit p0

    return-object v0

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6c

    throw v0
.end method
