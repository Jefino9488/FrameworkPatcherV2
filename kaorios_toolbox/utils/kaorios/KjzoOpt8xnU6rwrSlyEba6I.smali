.class public final Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

.field public Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;


# direct methods
.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_12d

    new-instance v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    instance-of v3, v2, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    if-eqz v3, :cond_32

    check-cast v2, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    goto/16 :goto_f9

    :cond_32
    if-eqz v2, :cond_f8

    new-instance v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    invoke-static {v2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5f

    invoke-virtual {v2, v6}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KfhA0xayiqO65hivnRnnoh8cI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iput-boolean v6, v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v2

    :goto_56
    invoke-static {v2}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->K0wipv9AtliO55qRn6mI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-object v2, v3

    goto/16 :goto_f9

    :cond_5f
    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_e0

    invoke-virtual {v2, v6}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KfhA0xayiqO65hivnRnnoh8cI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v2, v5}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v4

    if-eqz v4, :cond_d2

    instance-of v5, v4, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    if-eqz v5, :cond_7b

    goto :goto_d2

    :cond_7b
    instance-of v5, v4, [B

    if-eqz v5, :cond_be

    check-cast v4, [B

    :try_start_81
    invoke-static {v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    const-class v5, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    check-cast v4, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    goto :goto_d4

    :catch_90
    move-exception p0

    goto :goto_a6

    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unexpected object: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a6} :catch_90

    :goto_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d2
    :goto_d2
    check-cast v4, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    :goto_d4
    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq5pt6AeqxqwOjab0R8ioI:Z

    invoke-virtual {v2, v7}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v2

    goto/16 :goto_56

    :cond_e0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f8
    move-object v2, v0

    :goto_f9
    iget-object v3, v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    iget-object v4, v2, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    const-string v3, "org.bouncycastle.x509.ignore_repeated_extensions"

    invoke-static {v3}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    goto :goto_120

    :cond_10c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "repeated extension found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    :goto_120
    iget-object v3, v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_12c
    return-object v1

    :cond_12d
    return-object v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v3, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    goto :goto_f

    :cond_27
    new-instance p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
