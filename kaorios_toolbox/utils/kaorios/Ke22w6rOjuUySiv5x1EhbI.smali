.class public final Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;
.super Ljava/lang/Object;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:C

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    if-eq p2, v0, :cond_1c

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1c

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput-char p2, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Kq5pt6AeqxqwOjab0R8ioI:C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, -0x1

    :goto_19
    iput p1, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reserved separator character"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    iget v0, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_13
    :goto_13
    iget v6, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_43

    iget v6, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_28

    move v4, v3

    goto :goto_13

    :cond_28
    const/16 v7, 0x22

    if-ne v6, v7, :cond_2f

    xor-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2f
    if-eqz v5, :cond_32

    goto :goto_13

    :cond_32
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_38

    move v4, v2

    goto :goto_13

    :cond_38
    iget-char v7, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Kq5pt6AeqxqwOjab0R8ioI:C

    if-ne v6, v7, :cond_13

    :goto_3c
    iget p0, p0, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    if-nez v4, :cond_48

    if-nez v5, :cond_48

    goto :goto_3c

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "badly formatted directory string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
