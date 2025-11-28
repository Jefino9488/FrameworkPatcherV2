.class public abstract Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KqskOjqUmS2hsE1rluexI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->K0wipv9AtliO55qRn6mI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "MD2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Kvvx152O1Uo652lSpg5iE1I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "MD4"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->KvyA01pu5yOryrRk3kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "MD5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/kaorios/KemAkvwqquO1r331tRlv2I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA-1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v5, "SHA-224"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v7, "SHA-256"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v9, "SHA-384"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v11, "SHA-512"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "SHA-512(224)"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "SHA-512(256)"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "RIPEMD-128"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v14, "RIPEMD-160"

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kcsn4Ag3mf6fO9R0I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kcsn4Ag3mf6fO9R0I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/KcgnzoxOmbkUaxSxb1n5EyqgI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "GOST3411"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/KzudgkeO14cUcSp77Evvd3vhI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "Tiger"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/Kcsn4Ag3mf6fO9R0I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "Whirlpool"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v13, "SHA3-224"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v15, "SHA3-256"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v15

    sget-object v15, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-object/from16 v17, v14

    const-string v14, "SHA3-384"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v14

    sget-object v14, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-object/from16 v19, v15

    const-string v15, "SHA3-512"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v15

    sget-object v15, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    move-object/from16 v21, v14

    const-string v14, "SHAKE128"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v15, "SHAKE256"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/internal/util/kaorios/K5gd1oAn61rrOprxsRhq8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v15, "SM3"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/internal/util/kaorios/Kumt4eAsj3s6fOuxayRggetsI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v15, "BLAKE3-256"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-object/from16 v22, v15

    sget-object v15, Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K5OjUcee7gS1vx8EpthqyI;

    invoke-direct {v0, v2, v15}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    const-string v2, "SHA224"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    const-string v2, "SHA256"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v8}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    const-string v2, "SHA384"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    const-string v2, "SHA512"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v12}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-object/from16 v2, v17

    invoke-direct {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-object/from16 v2, v21

    invoke-direct {v0, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-direct {v0, v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;-><init>(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)V

    move-object/from16 v2, v22

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
