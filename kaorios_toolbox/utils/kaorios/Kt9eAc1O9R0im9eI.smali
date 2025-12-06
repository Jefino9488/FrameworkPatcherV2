.class public final Lcom/android/internal/util/kaorios/Kt9eAc1O9R0im9eI;
.super Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .registers 6

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Provider;->getVersion()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    const-class p1, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyStore.AndroidKeyStore"

    invoke-virtual {p0, v0, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method
