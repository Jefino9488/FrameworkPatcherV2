.class public final Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;

.field public K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

.field public K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

.field public Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

.field public KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

.field public KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz v1, :cond_15

    const-string v2, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ke9o5OsUx9bfSyiklskE8tI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Ke9o5OsUx9bfSyiklskE8tI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return-object v1

    :cond_15
    new-instance v1, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->Kvvx152O1Uo652lSpg5iE1I(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2d

    new-instance v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/Kk6t3nOs25kUubS6zsx8yEhI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-eqz v0, :cond_58

    new-instance v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_58
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-eqz v0, :cond_66

    new-instance v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v3, v2, v5, v0, v6}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_66
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kxx991eA1pcOx7spRf3dczI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    if-eqz p0, :cond_74

    new-instance v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v4, v2, p0, v3}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_74
    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
