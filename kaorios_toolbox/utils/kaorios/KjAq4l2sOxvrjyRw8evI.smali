.class public final Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;
.super Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;


# instance fields
.field public Kq4snztAiatOsRsxI:I


# direct methods
.method public constructor <init>([Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;-><init>(Z[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    return-void
.end method


# virtual methods
.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 11

    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KcxerAdpv60xOdaR8bI(ZI)V

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmwO02nawgUws9Syxnq2rElI()Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/kaorios/Ky5zkAngrjcOliRjx51l0I;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    const/4 v3, 0x0

    if-gez v2, :cond_40

    const/16 v2, 0x10

    if-le v1, v2, :cond_16

    goto :goto_40

    :cond_16
    new-array v2, v1, [Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move v4, v3

    move v5, v4

    :goto_1a
    if-ge v4, v1, :cond_31

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

    goto :goto_1a

    :cond_31
    iput v5, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I(I)V

    :goto_36
    if-ge v3, v1, :cond_55

    aget-object p0, v2, v3

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;->K7xuO3UlvknmcS4irn11EomI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KtbuouOlomiUohgSxfezrEyv01I(I)V

    :goto_47
    if-ge v3, v1, :cond_55

    aget-object p0, v0, v3

    invoke-interface {p0}, Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;->Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/kaorios/KimdeOijd5wlUm9Suw4olE8npuxI;->K7xuO3UlvknmcS4irn11EomI(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_55
    return-void
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->KvyA01pu5yOryrRk3kI()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KyqOjqyU2SoxvE3gI(ZI)I

    move-result p0

    return p0
.end method

.method public final KvyA01pu5yOryrRk3kI()I
    .registers 7

    iget v0, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

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
    iput v3, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    :cond_20
    iget p0, p0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq4snztAiatOsRsxI:I

    return p0
.end method
