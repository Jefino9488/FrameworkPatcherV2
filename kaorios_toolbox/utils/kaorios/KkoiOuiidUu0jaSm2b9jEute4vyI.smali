.class public final Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Kiw4Og85dtUpsSuE4zI;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kiw4Og85dtUpsSuE4zI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KolAe9drpO8gwRpI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KolAe9drpO8gwRpI;->Ku5O3sihzbUhwSewE8uI()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_1f

    new-instance v1, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;-><init>([B[B)V

    iput-object v1, p0, Lcom/android/internal/util/kaorios/KkoiOuiidUu0jaSm2b9jEute4vyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K4O8weymU04nx77S2tcnevEjghqI;

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
