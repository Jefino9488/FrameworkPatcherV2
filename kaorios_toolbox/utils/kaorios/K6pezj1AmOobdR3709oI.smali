.class public final Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

.field public K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

.field public K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

.field public Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

.field public KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    if-eqz v1, :cond_15

    const-string v2, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ka0A5478O30qwn9RkI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ka0A5478O30qwn9RkI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

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

    new-instance v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KjoOvphoaU5djf1dSvokjr1Ewh3rkI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v0, :cond_58

    new-instance v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_58
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    if-eqz v0, :cond_66

    new-instance v3, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v5, v0, v6}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_66
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;

    if-eqz p0, :cond_74

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v4, v2, p0, v3}, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;-><init>(ZILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    :cond_74
    new-instance p0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
