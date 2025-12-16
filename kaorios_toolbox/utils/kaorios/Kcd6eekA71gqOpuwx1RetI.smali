.class public final Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/kaorios/KlzAtp8dO5R56I;


# instance fields
.field public final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

.field public final Kq4snztAiatOsRsxI:[[B

.field public final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method public constructor <init>(ILcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;[[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    iput-object p3, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iput-object p4, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq4snztAiatOsRsxI:[[B

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;
    .registers 8

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_3f

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sget-object v3, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K0O34Uigu98S9lxfEzrpiI;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iget v3, v2, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->KmwO02nawgUws9Syxnq2rElI:I

    new-array v4, v3, [[B

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v3, :cond_39

    iget v6, v2, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->Kq5pt6AeqxqwOjab0R8ioI:I

    new-array v6, v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_39
    new-instance v0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    invoke-direct {v0, v1, p0, v2, v4}, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;-><init>(ILcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;[[B)V

    return-object v0

    :cond_3f
    instance-of v0, p0, [B

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :try_start_44
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_5b

    :try_start_50
    invoke-static {v1}, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_58

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_58
    move-exception p0

    move-object v0, v1

    goto :goto_5c

    :catchall_5b
    move-exception p0

    :goto_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_61
    throw p0

    :cond_62
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_71

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4ktOicoUigSa65qjErt4lf4I(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    move-result-object p0

    return-object p0

    :cond_71
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
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_42

    const-class v1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_42

    :cond_10
    check-cast p1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    iget v3, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI:I

    iget v4, p1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI:I

    if-eq v3, v4, :cond_1d

    return v0

    :cond_1d
    iget-object v3, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    if-eqz v3, :cond_28

    invoke-virtual {v3, v2}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_2a

    :cond_28
    if-eqz v2, :cond_2b

    :goto_2a
    return v0

    :cond_2b
    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_38

    :cond_36
    if-eqz v1, :cond_39

    :goto_38
    return v0

    :cond_39
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq4snztAiatOsRsxI:[[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq4snztAiatOsRsxI:[[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_42
    :goto_42
    return v0
.end method

.method public final getEncoded()[B
    .registers 5

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    invoke-direct {v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>()V

    iget-object v1, v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8c63Ooauv32UndyuScEgI(I)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kq5pt6AeqxqwOjab0R8ioI([B)V

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    iget v2, v2, Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;->Ku5O3sihzbUhwSewE8uI:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8c63Ooauv32UndyuScEgI(I)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq4snztAiatOsRsxI:[[B

    :try_start_20
    array-length v0, p0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v0, :cond_2c

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_31
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Ku5O3sihzbUhwSewE8uI:I

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/KeOedUe86StxvEmzqmI;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Khm7zO5UbzhdSwelmE6sf3qI;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kcd6eekA71gqOpuwx1RetI;->Kq4snztAiatOsRsxI:[[B

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
