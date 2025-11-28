.class public final Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;
    .registers 7

    new-instance v0, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    new-instance v1, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;

    invoke-direct {v1, p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_10
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;->read([BII)I

    move-result v5

    if-ltz v5, :cond_1b

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_10

    :cond_1b
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;-><init>([B[Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    return-object v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_46

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_23
    :try_start_23
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Ljava/io/InputStream;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_14

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    return-object p0

    :pswitch_a
    new-instance v0, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KbqAkwjgfOtRv3I;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    return-object v0

    :pswitch_13
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KvwddAd6t30yOlgkj5oRx5hI;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
