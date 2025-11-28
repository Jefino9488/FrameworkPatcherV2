.class public final Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;
.super Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:[B


# virtual methods
.method public final K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized K5xqAvmsOm1i32RieckI()V
    .registers 5

    const-string v0, "malformed ASN.1: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B

    if-eqz v1, :cond_4c

    new-instance v1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>([B)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_37

    :try_start_e
    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    if-nez v2, :cond_1b

    new-instance v2, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    goto :goto_2a

    :cond_1b
    new-instance v3, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-direct {v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>()V

    :cond_20
    invoke-virtual {v3, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v2

    if-nez v2, :cond_20

    move-object v2, v3

    :goto_2a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq4snztAiatOsRsxI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_36} :catch_39
    .catchall {:try_start_e .. :try_end_36} :catchall_37

    goto :goto_4c

    :catchall_37
    move-exception v0

    goto :goto_4e

    :catch_39
    move-exception v1

    :try_start_3a
    new-instance v2, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_37

    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_37

    throw v0
.end method

.method public final K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p0

    return-object p0
.end method

.method public final Kd5bO1pa591Ur4pdqSlo7E61nctqI()[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p0

    return-object p0
.end method

.method public final KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    monitor-exit p0

    if-eqz v0, :cond_19

    new-instance p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-direct {v1, v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>([B)V

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    return-object p0

    :cond_19
    new-instance v0, Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V

    return-object v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public final KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    move-result-object p0

    return-object p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    monitor-exit p0

    if-eqz v0, :cond_c

    const/16 p0, 0x30

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void

    :cond_c
    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final KnAacuOafajtRj61vuuI()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KnAacuOafajtRj61vuuI()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    return-object p0
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->KmwO02nawgUws9Syxnq2rElI:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    monitor-exit p0

    if-eqz v0, :cond_c

    array-length p0, v0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    :cond_c
    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result p0

    return p0

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->hashCode()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->K5xqAvmsOm1i32RieckI()V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length p0, p0

    return p0
.end method
