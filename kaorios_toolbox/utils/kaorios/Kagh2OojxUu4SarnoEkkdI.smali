.class public final Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;
.super Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:[B

.field public volatile K91vAo8w086Op21a5bR8uI:J

.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

.field public final KmzodnwO1tUkgkS8cymEofiI:[B

.field public final Kq4snztAiatOsRsxI:[B

.field public volatile KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;)V
    .registers 8

    iget-object v1, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget-object v0, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget-object v2, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KyqOjqyU2SoxvE3gI:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/android/internal/util/kaorios/Ktln0A7l0i8OmyRwmrju5I;-><init>(ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget v0, v0, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    iget-wide v2, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->K91vAo8w086Op21a5bR8uI:J

    iget-object v5, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->Kq4snztAiatOsRsxI:[B

    if-eqz v5, :cond_24

    array-length v2, v5

    if-ne v2, v0, :cond_1c

    iput-object v5, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->Kq4snztAiatOsRsxI:[B

    goto :goto_28

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->Kq4snztAiatOsRsxI:[B

    :goto_28
    iget-object v2, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->KyqOjqyU2SoxvE3gI:[B

    if-eqz v2, :cond_3a

    array-length v3, v2

    if-ne v3, v0, :cond_32

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KyqOjqyU2SoxvE3gI:[B

    goto :goto_3e

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KyqOjqyU2SoxvE3gI:[B

    :goto_3e
    iget-object v4, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->K7b6cynAykO75yzw1Ri5kI:[B

    if-eqz v4, :cond_50

    array-length v2, v4

    if-ne v2, v0, :cond_48

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->K7b6cynAykO75yzw1Ri5kI:[B

    goto :goto_54

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->K7b6cynAykO75yzw1Ri5kI:[B

    :goto_54
    iget-object v2, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->KmzodnwO1tUkgkS8cymEofiI:[B

    if-eqz v2, :cond_66

    array-length v3, v2

    if-ne v3, v0, :cond_5e

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KmzodnwO1tUkgkS8cymEofiI:[B

    goto :goto_6a

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of root needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KmzodnwO1tUkgkS8cymEofiI:[B

    :goto_6a
    iget-object v0, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    if-eqz v0, :cond_71

    :goto_6e
    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    goto :goto_92

    :cond_71
    iget-wide v2, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v0, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K39AzOb2jazR1ucsI(IJ)Z

    move-result v0

    if-eqz v0, :cond_87

    if-eqz v4, :cond_87

    if-eqz v5, :cond_87

    new-instance v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    iget-wide v2, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->Kq5pt6AeqxqwOjab0R8ioI:J

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;-><init>(Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;J[B[B)V

    goto :goto_6e

    :cond_87
    new-instance v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    iget-wide v1, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->KmwO02nawgUws9Syxnq2rElI:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;-><init>(J)V

    goto :goto_6e

    :goto_92
    iget-wide v0, p1, Lcom/android/internal/util/kaorios/K6xxqA1udn31Ozpp8dRgI;->KmwO02nawgUws9Syxnq2rElI:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_ab

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    iget-wide p0, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Kq5pt6AeqxqwOjab0R8ioI:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_a3

    goto :goto_ab

    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxIndex set but not reflected in state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ab
    :goto_ab
    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()[B
    .registers 9

    const-string v0, "error serializing bds state: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;

    iget-object v2, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget v2, v2, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v1, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->KmwO02nawgUws9Syxnq2rElI:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v3, v1, v2

    add-int v4, v3, v2

    add-int v5, v4, v2

    add-int/2addr v2, v5

    new-array v2, v2, [B

    iget-wide v6, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->K91vAo8w086Op21a5bR8uI:J

    invoke-static {v1, v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Knfz4Orf1pcUmo7dSw1xEk4I(IJ)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v2, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->Kq4snztAiatOsRsxI:[B

    invoke-static {v1, v2, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->K7b6cynAykO75yzw1Ri5kI:[B

    invoke-static {v4, v2, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KmzodnwO1tUkgkS8cymEofiI:[B

    invoke-static {v5, v2, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4cv12eOhp5UsS8gpsE2q2z1I(I[B[B)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_52

    :try_start_36
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kr021bO9Updrd4Sc925kEfdq29I([B[B)[B

    move-result-object v0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_50} :catch_54
    .catchall {:try_start_36 .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit p0

    return-object v0

    :catchall_52
    move-exception v0

    goto :goto_6b

    :catch_54
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_52

    throw v0
.end method

.method public final getEncoded()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kagh2OojxUu4SarnoEkkdI;->Ku5O3sihzbUhwSewE8uI()[B

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
