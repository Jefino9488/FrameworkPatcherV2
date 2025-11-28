.class public final Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;
.super Ljava/lang/Object;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;)V
    .registers 6

    new-instance v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    new-instance v1, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-direct {v1, p3}, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;-><init>(Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;ZLcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "extension "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_21

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_21
    new-instance p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    if-eqz v1, :cond_4c

    :goto_36
    if-eq v3, v1, :cond_4b

    aget-object v0, v2, v3

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    iget-object v5, v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    iget-object v5, v0, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4b
    return-object p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension array cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;)V
    .registers 5

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KbA8Ozw2xRmcwd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kpvr3gAwakwzeO35sx5R8z16e8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "extension "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already added"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
