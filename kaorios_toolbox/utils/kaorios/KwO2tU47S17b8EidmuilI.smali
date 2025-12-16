.class public final Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    sput-object v0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_11

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->KfhA0xayiqO65hivnRnnoh8cI([B)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2b

    if-eqz p2, :cond_17

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p2

    goto :goto_18

    :cond_17
    move-object p2, p1

    :goto_18
    iput-object p2, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_1d
    if-ge v0, p0, :cond_2a

    aget-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    if-ne p2, v1, :cond_2a

    goto :goto_1d

    :cond_2a
    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed enumerated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Kr021bO9Updrd4Sc925kEfdq29I([BZ)Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;
    .registers 5

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    new-instance v0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>([BZ)V

    return-object v0

    :cond_a
    array-length v0, p0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1c

    new-instance v0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>([BZ)V

    return-object v0

    :cond_1c
    sget-object v1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    aget-object v2, v1, v0

    if-nez v2, :cond_29

    new-instance v2, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>([BZ)V

    aput-object v2, v1, v0

    :cond_29
    return-object v2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/16 v0, 0xa

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kv20eAs5x8fqOila11RtI(IZ[B)V

    return-void
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
