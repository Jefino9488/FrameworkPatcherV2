.class public final Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;-><init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4ktOicoUigSa65qjErt4lf4I(Ljava/io/InputStream;)[B

    move-result-object p0

    iget v0, v0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    new-instance v1, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public final K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;-><init>(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

    return-object v0
.end method

.method public final Kq4snztAiatOsRsxI()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;

    iget p0, p0, Lcom/android/internal/util/kaorios/Ki5gtOicUe92vt3S4fE7iI;->KmwO02nawgUws9Syxnq2rElI:I

    return p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KgiAgwetgOn23Ru9o8I;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)Lcom/android/internal/util/kaorios/Kzdn5OuUyySeoE4I;

    move-result-object p0

    return-object p0
.end method
