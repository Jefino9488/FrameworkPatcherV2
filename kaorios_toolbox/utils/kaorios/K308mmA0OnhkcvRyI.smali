.class public abstract Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 2

    instance-of p0, p1, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NULL"

    return-object p0
.end method
