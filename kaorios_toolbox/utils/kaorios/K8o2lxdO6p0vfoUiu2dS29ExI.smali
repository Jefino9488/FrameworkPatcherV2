.class public final Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

.field public K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

.field public K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

.field public Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    if-eqz v1, :cond_15

    const-string v2, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v2}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return-object v1

    :cond_15
    new-instance v1, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KvyA01pu5yOryrRk3kI(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2d

    new-instance v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v0, :cond_58

    new-instance v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_58
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v0, :cond_66

    new-instance v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v5, v0, v6}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_66
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    if-eqz p0, :cond_74

    new-instance v0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v4, v2, p0, v3}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_74
    new-instance p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
