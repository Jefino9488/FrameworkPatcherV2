.class public final Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    new-instance v1, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;

    invoke-direct {v1, p0}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;-><init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4ktOicoUigSa65qjErt4lf4I(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;-><init>([B[Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;)V

    return-object v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_48

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :pswitch_24
    :try_start_24
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Ljava/io/InputStream;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_14

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;

    return-object p0

    :pswitch_a
    new-instance v0, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;-><init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    return-object v0

    :pswitch_13
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
