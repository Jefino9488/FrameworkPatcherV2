.class public final Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Ku5O3sihzbUhwSewE8uI:[B

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_24

    new-instance v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Ku5O3sihzbUhwSewE8uI:[B

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    new-instance v1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v1, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
