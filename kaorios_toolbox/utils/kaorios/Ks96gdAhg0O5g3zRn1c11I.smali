.class public final Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    iput p3, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_e

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Exception;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
