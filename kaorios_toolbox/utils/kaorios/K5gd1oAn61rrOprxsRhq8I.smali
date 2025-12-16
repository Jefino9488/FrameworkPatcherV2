.class public final Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

.field public final synthetic Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

.field public final synthetic Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public final synthetic Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_3d

    :cond_13
    iget-object v1, v2, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;Ljava/security/Provider$Service;)V

    return-object v0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method
