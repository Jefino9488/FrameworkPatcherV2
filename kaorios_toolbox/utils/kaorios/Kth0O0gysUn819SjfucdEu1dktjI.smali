.class public final Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;
.super Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    invoke-interface {p2}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->KmzodnwO1tUkgkS8cymEofiI()[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    return-void
.end method

.method public static K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;
    .registers 4

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_4a

    new-instance v0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;->K91vAo8w086Op21a5bR8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kth0O0gysUn819SjfucdEu1dktjI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->KvyA01pu5yOryrRk3kI()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    return-object p0
.end method
