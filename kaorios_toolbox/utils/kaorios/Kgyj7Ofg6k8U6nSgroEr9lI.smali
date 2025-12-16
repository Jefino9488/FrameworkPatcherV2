.class public final Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;
.super Lcom/android/internal/util/kaorios/KbxoA7q33zfOoyR3I;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

.field public final Kq4snztAiatOsRsxI:[B

.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;Lcom/android/internal/util/kaorios/KciAihO1406R4I;[B[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K00oaOwyUnS4yEwadcr4I;-><init>(Z)V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    invoke-static {p4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq4snztAiatOsRsxI:[B

    invoke-static {p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KyqOjqyU2SoxvE3gI:[B

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;
    .registers 5

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_41

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K0O34Uigu98S9lxfEzrpiI;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    sget-object v2, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K0O34Uigu98S9lxfEzrpiI;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    iget v3, v0, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;-><init>(Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;Lcom/android/internal/util/kaorios/KciAihO1406R4I;[B[B)V

    return-object p0

    :cond_41
    instance-of v0, p0, [B

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    :try_start_46
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_5d

    :try_start_52
    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_5a

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_5a
    move-exception p0

    move-object v0, v1

    goto :goto_5e

    :catchall_5d
    move-exception p0

    :goto_5e
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_63
    throw p0

    :cond_64
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_73

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4ktOicoUigSa65qjErt4lf4I(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    move-result-object p0

    return-object p0

    :cond_73
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
.method public final Kq5pt6AeqxqwOjab0R8ioI()[B
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iget v1, v1, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8c63Ooauv32UndyuScEgI(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iget v1, v1, Lcom/android/internal/util/kaorios/KciAihO1406R4I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8c63Ooauv32UndyuScEgI(I)V

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq4snztAiatOsRsxI:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kq5pt6AeqxqwOjab0R8ioI([B)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KyqOjqyU2SoxvE3gI:[B

    invoke-virtual {v0, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kq5pt6AeqxqwOjab0R8ioI([B)V

    iget-object p0, v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    const-class v1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_3c

    :cond_10
    check-cast p1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    :cond_1d
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v0

    :cond_28
    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq4snztAiatOsRsxI:[B

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq4snztAiatOsRsxI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_33

    return v0

    :cond_33
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KyqOjqyU2SoxvE3gI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3c
    :goto_3c
    return v0
.end method

.method public final getEncoded()[B
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KciAihO1406R4I;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->Kq4snztAiatOsRsxI:[B

    invoke-static {v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kgyj7Ofg6k8U6nSgroEr9lI;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
