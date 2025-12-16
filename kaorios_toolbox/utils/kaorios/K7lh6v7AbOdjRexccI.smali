.class public final Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;
.super Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-void

    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element2\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element1\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Z[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V
    .registers 5

    iput p2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch p2, :pswitch_data_2c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1f

    array-length p2, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_15

    aget-object v1, p1, v0

    if-eqz v1, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    invoke-static {p1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public final K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_14

    new-instance v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;-><init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;-><init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)V

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public K5xqAvmsOm1i32RieckI()I
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    if-gez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput v2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    :cond_22
    iget p0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return p0
.end method

.method public final K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_18

    new-instance v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_a

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    :pswitch_9
    return-object p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_18

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->K5xqAvmsOm1i32RieckI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public Kd5bO1pa591Ur4pdqSlo7E61nctqI()I
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    if-gez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput v2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    :cond_22
    iget p0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return p0
.end method

.method public final KfhA0xayiqO65hivnRnnoh8cI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_26

    new-instance v0, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kr021bO9Updrd4Sc925kEfdq29I()[Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;->K4cv12eOhp5UsS8gpsE2q2z1I([Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;)[B

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;-><init>([BIB)V

    return-object v0

    :pswitch_15
    new-instance v0, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kr021bO9Updrd4Sc925kEfdq29I()[Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;->K4cv12eOhp5UsS8gpsE2q2z1I([Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;-><init>([BIB)V

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public final KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_22

    new-instance v0, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI()[Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->K0wipv9AtliO55qRn6mI([Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K0wipv9AtliO55qRn6mI()[Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->K0wipv9AtliO55qRn6mI([Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 10

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_be

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x0

    if-gez v1, :cond_47

    const/16 v1, 0x10

    if-le v0, v1, :cond_1b

    goto :goto_47

    :cond_1b
    new-array v1, v0, [Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move v3, v2

    move v4, v3

    :goto_1f
    if-ge v3, v0, :cond_38

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_38
    iput v4, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :goto_3d
    if-ge v2, v0, :cond_5e

    aget-object p0, v1, v2

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;->KvyA01pu5yOryrRk3kI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->K5xqAvmsOm1i32RieckI()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :goto_4e
    if-ge v2, v0, :cond_5e

    iget-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;->KvyA01pu5yOryrRk3kI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5e
    return-void

    :pswitch_5f
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_a1

    const/16 v1, 0x10

    if-le v0, v1, :cond_76

    goto :goto_a1

    :cond_76
    new-array v1, v0, [Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move v4, v2

    move v5, v4

    :goto_7a
    if-ge v4, v0, :cond_92

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_92
    iput v5, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :goto_97
    if-ge v2, v0, :cond_bc

    aget-object p0, v1, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kd5bO1pa591Ur4pdqSlo7E61nctqI()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :goto_a8
    if-ge v2, v0, :cond_bc

    iget-object p1, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->KmwO02nawgUws9Syxnq2rElI:I

    return-object p0
.end method
