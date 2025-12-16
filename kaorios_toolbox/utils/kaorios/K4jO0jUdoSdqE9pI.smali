.class public abstract Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# virtual methods
.method public final KmzodnwO1tUkgkS8cymEofiI()[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8c63Ooauv32UndyuScEgI(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public abstract Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    return p0
.end method

.method public final getEncoded()[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v1, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KvyA01pu5yOryrRk3kI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result p0

    return p0
.end method
