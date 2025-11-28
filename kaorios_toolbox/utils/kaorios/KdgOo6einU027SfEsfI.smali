.class public final Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
.implements Lcom/android/internal/util/kaorios/Kt1OskdsecUo2S278unEl8I;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    new-instance v1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    const/4 p0, -0x1

    iput p0, v1, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;->Kq4snztAiatOsRsxI:I

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;-><init>(Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;I)V
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
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_6c

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    const-string v0, "unable to get DER object"

    :try_start_27
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    move-result-object p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    goto :goto_32

    :catch_30
    move-exception p0

    goto :goto_38

    :goto_32
    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_38
    new-instance v1, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_3e
    :try_start_3e
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_55
    :try_start_55
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_60} :catch_61

    return-object v0

    :catch_61
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_3e
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_3a

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K4vOqztUdvScmtEr4xjdzI;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K4vOqztUdvScmtEr4xjdzI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    move-result-object p0

    return-object p0

    :pswitch_1b
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    move-result-object p0

    return-object p0

    :pswitch_22
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/K1kaA3tiqqO7ugRpbtrtI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0

    :pswitch_2e
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KdgOo6einU027SfEsfI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    new-instance v0, Lcom/android/internal/util/kaorios/Kj5uA54zOrbRqI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_22
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method
