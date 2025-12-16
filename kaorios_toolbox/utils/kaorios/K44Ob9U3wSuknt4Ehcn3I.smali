.class public abstract Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# direct methods
.method public static KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(Ljava/io/ByteArrayInputStream;IZ)V

    :try_start_c
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_17

    return-object p0

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_1f} :catch_1f

    :catch_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    return-object p0
.end method

.method public abstract K8Ak17imO9w5w4RppI(Z)I
.end method

.method public final K8c63Ooauv32UndyuScEgI(Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;

    invoke-direct {v0, p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KvyA01pu5yOryrRk3kI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    return-void
.end method

.method public abstract K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
.end method

.method public abstract Kgs66qnAfO491Ra48r7aI()Z
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 2

    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public abstract KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_3

    goto :goto_13

    :cond_3
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    if-eqz p0, :cond_15

    :goto_13
    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public abstract hashCode()I
.end method
