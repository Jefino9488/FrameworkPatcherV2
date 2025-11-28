.class public final Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;

# interfaces
.implements Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    if-nez v0, :cond_14

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown object passed to Time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    sget-object v5, Lcom/android/internal/util/kaorios/Kf25ctmAjnmi1O57RsI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_49

    const/16 v1, 0x801

    if-le v0, v1, :cond_3c

    goto :goto_49

    :cond_3c
    new-instance v0, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;-><init>(Ljava/lang/String;)V

    :goto_46
    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    return-void

    :cond_49
    :goto_49
    new-instance v0, Lcom/android/internal/util/kaorios/Klw9A9ypO39R14bjqbI;

    invoke-direct {v0, p1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public static Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;
    .registers 3

    if-eqz p0, :cond_33

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    if-eqz v0, :cond_7

    goto :goto_33

    :cond_7
    instance-of v0, p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    check-cast p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    check-cast p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in factory: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    check-cast p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;

    return-object p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    return-object p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()Ljava/util/Date;
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    if-eqz v0, :cond_37

    check-cast p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssz"

    sget-object v2, Lcom/android/internal/util/kaorios/Kf25ctmAjnmi1O57RsI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "Z"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;->K0wipv9AtliO55qRn6mI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-ge v1, v2, :cond_2f

    const-string v1, "20"

    :goto_2a
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_2f
    const-string v1, "19"

    goto :goto_2a

    :goto_32
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_37
    check-cast p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->KvyA01pu5yOryrRk3kI()Ljava/util/Date;

    move-result-object p0
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid date string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    if-eqz v0, :cond_23

    check-cast p0, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;->K0wipv9AtliO55qRn6mI()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ge v0, v1, :cond_1c

    const-string v0, "20"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string v0, "19"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    check-cast p0, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
