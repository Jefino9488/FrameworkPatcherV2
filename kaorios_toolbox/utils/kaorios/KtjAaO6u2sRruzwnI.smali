.class public final Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;
.super Ljava/security/BasicPermission;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "BC"

    invoke-direct {p0, v0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " ,"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_13
    :goto_13
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    or-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_28
    const-string v2, "ecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    or-int/lit8 p1, p1, 0x2

    goto :goto_13

    :cond_33
    const-string v2, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    or-int/lit8 p1, p1, 0x4

    goto :goto_13

    :cond_3e
    const-string v2, "dhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    or-int/lit8 p1, p1, 0x8

    goto :goto_13

    :cond_49
    const-string v2, "acceptableeccurves"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    or-int/lit8 p1, p1, 0x10

    goto :goto_13

    :cond_54
    const-string v2, "additionalecparameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    or-int/lit8 p1, p1, 0x20

    goto :goto_13

    :cond_5f
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 p1, 0x3f

    goto :goto_13

    :cond_6a
    if-eqz p1, :cond_6f

    iput p1, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    return-void

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown permissions passed to mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;

    iget v1, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v3, p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v1, v3, :cond_20

    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public final getActions()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final implies(Ljava/security/Permission;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    check-cast p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;

    iget p1, p1, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget p0, p0, Lcom/android/internal/util/kaorios/KtjAaO6u2sRruzwnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v1
.end method
