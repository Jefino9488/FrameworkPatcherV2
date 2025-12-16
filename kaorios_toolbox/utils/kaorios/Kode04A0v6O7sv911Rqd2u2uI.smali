.class public final synthetic Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

.field public final synthetic Kq4snztAiatOsRsxI:J

.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 6

    iput p5, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq4snztAiatOsRsxI:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Z
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_26

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq4snztAiatOsRsxI:J

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq4snztAiatOsRsxI:J

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->K91vAo8w086Op21a5bR8uI(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq4snztAiatOsRsxI:J

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->KyqOjqyU2SoxvE3gI(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method
