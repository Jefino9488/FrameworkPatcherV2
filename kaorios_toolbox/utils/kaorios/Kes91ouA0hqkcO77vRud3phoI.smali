.class public final Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;
.super Landroid/app/TaskStackListener;


# instance fields
.field public final synthetic Ku5O3sihzbUhwSewE8uI:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Z

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .registers 5

    invoke-static {}, Lcom/android/internal/util/kaorios/Ktq7kOsU09e30ySmxm7wEpm9I;->KmwO02nawgUws9Syxnq2rElI()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_33

    const-wide v1, -0x2346c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x2374c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/internal/util/kaorios/Kes91ouA0hqkcO77vRud3phoI;->Ku5O3sihzbUhwSewE8uI:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_33
    return-void
.end method
