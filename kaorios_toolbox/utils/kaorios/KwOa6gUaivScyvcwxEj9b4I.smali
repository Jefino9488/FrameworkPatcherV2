.class public final Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;
.super Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:[B

.field public final K91vAo8w086Op21a5bR8uI:[B

.field public final KmwO02nawgUws9Syxnq2rElI:[B

.field public final KmzodnwO1tUkgkS8cymEofiI:[B

.field public final Kq4snztAiatOsRsxI:[B

.field public final KtbuouOlomiUohgSxfezrEyv01I:[B

.field public final KyqOjqyU2SoxvE3gI:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;[BLcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    iget p1, p1, Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v0, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    const/4 v0, 0x2

    const/high16 v2, 0x20000

    const/16 v3, 0x80

    const/16 v4, 0x60

    const/high16 v5, 0x80000

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x3

    const/4 v6, 0x5

    if-eq p1, v0, :cond_3c

    if-ne p1, v6, :cond_23

    const/16 p1, 0x8

    const/4 v6, 0x7

    :goto_21
    move v0, v5

    goto :goto_42

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The mode "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not supported by Crystals Dilithium!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    const/4 p1, 0x6

    move v4, v3

    goto :goto_21

    :cond_3f
    const/4 v6, 0x4

    move v0, v2

    move p1, v6

    :goto_42
    new-instance v7, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    invoke-direct {v7, v3}, Lcom/android/internal/util/kaorios/KlOox3Ufe5b01Sj89E29hpjI;-><init>(I)V

    new-instance v7, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;

    invoke-direct {v7, v1}, Lcom/android/internal/util/kaorios/KxgOp4hU8eukpSs18tibEoI;-><init>(I)V

    if-ne v0, v2, :cond_4f

    goto :goto_51

    :cond_4f
    if-ne v0, v5, :cond_90

    :goto_51
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KmwO02nawgUws9Syxnq2rElI:[B

    const/16 v0, 0x40

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->Kq4snztAiatOsRsxI:[B

    invoke-static {p2, v0, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KyqOjqyU2SoxvE3gI:[B

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    invoke-static {p2, v3, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->K7b6cynAykO75yzw1Ri5kI:[B

    mul-int/2addr v4, p1

    add-int/2addr v4, v6

    invoke-static {p2, v6, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KmzodnwO1tUkgkS8cymEofiI:[B

    mul-int/lit16 p1, p1, 0x1a0

    add-int/2addr p1, v4

    invoke-static {p2, v4, p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KfhA0xayiqO65hivnRnnoh8cI([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->K91vAo8w086Op21a5bR8uI:[B

    if-eqz p3, :cond_8c

    iget-object p1, p3, Lcom/android/internal/util/kaorios/Kmx3ofhAx8dtl5Oih4boRebebvI;->Kq4snztAiatOsRsxI:[B

    invoke-static {p1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KtbuouOlomiUohgSxfezrEyv01I:[B

    return-void

    :cond_8c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KtbuouOlomiUohgSxfezrEyv01I:[B

    return-void

    :cond_90
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Gamma1!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/K6pezj1AmOobdR3709oI;[B[B[B[B[B[B[B)V
    .registers 10

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/KjfkAcnq7O6Rwho3yI;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KmwO02nawgUws9Syxnq2rElI:[B

    invoke-static {p3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->Kq4snztAiatOsRsxI:[B

    invoke-static {p4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KyqOjqyU2SoxvE3gI:[B

    invoke-static {p5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->K7b6cynAykO75yzw1Ri5kI:[B

    invoke-static {p6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KmzodnwO1tUkgkS8cymEofiI:[B

    invoke-static {p7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->K91vAo8w086Op21a5bR8uI:[B

    invoke-static {p8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8c63Ooauv32UndyuScEgI([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KwOa6gUaivScyvcwxEj9b4I;->KtbuouOlomiUohgSxfezrEyv01I:[B

    return-void
.end method
