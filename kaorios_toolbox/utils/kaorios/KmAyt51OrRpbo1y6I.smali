.class public final Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    if-nez v0, :cond_14

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown object passed to Time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    iput-object p1, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

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

    sget-object v5, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

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
    new-instance v0, Lcom/android/internal/util/kaorios/Ks7OufU1x5pSqxfjfkEhgI;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;-><init>(Ljava/lang/String;)V

    :goto_46
    iput-object v0, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    return-void

    :cond_49
    :goto_49
    new-instance v0, Lcom/android/internal/util/kaorios/KemAkvwqquO1r331tRlv2I;

    invoke-direct {v0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;
    .registers 3

    if-eqz p0, :cond_33

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    if-eqz v0, :cond_7

    goto :goto_33

    :cond_7
    instance-of v0, p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    check-cast p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;-><init>(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    check-cast p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;-><init>(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

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
    check-cast p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;

    return-object p0
.end method


# virtual methods
.method public final K91vAo8w086Op21a5bR8uI()Ljava/util/Date;
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    if-eqz v0, :cond_37

    check-cast p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssz"

    sget-object v2, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "Z"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kr021bO9Updrd4Sc925kEfdq29I()Ljava/lang/String;

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
    check-cast p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Kvvx152O1Uo652lSpg5iE1I()Ljava/util/Date;

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

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KmAyt51OrRpbo1y6I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    if-eqz v0, :cond_23

    check-cast p0, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kr021bO9Updrd4Sc925kEfdq29I()Ljava/lang/String;

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
    check-cast p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
