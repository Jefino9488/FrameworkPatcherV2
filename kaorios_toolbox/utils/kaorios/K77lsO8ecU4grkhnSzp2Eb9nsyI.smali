.class public final Lcom/android/internal/util/kaorios/K77lsO8ecU4grkhnSzp2Eb9nsyI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K77lsO8ecU4grkhnSzp2Eb9nsyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K77lsO8ecU4grkhnSzp2Eb9nsyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->K0wipv9AtliO55qRn6mI()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    :goto_16
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    goto :goto_16
.end method
