.class public final Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:[[B

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;I[[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    iput p2, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI:[[B

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_f

    new-instance p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    return-object p0

    :cond_f
    new-instance v2, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>()V

    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v1

    instance-of v3, v1, Lcom/android/internal/util/kaorios/Kt1OskdsecUo2S278unEl8I;

    if-eqz v3, :cond_26

    check-cast v1, Lcom/android/internal/util/kaorios/Kt1OskdsecUo2S278unEl8I;

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kt1OskdsecUo2S278unEl8I;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v1

    :goto_22
    invoke-virtual {v2, v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    goto :goto_2b

    :cond_26
    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v1

    goto :goto_22

    :goto_2b
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_14

    return-object v2
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI(II)Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;
    .registers 12

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    iget v0, p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    new-instance v2, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x3

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(IIILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    return-object v2

    :cond_18
    move v4, p1

    move v5, p2

    new-instance v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    sget-object p1, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    if-ge v0, v1, :cond_24

    sget-object p0, Lcom/android/internal/util/kaorios/KcenOw0UnSmtkE348eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    move-object v7, p0

    goto :goto_2a

    :cond_24
    new-instance p1, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-direct {p1, p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    move-object v7, p1

    :goto_2a
    const/4 v8, 0x0

    move v6, v5

    move v5, v4

    const/4 v4, 0x4

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(IIILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    return-object v3
.end method

.method public final Ku5O3sihzbUhwSewE8uI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
    .registers 14

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    instance-of v1, v0, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;

    iput-boolean v2, v1, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->K7b6cynAykO75yzw1Ri5kI:Z

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;->Kq5pt6AeqxqwOjab0R8ioI()Z

    :cond_f
    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KmzodnwO1tUkgkS8cymEofiI(Ljava/io/InputStream;I)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v1, v8, :cond_29

    if-eq v1, v7, :cond_29

    if-eq v1, v6, :cond_29

    if-eq v1, v5, :cond_29

    if-ne v1, v4, :cond_27

    goto :goto_29

    :cond_27
    move v9, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v9, v3

    :goto_2a
    iget v10, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {v0, v10, v9}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KyqOjqyU2SoxvE3gI(Ljava/io/InputStream;IZ)I

    move-result v9

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI:[[B

    if-gez v9, :cond_9a

    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_92

    new-instance v2, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;

    invoke-direct {v2, v0, v10}, Lcom/android/internal/util/kaorios/Kabj7hiAx2zakO7ydRn8xbfI;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-direct {v0, v2, v10, p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;-><init>(Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;I[[B)V

    and-int/lit16 p0, p1, 0xc0

    if-eqz p0, :cond_4c

    new-instance p1, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;-><init>(IILcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p1

    :cond_4c
    if-eq v1, v8, :cond_8c

    if-eq v1, v7, :cond_86

    if-eq v1, v4, :cond_80

    if-eq v1, v6, :cond_77

    if-ne v1, v5, :cond_5f

    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-object p0

    :cond_5f
    new-instance p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown BER object encountered: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-object p0

    :cond_80
    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0

    :cond_86
    new-instance p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0

    :cond_8c
    new-instance p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0

    :cond_92
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    new-instance v11, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-direct {v11, v0, v9, v10}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 v0, p1, 0xe0

    if-nez v0, :cond_e2

    if-eq v1, v8, :cond_dc

    if-eq v1, v7, :cond_d4

    if-eq v1, v4, :cond_cc

    if-eq v1, v6, :cond_c4

    if-eq v1, v5, :cond_bc

    :try_start_ad
    invoke-static {v1, v11, p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Kq5pt6AeqxqwOjab0R8ioI(ILcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;[[B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_b1} :catch_b2

    return-object p0

    :catch_b2
    move-exception p0

    new-instance p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    const-string v0, "corrupted stream detected"

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    throw p1

    :cond_bc
    new-instance p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    new-instance p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cc
    new-instance p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    const-string p1, "externals must use constructed encoding (see X.690 8.18)"

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d4
    new-instance p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;-><init>()V

    iput-object v11, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    return-object p0

    :cond_dc
    new-instance p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;

    invoke-direct {p0, v11}, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;-><init>(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;)V

    return-object p0

    :cond_e2
    new-instance v0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget v9, v11, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-direct {v0, v11, v9, p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;-><init>(Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;I[[B)V

    and-int/lit16 p0, p1, 0xc0

    if-eqz p0, :cond_f8

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_f2

    move v2, v3

    :cond_f2
    new-instance p1, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;-><init>(IIZLcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p1

    :cond_f8
    if-eq v1, v8, :cond_138

    if-eq v1, v7, :cond_132

    if-eq v1, v4, :cond_12c

    if-eq v1, v6, :cond_123

    if-ne v1, v5, :cond_10b

    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-object p0

    :cond_10b
    new-instance p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown DL object encountered: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_123
    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-object p0

    :cond_12c
    new-instance p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0

    :cond_132
    new-instance p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0

    :cond_138
    new-instance p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object p0
.end method
