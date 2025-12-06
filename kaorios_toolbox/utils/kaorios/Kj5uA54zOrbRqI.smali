.class public final Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
.implements Lcom/android/internal/util/kaorios/KssksAddOf83cRlyaI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;
    .registers 2

    new-instance v0, Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0
.end method

.method public static KmzodnwO1tUkgkS8cymEofiI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    new-instance v1, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 p0, -0x1

    iput p0, v1, Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;->Kq4snztAiatOsRsxI:I

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;I)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    throw v0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_6c

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :pswitch_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    const-string v0, "unable to get DER object"

    :try_start_28
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KmzodnwO1tUkgkS8cymEofiI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_3a

    :goto_33
    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :goto_3a
    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :pswitch_41
    :try_start_41
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :pswitch_59
    :try_start_59
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    move-result-object p0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_41
        :pswitch_26
        :pswitch_16
    .end packed-switch
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_44

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    sget-object v0, Lcom/android/internal/util/kaorios/KbtpsAybOflavtRx7tilI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    iget v0, p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    sget-object p0, Lcom/android/internal/util/kaorios/KbtpsAybOflavtRx7tilI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;

    goto :goto_1e

    :cond_15
    new-instance v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    move-object p0, v0

    :goto_1e
    return-object p0

    :pswitch_1f
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KbtpsAybOflavtRx7tilI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/Kzd77O2sa9b7Ufl6vS9Ek8xsvI;

    move-result-object p0

    return-object p0

    :pswitch_2a
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KmzodnwO1tUkgkS8cymEofiI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    move-result-object p0

    return-object p0

    :pswitch_31
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0

    :pswitch_3d
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kd0moobOdklU6wk08Spoym0EsjhI;

    move-result-object p0

    return-object p0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_31
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
