.class public final synthetic Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

.field public final synthetic Kq4snztAiatOsRsxI:I

.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 5

    iput p4, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_26

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq4snztAiatOsRsxI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->Kgs66qnAfO491Ra48r7aI(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq4snztAiatOsRsxI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->KmzodnwO1tUkgkS8cymEofiI(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq4snztAiatOsRsxI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->K7b6cynAykO75yzw1Ri5kI(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method
