.class public final Lcom/android/internal/util/kaorios/SettingsHelper;
.super Ljava/lang/Object;


# static fields
.field private static final GLOBAL_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/internal/util/kaorios/SettingsHelper;->SECURE_KEYS:Ljava/util/Set;

    const-wide v2, -0x3d5265922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3d6365922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3d7565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3d8c65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3da665922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3dbb65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3dcb65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ddb65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3de565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3df065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e0565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e1765922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e2b65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e4165922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e5465922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e6a65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e8065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3e9265922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ea865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3eb865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ecc65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ee065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ef065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f0865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f1b65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f3465922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f4665922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f5d65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f7065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f8565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3f9c65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3fb165922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3fc565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3fde65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3ff565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic K7b6cynAykO75yzw1Ri5kI(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalInt$4(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic K8Ak17imO9w5w4RppI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureString$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K8c63Ooauv32UndyuScEgI(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureFloat$7(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic K91vAo8w086Op21a5bR8uI(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureLong$3(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic Kgs66qnAfO491Ra48r7aI(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSecureInt$5(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic KmwO02nawgUws9Syxnq2rElI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalString$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic KmzodnwO1tUkgkS8cymEofiI(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSystemInt$9(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic Kq4snztAiatOsRsxI(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSystemFloat$11(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalLong$2(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic KtbuouOlomiUohgSxfezrEyv01I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSystemString$8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutGlobalFloat$6(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic KyqOjqyU2SoxvE3gI(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->lambda$tryPutSystemLong$10(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static buildPackageInfoFlags(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x280

    return p0

    :cond_5
    const/16 p0, 0x80

    return p0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteKaoriSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_25

    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    return p0

    :catch_25
    :cond_25
    :goto_25
    return v0
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

    const-wide v6, -0x3c6165922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v6, -0x3c6d65922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v3, v5}, Lcom/android/internal/util/kaorios/SettingsHelper;->loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    const-wide v7, -0x3c7365922ce2L

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

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
    const-wide v9, -0x3c7a65922ce2L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v9, -0x3c8265922ce2L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_88

    move v7, v8

    :cond_88
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v5, -0x3c8e65922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v6, :cond_99

    goto :goto_9b

    :cond_99
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_9b
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v5, -0x3c9a65922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x3ca665922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x3cb765922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide v5, -0x3cc665922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

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

.method public static forceStopPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1a

    :cond_a
    :try_start_a
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_15

    return v0

    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_18} :catch_1a
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    :catchall_1a
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .registers 4

    if-nez p0, :cond_3

    goto :goto_30

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_12
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_21
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_30
    :goto_30
    return p2
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    if-nez p0, :cond_3

    goto :goto_30

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_12
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_21
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_30
    :goto_30
    return p2
.end method

.method public static getKaoriInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    :cond_9
    :try_start_9
    sget-object v0, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    return p0

    :catch_23
    :cond_23
    :goto_23
    return p2
.end method

.method public static getKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_27

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    :cond_9
    :try_start_9
    sget-object v0, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_27

    if-eqz p0, :cond_27

    return-object p0

    :catch_27
    :cond_27
    :goto_27
    return-object p2
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    if-nez p0, :cond_3

    goto :goto_30

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

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_21
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_30
    :goto_30
    return-wide p2
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    goto :goto_18

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    :cond_18
    :goto_18
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

    const-wide v0, -0x3d1565922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActuallyEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
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

    const-wide v0, -0x3d0265922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
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
    .registers 5

    if-eqz p0, :cond_35

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_13
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x3cd065922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->getSystemPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-static {p0}, Lcom/android/internal/util/kaorios/SettingsHelper;->parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5f
    return p2
.end method

.method private static synthetic lambda$tryPutGlobalFloat$6(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutGlobalInt$4(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
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

.method private static synthetic lambda$tryPutSecureFloat$7(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSecureInt$5(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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

.method private static synthetic lambda$tryPutSystemFloat$11(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSystemInt$9(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSystemLong$10(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryPutSystemString$8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
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

.method public static loadPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;
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

.method public static parseFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

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
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    return-object v0
.end method

.method public static parseIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

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
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    return-object v0
.end method

.method public static parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
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

.method public static parseToggle(Ljava/lang/String;)Ljava/lang/Boolean;
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

    const-wide v2, -0x3ce565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x3ce765922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x3cec65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-wide v2, -0x3cf065922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_95

    :cond_54
    const-wide v2, -0x3cf365922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x3cf565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x3cfb65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-wide v2, -0x3cfe65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

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

.method public static persistToSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_b

    const-wide v0, -0x3d3065922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

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

    const-wide v1, -0x3d3165922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/SettingsHelper;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x3d3e65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

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

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 5

    if-eqz p0, :cond_18

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalFloat(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureFloat(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSystemFloat(Landroid/content/Context;Ljava/lang/String;F)Z

    move-result p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    if-eqz p0, :cond_18

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSystemInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static putKaoriInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_24

    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    return p0

    :catch_24
    :cond_24
    :goto_24
    return v0
.end method

.method public static putKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_24

    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    return p0

    :catch_24
    :cond_24
    :goto_24
    return v0
.end method

.method public static putKaoriStringForUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_24

    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/internal/util/kaorios/SettingsHelper;->GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    return p0

    :catch_24
    :cond_24
    :goto_24
    return v0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 6

    if-eqz p0, :cond_18

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalLong(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureLong(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSystemLong(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_18

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->tryPutSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    invoke-static {p1, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->persistToSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestReboot(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_12} :catch_14
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    const/4 p0, 0x1

    return p0

    :catch_14
    :catchall_14
    return v0
.end method

.method public static runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;->run()Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_6
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return p0

    :catch_6
    :catchall_6
    return v0
.end method

.method public static safeGetGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
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

.method public static safeGetGlobalFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetGlobalInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetGlobalLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-wide p0

    :catchall_9
    return-wide p2
.end method

.method public static safeGetSecure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
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

.method public static safeGetSecureFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetSecureInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetSecureLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-wide p0

    :catchall_9
    return-wide p2
.end method

.method public static safeGetSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeGetSystemFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetSystemInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    :catchall_9
    return p2
.end method

.method public static safeGetSystemLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-wide p0

    :catchall_9
    return-wide p2
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
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

    const-wide p0, -0x3c1c65922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-nez p1, :cond_1b

    const-wide v0, -0x3c3165922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    :try_start_1b
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-wide p0, -0x3c3265922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, -0x3c4565922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_3c

    return-object p0

    :catchall_3c
    const-wide p0, -0x3c5165922ce2L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryPutGlobalFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutGlobalLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;-><init>(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutGlobalString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSecureFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSecureLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;-><init>(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSecureString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSystemFloat(Landroid/content/Context;Ljava/lang/String;F)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/KkeihynOoagiesUvnuSz3Ea4ww90I;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSystemInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kvbc26AbkObs8oR0z09pI;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSystemLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/kaorios/Kode04A0v6O7sv911Rqd2u2uI;-><init>(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method

.method public static tryPutSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/util/kaorios/Kb7O1rU1S8nzEe1lxvI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->runPut(Lcom/android/internal/util/kaorios/KptO8ke4Umol3vbS4Eg2pe0cI;)Z

    move-result p0

    return p0
.end method
