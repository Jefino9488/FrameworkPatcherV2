.class public final Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;
.super Lcom/android/internal/util/kaorios/K308mmA0OnhkcvRyI;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

.field public Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;


# direct methods
.method public static KtbuouOlomiUohgSxfezrEyv01I(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;
    .registers 4

    instance-of v0, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    return-object p0

    :cond_7
    if-eqz p0, :cond_4a

    new-instance v0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KvyA01pu5yOryrRk3kI(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->KfhA0xayiqO65hivnRnnoh8cI()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KtbuouOlomiUohgSxfezrEyv01I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;->Kvvx152O1Uo652lSpg5iE1I(Ljava/lang/Object;)Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/Kj2qcOcnkeU5uS40ab63Ex41pcI;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final Kq5pt6AeqxqwOjab0R8ioI()Lcom/android/internal/util/kaorios/Ks96gdAhg0O5g3zRn1c11I;
    .registers 3

    new-instance v0, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Kut0AjncOqpmogR8hbrI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/KkjrAkO4etRm8g8I;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/util/kaorios/KjAjghbOpRzicI;-><init>(Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;Lcom/android/internal/util/kaorios/Kl7kjAp088ObenrihR5I;)V

    return-object v0
.end method
