.class public final Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;


# direct methods
.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;
    .registers 14

    new-instance v0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_150

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v3

    instance-of v4, v3, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_21

    check-cast v3, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    goto/16 :goto_13f

    :cond_21
    const/4 v4, 0x0

    if-eqz v3, :cond_13e

    new-instance v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    invoke-static {v3}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v3

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v3, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    if-eqz v8, :cond_49

    invoke-virtual {v3, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    sget-object v9, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    invoke-virtual {v9, v8, v5}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object v8, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    move v8, v1

    goto :goto_53

    :cond_49
    new-instance v8, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const-wide/16 v9, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>(J)V

    iput-object v8, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    const/4 v8, -0x1

    :goto_53
    iget-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v9, v1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KvyA01pu5yOryrRk3kI(I)Z

    move-result v9

    if-eqz v9, :cond_5e

    move v10, v1

    move v9, v5

    goto :goto_73

    :cond_5e
    iget-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v9, v5}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KvyA01pu5yOryrRk3kI(I)Z

    move-result v9

    if-eqz v9, :cond_69

    move v9, v1

    move v10, v5

    goto :goto_73

    :cond_69
    iget-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v9, v6}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->KvyA01pu5yOryrRk3kI(I)Z

    move-result v9

    if-eqz v9, :cond_136

    move v9, v1

    move v10, v9

    :goto_73
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v3, v11}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K0wipv9AtliO55qRn6mI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v3, v11}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    add-int/lit8 v11, v8, 0x3

    invoke-virtual {v3, v11}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    add-int/lit8 v11, v8, 0x4

    invoke-virtual {v3, v11}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v11

    instance-of v12, v11, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    if-eqz v12, :cond_a5

    move-object v4, v11

    check-cast v4, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    goto :goto_b0

    :cond_a5
    if-eqz v11, :cond_b0

    new-instance v4, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    invoke-static {v11}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V

    :cond_b0
    :goto_b0
    iput-object v4, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    add-int/lit8 v4, v8, 0x5

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v4

    iput-object v4, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v3, v8}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    move-result-object v4

    iput-object v4, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v4

    sub-int/2addr v4, v8

    sub-int/2addr v4, v5

    if-eqz v4, :cond_dd

    if-nez v9, :cond_d5

    goto :goto_dd

    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dd
    :goto_dd
    if-lez v4, :cond_134

    add-int v9, v8, v4

    invoke-virtual {v3, v9}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    iget v11, v9, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    sget-object v12, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    if-eq v11, v5, :cond_129

    if-eq v11, v6, :cond_120

    if-ne v11, v2, :cond_10a

    if-nez v10, :cond_102

    sget-object v11, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    invoke-virtual {v11, v9, v5}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-static {v9}, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    goto :goto_131

    :cond_102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tag encountered in structure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    invoke-virtual {v12, v9, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    iput-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    goto :goto_131

    :cond_129
    invoke-virtual {v12, v9, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    iput-object v9, v7, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    :goto_131
    add-int/lit8 v4, v4, -0x1

    goto :goto_dd

    :cond_134
    move-object v3, v7

    goto :goto_13f

    :cond_136
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13e
    move-object v3, v4

    :goto_13f
    iput-object v3, v0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    invoke-virtual {p0, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {p0, v6}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-object v0

    :cond_150
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    return-object p0
.end method
