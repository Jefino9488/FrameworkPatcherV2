.class public final Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient Kq5pt6AeqxqwOjab0R8ioI:J

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    iput-wide p1, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Kq5pt6AeqxqwOjab0R8ioI:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    new-instance v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    iget-object v4, p1, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v3, v4}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_33
    iput-wide p2, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Kq5pt6AeqxqwOjab0R8ioI:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;J[B[B)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    iget v4, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->KmwO02nawgUws9Syxnq2rElI:I

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    sub-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Kq5pt6AeqxqwOjab0R8ioI:J

    const-wide/16 v9, 0x0

    :goto_1d
    cmp-long v4, v9, p2

    if-gez v4, :cond_127

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    iget-object v13, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;

    iget v14, v13, Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;->Kq5pt6AeqxqwOjab0R8ioI:I

    move-wide v15, v5

    move v6, v4

    shr-long v4, v9, v14

    shl-long v17, v15, v14

    sub-long v17, v17, v15

    move v8, v6

    const-wide/16 v19, 0x0

    and-long v6, v9, v17

    long-to-int v6, v6

    new-instance v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    move/from16 v21, v8

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iput-wide v4, v7, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v6, v7, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    new-instance v8, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v8, v7}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    const/16 v22, 0x1

    shl-int v7, v22, v14

    move-wide/from16 v23, v15

    add-int/lit8 v15, v7, -0x1

    if-ge v6, v15, :cond_88

    invoke-virtual {v12, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    if-eqz v16, :cond_5f

    if-nez v6, :cond_67

    :cond_5f
    new-instance v6, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v6, v13, v2, v3, v8}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    invoke-virtual {v12, v11, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    iget-object v6, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-wide/from16 v25, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v5, v4, v2, v3, v8}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    invoke-virtual {v6, v11, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    goto :goto_8a

    :cond_88
    move-wide/from16 v25, v4

    :goto_8a
    move/from16 v6, v22

    move-wide/from16 v4, v25

    :goto_8e
    iget v8, v1, Lcom/android/internal/util/kaorios/Kxo9yoAstbO418xbRrdbwI;->Kq4snztAiatOsRsxI:I

    if-ge v6, v8, :cond_11d

    move-wide/from16 v21, v4

    and-long v4, v21, v17

    long-to-int v4, v4

    move-wide/from16 v25, v9

    shr-long v8, v21, v14

    new-instance v5, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;

    const/4 v10, 0x1

    invoke-direct {v5, v10}, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;-><init>(I)V

    iput v6, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->KmwO02nawgUws9Syxnq2rElI:I

    iput-wide v8, v5, Lcom/android/internal/util/kaorios/Khd21cOyqUnSenvEc1I;->Kq5pt6AeqxqwOjab0R8ioI:J

    iput v4, v5, Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;->KyqOjqyU2SoxvE3gI:I

    new-instance v10, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;

    invoke-direct {v10, v5}, Lcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;-><init>(Lcom/android/internal/util/kaorios/KwAujxpbbO8uuRn17I;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_cd

    cmp-long v5, v25, v19

    move-wide/from16 v21, v8

    if-nez v5, :cond_bd

    goto :goto_db

    :cond_bd
    int-to-double v8, v7

    add-int/lit8 v5, v6, 0x1

    int-to-double v0, v5

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    rem-long v0, v25, v0

    cmp-long v0, v0, v19

    if-nez v0, :cond_db

    goto :goto_cf

    :cond_cd
    move-wide/from16 v21, v8

    :goto_cf
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v1, v13, v2, v3, v10}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KtnOdl1U1j1jS6EqjtmI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    invoke-virtual {v12, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db
    :goto_db
    if-ge v4, v15, :cond_111

    cmp-long v0, v25, v19

    if-nez v0, :cond_e2

    goto :goto_111

    :cond_e2
    add-long v0, v25, v23

    int-to-double v4, v7

    int-to-double v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v0, v0, v19

    if-nez v0, :cond_111

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v8, v5, v2, v3, v10}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;[B[BLcom/android/internal/util/kaorios/Ku1erfO6quyjkUcbSqEq5I;)V

    invoke-virtual {v1, v4, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    goto :goto_113

    :cond_111
    :goto_111
    move-object/from16 v0, p0

    :goto_113
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v4, v21

    move-wide/from16 v9, v25

    goto/16 :goto_8e

    :cond_11d
    move-wide/from16 v25, v9

    add-long v9, v25, v23

    move-object/from16 v1, p1

    move-wide/from16 v5, v23

    goto/16 :goto_1d

    :cond_127
    return-void
.end method


# virtual methods
.method public final Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;
    .registers 7

    new-instance v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;

    iget-wide v1, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Kq5pt6AeqxqwOjab0R8ioI:J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;-><init>(J)V

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;

    invoke-direct {v4, v3, p1}, Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;-><init>(Lcom/android/internal/util/kaorios/KllbA8Ocr6h9Rv2w3eI;Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)V

    iget-object v3, v0, Lcom/android/internal/util/kaorios/KeacO1khdU9SiiE5zhnvtI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/TreeMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_31
    return-object v0
.end method
