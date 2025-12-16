.class public final Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;Z)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;)V

    iget v0, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    iget-object v1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    goto/16 :goto_12d

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    const/4 p2, 0x1

    if-eq p2, v0, :cond_131

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10b

    const/4 p1, 0x4

    if-eq v0, p1, :cond_33

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    :goto_30
    :pswitch_30
    move-object p1, p2

    goto/16 :goto_12d

    :cond_33
    instance-of p1, p2, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    if-eqz p1, :cond_3f

    check-cast p2, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    goto/16 :goto_12d

    :cond_3f
    check-cast p2, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    iget p1, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    packed-switch p1, :pswitch_data_13a

    :pswitch_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit primitive encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;-><init>([B)V

    goto :goto_30

    :pswitch_56
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;-><init>([B)V

    goto :goto_30

    :pswitch_5e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;-><init>([B)V

    goto :goto_30

    :pswitch_66
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kc9owcxAxqOk8w32gRufijsI;-><init>([B)V

    goto :goto_30

    :pswitch_6e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;-><init>([B)V

    goto :goto_30

    :pswitch_76
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KifAdxaO98vuR6dijI;-><init>([B)V

    goto :goto_30

    :pswitch_7e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;->Kr021bO9Updrd4Sc925kEfdq29I([BZ)Lcom/android/internal/util/kaorios/Kk4qrt4A87lbO282okzR1l4I;

    move-result-object p1

    goto/16 :goto_12d

    :pswitch_87
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KwOo76jtU5mq4tuSxid4jEi7u4bI;-><init>([B)V

    goto :goto_30

    :pswitch_8f
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Kvvx152O1Uo652lSpg5iE1I([BZ)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p1

    goto/16 :goto_12d

    :pswitch_98
    new-instance p1, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance v0, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;

    invoke-direct {v0, p2}, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;-><init>([B)V

    invoke-direct {p1, v0}, Lcom/android/internal/util/kaorios/K5czAzdO0ypvuRxc3780I;-><init>(Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;)V

    goto/16 :goto_12d

    :pswitch_a6
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;-><init>([B)V

    goto :goto_30

    :pswitch_ae
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p1, p1

    if-nez p1, :cond_b7

    sget-object p1, Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KgOlUckSnhhEjz0zxiI;

    goto/16 :goto_12d

    :cond_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed NULL encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_bf
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_c8
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kds7l2hAnieriOuqmRqxyd7I;-><init>([B)V

    goto/16 :goto_30

    :pswitch_d1
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_da
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KvqgmuOqdUlf9xSryE9m6ac0I;-><init>([B)V

    goto/16 :goto_30

    :pswitch_e3
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KbOaUzS0yEb05I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KbOaUzS0yEb05I;-><init>([B)V

    goto/16 :goto_30

    :pswitch_ec
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kr021bO9Updrd4Sc925kEfdq29I([BZ)Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    move-result-object p1

    goto :goto_12d

    :pswitch_f4
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Kr021bO9Updrd4Sc925kEfdq29I([B)Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    move-result-object p1

    goto :goto_12d

    :pswitch_fb
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kr021bO9Updrd4Sc925kEfdq29I([B)Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p1

    goto :goto_12d

    :pswitch_102
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;-><init>([B)V

    goto/16 :goto_30

    :cond_10b
    iget p1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch p1, :pswitch_data_170

    new-instance p1, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    goto :goto_129

    :pswitch_11a
    new-instance p1, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    goto :goto_129

    :pswitch_124
    new-instance p1, Lcom/android/internal/util/kaorios/KbtpsAybOflavtRx7tilI;

    invoke-direct {p1, p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :goto_129
    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    :goto_12d
    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V

    return-object p1

    :cond_131
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object explicit - implicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_102
        :pswitch_fb
        :pswitch_f4
        :pswitch_ec
        :pswitch_46
        :pswitch_e3
        :pswitch_da
        :pswitch_d1
        :pswitch_c8
        :pswitch_bf
        :pswitch_ae
        :pswitch_a6
        :pswitch_98
        :pswitch_8f
        :pswitch_30
        :pswitch_87
        :pswitch_7e
        :pswitch_46
        :pswitch_46
        :pswitch_76
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
    .end packed-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_124
        :pswitch_11a
    .end packed-switch
.end method

.method public Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    iget p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kq5pt6AeqxqwOjab0R8ioI:I

    sparse-switch p0, :sswitch_data_2a

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    move-result-object p0

    return-object p0

    :sswitch_12
    return-object p1

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    move-result-object p0

    return-object p0

    :sswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_20
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    move-result-object p0

    return-object p0

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KfhA0xayiqO65hivnRnnoh8cI()Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    move-result-object p0

    return-object p0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_25
        0x4 -> :sswitch_20
        0xc -> :sswitch_18
        0xe -> :sswitch_13
        0x11 -> :sswitch_12
        0x12 -> :sswitch_d
    .end sparse-switch
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)V
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unexpected object: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
