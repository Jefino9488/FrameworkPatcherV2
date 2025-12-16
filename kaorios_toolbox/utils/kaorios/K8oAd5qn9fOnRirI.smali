.class public final Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# instance fields
.field public final synthetic K7b6cynAykO75yzw1Ri5kI:I

.field public KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

.field public Kq4snztAiatOsRsxI:I

.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

.field public KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)V
    .registers 7

    iput p2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-static {p1, v2}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, p2

    :goto_1a
    instance-of v3, v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eqz v3, :cond_28

    check-cast v0, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    :cond_28
    instance-of v3, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-nez v3, :cond_34

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v0

    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result p1

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_bd

    instance-of p1, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    if-eqz p1, :cond_b5

    check-cast v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget p1, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->KmwO02nawgUws9Syxnq2rElI:I

    if-ltz p1, :cond_a1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_a1

    iput p1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;)V

    if-eqz p1, :cond_7f

    if-eq p1, v2, :cond_76

    if-ne p1, v1, :cond_5c

    sget-object p1, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;Z)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    goto :goto_96

    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "invalid tag: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K1mvAifo37O1n5qRbdycqI(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    sget-object p1, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;Z)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    goto :goto_96

    :cond_7f
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->K0wipv9AtliO55qRn6mI()Z

    move-result p1

    if-eqz p1, :cond_99

    iget-object p1, v0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    instance-of p2, p1, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

    if-eqz p2, :cond_8e

    check-cast p1, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;

    goto :goto_92

    :cond_8e
    invoke-interface {p1}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    :goto_92
    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/K4jO0jUdoSdqE9pI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p1

    :goto_96
    iput-object p1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    return-void

    :cond_99
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid encoding value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input sequence too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K0wipv9AtliO55qRn6mI(Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;I)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->KvyA01pu5yOryrRk3kI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:I

    packed-switch v0, :pswitch_data_76

    new-instance v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iget-object v3, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    iget v4, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;-><init>()V

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iput-object v2, v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iput-object v3, v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-ltz v4, :cond_61

    const/4 v1, 0x2

    if-gt v4, v1, :cond_61

    iput v4, v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    const/4 v2, 0x1

    const-string v3, "unexpected object: "

    if-eq v4, v2, :cond_44

    if-eq v4, v1, :cond_29

    goto :goto_4c

    :cond_29
    const-class v1, Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const-class v1, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :goto_4c
    iput-object p0, v0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    return-object v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid encoding value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_75
    return-object p0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_75
    .end packed-switch
.end method

.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K8Ak17imO9w5w4RppI(Z)I

    move-result p0

    return p0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 5

    if-ne p0, p1, :cond_3

    goto :goto_51

    :cond_3
    instance-of v0, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    goto :goto_53

    :cond_9
    check-cast p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eq v0, v2, :cond_1d

    if-eqz v0, :cond_1c

    if-eqz v2, :cond_1c

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eq v0, v2, :cond_2f

    if-eqz v0, :cond_2e

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-eq v0, v2, :cond_41

    if-eqz v0, :cond_40

    if-eqz v2, :cond_40

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    return v1

    :cond_41
    :goto_41
    iget v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    iget v2, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    if-ne v0, v2, :cond_53

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result p0

    if-eqz p0, :cond_53

    :goto_51
    const/4 p0, 0x1

    return p0

    :cond_53
    :goto_53
    return v1
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;
    .registers 6

    iget v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:I

    packed-switch v0, :pswitch_data_7c

    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_12
    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_19
    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_24
    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    if-nez v2, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0

    :pswitch_40
    new-instance v0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eqz v1, :cond_4d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_4d
    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-eqz v1, :cond_54

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_54
    iget-object v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    :cond_5f
    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    iget v2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    if-nez v2, :cond_67

    const/4 v3, 0x1

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(ZILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    new-instance p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;-><init>(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq4snztAiatOsRsxI:I

    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/16 v0, 0x28

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V

    return-void
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:I

    return-object p0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K6p24wyOoj8e2UhSwehEpcI;->hashCode()I

    move-result v2

    :goto_15
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result v1

    :goto_1f
    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
