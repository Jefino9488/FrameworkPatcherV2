.class public final Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

# interfaces
.implements Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    return-void
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    const/16 v0, 0xc

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;
    .registers 11

    sget v0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, p0

    new-array v1, v0, [C

    sget-object v2, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI:[S

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v0, :cond_73

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    const/4 v6, -0x1

    if-ltz v3, :cond_21

    if-lt v4, v0, :cond_19

    :goto_17
    move v4, v6

    goto :goto_73

    :cond_19
    add-int/lit8 v6, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v4

    move v3, v5

    move v4, v6

    goto :goto_c

    :cond_21
    sget-object v7, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI:[S

    and-int/lit8 v3, v3, 0x7f

    aget-short v3, v7, v3

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v3, v3

    :goto_2a
    if-ltz v3, :cond_43

    if-lt v5, v0, :cond_2f

    goto :goto_17

    :cond_2f
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v7, v9

    sget-object v9, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Kq5pt6AeqxqwOjab0R8ioI:[B

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    aget-byte v3, v9, v3

    move v5, v8

    goto :goto_2a

    :cond_43
    const/4 v8, -0x2

    if-ne v3, v8, :cond_47

    goto :goto_17

    :cond_47
    const v3, 0xffff

    if-gt v7, v3, :cond_56

    if-lt v4, v0, :cond_4f

    goto :goto_17

    :cond_4f
    add-int/lit8 v3, v4, 0x1

    int-to-char v6, v7

    aput-char v6, v1, v4

    move v4, v3

    goto :goto_71

    :cond_56
    add-int/lit8 v3, v0, -0x1

    if-lt v4, v3, :cond_5b

    goto :goto_17

    :cond_5b
    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v6, v7, 0xa

    const v8, 0xd7c0

    add-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit16 v6, v7, 0x3ff

    const v7, 0xdc00

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v3

    :goto_71
    move v3, v5

    goto :goto_c

    :cond_73
    :goto_73
    if-ltz v4, :cond_7b

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
