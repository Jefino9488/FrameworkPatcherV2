.class public final Lcom/android/internal/util/kaorios/Kef2nAgOrRoI;
.super Landroid/app/PropertyInvalidatedCache;


# direct methods
.method public constructor <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public final recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iget p1, p1, Lcom/android/internal/util/kaorios/K00Ot02yU5hknSc6Ev87I;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
