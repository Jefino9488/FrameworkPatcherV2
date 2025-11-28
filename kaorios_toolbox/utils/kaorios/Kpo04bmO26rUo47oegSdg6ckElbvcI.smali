.class public final Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;
.super Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;


# instance fields
.field public final synthetic Kq4snztAiatOsRsxI:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>([BI)V

    return-void
.end method

.method public synthetic constructor <init>([BIB)V
    .registers 4

    iput p2, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    iget p0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    packed-switch p0, :pswitch_data_a

    const/4 p0, 0x0

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 9

    iget v0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    array-length v3, p0

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, p0, v4

    shl-int v1, v2, v1

    and-int/2addr v1, v5

    int-to-byte v1, v1

    const/4 v2, 0x3

    if-ne v5, v1, :cond_24

    invoke-virtual {p1, p2, v2, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    goto :goto_30

    :cond_24
    invoke-virtual {p1, p2, v2}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1, v3}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    invoke-virtual {p1, p0, v0, v4}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->KmzodnwO1tUkgkS8cymEofiI([BII)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public final Kr021bO9Updrd4Sc925kEfdq29I()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_16

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    :pswitch_d
    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/kaorios/Kpo04bmO26rUo47oegSdg6ckElbvcI;->Kq4snztAiatOsRsxI:I

    packed-switch v0, :pswitch_data_a

    invoke-super {p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

    move-result-object p0

    :pswitch_9
    return-object p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
