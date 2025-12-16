.class public final Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;
.super Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;


# instance fields
.field private final digest:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    return-void
.end method

.method public static bridge synthetic K8c63Ooauv32UndyuScEgI(Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    return-object p0
.end method


# virtual methods
.method public digest()[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;->digest:[B

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "digest"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    new-array p0, v2, [Ljava/lang/String;

    goto :goto_19

    :cond_13
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/android/internal/util/kaorios/Kuu0O1esUpf06xdScw48Eb8aywI;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    array-length v4, p0

    if-ge v2, v4, :cond_4a

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v4, p0

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_47

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_4a
    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
