.class public final Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;
.super Ljava/lang/Object;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;->Ku5O3sihzbUhwSewE8uI:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;

    iget p1, p1, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;->Ku5O3sihzbUhwSewE8uI:I

    iget p0, p0, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;->Ku5O3sihzbUhwSewE8uI:I

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public final hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/K85gqrnOohdp9UudkufySppfntvE92I;->Ku5O3sihzbUhwSewE8uI:I

    return p0
.end method
