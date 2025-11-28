.class public final Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;
.super Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;

    const-class v1, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KqqOuUisf9SadffEvgI;-><init>(Ljava/lang/Class;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;-><init>(B)V

    sput-object v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    new-instance v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;-><init>(B)V

    sput-object v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Ku5O3sihzbUhwSewE8uI:B

    return-void
.end method

.method public static K0wipv9AtliO55qRn6mI([B)Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_12

    new-instance v0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;-><init>(B)V

    return-object v0

    :cond_12
    sget-object p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-object p0

    :cond_15
    sget-object p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(ZI)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K91vAo8w086Op21a5bR8uI(I)V

    iget-byte p0, p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Ku5O3sihzbUhwSewE8uI:B

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->K7b6cynAykO75yzw1Ri5kI(I)V

    return-void
.end method

.method public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I(Z)I
    .registers 2

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kzw7Ay0nghOr56cl7R0kI;->Kq4snztAiatOsRsxI(ZI)I

    move-result p0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public final Kv20eAs5x8fqOila11RtI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;

    return-object p0
.end method

.method public final Kvvx152O1Uo652lSpg5iE1I()Z
    .registers 1

    iget-byte p0, p0, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Ku5O3sihzbUhwSewE8uI:B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KcsA3idqO13n7pR1tr4I;->Kvvx152O1Uo652lSpg5iE1I()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "TRUE"

    return-object p0

    :cond_9
    const-string p0, "FALSE"

    return-object p0
.end method
