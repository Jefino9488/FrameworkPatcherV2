.class public final Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;
.super Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:[B

.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

.field public final Kq4snztAiatOsRsxI:I

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;)V
    .registers 7

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget-object v2, v1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KyqOjqyU2SoxvE3gI:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget v1, v1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    iget-object v2, p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_4d

    array-length p1, v2

    add-int v0, v1, v1

    if-ne p1, v0, :cond_2a

    iput v3, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Kq4snztAiatOsRsxI:I

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kx0bOnf5zU924StfxbEpI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {v2, v1, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kx0bOnf5zU924StfxbEpI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->K7b6cynAykO75yzw1Ri5kI:[B

    return-void

    :cond_2a
    array-length p1, v2

    add-int/lit8 v0, v1, 0x4

    add-int v4, v0, v1

    if-ne p1, v4, :cond_45

    invoke-static {v3, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KmzodnwO1tUkgkS8cymEofiI(I[B)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Kq4snztAiatOsRsxI:I

    const/4 p1, 0x4

    invoke-static {v2, p1, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kx0bOnf5zU924StfxbEpI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kx0bOnf5zU924StfxbEpI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->K7b6cynAykO75yzw1Ri5kI:[B

    return-void

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key has wrong size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KgAcOcqsyqoRgoyk5I;

    if-eqz v0, :cond_56

    iget v0, v0, Lcom/android/internal/util/kaorios/KgAcOcqsyqoRgoyk5I;->Ku5O3sihzbUhwSewE8uI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Kq4snztAiatOsRsxI:I

    goto :goto_58

    :cond_56
    iput v3, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Kq4snztAiatOsRsxI:I

    :goto_58
    iget-object v0, p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_6c

    array-length v2, v0

    if-ne v2, v1, :cond_64

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KyqOjqyU2SoxvE3gI:[B

    goto :goto_70

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of root must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KyqOjqyU2SoxvE3gI:[B

    :goto_70
    iget-object p1, p1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_84

    array-length v0, p1

    if-ne v0, v1, :cond_7c

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->K7b6cynAykO75yzw1Ri5kI:[B

    return-void

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of publicSeed must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->K7b6cynAykO75yzw1Ri5kI:[B

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()[B
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget-object v0, v0, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget v0, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Kq4snztAiatOsRsxI:I

    if-eqz v2, :cond_15

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    const/4 v1, 0x4

    goto :goto_19

    :cond_15
    add-int v2, v0, v0

    new-array v3, v2, [B

    :goto_19
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->K7b6cynAykO75yzw1Ri5kI:[B

    invoke-static {v1, v3, p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    return-object v3
.end method

.method public final getEncoded()[B
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kgnq61OcUwd02Sd39Euof2aI;->Ku5O3sihzbUhwSewE8uI()[B

    move-result-object p0

    return-object p0
.end method
