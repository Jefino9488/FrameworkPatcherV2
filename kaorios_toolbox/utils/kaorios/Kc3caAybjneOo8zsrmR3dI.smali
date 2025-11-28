.class public final Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/K89dmlOnU18Sdlc2gE5uI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    return-void
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;
    .registers 6

    new-instance v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v2, v1, [B

    :goto_e
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->read([BII)I

    move-result v4

    if-ltz v4, :cond_19

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_e

    :cond_19
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iget v0, v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    new-instance v1, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public final K7b6cynAykO75yzw1Ri5kI()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;-><init>(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    return-object v0
.end method

.method public final Kq4snztAiatOsRsxI()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;

    iget p0, p0, Lcom/android/internal/util/kaorios/K7OnUfoe60Si7hs0wEgmI;->KmwO02nawgUws9Syxnq2rElI:I

    return p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kc3caAybjneOo8zsrmR3dI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;)Lcom/android/internal/util/kaorios/KaO42U7w1zS7nEg7sjoeI;

    move-result-object p0

    return-object p0
.end method
