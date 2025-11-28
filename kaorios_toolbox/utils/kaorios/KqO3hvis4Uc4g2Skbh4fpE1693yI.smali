.class public final Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;
.super Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;


# instance fields
.field public final synthetic Kq4snztAiatOsRsxI:I

.field public KyqOjqyU2SoxvE3gI:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    return-void
.end method

.method public synthetic constructor <init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    return-void
.end method

.method public synthetic constructor <init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-void
.end method


# virtual methods
.method public K4cv12eOhp5UsS8gpsE2q2z1I()I
    .registers 7

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    iput v3, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    :cond_20
    iget p0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 11

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_b6

    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    const/4 v3, 0x0

    if-gez v2, :cond_45

    const/16 v2, 0x10

    if-le v1, v2, :cond_1b

    goto :goto_45

    :cond_1b
    new-array v2, v1, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v4, v3

    move v5, v4

    :goto_1f
    if-ge v4, v1, :cond_36

    aget-object v6, v0, v4

    invoke-interface {v6}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_36
    iput v5, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_3b
    if-ge v3, v1, :cond_5a

    aget-object p0, v2, v3

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->K4cv12eOhp5UsS8gpsE2q2z1I()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_4c
    if-ge v3, v1, :cond_5a

    aget-object p0, v0, v3

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/K115mhyAk1nOneR8I;->KcxerAdpv60xOdaR8bI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_5a
    return-void

    :pswitch_5b
    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Ku5O3sihzbUhwSewE8uI()Lcom/android/internal/util/kaorios/KjoyeaAjm7q9O1Rm6ydI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_9b

    const/16 v2, 0x10

    if-le v1, v2, :cond_72

    goto :goto_9b

    :cond_72
    new-array v2, v1, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v5, v3

    move v6, v5

    :goto_76
    if-ge v5, v1, :cond_8c

    aget-object v7, v0, v5

    invoke-interface {v7}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v7, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :cond_8c
    iput v6, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    invoke-virtual {p1, v6}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_91
    if-ge v3, v1, :cond_b4

    aget-object p0, v2, v3

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    :goto_a2
    if-ge v3, v1, :cond_b4

    aget-object p0, v0, v3

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    :cond_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_5b
    .end packed-switch
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_18

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->K4cv12eOhp5UsS8gpsE2q2z1I()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_14

    invoke-super {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kq5pt6AeqxqwOjab0R8ioI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    if-eqz v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-super {p0}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    :goto_13
    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public KvyA01pu5yOryrRk3kI()I
    .registers 7

    iget v0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    iput v3, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    :cond_20
    iget p0, p0, Lcom/android/internal/util/kaorios/KqO3hvis4Uc4g2Skbh4fpE1693yI;->KyqOjqyU2SoxvE3gI:I

    return p0
.end method
