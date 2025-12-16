.class public final Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kr7x5AouO2RfI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:I

.field public final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:I

.field public final synthetic KyqOjqyU2SoxvE3gI:I


# direct methods
.method public constructor <init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_2d

    if-eqz p2, :cond_19

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_19

    instance-of v0, p4, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    iput p1, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput p3, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-object p4, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid tag class: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V
    .registers 6

    iput p5, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public constructor <init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V
    .registers 5

    iput p4, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x2

    :goto_7
    const/16 p4, 0x80

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public static Kr021bO9Updrd4Sc925kEfdq29I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;
    .registers 4

    if-eqz p0, :cond_6b

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-eqz v0, :cond_7

    goto :goto_6b

    :cond_7
    instance-of v0, p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-eqz v1, :cond_57

    check-cast v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_57

    :try_start_1d
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KcxerAdpv60xOdaR8bI([B)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    instance-of v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-eqz v0, :cond_2a

    check-cast p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    return-object p0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unexpected object: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    :goto_6b
    check-cast p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    return-object p0
.end method


# virtual methods
.method public final K0wipv9AtliO55qRn6mI()Z
    .registers 3

    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 8

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_16

    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget-object v5, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v6, 0x1

    iget v2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    iget v3, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v4, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v1

    :pswitch_14
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_6e

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v0

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KmzodnwO1tUkgkS8cymEofiI(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    if-eqz p1, :cond_27

    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    add-int/2addr v0, p0

    return v0

    :pswitch_2a
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v0

    if-eqz v1, :cond_43

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KmzodnwO1tUkgkS8cymEofiI(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    if-eqz p1, :cond_4c

    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result p0

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    add-int/2addr v0, p0

    return v0

    :pswitch_4f
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result v0

    if-eqz v1, :cond_61

    add-int/lit8 v0, v0, 0x3

    :cond_61
    if-eqz p1, :cond_6a

    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KtbuouOlomiUohgSxfezrEyv01I(I)I

    move-result p0

    goto :goto_6b

    :cond_6a
    const/4 p0, 0x0

    :goto_6b
    add-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_2a
    .end packed-switch
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-nez v0, :cond_5

    goto :goto_4d

    :cond_5
    check-cast p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    iget v1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    if-ne v0, v1, :cond_4d

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-eq v0, v1, :cond_14

    goto :goto_4d

    :cond_14
    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    iget v1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eq v0, v1, :cond_25

    goto :goto_4d

    :cond_25
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    if-ne v0, v1, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v2

    if-nez v2, :cond_48

    :try_start_3b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_47} :catch_4d

    return p0

    :cond_48
    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    return p0

    :catch_4d
    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_52

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0

    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    :goto_3a
    return p0

    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p0, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p0, 0x1

    :goto_51
    return p0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_20
    .end packed-switch
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_a0

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz p2, :cond_26

    iget p2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1f
    or-int/lit8 p2, p2, 0x20

    :cond_21
    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K0wipv9AtliO55qRn6mI(II)V

    :cond_26
    if-eqz v1, :cond_30

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K7b6cynAykO75yzw1Ri5kI()Lcom/android/internal/util/kaorios/Kay4jO6l5qmpUoxj3S2EgxquI;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    return-void

    :pswitch_38
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz p2, :cond_59

    iget p2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_52
    or-int/lit8 p2, p2, 0x20

    :cond_54
    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K0wipv9AtliO55qRn6mI(II)V

    :cond_59
    if-eqz v1, :cond_63

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    return-void

    :pswitch_6b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz p2, :cond_88

    iget p2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v1, :cond_81

    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kgs66qnAfO491Ra48r7aI()Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_81
    or-int/lit8 p2, p2, 0x20

    :cond_83
    iget p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K0wipv9AtliO55qRn6mI(II)V

    :cond_88
    const/4 p0, 0x0

    if-eqz v1, :cond_9b

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    goto :goto_9e

    :cond_9b
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_38
    .end packed-switch
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 8

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KyqOjqyU2SoxvE3gI:I

    packed-switch v0, :pswitch_data_16

    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget-object v5, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    const/4 v6, 0x2

    iget v2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Ku5O3sihzbUhwSewE8uI:I

    iget v3, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v4, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v1

    :pswitch_14
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    goto :goto_12

    :cond_10
    const/16 v1, 0xf0

    :goto_12
    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v2, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K1mvAifo37O1n5qRbdycqI(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
