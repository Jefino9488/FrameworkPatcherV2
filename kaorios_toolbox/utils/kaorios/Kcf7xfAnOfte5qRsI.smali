.class public final Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

.field public final K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

.field public final KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

.field public final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public final KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p6, :cond_22

    if-eqz p8, :cond_1a

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object p4, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iput-object p5, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object p6, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    iput-object p7, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    iput-object p8, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'signatureValue\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'subjectPublicKeyInfo\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'serialNumber\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;->K0wipv9AtliO55qRn6mI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_18
    instance-of v10, v2, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    sget-object v11, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    if-eqz v10, :cond_66

    check-cast v2, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    iget v10, v2, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    if-eqz v10, :cond_52

    if-eq v10, v1, :cond_45

    if-eq v10, v3, :cond_39

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2c

    goto :goto_5c

    :cond_2c
    sget-object v9, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6AmOibRyr9I;

    invoke-virtual {v11, v2, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v9

    goto :goto_5c

    :cond_39
    new-instance v8, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    invoke-virtual {v11, v2, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-direct {v8, v2}, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V

    goto :goto_5c

    :cond_45
    sget-object v7, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6AmOibRyr9I;

    invoke-virtual {v11, v2, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    move-result-object v7

    goto :goto_5c

    :cond_52
    invoke-virtual {v11, v2, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v6

    :goto_5c
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v5

    move-object v13, v5

    move v5, v2

    move-object v2, v13

    goto :goto_18

    :cond_66
    invoke-static {v2}, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v3

    :goto_6e
    instance-of v10, v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    if-eqz v10, :cond_8f

    check-cast v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    iget v10, v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KmwO02nawgUws9Syxnq2rElI:I

    const/4 v12, 0x4

    if-eq v10, v12, :cond_7a

    goto :goto_85

    :cond_7a
    invoke-virtual {v11, v3, v1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-static {v3}, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    move-result-object v3

    move-object v4, v3

    :goto_85
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v5

    move-object v13, v5

    move v5, v3

    move-object v3, v13

    goto :goto_6e

    :cond_8f
    invoke-static {v3}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p1

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iput-object v6, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iput-object v7, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v8, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    iput-object v9, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    iput-object v2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    iput-object v4, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-void
.end method

.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V
    .registers 6

    if-eqz p2, :cond_c

    new-instance v0, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    new-instance v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;ILcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    new-instance p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
