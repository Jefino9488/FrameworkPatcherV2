.class public final Lcom/android/internal/util/kaorios/ToolboxUtils;
.super Ljava/lang/Object;


# static fields
.field public static volatile KmwO02nawgUws9Syxnq2rElI:Z

.field public static volatile Kq4snztAiatOsRsxI:Z

.field public static volatile Kq5pt6AeqxqwOjab0R8ioI:Z

.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/kaorios/KgAcOcqsyqoRgoyk5I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static KaoriStrongBoxFeatures(ZLjava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_9

    goto :goto_2e

    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2e

    :cond_16
    const-wide v1, -0x3683b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->isStrongBoxFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    return v2

    :cond_2e
    :goto_2e
    return p0
.end method

.method public static KaoriosAttestationBL(ZLjava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_52

    :cond_d
    const-wide v1, -0x3721b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_52

    :cond_1e
    const-wide v0, -0x3733b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0x375cb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0x3780b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-wide v0, -0x37a9b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_51

    :cond_4d
    if-eqz p0, :cond_51

    const/4 p0, 0x1

    return p0

    :cond_51
    :goto_51
    return v2

    :cond_52
    :goto_52
    return p0
.end method

.method public static KaoriosFeaturesV1(Ljava/lang/String;IZ)Z
    .registers 6

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->hasSystemFeatureInternalA15(Ljava/lang/String;IZ)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return p0

    :catchall_c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x356cb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public static KaoriosFeaturesV2(Ljava/lang/String;Z)Z
    .registers 8

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_ca

    sget-boolean v0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    if-eqz v0, :cond_c

    goto/16 :goto_ca

    :cond_c
    const-wide v0, -0x3695b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x36a9b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x36aab49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ToolboxUtils"

    if-nez v1, :cond_56

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI:Z

    if-nez p0, :cond_ca

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x36b1b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_56
    invoke-static {}, Lcom/android/internal/util/kaorios/SettingsHelper;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_6f

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez p0, :cond_ca

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI:Z

    const-wide v0, -0x36eab49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_6f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    goto :goto_ca

    :cond_7e
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_81
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_8b

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p0

    :catchall_8b
    move-exception v0

    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x359fb49a02cfL

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    if-nez p0, :cond_b9

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    const-wide v0, -0x35cbb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_8c .. :try_end_b9} :catchall_c1

    :cond_b9
    sget-object p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :catchall_c1
    move-exception p0

    sget-object p1, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0

    :cond_ca
    :goto_ca
    return p1
.end method

.method public static KaoriosKeybox(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 4

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/android/internal/util/kaorios/K3pAbOf5Rboz9I;->KmwO02nawgUws9Syxnq2rElI(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    move-exception v0

    const-wide v1, -0x3559b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static KaoriosProps(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_40

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->KmzodnwO1tUkgkS8cymEofiI(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_18

    :catchall_b
    move-exception v0

    const-wide v1, -0x34eeb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    if-eqz p0, :cond_2f

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/kaorios/KwhOc6du0sUev366Syb09nyEvsvclI;->Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_2f

    :catchall_22
    move-exception v0

    const-wide v1, -0x34feb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_40

    :catchall_33
    move-exception p0

    const-wide v0, -0x3517b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_40
    return-void
.end method

.method public static KaoriosPropsEngineGetCertificateChain()V
    .registers 3

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->Kq4snztAiatOsRsxI()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    const-wide v1, -0x352fb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x34c6b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x34d1b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToolboxUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI()Z
    .registers 6

    const-wide v0, -0x3473b49a02cfL

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x3487b49a02cfL

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v2

    :cond_1f
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_27

    return v3

    :cond_27
    const-wide v4, -0x348eb49a02cfL

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_46

    if-nez v1, :cond_48

    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_42} :catch_48
    .catchall {:try_start_3a .. :try_end_42} :catchall_46

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    return v2

    :catchall_46
    move-exception v0

    goto :goto_49

    :catch_48
    :cond_48
    return v3

    :goto_49
    const-wide v3, -0x34a9b49a02cfL

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static shouldBypassManageActivityTaskPermission(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    sget-object v0, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v2, -0x28b2b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1

    :catchall_2e
    move-exception p0

    const-wide v2, -0x362ab49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static shouldBypassMonitorInputPermission(Landroid/content/Context;)Z
    .registers 7

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_38

    :cond_8
    :try_start_8
    sget-object v0, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->K91vAo8w086Op21a5bR8uI(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_39

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v4, -0x28b2b49a02cfL

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3a

    if-eqz p0, :cond_34

    move p0, v3

    goto :goto_35

    :cond_34
    move p0, v1

    :goto_35
    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    :goto_38
    return v1

    :cond_39
    :goto_39
    return v3

    :catchall_3a
    move-exception p0

    const-wide v2, -0x365ab49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static shouldBypassTaskPermission(I)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KsAmmbt8OcdwRq3bI;->K91vAo8w086Op21a5bR8uI(I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    return p0

    :catchall_d
    move-exception p0

    const-wide v2, -0x360ab49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
