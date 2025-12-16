.class public abstract Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;
.super Ljava/lang/Object;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA-256"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v5, "SHA-512"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v7, "SHAKE128"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v9, "SHAKE256"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;
    .registers 4

    sget-object v0, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unrecognized digest name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)Lcom/android/internal/util/kaorios/K7Asp6bowO99k3xRjme3I;
    .registers 4

    sget-object v0, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Ki39byeAc7O8ydu1cRrI;-><init>()V

    return-object p0

    :cond_e
    sget-object v0, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p0, Lcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/K1i4Oylb2qUdulSz2ngvvE2wteaI;-><init>(I)V

    return-object p0

    :cond_1d
    sget-object v0, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance p0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    return-object p0

    :cond_2d
    sget-object v0, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance p0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    return-object p0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unrecognized digest OID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
