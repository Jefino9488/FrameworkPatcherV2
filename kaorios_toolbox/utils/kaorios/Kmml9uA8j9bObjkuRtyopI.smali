.class public final Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public K7b6cynAykO75yzw1Ri5kI:Z

.field public KmwO02nawgUws9Syxnq2rElI:I

.field public Kq4snztAiatOsRsxI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

.field public KyqOjqyU2SoxvE3gI:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    iget p0, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    return p0

    :cond_c
    :goto_c
    const p0, 0x7fffffff

    return p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    iget v1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI:I

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iput-object v1, v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v1, v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    iget v1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    iput v1, v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    iget-boolean v1, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    iput-boolean v1, v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    iget-boolean p0, p0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    iput-boolean p0, v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    move-result-object p0

    return-object p0
.end method
