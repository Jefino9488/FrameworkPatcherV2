.class public final Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;

# interfaces
.implements Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    return-void

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'contents\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final K8c63Ooauv32UndyuScEgI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI(Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;Z)V
    .registers 4

    const/16 v0, 0x19

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kgs66qnAfO491Ra48r7aI(ZI[B)V

    return-void
.end method

.method public final KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kjg4mwO2cyhbzUj0zraSgrh4ipEowI;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KleqOvvfxU58fS6div3EzrdI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->Kgs66qnAfO491Ra48r7aI([B)I

    move-result p0

    return p0
.end method
