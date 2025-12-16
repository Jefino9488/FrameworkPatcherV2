.class public final Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/Set;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_21

    iget-object v5, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_21
    new-instance p0, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    if-eqz v1, :cond_4c

    :goto_36
    if-eq v3, v1, :cond_4b

    aget-object v0, v2, v3

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    iget-object v5, v0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/util/kaorios/KrdjqmOijnxvgU1t1mdS5ikEzgI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    iget-object v5, v0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

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

.method public final Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;ZLcom/android/internal/util/kaorios/K4aOmb175UgSwE9ae4zpI;)V
    .registers 6

    new-instance v0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    new-instance v1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v1, p3}, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;-><init>(Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;ZLcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

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

.method public final Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;)V
    .registers 5

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

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

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K77lsO8ecU4grkhnSzp2Eb9nsyI;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    const/4 v2, 0x1

    if-eqz v1, :cond_9d

    iget-object p0, p2, Lcom/android/internal/util/kaorios/K77lsO8ecU4grkhnSzp2Eb9nsyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p0

    iget-object p1, v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    sget-object p2, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    iget-object p2, v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    invoke-static {p2}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p2

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    new-instance v1, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-virtual {p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    invoke-virtual {p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object p2

    :goto_3d
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    goto :goto_3d

    :cond_4d
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {v1, p2}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    goto :goto_51

    :cond_61
    :try_start_61
    new-instance p0, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    new-instance p2, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    new-instance v3, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v1, -0x1

    iput v1, v3, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p2, v3}, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;-><init>(Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;ZLcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_77} :catch_78

    return-void

    :catch_78
    move-exception p0

    new-instance p1, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "extension "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance v1, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;

    new-instance v3, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v3, p2}, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;-><init>(Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/kaorios/KvAfgm7Oatbf9R9z68oI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;ZLcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KedAesi4pO6dbcRqI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
