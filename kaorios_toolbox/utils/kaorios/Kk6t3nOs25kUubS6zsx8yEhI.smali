.class public final Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;
.super Ljava/lang/Object;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

.field public K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

.field public KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

.field public KtbuouOlomiUohgSxfezrEyv01I:Z

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    const/16 v1, 0x80

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v1, :cond_10

    instance-of v0, v0, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid tag class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;
    .registers 9

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KtbuouOlomiUohgSxfezrEyv01I:Z

    if-eqz v0, :cond_9b

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    if-eqz v0, :cond_9b

    new-instance v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iget-object v4, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    new-instance v5, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;

    iget-object v7, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;-><init>(Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;Lcom/android/internal/util/kaorios/Ksf6O97wUn9cS6qbEc316I;)V

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    if-eqz v6, :cond_3d

    goto :goto_4a

    :cond_3d
    new-instance v6, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(I)V

    const/4 v7, -0x1

    iput v7, v6, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    invoke-static {v6}, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    move-result-object v6

    :goto_4a
    iget-object v7, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_93

    if-eqz v3, :cond_8b

    if-eqz v4, :cond_83

    if-eqz v6, :cond_7b

    if-eqz v7, :cond_73

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iput-object v2, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iput-object v3, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iput-object v4, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    iput-object v5, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kqf528AcfznaOhghw7wRmI;

    iput-object v6, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    iput-object v7, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    iput-object p0, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    return-object v0

    :cond_73
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'subjectPublicKeyInfo\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'subject\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'issuer\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'signature\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'serialNumber\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
