.class public final Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;
.super Ljava/io/IOException;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/RuntimeException;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V
    .registers 4

    iput p3, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_c

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/RuntimeException;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/RuntimeException;

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
