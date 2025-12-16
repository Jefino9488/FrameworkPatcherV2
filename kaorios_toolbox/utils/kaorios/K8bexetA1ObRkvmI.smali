.class public final Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;
.super Ljava/io/FilterInputStream;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:[[B

.field public final Kq5pt6AeqxqwOjab0R8ioI:Z

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;IZ)V
    .registers 5

    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:I

    iput-boolean p3, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    iput-object p4, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/io/ByteArrayInputStream;IZ)V

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)[C
    .registers 12

    iget v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_8d

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_5e

    invoke-static {p0, v4, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kalr35sAr3bOaq6mR3pw1I(Ljava/io/InputStream;[BI)I

    move-result v9

    if-ne v9, v3, :cond_58

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_10

    :cond_58
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    if-lez v0, :cond_80

    invoke-static {p0, v4, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kalr35sAr3bOaq6mR3pw1I(Ljava/io/InputStream;[BI)I

    move-result v9

    if-ne v9, v0, :cond_7a

    :cond_66
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_66

    goto :goto_80

    :cond_7a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    :goto_80
    iget p0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    if-nez p0, :cond_87

    if-ne v1, v6, :cond_87

    return-object v2

    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static KmzodnwO1tUkgkS8cymEofiI(Ljava/io/InputStream;I)I
    .registers 6

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4f

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1d

    if-gez p1, :cond_15

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_47

    :goto_21
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_46

    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3e

    shl-int/lit8 p1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_38

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_21

    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    return v0

    :cond_47
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    return p1
.end method

.method public static Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)[B
    .registers 5

    iget v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    array-length v1, p1

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    return-object p0

    :cond_a
    aget-object v1, p1, v0

    if-nez v1, :cond_12

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_12
    array-length p1, v1

    if-ne v0, p1, :cond_6a

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    iget p1, p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v0, p1, :cond_4c

    iget-object p1, p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Ku5O3sihzbUhwSewE8uI:Ljava/io/InputStream;

    array-length v2, v1

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kalr35sAr3bOaq6mR3pw1I(Ljava/io/InputStream;[BI)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;->Ku5O3sihzbUhwSewE8uI()V

    return-object v1

    :cond_2c
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEF length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "corrupted stream - out of bounds length found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer length not right for data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(ILcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 8

    const-string v0, "unknown tag "

    const-string v1, "unsupported tag "

    const/4 v2, 0x0

    const-string v3, " encountered"

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_148

    :pswitch_b
    :try_start_b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_20
    move-exception p0

    goto/16 :goto_134

    :catch_23
    move-exception p0

    goto/16 :goto_13e

    :pswitch_26
    invoke-static {p1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)[C

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;-><init>([C)V

    return-object p1

    :pswitch_30
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;-><init>([B)V

    return-object p1

    :pswitch_3a
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KbOaUzS0yEb05I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KbOaUzS0yEb05I;-><init>([B)V

    return-object p1

    :pswitch_44
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;-><init>([B)V

    return-object p1

    :pswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;-><init>([B)V

    return-object p1

    :pswitch_58
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>([B)V

    return-object p1

    :pswitch_62
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;-><init>([B)V

    return-object p1

    :pswitch_6c
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;-><init>([B)V

    return-object p1

    :pswitch_76
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;-><init>([B)V

    return-object p1

    :pswitch_80
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;-><init>([B)V

    return-object p1

    :pswitch_8a
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;-><init>([B)V

    return-object p1

    :pswitch_94
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;-><init>([B)V

    return-object p1

    :pswitch_9e
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b3
    iget p0, p1, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    sget-object v0, Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x1000

    if-gt p0, v0, :cond_c4

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)[B

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;->Kr021bO9Updrd4Sc925kEfdq29I([BZ)Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;

    move-result-object p0

    return-object p0

    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded relative OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_cc
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;-><init>([B)V

    return-object p1

    :pswitch_d6
    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)[B

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kr021bO9Updrd4Sc925kEfdq29I([BZ)Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    move-result-object p0

    return-object p0

    :pswitch_df
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    new-instance p2, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;

    invoke-direct {p2, p0}, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;-><init>([B)V

    invoke-direct {p1, p2}, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;-><init>(Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;)V

    return-object p1

    :pswitch_ee
    iget p0, p1, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->K0wipv9AtliO55qRn6mI(I)V

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)[B

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Kvvx152O1Uo652lSpg5iE1I([BZ)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p0

    return-object p0

    :pswitch_fc
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_106

    sget-object p0, Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    return-object p0

    :cond_106
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed NULL encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10e
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    return-object p1

    :pswitch_118
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kr021bO9Updrd4Sc925kEfdq29I([B)Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p0

    return-object p0

    :pswitch_121
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>([B)V

    return-object p1

    :pswitch_12b
    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Kr021bO9Updrd4Sc925kEfdq29I([B)Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    move-result-object p0
    :try_end_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_133} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_133} :catch_20

    return-object p0

    :goto_134
    new-instance p1, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v2}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_13e
    new-instance p1, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v2}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_121
        :pswitch_118
        :pswitch_10e
        :pswitch_fc
        :pswitch_ee
        :pswitch_df
        :pswitch_b
        :pswitch_b
        :pswitch_d6
        :pswitch_b
        :pswitch_cc
        :pswitch_b3
        :pswitch_9e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_76
        :pswitch_6c
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_b
        :pswitch_26
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
    .end packed-switch
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/io/InputStream;IZ)I
    .registers 8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x80

    if-ne v1, v0, :cond_f

    const/4 p0, -0x1

    return p0

    :cond_f
    if-ltz v0, :cond_64

    const/16 v1, 0xff

    if-eq v1, v0, :cond_5c

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_54

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_4c

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_19

    if-lt v1, p1, :cond_4b

    if-eqz p2, :cond_2f

    goto :goto_4b

    :cond_2f
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_12

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected end-of-contents marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmzodnwO1tUkgkS8cymEofiI(Ljava/io/InputStream;I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KyqOjqyU2SoxvE3gI(Ljava/io/InputStream;IZ)I

    move-result v3

    if-ltz v3, :cond_2e

    :try_start_1f
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI(III)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    const-string v1, "corrupted stream detected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_2e
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_84

    new-instance v3, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/util/kaorios/KdOctzk8qUl8Sz9EuucpI;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:[[B

    invoke-direct {v4, v3, v2, p0}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;-><init>(Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;I[[B)V

    and-int/lit16 p0, v0, 0xc0

    if-eqz p0, :cond_47

    invoke-virtual {v4, p0, v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Kq4snztAiatOsRsxI(II)Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x3

    if-eq v1, p0, :cond_7f

    const/4 p0, 0x4

    if-eq v1, p0, :cond_7a

    const/16 p0, 0x8

    if-eq v1, p0, :cond_75

    const/16 p0, 0x10

    if-eq v1, p0, :cond_6b

    const/16 p0, 0x11

    if-ne v1, p0, :cond_63

    new-instance p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V

    return-object p0

    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown BER object encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Lcom/android/internal/util/kaorios/KbtpsAybOflavtRx7tilI;

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V

    return-object p0

    :cond_75
    invoke-static {v4}, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    move-result-object p0

    return-object p0

    :cond_7a
    invoke-static {v4}, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    move-result-object p0

    return-object p0

    :cond_7f
    invoke-static {v4}, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    move-result-object p0

    return-object p0

    :cond_84
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    return-object p0

    :cond_d
    new-instance v1, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    if-nez v0, :cond_12

    return-object v1
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;
    .registers 5

    iget v0, p1, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    new-instance p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    return-object p0

    :cond_c
    new-instance v1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-boolean v2, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:[[B

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K91vAo8w086Op21a5bR8uI()Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(III)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;

    iget v1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {v0, p0, p3, v1}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_12

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:[[B

    invoke-static {p2, v0, p0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI(ILcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;[[B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    return-object p0

    :cond_12
    and-int/lit16 v2, p1, 0xc0

    const/4 v1, 0x3

    move p3, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_51

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_40

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    iget p1, p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne p1, v4, :cond_34

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-virtual {p0, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v4

    const/4 v5, 0x2

    move v3, p2

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v0

    :cond_34
    move v3, p2

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v0

    :cond_40
    move v3, p2

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v4, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v4, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v0

    :cond_51
    move p1, p2

    if-eq p1, p3, :cond_fd

    if-eq p1, v1, :cond_c2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_b1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_91

    const/16 p2, 0x11

    if-ne p1, p2, :cond_78

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    sget-object p1, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget p1, p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge p1, v4, :cond_6f

    sget-object p0, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    return-object p0

    :cond_6f
    new-instance p1, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V

    const/4 p0, -0x1

    iput p0, p1, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->KyqOjqyU2SoxvE3gI:I

    return-object p1

    :cond_78
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unknown tag "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " encountered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    iget p1, v0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:I

    if-ge p1, v4, :cond_98

    sget-object p0, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    return-object p0

    :cond_98
    iget-boolean p1, p0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-eqz p1, :cond_a8

    new-instance p0, Lcom/android/internal/util/kaorios/KqO7iokUuey7jSniyglEh119geI;

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KqO7iokUuey7jSniyglEh119geI;->KmwO02nawgUws9Syxnq2rElI:[B

    return-object p0

    :cond_a8
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    move-result-object p0

    return-object p0

    :cond_b1
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    invoke-direct {p1, p0, v4}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;-><init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)V

    return-object p1

    :cond_c2
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    iget p1, p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array p2, p1, [Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    :goto_ca
    if-eq v3, p1, :cond_f3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p3

    instance-of v0, p3, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    if-eqz v0, :cond_db

    check-cast p3, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    aput-object p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_db
    new-instance p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown object encountered in constructed OCTET STRING: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f3
    new-instance p0, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->K0wipv9AtliO55qRn6mI([Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;-><init>([B[Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;)V

    return-object p0

    :cond_fd
    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    iget p1, p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array p2, p1, [Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    :goto_105
    if-eq v3, p1, :cond_12e

    invoke-virtual {p0, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p3

    instance-of v0, p3, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-eqz v0, :cond_116

    check-cast p3, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    aput-object p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_105

    :cond_116
    new-instance p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown object encountered in constructed BIT STRING: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12e
    new-instance p0, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    invoke-direct {p0, p2}, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;-><init>([Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;)V

    return-object p0
.end method
