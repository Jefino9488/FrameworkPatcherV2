.class public final synthetic Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

.field public final synthetic Kq4snztAiatOsRsxI:Ljava/lang/String;

.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput p4, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq4snztAiatOsRsxI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_1c

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq4snztAiatOsRsxI:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->Kq4snztAiatOsRsxI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq4snztAiatOsRsxI:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
