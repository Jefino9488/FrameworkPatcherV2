.class public final Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;
.super Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iput-object v1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

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

.method public synthetic constructor <init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    return-void
.end method

.method public synthetic constructor <init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct {p0, p2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V
    .registers 5

    iput p2, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

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
    invoke-static {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public final K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_26

    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K0wipv9AtliO55qRn6mI()[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KvyA01pu5yOryrRk3kI([Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)[B

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0

    :pswitch_15
    new-instance v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K0wipv9AtliO55qRn6mI()[Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;->KvyA01pu5yOryrRk3kI([Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;-><init>([BIB)V

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public K5xqAvmsOm1i32RieckI()I
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    if-gez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput v2, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    :cond_22
    iget p0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return p0
.end method

.method public final K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_22

    new-instance v0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kvvx152O1Uo652lSpg5iE1I()[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kvvx152O1Uo652lSpg5iE1I()[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;->Kvvx152O1Uo652lSpg5iE1I([Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_14

    new-instance v0, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;I)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;I)V

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 10

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_be

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x0

    if-gez v1, :cond_47

    const/16 v1, 0x10

    if-le v0, v1, :cond_1b

    goto :goto_47

    :cond_1b
    new-array v1, v0, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v3, v2

    move v4, v3

    :goto_1f
    if-ge v3, v0, :cond_38

    iget-object v5, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_38
    iput v4, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_3d
    if-ge v2, v0, :cond_5e

    aget-object p0, v1, v2

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kx0bOnf5zU924StfxbEpI()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_4e
    if-ge v2, v0, :cond_5e

    iget-object p1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5e
    return-void

    :pswitch_5f
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_a1

    const/16 v1, 0x10

    if-le v0, v1, :cond_76

    goto :goto_a1

    :cond_76
    new-array v1, v0, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v4, v2

    move v5, v4

    :goto_7a
    if-ge v4, v0, :cond_92

    iget-object v6, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_92
    iput v5, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_97
    if-ge v2, v0, :cond_bc

    aget-object p0, v1, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->K5xqAvmsOm1i32RieckI()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_a8
    if-ge v2, v0, :cond_bc

    iget-object p1, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

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

.method public final KnAacuOafajtRj61vuuI()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_16

    new-instance v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_18

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kx0bOnf5zU924StfxbEpI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->K5xqAvmsOm1i32RieckI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->KmwO02nawgUws9Syxnq2rElI:I

    packed-switch v0, :pswitch_data_a

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    :pswitch_9
    return-object p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public Kx0bOnf5zU924StfxbEpI()I
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    if-gez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput v2, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    :cond_22
    iget p0, p0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    return p0
.end method
