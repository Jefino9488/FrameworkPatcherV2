.class public final Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;
.super Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;


# instance fields
.field public final Kq4snztAiatOsRsxI:Z


# direct methods
.method public constructor <init>(IIZLcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;-><init>(IILcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    iput-boolean p3, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq4snztAiatOsRsxI:Z

    return-void
.end method


# virtual methods
.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 10

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/K71vyO344xn0UmzSebnmmkEdkI;->Kq4snztAiatOsRsxI:Z

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    iget v3, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Ku5O3sihzbUhwSewE8uI:I

    iget v4, p0, Lcom/android/internal/util/kaorios/K66nr4AbdO4rdmR8h0lklI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v0, :cond_1f

    iget-object p0, v1, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    check-cast p0, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance v1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    new-instance v5, Lcom/android/internal/util/kaorios/KcO0UbdSgE6qmyI;

    invoke-direct {v5, p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>([B)V

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(IIILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    return-object v1

    :cond_1f
    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object p0

    iget v0, p0, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    move v5, v3

    new-instance v3, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    move-result-object v7

    const/4 v8, 0x2

    move v6, v4

    const/4 v4, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(IIILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    return-object v3

    :cond_37
    new-instance v1, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K4vOqztUdvScmtEr4xjdzI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/Kepe9Of23UtrahqjSghbEoI;-><init>(IIILcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;I)V

    return-object v1
.end method
