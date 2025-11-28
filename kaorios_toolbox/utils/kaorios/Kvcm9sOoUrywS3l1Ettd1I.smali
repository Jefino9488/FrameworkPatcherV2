.class public final Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

.field public final transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;


# direct methods
.method public constructor <init>([B)V
    .registers 5

    const-string v0, "malformed data: "

    const/4 v1, 0x1

    :try_start_3
    sget v2, Lcom/android/internal/util/kaorios/Kke3fO4deq27U72qykgSpzwzwEn95I;->Ku5O3sihzbUhwSewE8uI:I

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->K7xuO3UlvknmcS4irn11EomI([B)Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-static {p1}, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_1b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/K8o2lxdO6p0vfoUiu2dS29ExI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    iput-object p1, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KjzoOpt8xnU6rwrSlyEba6I;

    return-void

    :catch_1b
    move-exception p0

    goto :goto_27

    :catch_1d
    move-exception p0

    goto :goto_3d

    :cond_1f
    :try_start_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no content found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_27} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_27} :catch_1b

    :goto_27
    new-instance p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    throw p1

    :goto_3d
    new-instance p1, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/internal/util/kaorios/KwO2tU47S17b8EidmuilI;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kvcm9sOoUrywS3l1Ettd1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Knh3q4sA6j79ObyRwI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;->hashCode()I

    move-result p0

    return p0
.end method
