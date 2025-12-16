.class public final Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;
.super Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

# interfaces
.implements Lcom/android/internal/util/kaorios/K2vsev6Owb39dU2eaqSj2Ejrg94I;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    const-class v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    return-void
.end method


# virtual methods
.method public final K8Ak17imO9w5w4RppI(Z)I
    .registers 2

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->K91vAo8w086Op21a5bR8uI(ZI)I

    move-result p0

    return p0
.end method

.method public final K91vAo8w086Op21a5bR8uI(Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    iget-object p1, p1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final Kgs66qnAfO491Ra48r7aI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final KmwO02nawgUws9Syxnq2rElI()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;Z)V
    .registers 4

    const/16 v0, 0x12

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/internal/util/kaorios/Kpjiil0OnkfUpeq5t2SlhceEqI;->Kv20eAs5x8fqOila11RtI(IZ[B)V

    return-void
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Ku5O3sihzbUhwSewE8uI:[B

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KhA9xO21ncRgzi0I;->Ku5O3sihzbUhwSewE8uI([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
