.class public final Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_14

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
