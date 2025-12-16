.class public Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;
.implements Lcom/android/internal/util/kaorios/Kr7x5AouO2RfI;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(IILcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:I

    iget v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->Kq4snztAiatOsRsxI(II)Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    move-result-object p0

    return-object p0
.end method
