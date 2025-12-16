.class public final Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;
.super Ljava/lang/Object;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/Map;


# instance fields
.field public final Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

.field public final Ku5O3sihzbUhwSewE8uI:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    const/16 v5, 0xa

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v8, 0x1

    const-string v9, "XMSS_SHA2_10_256"

    invoke-direct {v7, v8, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v3}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v8, 0x2

    const-string v9, "XMSS_SHA2_16_256"

    invoke-direct {v7, v8, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x14

    invoke-static {v1, v2, v3, v4, v6}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v8, 0x3

    const-string v9, "XMSS_SHA2_20_256"

    invoke-direct {v7, v8, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    const/16 v7, 0x40

    const/16 v8, 0x83

    invoke-static {v1, v7, v3, v8, v5}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v11, 0x4

    const-string v12, "XMSS_SHA2_10_512"

    invoke-direct {v10, v11, v12}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v3}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v11, 0x5

    const-string v12, "XMSS_SHA2_16_512"

    invoke-direct {v10, v11, v12}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v6}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v10, 0x6

    const-string v11, "XMSS_SHA2_20_512"

    invoke-direct {v9, v10, v11}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/4 v11, 0x7

    const-string v12, "XMSS_SHAKE_10_256"

    invoke-direct {v10, v11, v12}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v3}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/16 v11, 0x8

    const-string v12, "XMSS_SHAKE_16_256"

    invoke-direct {v10, v11, v12}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v6}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/16 v4, 0x9

    const-string v9, "XMSS_SHAKE_20_256"

    invoke-direct {v2, v4, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    invoke-static {v1, v7, v3, v8, v5}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const-string v9, "XMSS_SHAKE_10_512"

    invoke-direct {v4, v5, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v3}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/16 v5, 0xb

    const-string v9, "XMSS_SHAKE_16_512"

    invoke-direct {v4, v5, v9}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v6}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;

    const/16 v3, 0xc

    const-string v4, "XMSS_SHAKE_20_512"

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Ku5O3sihzbUhwSewE8uI:I

    iput-object p2, p0, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;IIII)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ketpn0qOo3UodrS428tgE9I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/String;

    return-object p0
.end method
