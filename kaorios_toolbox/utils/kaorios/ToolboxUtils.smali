.class public final Lcom/android/internal/util/kaorios/ToolboxUtils;
.super Ljava/lang/Object;


# static fields
.field public static volatile KmwO02nawgUws9Syxnq2rElI:Z

.field public static volatile Kq4snztAiatOsRsxI:Z

.field public static volatile Kq5pt6AeqxqwOjab0R8ioI:Z

.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

.field public static volatile KyqOjqyU2SoxvE3gI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static KaoriStrongBoxFeatures(ZLjava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_34

    if-nez p1, :cond_f

    goto :goto_34

    :cond_f
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_34

    :cond_1c
    const-wide v1, -0x35ffc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->isStrongBoxFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    return v2

    :cond_34
    :goto_34
    return p0
.end method

.method public static KaoriosAttestationBL(ZLjava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_59

    :cond_d
    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_59

    :cond_14
    const-wide v1, -0x369dc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_59

    :cond_25
    const-wide v0, -0x36afc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    const-wide v0, -0x36d8c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    const-wide v0, -0x36fcc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-wide v0, -0x3725c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_58

    :cond_54
    if-eqz p0, :cond_58

    const/4 p0, 0x1

    return p0

    :cond_58
    :goto_58
    return v2

    :cond_59
    :goto_59
    return p0
.end method

.method public static KaoriosFeatures(Ljava/lang/String;IZ)Z
    .registers 6

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2e

    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->hasSystemFeatureInternalA15(Ljava/lang/String;IZ)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x34e8c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    return p2
.end method

.method public static KaoriosFeatures(Ljava/lang/String;Z)Z
    .registers 8

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_d0

    sget-boolean v0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    if-eqz v0, :cond_12

    goto/16 :goto_d0

    :cond_12
    const-wide v0, -0x3611c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x3625c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x3626c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ToolboxUtils"

    if-nez v1, :cond_5c

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI:Z

    if-nez p0, :cond_d0

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x362dc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_5c
    invoke-static {}, Lcom/android/internal/util/kaorios/SettingsHelper;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_75

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI:Z

    if-nez p0, :cond_d0

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI:Z

    const-wide v0, -0x3666c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    goto :goto_d0

    :cond_84
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_87
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_91

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p0

    :catchall_91
    move-exception v0

    :try_start_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x351bc885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-boolean p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    if-nez p0, :cond_bf

    sput-boolean v2, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq4snztAiatOsRsxI:Z

    const-wide v0, -0x3547c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_92 .. :try_end_bf} :catchall_c7

    :cond_bf
    sget-object p0, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :catchall_c7
    move-exception p0

    sget-object p1, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0

    :cond_d0
    :goto_d0
    return p1
.end method

.method public static KaoriosKeybox(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_27

    :cond_1a
    const-wide v2, -0x3749c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    :cond_27
    :goto_27
    if-nez v1, :cond_2a

    goto :goto_3c

    :cond_2a
    :try_start_2a
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KicqlOkb01lsU7reShrE36h7I;->KmwO02nawgUws9Syxnq2rElI(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception v0

    const-wide v1, -0x34c2c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public static KaoriosKeybox([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_27

    :cond_1a
    const-wide v2, -0x3749c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    :cond_27
    :goto_27
    if-nez v1, :cond_2a

    goto :goto_3c

    :cond_2a
    :try_start_2a
    invoke-static {p0}, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Kq5pt6AeqxqwOjab0R8ioI([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception v0

    const-wide v1, -0x34d5c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public static KaoriosProps(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_46

    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->KmzodnwO1tUkgkS8cymEofiI(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_1e

    :catchall_11
    move-exception v0

    const-wide v1, -0x3457c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    if-eqz p0, :cond_35

    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_35

    :catchall_28
    move-exception v0

    const-wide v1, -0x3467c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    :try_start_35
    invoke-static {p0}, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_46

    :catchall_39
    move-exception p0

    const-wide v0, -0x3480c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public static KaoriosPropsEngineGetCertificateChain()V
    .registers 3

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Kq4snztAiatOsRsxI()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    const-wide v1, -0x3498c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x342fc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x343ac885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToolboxUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    const-wide v1, -0x33aec885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x33c2c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v0

    :cond_26
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    return v3

    :cond_2e
    const-wide v4, -0x33c9c885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4d

    if-nez v2, :cond_4f

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_49} :catch_4f
    .catchall {:try_start_41 .. :try_end_49} :catchall_4d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    return v0

    :catchall_4d
    move-exception v1

    goto :goto_50

    :catch_4f
    :cond_4f
    return v3

    :goto_50
    const-wide v2, -0x33e4c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static Ku5O3sihzbUhwSewE8uI()Z
    .registers 3

    invoke-static {}, Lcom/android/internal/util/kaorios/SettingsHelper;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v1, Lcom/android/internal/util/kaorios/ToolboxUtils;->KyqOjqyU2SoxvE3gI:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/util/kaorios/ToolboxUtils;->KyqOjqyU2SoxvE3gI:Z

    const-wide v1, -0x3401c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ToolboxUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return v0
.end method

.method public static shouldBypassManageActivityTaskPermission(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_41

    :cond_e
    :try_start_e
    sget-object v0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v2, -0x282dc885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_34

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    return v1

    :catchall_34
    move-exception p0

    const-wide v2, -0x35a6c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    return v1
.end method

.method public static shouldBypassMonitorInputPermission(Landroid/content/Context;)Z
    .registers 7

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4b

    :cond_e
    :try_start_e
    sget-object v0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->K91vAo8w086Op21a5bR8uI(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v4, -0x282dc885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_3e

    if-eqz p0, :cond_3a

    move p0, v3

    goto :goto_3b

    :cond_3a
    move p0, v1

    :goto_3b
    if-eqz p0, :cond_4b

    :cond_3d
    return v3

    :catchall_3e
    move-exception p0

    const-wide v2, -0x35d6c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    return v1
.end method

.method public static shouldBypassTaskPermission(I)Z
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_20

    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->K91vAo8w086Op21a5bR8uI(I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    return p0

    :catchall_13
    move-exception p0

    const-wide v2, -0x3586c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KmwO02nawgUws9Syxnq2rElI(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return v1
.end method

.method public static spoofProvider()V
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Kq5pt6AeqxqwOjab0R8ioI()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/android/internal/util/kaorios/ToolboxUtils;->Ku5O3sihzbUhwSewE8uI()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6b

    :cond_d
    const-wide v0, -0x375cc885e6b8L

    const/4 v2, 0x1

    :try_start_13
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-wide v3, -0x376cc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStoreSpi;

    sget v0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Ku5O3sihzbUhwSewE8uI:I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_3c

    goto :goto_4a

    :catchall_3c
    const-wide v0, -0x3778c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolboxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    const-wide v0, -0x3798c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;

    invoke-direct {v1, v0}, Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;-><init>(Ljava/security/Provider;)V

    const-wide v3, -0x37a8c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    :cond_6b
    :goto_6b
    return-void
.end method
