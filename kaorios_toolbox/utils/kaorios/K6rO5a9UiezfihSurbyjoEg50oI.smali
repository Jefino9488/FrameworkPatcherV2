.class public abstract Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide v0, -0x909c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Ku5O3sihzbUhwSewE8uI:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static K7b6cynAykO75yzw1Ri5kI(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Ku5O3sihzbUhwSewE8uI:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const-wide v2, -0x89fc885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x8aec885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x8d5c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x8eec885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x8fec885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static KmzodnwO1tUkgkS8cymEofiI(Ljava/io/File;Lorg/json/JSONObject;)Z
    .registers 12

    const-wide v0, -0x81ec885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x825c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11a

    if-eqz v2, :cond_11a

    const-wide v3, -0x861c885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->K7b6cynAykO75yzw1Ri5kI(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f8

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_41
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_e4

    const/16 v6, 0x4000

    :try_start_48
    new-array v6, v6, [B

    :goto_4a
    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_59

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4a

    :catchall_56
    move-exception p0

    goto/16 :goto_e6

    :cond_59
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_56

    :try_start_5d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_e4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-direct {v3, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-wide v4, -0x88fc885e6b8L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_7b

    new-instance p1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    invoke-direct {p1, v3, v9}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;-><init>(Ljava/lang/String;I)V

    goto :goto_bc

    :cond_7b
    if-gez p1, :cond_80

    const p1, 0x7fffffff

    :cond_80
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_8c

    new-instance p1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    invoke-direct {p1, v3, v9}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;-><init>(Ljava/lang/String;I)V

    goto :goto_bc

    :cond_8c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v9

    move v7, v6

    :goto_93
    if-ltz v4, :cond_ac

    if-ge v6, p1, :cond_ac

    invoke-virtual {v5, v3, v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_a7

    goto :goto_ac

    :cond_a7
    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_93

    :cond_ac
    :goto_ac
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v6}, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;-><init>(Ljava/lang/String;I)V

    :goto_bc
    iget v0, p1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v0, :cond_c1

    return v9

    :cond_c1
    invoke-static {p0}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_c9
    iget-object p0, p1, Lcom/android/internal/util/kaorios/KfnbAx4hOi2gabRo66I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_da

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_da
    move-exception p0

    :try_start_db
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e3
    throw p0

    :catchall_e4
    move-exception p0

    goto :goto_ef

    :goto_e6
    :try_start_e6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception p1

    :try_start_eb
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ee
    throw p0
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_e4

    :goto_ef
    :try_start_ef
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3

    goto :goto_f7

    :catchall_f3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f7
    throw p0

    :cond_f8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x86ac885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11a
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x82dc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Kq4snztAiatOsRsxI(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 5

    const-wide v0, -0x789c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x0

    :try_start_15
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_19} :catch_35

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_21
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2b

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p0

    :catch_35
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-wide v0, -0x7c3c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x797c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3b

    :cond_19
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x766c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Landroid/content/Context;Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide p0, -0x26fc885e6b8L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x27ec885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const-wide v0, -0x2b5c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_51

    const-wide v0, -0x2ccc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x2dbc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    const-wide v2, -0x311c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/kaorios/SettingsHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-wide p0, -0x321c885e6b8L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x330c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7b
    :try_start_7b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_80} :catch_50e

    const-wide v3, -0x39dc885e6b8L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4f8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_4f8

    :cond_97
    const/4 v0, 0x0

    move v3, v0

    :goto_99
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_ed

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_a6

    goto :goto_ea

    :cond_a6
    const-wide v5, -0x4b2c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    goto :goto_ee

    :cond_c0
    const-wide v5, -0x4b7c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_ea

    move v6, v0

    :goto_d0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_ea

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    goto :goto_ee

    :cond_e7
    add-int/lit8 v6, v6, 0x1

    goto :goto_d0

    :cond_ea
    :goto_ea
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_ed
    move-object v4, v2

    :goto_ee
    if-nez v4, :cond_115

    const-wide v0, -0x3ecc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x3fbc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_115
    const-wide v5, -0x428c885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-wide v5, -0x42ec885e6b8L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_4d3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_139

    goto/16 :goto_4d3

    :cond_139
    if-eqz p0, :cond_26b

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_143

    goto/16 :goto_26b

    :cond_143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    :goto_149
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_26d

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_157

    goto/16 :goto_267

    :cond_157
    const-wide v7, -0x4bdc885e6b8L

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_181

    const-wide v6, -0x4c6c885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    const-wide v7, -0x4d5c885e6b8L

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_267

    :cond_181
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1b6

    const-wide v6, -0x504c885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v9, -0x513c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_267

    :cond_1b6
    const-wide v9, -0x53cc885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-wide v9, -0x549c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20c

    :try_start_1d6
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1da} :catch_1db

    goto :goto_20d

    :catch_1db
    move-exception v9

    const-wide v10, -0x551c885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v12, -0x560c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x588c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20c
    move-object v6, v2

    :goto_20d
    if-nez v7, :cond_213

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_267

    :cond_213
    new-instance v7, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_23f

    array-length v9, v7

    if-nez v9, :cond_222

    goto :goto_23f

    :cond_222
    array-length v8, v7

    move v9, v0

    :goto_224
    if-ge v9, v8, :cond_267

    aget-object v10, v7, v9

    if-eqz v6, :cond_239

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_239

    goto :goto_23c

    :cond_239
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23c
    add-int/lit8 v9, v9, 0x1

    goto :goto_224

    :cond_23f
    :goto_23f
    const-wide v6, -0x58ac885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v9, -0x599c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_267
    :goto_267
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_149

    :cond_26b
    :goto_26b
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_26d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_298

    const-wide v0, -0x473c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x482c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_298
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v0

    move v4, v2

    move v5, v4

    :cond_29f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_480

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    move v7, v0

    :goto_2ac
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_29f

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_2ba

    goto/16 :goto_47c

    :cond_2ba
    add-int/lit8 v2, v2, 0x1

    const-wide v9, -0x5c3c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    const-wide v10, -0x5c8c885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide v10, -0x5c9c885e6b8L

    invoke-static {v10, v11}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    const-wide v11, -0x5d6c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_466

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2f6

    goto/16 :goto_466

    :cond_2f6
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_304

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_309

    :cond_304
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_309
    :try_start_309
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v12, -0x547a4057

    if-eq v10, v12, :cond_3cc

    const v12, 0xdd2662f

    if-eq v10, v12, :cond_38e

    const v12, 0x7c2174ab

    if-eq v10, v12, :cond_31e

    goto/16 :goto_409

    :cond_31e
    const-wide v12, -0x63ec885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_409

    invoke-static {v11, v8}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmzodnwO1tUkgkS8cymEofiI(Ljava/io/File;Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_362

    add-int/lit8 v4, v4, 0x1

    const-wide v8, -0x69fc885e6b8L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x6aec885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47c

    :catch_35f
    move-exception v8

    goto/16 :goto_43c

    :cond_362
    add-int/lit8 v5, v5, 0x1

    const-wide v8, -0x6cac885e6b8L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x6d9c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47c

    :cond_38e
    const-wide v12, -0x62fc885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_409

    invoke-static {v11, v8}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KyqOjqyU2SoxvE3gI(Ljava/io/File;Lorg/json/JSONObject;)V

    add-int/lit8 v4, v4, 0x1

    const-wide v8, -0x679c885e6b8L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x688c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47c

    :cond_3cc
    const-wide v12, -0x61fc885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_409

    invoke-static {v11, v8}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Kq4snztAiatOsRsxI(Ljava/io/File;Lorg/json/JSONObject;)V

    add-int/lit8 v4, v4, 0x1

    const-wide v8, -0x652c885e6b8L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x661c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47c

    :cond_409
    :goto_409
    const-wide v12, -0x706c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v12, -0x715c885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, -0x73ac885e6b8L

    invoke-static {v12, v13}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_439
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_439} :catch_35f

    :goto_439
    add-int/lit8 v5, v5, 0x1

    goto :goto_47c

    :goto_43c
    add-int/2addr v5, v1

    const-wide v9, -0x746c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->KmwO02nawgUws9Syxnq2rElI(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v11, -0x755c885e6b8L

    invoke-static {v11, v12}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47c

    :cond_466
    :goto_466
    const-wide v8, -0x5d7c885e6b8L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v8

    const-wide v9, -0x5e6c885e6b8L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_439

    :goto_47c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2ac

    :cond_480
    if-nez v2, :cond_4a7

    const-wide v0, -0x19cc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x1abc885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d2

    :cond_4a7
    const-wide v0, -0x1dfc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide v6, -0x1eec885e6b8L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d2
    return-void

    :cond_4d3
    :goto_4d3
    const-wide v0, -0x432c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x441c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f8
    :goto_4f8
    const-wide p0, -0x3a6c885e6b8L

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3b5c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_50e
    move-exception p0

    const-wide v0, -0x35cc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x36bc885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static KyqOjqyU2SoxvE3gI(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 6

    const-wide v0, -0x7e8c885e6b8L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-wide v2, -0x815c885e6b8L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->K7b6cynAykO75yzw1Ri5kI(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0}, Lcom/android/internal/util/kaorios/K6rO5a9UiezfihSurbyjoEg50oI;->Kq5pt6AeqxqwOjab0R8ioI(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_2a
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_38

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p0

    :cond_42
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x7f0c885e6b8L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K7b6cynAykO75yzw1Ri5kI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
