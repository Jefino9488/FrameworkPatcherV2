.class public final Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;
.super Ljava/security/Permission;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final getActions()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public final implies(Ljava/security/Permission;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;

    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    :cond_15
    iget-object p0, p0, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/internal/util/kaorios/Ky0nkOcp32ttUan0k2jSmf3Ermq1n7I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_21

    :goto_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
