.class public final Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

.field public transient K8c63Ooauv32UndyuScEgI:I

.field public final K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

.field public Kgs66qnAfO491Ra48r7aI:Z

.field public final KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

.field public final KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

.field public final Kq4snztAiatOsRsxI:I

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public KtbuouOlomiUohgSxfezrEyv01I:I

.field public final transient Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

.field public final KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object v3, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_55
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_84
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iget-boolean p1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    new-instance v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v1, p2}, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget p2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget p2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    iput p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object p2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object v2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_54
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    iget-object p2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_83
    new-instance p2, Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    iget p2, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iget-boolean p1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    iget-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    if-eqz p1, :cond_ca

    iget-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    if-eqz p1, :cond_ba

    iget p0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    int-to-long p1, p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K39AzOb2jazR1ucsI(IJ)Z

    move-result p0

    if-eqz p0, :cond_b2

    return-void

    :cond_b2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "index in BDS state out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "treeHashInstances == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stack == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ca
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "retain == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "authenticationPath == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v1, v1, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    iget-object v3, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_55
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    invoke-virtual {v2}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_84
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    iget v0, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput v0, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget p1, p1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iput p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iput p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput p4, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    iput p3, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    if-gt p3, p2, :cond_4e

    const/4 p1, 0x2

    if-lt p3, p1, :cond_4e

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_4e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move p3, p1

    :goto_33
    if-ge p3, p2, :cond_42

    iget-object p4, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    invoke-direct {v0, p3}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;-><init>(I)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_33

    :cond_42
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    iput p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput-boolean p1, p0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    return-void

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal value for BDS parameter k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V
    .registers 9

    new-instance v0, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    iget-object v1, p1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;-><init>(Lcom/android/internal/util/kaorios/KhsrOkUml3k7Sq0e3aE41zq1aI;)V

    iget v1, p1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget p1, p1, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->KmwO02nawgUws9Syxnq2rElI:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;III)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    return-void
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v6, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iget-boolean v7, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kgs66qnAfO491Ra48r7aI:Z

    if-nez v7, :cond_2fc

    iget v7, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iget v8, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K8c63Ooauv32UndyuScEgI:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_2f4

    const/4 v8, 0x0

    move v10, v8

    :goto_1a
    iget v11, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ge v10, v11, :cond_27

    shr-int v12, v7, v10

    and-int/2addr v12, v9

    if-nez v12, :cond_24

    goto :goto_28

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_27
    move v10, v8

    :goto_28
    iget v7, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    add-int/lit8 v12, v10, 0x1

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    iget-object v12, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K91vAo8w086Op21a5bR8uI:Ljava/util/TreeMap;

    iget-object v13, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    if-nez v7, :cond_45

    add-int/lit8 v7, v11, -0x1

    if-ge v10, v7, :cond_45

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    invoke-virtual {v12, v7, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v14, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    iget v15, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    move/from16 v16, v9

    iget-object v9, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    if-nez v10, :cond_9e

    new-instance v10, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iput v6, v10, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v4, v10, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v12, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput v12, v10, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget v12, v3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->K7b6cynAykO75yzw1Ri5kI:I

    iput v12, v10, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget v12, v3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v12, v10, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v3, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v3, v10, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v3, v10}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI([BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI([B[B)V

    invoke-virtual {v9, v3}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    move-result-object v10

    new-instance v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v7, 0x0

    invoke-direct {v12, v7}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iput v6, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v4, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v4, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    iput v4, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iput v8, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iput v8, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v8, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v4, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;

    invoke-direct {v4, v12}, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    invoke-static {v9, v10, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4q6OjhwnqrU5zhzfSqu31ExfxnuI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v4

    invoke-virtual {v13, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_99
    move/from16 v7, v16

    const/4 v10, 0x0

    goto/16 :goto_148

    :cond_9e
    new-instance v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v7}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iput v6, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v4, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    add-int/lit8 v4, v10, -0x1

    iput v4, v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    iget v5, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    shr-int/2addr v5, v10

    iput v5, v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v8, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v5, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v5, v7}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI([BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object v6

    invoke-virtual {v9, v6, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI([B[B)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    invoke-static {v9, v6, v7, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ku3kjsOrU9l90wcSia29xEimI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v5

    new-instance v6, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v7, v5, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    add-int/lit8 v7, v7, 0x1

    iget-object v5, v5, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([B)[B

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;-><init>(I[B)V

    invoke-virtual {v13, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v8

    :goto_ec
    if-ge v4, v10, :cond_114

    sub-int v5, v11, v15

    if-ge v4, v5, :cond_fe

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    iget-object v5, v5, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    :goto_fa
    invoke-virtual {v13, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_fe
    iget-object v5, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    goto :goto_fa

    :goto_111
    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    :cond_114
    sub-int v4, v11, v15

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v8

    :goto_11b
    if-ge v5, v4, :cond_99

    iget v6, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    add-int/lit8 v6, v6, 0x1

    shl-int v7, v16, v5

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v6

    shl-int v6, v16, v11

    if-ge v7, v6, :cond_140

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v12, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iput v12, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    iput v7, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    move/from16 v7, v16

    iput-boolean v7, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    iput-boolean v8, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    goto :goto_143

    :cond_140
    move/from16 v7, v16

    const/4 v10, 0x0

    :goto_143
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v7

    goto :goto_11b

    :goto_148
    move v4, v8

    :goto_149
    sub-int v5, v11, v15

    shr-int/2addr v5, v7

    if-ge v4, v5, :cond_2eb

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v8

    move-object v6, v10

    :goto_154
    if-ge v7, v5, :cond_188

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    iget-boolean v13, v12, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-nez v13, :cond_175

    iget-boolean v13, v12, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    if-nez v13, :cond_167

    goto :goto_175

    :cond_167
    if-nez v6, :cond_16a

    goto :goto_174

    :cond_16a
    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v13

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v8

    if-ge v13, v8, :cond_177

    :goto_174
    move-object v6, v12

    :cond_175
    :goto_175
    const/4 v8, 0x0

    goto :goto_154

    :cond_177
    invoke-virtual {v12}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI()I

    move-result v13

    if-ne v8, v13, :cond_175

    iget v8, v12, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    iget v13, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    if-ge v8, v13, :cond_175

    goto :goto_174

    :cond_188
    if-eqz v6, :cond_2d6

    iget v5, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI:I

    iget-boolean v7, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    if-nez v7, :cond_2ce

    iget-boolean v7, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KyqOjqyU2SoxvE3gI:Z

    if-eqz v7, :cond_2ce

    new-instance v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v8, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v8, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v12, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v12, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v8, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    iput v8, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget v12, v3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->K7b6cynAykO75yzw1Ri5kI:I

    iput v12, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget v12, v3, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v12, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v12, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v12, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v12, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v12, v7}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    move v7, v11

    iget-wide v10, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    new-instance v13, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-direct {v13, v3}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v3, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v3, v13, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v10, v13, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v8, v13, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    move/from16 v18, v4

    new-instance v4, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;

    invoke-direct {v4, v13}, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    new-instance v13, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v13}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iput v3, v13, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v10, v13, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v8, v13, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    new-instance v3, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v3, v13}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    invoke-virtual {v9, v2, v12}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI([BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object v8

    invoke-virtual {v9, v8, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI([B[B)V

    invoke-virtual {v9, v12}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    move-result-object v8

    invoke-static {v9, v8, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4q6OjhwnqrU5zhzfSqu31ExfxnuI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v4

    :goto_1f0
    iget v8, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iget-wide v10, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget-object v12, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    iget v1, v3, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->K7b6cynAykO75yzw1Ri5kI:I

    move/from16 v19, v1

    iget v1, v3, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->KyqOjqyU2SoxvE3gI:I

    iget v3, v3, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    if-nez v13, :cond_273

    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v13, v13, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    iget v2, v4, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v13, v2, :cond_273

    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v2, v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    if-eq v2, v5, :cond_273

    new-instance v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v2}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iput v3, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v10, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v1, v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    add-int/lit8 v1, v19, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v8, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v1, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    invoke-static {v9, v2, v4, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ku3kjsOrU9l90wcSia29xEimI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v3, v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v2, v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([B)[B

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;-><init>(I[B)V

    new-instance v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v2}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iget v3, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v3, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v10, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v10, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v3, v1, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->KyqOjqyU2SoxvE3gI:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    iget v3, v1, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v3, v2, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v1, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v1, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v3, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v3, v2}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_1f0

    :cond_273
    iget-object v2, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    if-nez v2, :cond_27c

    iput-object v4, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move/from16 v20, v7

    goto :goto_2b9

    :cond_27c
    iget v13, v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    move/from16 v20, v7

    iget v7, v4, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v13, v7, :cond_2b6

    new-instance v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v7}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iput v3, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v10, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v1, v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    add-int/lit8 v1, v19, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, v7, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v8, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v1, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v1, v7}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    invoke-static {v9, v2, v4, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ku3kjsOrU9l90wcSia29xEimI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v1

    new-instance v4, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget-object v2, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v2, v2, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([B)[B

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;-><init>(I[B)V

    iput-object v4, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    goto :goto_2b9

    :cond_2b6
    invoke-virtual {v12, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b9
    iget-object v1, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v1, v1, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v1, v5, :cond_2c3

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    goto :goto_2dc

    :cond_2c3
    const/4 v7, 0x1

    iget v1, v4, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    iput v1, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    iget v1, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    add-int/2addr v1, v7

    iput v1, v6, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq4snztAiatOsRsxI:I

    goto :goto_2dc

    :cond_2ce
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finished or not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d6
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v11

    :goto_2dc
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v11, v20

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_149

    :cond_2eb
    iget v1, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KtbuouOlomiUohgSxfezrEyv01I:I

    return-void

    :cond_2f4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2fc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Ku5O3sihzbUhwSewE8uI([B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-wide v2, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v4, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    new-instance v5, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iput v4, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v2, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    new-instance v6, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;

    invoke-direct {v6, v5}, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    new-instance v5, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v5}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iput v4, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v2, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    new-instance v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v2, v5}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    const/4 v3, 0x0

    :goto_26
    const/4 v4, 0x1

    iget v5, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq5pt6AeqxqwOjab0R8ioI:I

    shl-int v7, v4, v5

    iget-object v8, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/util/Stack;

    if-ge v3, v7, :cond_17e

    new-instance v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v9, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v9, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v9, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v9, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v3, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget v9, v1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->K7b6cynAykO75yzw1Ri5kI:I

    iput v9, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget v9, v1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v9, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v1, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v1, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v1, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v1, v7}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    iget-object v7, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;

    move-object/from16 v9, p2

    invoke-virtual {v7, v9, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->KmwO02nawgUws9Syxnq2rElI([BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)[B

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v7, v10, v11}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq4snztAiatOsRsxI([B[B)V

    invoke-virtual {v7, v1}, Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;->Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;

    move-result-object v10

    new-instance v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iget v13, v6, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v13, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v13, v6, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v13, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v3, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    iget v13, v6, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v13, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->K7b6cynAykO75yzw1Ri5kI:I

    iget v13, v6, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;->KmzodnwO1tUkgkS8cymEofiI:I

    iput v13, v12, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KmzodnwO1tUkgkS8cymEofiI:I

    iget v6, v6, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v6, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v6, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;

    invoke-direct {v6, v12}, Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    invoke-static {v7, v10, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K4q6OjhwnqrU5zhzfSqu31ExfxnuI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Lcom/android/internal/util/kaorios/KlnfxqOg5rqUcgtgScz3deuEx9rI;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v10

    new-instance v12, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v12}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iget v13, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v13, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v13, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v13, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v3, v12, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v2, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v2, v12, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v2, v12}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    :goto_9e
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_173

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v12, v12, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    iget v13, v10, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    if-ne v12, v13, :cond_173

    shl-int v12, v4, v13

    div-int v12, v3, v12

    if-ne v12, v4, :cond_bb

    iget-object v14, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KyqOjqyU2SoxvE3gI:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bb
    iget v14, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->Kq4snztAiatOsRsxI:I

    const/4 v15, 0x3

    if-ne v12, v15, :cond_dd

    sub-int v15, v5, v14

    if-ge v13, v15, :cond_da

    iget-object v15, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;

    iput-object v10, v15, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iput v13, v15, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->KmwO02nawgUws9Syxnq2rElI:I

    move-object/from16 v16, v1

    iget v1, v15, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-ne v13, v1, :cond_d8

    iput-boolean v4, v15, Lcom/android/internal/util/kaorios/Kmml9uA8j9bObjkuRtyopI;->K7b6cynAykO75yzw1Ri5kI:Z

    :cond_d8
    :goto_d8
    const/4 v1, 0x3

    goto :goto_e0

    :cond_da
    move-object/from16 v16, v1

    goto :goto_d8

    :cond_dd
    move-object/from16 v16, v1

    move v1, v15

    :goto_e0
    if-lt v12, v1, :cond_117

    and-int/lit8 v1, v12, 0x1

    if-ne v1, v4, :cond_117

    sub-int v1, v5, v14

    if-lt v13, v1, :cond_117

    add-int/lit8 v1, v5, -0x2

    if-gt v13, v1, :cond_117

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v12, v0, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;->K7b6cynAykO75yzw1Ri5kI:Ljava/util/TreeMap;

    invoke-virtual {v12, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10a

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_117

    :cond_10a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_117
    :goto_117
    new-instance v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v1}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iget v12, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v12, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v12, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v12, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v12, v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->KyqOjqyU2SoxvE3gI:I

    iput v12, v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    iget v12, v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->K7b6cynAykO75yzw1Ri5kI:I

    sub-int/2addr v12, v4

    div-int/lit8 v12, v12, 0x2

    iput v12, v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v2, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v2, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v2, v1}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    invoke-static {v7, v1, v10, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ku3kjsOrU9l90wcSia29xEimI(Lcom/android/internal/util/kaorios/KrjrlActO767zgcRp6maj4I;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;)Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    move-result-object v1

    new-instance v10, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    iget v12, v1, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Ku5O3sihzbUhwSewE8uI:I

    add-int/2addr v12, v4

    iget-object v1, v1, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;->Kq5pt6AeqxqwOjab0R8ioI:[B

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I([B)[B

    move-result-object v1

    invoke-direct {v10, v12, v1}, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;-><init>(I[B)V

    new-instance v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;

    invoke-direct {v1}, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;-><init>()V

    iget v12, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Ku5O3sihzbUhwSewE8uI:I

    iput v12, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iget-wide v12, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput-wide v12, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iget v12, v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->KyqOjqyU2SoxvE3gI:I

    add-int/2addr v12, v4

    iput v12, v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->KyqOjqyU2SoxvE3gI:I

    iget v12, v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;->K7b6cynAykO75yzw1Ri5kI:I

    iput v12, v1, Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;->K7b6cynAykO75yzw1Ri5kI:I

    iget v2, v2, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    iput v2, v1, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq4snztAiatOsRsxI:I

    new-instance v2, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;

    invoke-direct {v2, v1}, Lcom/android/internal/util/kaorios/K451qOew5wbmU5uyjmS1r07gsEfq54fI;-><init>(Lcom/android/internal/util/kaorios/K1hu51kA14OjvRbohfI;)V

    move-object/from16 v1, v16

    goto/16 :goto_9e

    :cond_173
    move-object/from16 v16, v1

    invoke-virtual {v8, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_26

    :cond_17e
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/kaorios/Ka3g3vbA64giOaqRvI;

    return-void
.end method
