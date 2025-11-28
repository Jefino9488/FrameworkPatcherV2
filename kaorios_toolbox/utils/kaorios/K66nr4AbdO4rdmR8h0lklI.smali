.class public Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;
.implements Lcom/android/internal/util/kaorios/Kt1OskdsecUo2S278unEl8I;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(IILcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput-object p3, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:I

    iget v1, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Kq5pt6AeqxqwOjab0R8ioI(II)Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    move-result-object p0

    return-object p0
.end method
