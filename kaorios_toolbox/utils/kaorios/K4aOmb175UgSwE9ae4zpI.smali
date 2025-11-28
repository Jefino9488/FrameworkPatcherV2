.class public final Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4cv12eOhp5UsS8gpsE2q2z1I(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notAfter\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notBefore\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-object v0
.end method
