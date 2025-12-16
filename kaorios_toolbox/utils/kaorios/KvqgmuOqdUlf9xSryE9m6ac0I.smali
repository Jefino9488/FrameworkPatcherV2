.class public Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Kvvx152O1Uo652lSpg5iE1I()Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid date string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2e

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p0

    if-eqz p0, :cond_26

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal characters in GeneralizedTime string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GeneralizedTime string too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K0wipv9AtliO55qRn6mI(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K6okO5hUclibxShsEkbgopaI(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1e

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_1e

    const/16 v5, 0x39

    if-le v4, v5, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_41
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    if-ne v4, v2, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_41

    :cond_74
    const/4 v2, 0x2

    if-ne v4, v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_41

    :cond_99
    return-object p0
.end method


# virtual methods
.method public final K4cv12eOhp5UsS8gpsE2q2z1I()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v3, v2

    if-eq v1, v3, :cond_16

    aget-byte v2, v2, v1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_13

    const/16 v2, 0xe

    if-ne v1, v2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method public final K4qxes9O6f26i8U6Sqj8EgiI()Z
    .registers 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/KemAkvwqquO1r331tRlv2I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>([B)V

    return-object v0
.end method

.method public K8Ak17imO9w5w4RppI(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final KfhA0xayiqO65hivnRnnoh8cI()Z
    .registers 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KgdivAliuhhnOe2iR73uaI(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final KgdivAliuhhnOe2iR73uaI(I)Z
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length v0, p0

    if-le v0, p1, :cond_11

    aget-byte p0, p0, p1

    const/16 p1, 0x30

    if-lt p0, p1, :cond_11

    const/16 p1, 0x39

    if-gt p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Ljava/text/SimpleDateFormat;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss.SSSz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4qxes9O6f26i8U6Sqj8EgiI()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmssz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KfhA0xayiqO65hivnRnnoh8cI()Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_2a
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_31
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method

.method public KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/16 v0, 0x18

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kv20eAs5x8fqOila11RtI(IZ[B)V

    return-void
.end method

.method public final Kvvx152O1Uo652lSpg5iE1I()Ljava/util/Date;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss.SSS\'Z\'"

    sget-object v5, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4qxes9O6f26i8U6Sqj8EgiI()Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss\'Z\'"

    sget-object v5, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KfhA0xayiqO65hivnRnnoh8cI()Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm\'Z\'"

    sget-object v5, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    :cond_3f
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHH\'Z\'"

    sget-object v5, Lcom/android/internal/util/kaorios/K7k5phgO88Uhi0uS8t6dbnEwh4fnyI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_48
    new-instance v4, Ljava/util/SimpleTimeZone;

    invoke-direct {v4, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_ae

    :cond_51
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_a6

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_62

    goto :goto_a6

    :cond_62
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_6f
    move-object v2, v1

    goto :goto_95

    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4qxes9O6f26i8U6Sqj8EgiI()Z

    move-result v1

    if-eqz v1, :cond_7f

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :cond_7f
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KfhA0xayiqO65hivnRnnoh8cI()Z

    move-result v1

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :cond_8d
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHH"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :goto_95
    new-instance v1, Ljava/util/SimpleTimeZone;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_ae

    :cond_a6
    :goto_a6
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Kr021bO9Updrd4Sc925kEfdq29I()Ljava/text/SimpleDateFormat;

    move-result-object v2

    :goto_ae
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Z

    move-result p0

    if-eqz p0, :cond_b8

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K6okO5hUclibxShsEkbgopaI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b8
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final KvyA01pu5yOryrRk3kI()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-ne v1, v3, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT+00:00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const-string v7, "GMT"

    if-eq v3, v6, :cond_44

    if-ne v3, v5, :cond_4d

    :cond_44
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v1, -0x9

    if-ne v3, v1, :cond_4d

    return-object v0

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v9, ":"

    if-eq v8, v6, :cond_122

    if-ne v8, v5, :cond_5f

    goto/16 :goto_122

    :cond_5f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_102

    if-ne v3, v5, :cond_6f

    goto/16 :goto_102

    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const-string v5, "+"

    if-gez v4, :cond_87

    neg-int v4, v4

    const-string v6, "-"

    goto :goto_88

    :cond_87
    move-object v6, v5

    :goto_88
    const v8, 0x36ee80

    div-int v10, v4, v8

    mul-int/2addr v8, v10

    sub-int/2addr v4, v8

    const v8, 0xea60

    div-int/2addr v4, v8

    :try_start_93
    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v8

    if-eqz v8, :cond_dd

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K6okO5hUclibxShsEkbgopaI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a3
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Kr021bO9Updrd4Sc925kEfdq29I()Ljava/text/SimpleDateFormat;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K0wipv9AtliO55qRn6mI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K0wipv9AtliO55qRn6mI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_dd

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_d8
    .catch Ljava/text/ParseException; {:try_start_93 .. :try_end_d8} :catch_dd

    if-eqz p0, :cond_db

    goto :goto_dc

    :cond_db
    const/4 v2, -0x1

    :goto_dc
    add-int/2addr v10, v2

    :catch_dd
    :cond_dd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K0wipv9AtliO55qRn6mI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->K0wipv9AtliO55qRn6mI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_102
    :goto_102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_122
    :goto_122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method
