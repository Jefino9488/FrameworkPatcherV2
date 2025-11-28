.class public final Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;Z)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kq4snztAiatOsRsxI(Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;)V

    iget v0, p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Ku5O3sihzbUhwSewE8uI:I

    iget-object v1, p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->K0wipv9AtliO55qRn6mI()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    goto/16 :goto_12d

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    const/4 p2, 0x1

    if-eq p2, v0, :cond_131

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10b

    const/4 p1, 0x4

    if-eq v0, p1, :cond_33

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    :goto_30
    :pswitch_30
    move-object p1, p2

    goto/16 :goto_12d

    :cond_33
    instance-of p1, p2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    if-eqz p1, :cond_3f

    check-cast p2, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    invoke-virtual {p0, p2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    goto/16 :goto_12d

    :cond_3f
    check-cast p2, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    iget p1, p0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI:I

    packed-switch p1, :pswitch_data_13a

    :pswitch_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit primitive encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;-><init>([B)V

    goto :goto_30

    :pswitch_56
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;-><init>([B)V

    goto :goto_30

    :pswitch_5e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;-><init>([B)V

    goto :goto_30

    :pswitch_66
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>([B)V

    goto :goto_30

    :pswitch_6e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;-><init>([B)V

    goto :goto_30

    :pswitch_76
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Kn8r2g2Aptv9aOpsyxoaR9I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Kn8r2g2Aptv9aOpsyxoaR9I;-><init>([B)V

    goto :goto_30

    :pswitch_7e
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K0wipv9AtliO55qRn6mI([BZ)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    goto/16 :goto_12d

    :pswitch_87
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;-><init>([B)V

    goto :goto_30

    :pswitch_8f
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->KvyA01pu5yOryrRk3kI([BZ)Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-result-object p1

    goto/16 :goto_12d

    :pswitch_98
    new-instance p1, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

    iget-object p2, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance v0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    invoke-direct {v0, p2}, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;-><init>([B)V

    invoke-direct {p1, v0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;-><init>(Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;)V

    goto/16 :goto_12d

    :pswitch_a6
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KhhtekAnfOlqRg89czI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KhhtekAnfOlqRg89czI;-><init>([B)V

    goto :goto_30

    :pswitch_ae
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p1, p1

    if-nez p1, :cond_b7

    sget-object p1, Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;

    goto/16 :goto_12d

    :cond_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed NULL encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_bf
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K8bexetA1ObRkvmI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_c8
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/Ko35kA3rO9jubqRxosI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_d1
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_da
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K9hhnuAlkrfgoObsnbmR9hsyzaI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_e3
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K7qkvb8Oxcy4UtyozkSnEolguryI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K7qkvb8Oxcy4UtyozkSnEolguryI;-><init>([B)V

    goto/16 :goto_30

    :pswitch_ec
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->K0wipv9AtliO55qRn6mI([BZ)Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p1

    goto :goto_12d

    :pswitch_f4
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->K0wipv9AtliO55qRn6mI([B)Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    move-result-object p1

    goto :goto_12d

    :pswitch_fb
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->K0wipv9AtliO55qRn6mI([B)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p1

    goto :goto_12d

    :pswitch_102
    iget-object p1, p2, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->Ku5O3sihzbUhwSewE8uI:[B

    new-instance p2, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;

    invoke-direct {p2, p1}, Lcom/android/internal/util/kaorios/K6a92xAemyjt9OiR1rcukI;-><init>([B)V

    goto/16 :goto_30

    :cond_10b
    iget p1, p1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;->KyqOjqyU2SoxvE3gI:I

    packed-switch p1, :pswitch_data_170

    new-instance p1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;I)V

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    goto :goto_129

    :pswitch_11a
    new-instance p1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;I)V

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    goto :goto_129

    :pswitch_124
    new-instance p1, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-direct {p1, p2}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    :goto_129
    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    :goto_12d
    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

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

.method public Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget p0, p0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Kq5pt6AeqxqwOjab0R8ioI:I

    sparse-switch p0, :sswitch_data_2a

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KnAacuOafajtRj61vuuI()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    return-object p0

    :sswitch_12
    return-object p1

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K6okO5hUclibxShsEkbgopaI()Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object p0

    return-object p0

    :sswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_20
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KgdivAliuhhnOe2iR73uaI()Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    move-result-object p0

    return-object p0

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->K4qxes9O6f26i8U6Sqj8EgiI()Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

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

.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V
    .registers 3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

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
