.class public final Lcom/android/internal/util/kaorios/SettingsHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic KmwO02nawgUws9Syxnq2rElI(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureLong$3(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic Kq4snztAiatOsRsxI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureString$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalString$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalLong$2(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private static buildPackageInfoFlags(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x280

    return p0

    :cond_5
    const/16 p0, 0x80

    return p0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static dumpInstalledApps(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->buildPackageInfoFlags(Z)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->loadPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2a

    goto :goto_19

    :cond_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide v6, -0x3397b49a02cfL

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v6, -0x33a3b49a02cfL

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v3, v5}, Lcom/android/internal/util/kaorios/SettingsHelper;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    const-wide v7, -0x33a9b49a02cfL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v6, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_6b

    invoke-static {p0, v5}, Lcom/android/internal/util/kaorios/SettingsHelper;->isActuallyEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    move v6, v8

    goto :goto_6c

    :cond_6b
    move v6, v7

    :goto_6c
    const-wide v9, -0x33b0b49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v9, -0x33b8b49a02cfL

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_88

    move v7, v8

    :cond_88
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v5, -0x33c4b49a02cfL

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v6, :cond_99

    goto :goto_9b

    :cond_99
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_9b
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v5, -0x33d0b49a02cfL

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x33dcb49a02cfL

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x33edb49a02cfL

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x33fcb49a02cfL

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_19

    :cond_dd
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e1
    .catchall {:try_start_4 .. :try_end_e1} :catchall_e2

    return-object p0

    :catchall_e2
    return-object v0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    if-nez p0, :cond_3

    goto :goto_21

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_12
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_21
    :goto_21
    return-wide p2
.end method

.method private static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    goto :goto_11

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    :goto_11
    return-object p2
.end method

.method public static getSystemPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_13

    :cond_7
    :try_start_7
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    return-object p0

    :catchall_13
    :goto_13
    return-object p1
.end method

.method public static getToolboxStatus()Ljava/lang/String;
    .registers 2

    const-wide v0, -0x3436b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isActuallyEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_11

    const/4 p1, 0x2

    if-eq p0, p1, :cond_f

    const/4 p1, 0x3

    if-eq p0, p1, :cond_f

    const/4 p1, 0x4

    if-eq p0, p1, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0

    :catch_11
    return v0
.end method

.method public static isBootCompleted()Z
    .registers 2

    const-wide v0, -0x3423b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_d

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p0, :cond_24

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_13
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    return p2
.end method

.method private static synthetic lambda$tryPutGlobalLong$2(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutGlobalString$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSecureLong$3(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSecureString$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_15

    if-nez p1, :cond_15

    return-object p0

    :catchall_15
    :cond_15
    return-object p2
.end method

.method private static loadPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    :try_start_f
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    return-object v0
.end method

.method private static parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-wide v2, -0x3406b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x3408b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x340db49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x3411b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_95

    :cond_54
    const-wide v2, -0x3414b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x3416b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x341cb49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x341fb49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_91

    goto :goto_92

    :cond_91
    return-object v1

    :cond_92
    :goto_92
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_95
    :goto_95
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static persistToSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_b

    const-wide v0, -0x3451b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-le v0, v1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x3452b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x345fb49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 6

    if-eqz p0, :cond_11

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalLong(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureLong(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_11

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->persistToSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static runPut(Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;)Z
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->run()Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_6
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return p0

    :catch_6
    :catchall_6
    return v0
.end method

.method private static safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    const/4 p0, 0x1

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method

.method public static setSystemPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide p0, -0x3352b49a02cfL

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-nez p1, :cond_1b

    const-wide v0, -0x3367b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    :try_start_1b
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-wide p0, -0x3368b49a02cfL

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, -0x337bb49a02cfL

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_3c

    return-object p0

    :catchall_3c
    const-wide p0, -0x3387b49a02cfL

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tryPutGlobalLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;-><init>(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;)Z

    move-result p0

    return p0
.end method

.method private static tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;)Z

    move-result p0

    return p0
.end method

.method private static tryPutSecureLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;-><init>(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;)Z

    move-result p0

    return p0
.end method

.method private static tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;)Z

    move-result p0

    return p0
.end method
