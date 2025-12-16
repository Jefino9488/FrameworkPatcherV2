.class public final Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;
.super Ljava/lang/Object;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

.field public final Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
