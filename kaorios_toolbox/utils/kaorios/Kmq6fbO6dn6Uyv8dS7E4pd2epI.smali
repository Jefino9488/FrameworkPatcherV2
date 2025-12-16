.class public final Lcom/android/internal/util/kaorios/Kmq6fbO6dn6Uyv8dS7E4pd2epI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 1

    const-string p0, "line.separator"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
