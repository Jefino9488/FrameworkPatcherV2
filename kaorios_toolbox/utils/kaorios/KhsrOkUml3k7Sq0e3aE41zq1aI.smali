.class public final Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:I

.field public final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_98

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x20

    goto :goto_29

    :cond_1a
    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x40

    goto :goto_29

    :cond_25
    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v0

    :goto_29
    iput v0, p0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Ku5O3sihzbUhwSewE8uI:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->Kq5pt6AeqxqwOjab0R8ioI:I

    mul-int/lit8 v2, v0, 0x8

    int-to-double v2, v2

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    :goto_35
    shr-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3c

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_3c
    int-to-double v5, v6

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xf

    mul-int/2addr v3, v2

    move v5, v4

    :goto_47
    shr-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4e

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_4e
    :goto_4e
    shr-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_55

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_55
    div-int/2addr v5, v4

    int-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8e

    sget-object v2, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Map;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;

    if-eqz p0, :cond_76

    return-void

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot find OID for digest algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    sget-object p0, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Map;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "treeDigest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
