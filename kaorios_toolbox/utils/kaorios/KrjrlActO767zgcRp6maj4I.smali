.class public final Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;
.super Ljava/lang/Object;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

.field public Kq4snztAiatOsRsxI:Ljava/lang/Object;

.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/Khonf6A3jddhwOntudsRwe44I;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    iget v0, p1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;-><init>(ILcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    iput-object v1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KmwO02nawgUws9Syxnq2rElI([BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B
    .registers 6

    new-instance v0, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v1, p2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v1, v0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v1, p2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v1, v0, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget p2, p2, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KyqOjqyU2SoxvE3gI:I

    iput p2, v0, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    new-instance p2, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {p2, v0}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    invoke-virtual {p2}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->Ku5O3sihzbUhwSewE8uI()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->K7b6cynAykO75yzw1Ri5kI([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public Kq4snztAiatOsRsxI([B[B)V
    .registers 5

    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    iget v1, v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v0, v1, :cond_23

    if-eqz p2, :cond_1b

    array-length v0, p2

    if-ne v0, v1, :cond_13

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicSeed == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;
    .registers 10

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    iget v1, v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_9
    iget v3, v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->KmwO02nawgUws9Syxnq2rElI:I

    if-ge v2, v3, :cond_5a

    new-instance v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v5, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v5, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v5, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v5, p1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KyqOjqyU2SoxvE3gI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iput v2, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget v5, p1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iget p1, p1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput p1, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance p1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {p1, v4}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    if-ltz v2, :cond_52

    if-ge v2, v3, :cond_52

    iget-object v3, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast v4, [B

    int-to-long v5, v2

    const/16 v7, 0x20

    invoke-static {v7, v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Knfz4Orf1pcUmo7dSw1xEk4I(IJ)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->K7b6cynAykO75yzw1Ri5kI([B[B)[B

    move-result-object v3

    iget v4, v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI([BILcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz v0, :cond_9e

    const/4 p1, 0x0

    move v2, p1

    :goto_63
    array-length v3, v1

    if-ge v2, v3, :cond_75

    aget-object v3, v1, v2

    if-eqz v3, :cond_6d

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_6d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicKey byte array == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    array-length v2, v1

    iget v3, v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->KmwO02nawgUws9Syxnq2rElI:I

    if-ne v2, v3, :cond_96

    :goto_7a
    array-length v2, v1

    if-ge p1, v2, :cond_8f

    aget-object v2, v1, p1

    array-length v2, v2

    iget v3, v0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v2, v3, :cond_87

    add-int/lit8 p1, p1, 0x1

    goto :goto_7a

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong publicKey format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KcxerAdpv60xOdaR8bI([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    return-object p0

    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong publicKey size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Ku5O3sihzbUhwSewE8uI([BILcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B
    .registers 11

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    iget v2, v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Ku5O3sihzbUhwSewE8uI:I

    array-length v3, p1

    if-ne v3, v2, :cond_ad

    invoke-virtual {p3}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->Ku5O3sihzbUhwSewE8uI()[B

    iget v1, v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-gt p2, v1, :cond_a5

    if-nez p2, :cond_19

    return-object p1

    :cond_19
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI([BILcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object p1

    new-instance v1, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v4, p3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v4, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v4, p3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v4, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v4, p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KyqOjqyU2SoxvE3gI:I

    iput v4, v1, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget p3, p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->K7b6cynAykO75yzw1Ri5kI:I

    iput p3, v1, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    sub-int/2addr p2, v3

    iput p2, v1, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    const/4 p2, 0x0

    iput p2, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {p3, v1}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p3}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->Ku5O3sihzbUhwSewE8uI()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->K7b6cynAykO75yzw1Ri5kI([B[B)[B

    move-result-object v1

    new-instance v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v5, p3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v5, p3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v5, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v5, p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KyqOjqyU2SoxvE3gI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget v5, p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->K7b6cynAykO75yzw1Ri5kI:I

    iput v5, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget p3, p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput p3, v4, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v3, v4, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance p3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {p3, v4}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual {p3}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->Ku5O3sihzbUhwSewE8uI()[B

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->K7b6cynAykO75yzw1Ri5kI([B[B)[B

    move-result-object p0

    new-array p3, v2, [B

    move v3, p2

    :goto_7c
    if-ge v3, v2, :cond_89

    aget-byte v4, p1, v3

    aget-byte v5, p0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_89
    array-length p0, v1

    iget p1, v0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne p0, p1, :cond_9d

    if-ne v2, p1, :cond_95

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->KmzodnwO1tUkgkS8cymEofiI(I[B[B)[B

    move-result-object p0

    return-object p0

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max chain length must not be greater than w"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startHash needs to be "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
