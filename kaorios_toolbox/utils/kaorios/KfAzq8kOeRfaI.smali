.class public abstract Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-wide v0, -0xedb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0xfeb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0x11db49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0x132b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v0, -0x138b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v3

    const-wide v0, -0x13fb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v4

    const-wide v0, -0x14cb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v5

    const-wide v0, -0x153b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v6

    const-wide v0, -0x15ab49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    const-wide v0, -0x161b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v8

    const-wide v0, -0x169b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v9

    const-wide v0, -0x170b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v10

    const-wide v0, -0x176b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v11

    const-wide v0, -0x17fb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v12

    const-wide v0, -0x18bb49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v2 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Map;

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    if-nez v1, :cond_11

    goto :goto_70

    :cond_11
    const-wide v1, -0x47b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    const-wide v1, -0x58b49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const-wide v2, -0x6cb49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/Map;

    if-eqz v2, :cond_48

    if-nez v1, :cond_3f

    goto :goto_70

    :cond_3f
    new-instance v1, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;-><init>(I)V

    invoke-interface {v3, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_48
    const-wide v1, -0x8bb49a02cfL

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-wide v0, -0xa0b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_70

    new-instance p0, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;-><init>(I)V

    invoke-interface {v3, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_70
    :goto_70
    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-wide v0, -0xb5b49a02cfL

    :try_start_5
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    const-wide v0, -0xc3b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-wide v0, -0xc8b49a02cfL

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0xd9b49a02cfL

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
