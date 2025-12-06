.class public final Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;
.super Ljava/io/BufferedReader;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;
    .registers 10

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    if-eqz v0, :cond_116

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_116

    const-string v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_116

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "-----END "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_53
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bc

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_7c

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/internal/util/kaorios/KyiknO38h0U0uzxS37vsExcqynjI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_7c
    const-string v5, "org.bouncycastle.pemreader.lax"

    const-string v6, "false"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v6, Lcom/android/internal/util/kaorios/Kips8iOx4x697U8mdsSnEzI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/logging/Logger;

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_ac

    new-instance v7, Ljava/lang/Exception;

    const-string v8, "trace"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v8, "PEM object contains whitespaces on -----END line"

    invoke-virtual {v6, v4, v8, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ac
    move-object v4, v5

    :cond_ad
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b4

    goto :goto_bc

    :cond_b4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_53

    :cond_bc
    :goto_bc
    if-eqz v4, :cond_ff

    new-instance p0, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_d3
    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/util/kaorios/Ku99iA2osOegd8o2R4vy0qmI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d8} :catch_e5

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;->Ku5O3sihzbUhwSewE8uI:[B

    return-object p0

    :catch_e5
    move-exception p0

    new-instance v0, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to decode base64 string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_ff
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_116
    const/4 p0, 0x0

    return-object p0
.end method
