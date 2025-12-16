.class public final Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;
.super Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/kaorios/KaoriKeyboxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KqqOuUisf9SadffEvgI"
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    iget v0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    iget v1, p1, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->alias:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "uid;alias"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    new-array p0, v2, [Ljava/lang/String;

    goto :goto_22

    :cond_1c
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    array-length v4, p0

    if-ge v2, v4, :cond_53

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v4, p0

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_50

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_53
    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/KaoriKeyboxUtils$KqqOuUisf9SadffEvgI;->uid:I

    return p0
.end method
