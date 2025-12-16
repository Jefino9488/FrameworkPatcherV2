.class public final Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

.field public Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V
    .registers 5

    invoke-interface {p2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;-><init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;[BLcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;[BLcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eqz p4, :cond_a

    sget-object v1, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    goto :goto_c

    :cond_a
    sget-object v1, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    :goto_c
    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    new-instance p1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {p1, p2}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    iput-object p3, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    if-nez p4, :cond_20

    const/4 p1, 0x0

    goto :goto_26

    :cond_20
    new-instance p1, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p4}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;-><init>(I[B)V

    :goto_26
    iput-object p1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;
    .registers 8

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_8d

    new-instance v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->K4cv12eOhp5UsS8gpsE2q2z1I()I

    move-result v1

    if-ltz v1, :cond_85

    const/4 v2, 0x1

    if-gt v1, v2, :cond_85

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    const/4 v3, -0x1

    :goto_3e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v5, v4, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    if-le v5, v3, :cond_7c

    const/4 v3, 0x0

    if-eqz v5, :cond_70

    if-ne v5, v2, :cond_68

    if-lt v1, v2, :cond_60

    sget-object v6, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-virtual {v6, v4, v3}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;Z)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    iput-object v3, v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    goto :goto_7a

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    sget-object v6, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-virtual {v6, v4, v3}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;Z)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iput-object v3, v0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    :goto_7a
    move v3, v5

    goto :goto_3e

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    return-object v0

    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 6

    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    new-instance v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v2, v1, v4}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v0, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_23
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    if-eqz p0, :cond_31

    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_31
    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KbidnAazihOzyfdRihubI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    return-object p0
.end method
