.class public final Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->Kvvx152O1Uo652lSpg5iE1I(I)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown version of sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>()V

    new-instance v1, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance v1, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KofOyUdbzSwb2fE3dwsI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-direct {v1, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method
