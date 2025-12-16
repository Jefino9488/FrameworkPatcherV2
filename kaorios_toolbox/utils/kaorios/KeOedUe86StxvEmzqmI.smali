.class public final Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:[B

.field public final Kq5pt6AeqxqwOjab0R8ioI:[B

.field public final Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KciAihO1406R4I;[B[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    iput-object p3, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->KmwO02nawgUws9Syxnq2rElI:[B

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;
    .registers 5

    instance-of v0, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K0O34Uigu98S9lxfEzrpiI;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iget v1, v0, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget v2, v0, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->Kq4snztAiatOsRsxI:I

    iget v3, v0, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->Kq5pt6AeqxqwOjab0R8ioI:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;-><init>(Lcom/android/internal/util/kaorios/KciAihO1406R4I;[B[B)V

    return-object p0

    :cond_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    :try_start_39
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_50

    :try_start_45
    invoke-static {v1}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4d

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_4d
    move-exception p0

    move-object v0, v1

    goto :goto_51

    :catchall_50
    move-exception p0

    :goto_51
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_56
    throw p0

    :cond_57
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_66

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4ktOicoUigSa65qjErt4lf4I(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    move-result-object p0

    return-object p0

    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    const-class v1, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_36

    :cond_10
    check-cast p1, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_21

    :cond_1f
    if-eqz v1, :cond_22

    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    iget-object v2, p1, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2d

    return v0

    :cond_2d
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->KmwO02nawgUws9Syxnq2rElI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_36
    :goto_36
    return v0
.end method

.method public final getEncoded()[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iget v1, v1, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->Ku5O3sihzbUhwSewE8uI:I

    const/4 v2, 0x0

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_34

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->KmwO02nawgUws9Syxnq2rElI:[B

    :try_start_21
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_29

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_34
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
