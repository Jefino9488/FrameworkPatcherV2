.class public final Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;
.super Ljava/lang/Object;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

.field public K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

.field public KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

.field public KtbuouOlomiUohgSxfezrEyv01I:Z

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    const/16 v1, 0x80

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v1, :cond_10

    instance-of v0, v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

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
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;
    .registers 9

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KtbuouOlomiUohgSxfezrEyv01I:Z

    if-eqz v0, :cond_9b

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    if-eqz v0, :cond_9b

    new-instance v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    new-instance v1, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v3, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    new-instance v5, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iget-object v6, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    iget-object v7, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;-><init>(Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;)V

    iget-object v6, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    if-eqz v6, :cond_3d

    goto :goto_4a

    :cond_3d
    new-instance v6, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(I)V

    const/4 v7, -0x1

    iput v7, v6, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    invoke-static {v6}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v6

    :goto_4a
    iget-object v7, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_93

    if-eqz v3, :cond_8b

    if-eqz v4, :cond_83

    if-eqz v6, :cond_7b

    if-eqz v7, :cond_73

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object v2, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object v3, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iput-object v4, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v5, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iput-object v6, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v7, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    iput-object p0, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

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
