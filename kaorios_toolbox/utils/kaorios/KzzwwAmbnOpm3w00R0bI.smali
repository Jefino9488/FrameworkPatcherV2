.class public final Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

.field public final transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    const-string v0, "malformed data: "

    const/4 v1, 0x1

    :try_start_3
    sget v2, Lcom/android/internal/util/kaorios/Kjzn0An6O7q15RxI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_13

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;-><init>(Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;)V

    return-void

    :catch_13
    move-exception p0

    goto :goto_1f

    :catch_15
    move-exception p0

    goto :goto_35

    :cond_17
    :try_start_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no content found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1f} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1f} :catch_13

    :goto_1f
    new-instance p1, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_35
    new-instance p1, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KzzwwAmbnOpm3w00R0bI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KdypzveOfUju0hSm72gEv2qztI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->hashCode()I

    move-result p0

    return p0
.end method
