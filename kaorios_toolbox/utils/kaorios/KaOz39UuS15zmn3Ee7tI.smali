.class public final Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

.field public static final Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    new-instance v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;-><init>(B)V

    sput-object v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    new-instance v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;-><init>(B)V

    sput-object v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Ku5O3sihzbUhwSewE8uI:B

    return-void
.end method

.method public static Kr021bO9Updrd4Sc925kEfdq29I([B)Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_12

    new-instance v0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    invoke-direct {v0, p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;-><init>(B)V

    return-object v0

    :cond_12
    sget-object p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    return-object p0

    :cond_15
    sget-object p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final K0wipv9AtliO55qRn6mI()Z
    .registers 1

    iget-byte p0, p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Ku5O3sihzbUhwSewE8uI:B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final K7xuO3UlvknmcS4irn11EomI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->K0wipv9AtliO55qRn6mI()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    return-object p0
.end method

.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 2

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->K0wipv9AtliO55qRn6mI()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->K0wipv9AtliO55qRn6mI()Z

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kvvx152O1Uo652lSpg5iE1I(ZI)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->KcxerAdpv60xOdaR8bI(I)V

    iget-byte p0, p0, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->Ku5O3sihzbUhwSewE8uI:B

    invoke-virtual {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K8Ak17imO9w5w4RppI(I)V

    return-void
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->K0wipv9AtliO55qRn6mI()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KaOz39UuS15zmn3Ee7tI;->K0wipv9AtliO55qRn6mI()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "TRUE"

    return-object p0

    :cond_9
    const-string p0, "FALSE"

    return-object p0
.end method
