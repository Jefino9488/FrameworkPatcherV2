.class public final synthetic Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

.field public final synthetic Kq4snztAiatOsRsxI:J

.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 6

    iput p5, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq4snztAiatOsRsxI:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Z
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Ku5O3sihzbUhwSewE8uI:I

    packed-switch v0, :pswitch_data_1c

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq4snztAiatOsRsxI:J

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq4snztAiatOsRsxI:J

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq5pt6AeqxqwOjab0R8ioI:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->KmwO02nawgUws9Syxnq2rElI(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
