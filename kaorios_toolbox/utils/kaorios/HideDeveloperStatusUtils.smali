.class public Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;
.super Ljava/lang/Object;


# static fields
.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    const-wide v1, -0x7aa65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x7b665922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x7c765922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;)V
    .registers 7

    if-gez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Ku5O3sihzbUhwSewE8uI(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_19

    const/4 v1, 0x1

    if-eq p3, v1, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1c
    const-wide v1, -0x79965922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p1

    const-wide v1, -0x7a865922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/kaorios/SettingsHelper;->putKaoriStringForUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .registers 4

    if-nez p0, :cond_8

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_8
    const-wide v0, -0x78665922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    const-wide v0, -0x79565922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/util/HashSet;

    const-wide v1, -0x79765922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_43
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-eqz p0, :cond_3e

    if-eqz p1, :cond_3e

    if-nez p2, :cond_7

    goto :goto_3e

    :cond_7
    const-wide v0, -0x76b65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x77f65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_3e

    :cond_25
    sget-object v0, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    goto :goto_3e

    :cond_2e
    invoke-static {p0}, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Ku5O3sihzbUhwSewE8uI(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3e

    :cond_39
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-gez p3, :cond_7

    goto :goto_c

    :cond_7
    sget-object p0, Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;

    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public removeApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-gez p3, :cond_7

    goto :goto_c

    :cond_7
    sget-object p0, Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;

    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public setApps(Landroid/content/Context;I)V
    .registers 4

    if-eqz p1, :cond_b

    if-gez p2, :cond_5

    goto :goto_b

    :cond_5
    const/4 p0, 0x0

    sget-object v0, Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;

    invoke-static {p1, p0, p2, v0}, Lcom/android/internal/util/kaorios/HideDeveloperStatusUtils;->Kq5pt6AeqxqwOjab0R8ioI(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/kaorios/Kbr88sAs3Olvp8RlsyI;)V

    :cond_b
    :goto_b
    return-void
.end method
