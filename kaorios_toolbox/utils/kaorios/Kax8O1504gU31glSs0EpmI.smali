.class public final Lcom/android/internal/util/kaorios/Kax8O1504gU31glSs0EpmI;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/Kax8O1504gU31glSs0EpmI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;)Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->KvyA01pu5yOryrRk3kI()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;-><init>(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;[B[B)V

    return-object v1

    :cond_2c
    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance v1, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;-><init>(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;[B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    new-instance v0, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->KvyA01pu5yOryrRk3kI()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/K3wyiOblU6Swkmwc0Ern2I;-><init>(Lcom/android/internal/util/kaorios/K9aOuq7pq4U5s5kSlE8tuqxfI;[B)V

    return-object v0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;)Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->KvyA01pu5yOryrRk3kI()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;-><init>(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;[B[B)V

    return-object v1

    :cond_2c
    invoke-static {v0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance v1, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;-><init>(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;[B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    new-instance v0, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->KvyA01pu5yOryrRk3kI()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;-><init>(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;[B)V

    return-object v0
.end method
