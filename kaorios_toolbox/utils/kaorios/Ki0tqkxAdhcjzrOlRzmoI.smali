.class public final Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;
.super Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:[B

.field public volatile K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

.field public final KmzodnwO1tUkgkS8cymEofiI:[B

.field public final Kq4snztAiatOsRsxI:[B

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;)V
    .registers 12

    iget-object v0, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget-object v1, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KyqOjqyU2SoxvE3gI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget v1, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    iget-object v3, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->Kq4snztAiatOsRsxI:[B

    if-eqz v3, :cond_1e

    array-length v4, v3

    if-ne v4, v1, :cond_16

    iput-object v3, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->Kq4snztAiatOsRsxI:[B

    goto :goto_22

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->Kq4snztAiatOsRsxI:[B

    :goto_22
    iget-object v4, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->KyqOjqyU2SoxvE3gI:[B

    if-eqz v4, :cond_34

    array-length v5, v4

    if-ne v5, v1, :cond_2c

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KyqOjqyU2SoxvE3gI:[B

    goto :goto_38

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KyqOjqyU2SoxvE3gI:[B

    :goto_38
    iget-object v4, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->K7b6cynAykO75yzw1Ri5kI:[B

    if-eqz v4, :cond_4a

    array-length v5, v4

    if-ne v5, v1, :cond_42

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K7b6cynAykO75yzw1Ri5kI:[B

    goto :goto_4e

    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    new-array v5, v1, [B

    iput-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K7b6cynAykO75yzw1Ri5kI:[B

    :goto_4e
    iget-object v5, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->KmzodnwO1tUkgkS8cymEofiI:[B

    if-eqz v5, :cond_60

    array-length v6, v5

    if-ne v6, v1, :cond_58

    iput-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KmzodnwO1tUkgkS8cymEofiI:[B

    goto :goto_64

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of root needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KmzodnwO1tUkgkS8cymEofiI:[B

    :goto_64
    iget-object v1, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    if-eqz v1, :cond_6b

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    goto :goto_c1

    :cond_6b
    iget v1, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v5, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    shl-int v5, v2, v5

    add-int/lit8 v6, v5, -0x2

    if-ge v1, v6, :cond_a8

    if-eqz v4, :cond_a8

    if-eqz v3, :cond_a8

    new-instance v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    new-instance v6, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    new-instance v7, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v7, v6}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    new-instance v6, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v8, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v6, v8}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iget v8, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v0, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmwO02nawgUws9Syxnq2rElI:I

    shl-int v9, v2, v8

    sub-int/2addr v9, v2

    invoke-direct {v5, v6, v8, v0, v9}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;III)V

    invoke-virtual {v5, v4, v3, v7}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    :goto_9a
    iget v0, v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    if-ge v0, v1, :cond_a5

    invoke-virtual {v5, v4, v3, v7}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    goto :goto_9a

    :cond_a5
    iput-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    goto :goto_c1

    :cond_a8
    new-instance v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    sub-int/2addr v5, v2

    new-instance v4, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v6, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v4, v6}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iget v6, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v0, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {v3, v4, v6, v0, v1}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;III)V

    iput v5, v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iput v1, v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput-boolean v2, v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    iput-object v3, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    :goto_c1
    iget p1, p1, Lcom/android/internal/util/kaorios/K36yO7va4sU5rrufcS96rnEpI;->KmwO02nawgUws9Syxnq2rElI:I

    if-ltz p1, :cond_d4

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    iget p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    if-ne p1, p0, :cond_cc

    goto :goto_d4

    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxIndex set but not reflected in state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d4
    :goto_d4
    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()[B
    .registers 8

    const-string v0, "error serializing bds state: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget v1, v1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    add-int/lit8 v2, v1, 0x4

    add-int v3, v2, v1

    add-int v4, v3, v1

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    iget v5, v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KhjcAib1Ox60duoR3gzjdfI([BII)V

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->Kq4snztAiatOsRsxI:[B

    const/4 v6, 0x4

    invoke-static {v6, v1, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {v2, v1, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K7b6cynAykO75yzw1Ri5kI:[B

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->KmzodnwO1tUkgkS8cymEofiI:[B

    invoke-static {v4, v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_49

    :try_start_2d
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_43} :catch_4b
    .catchall {:try_start_2d .. :try_end_43} :catchall_49

    :try_start_43
    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    goto :goto_62

    :catch_4b
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_49

    throw v0
.end method

.method public final getEncoded()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ki0tqkxAdhcjzrOlRzmoI;->Ku5O3sihzbUhwSewE8uI()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
