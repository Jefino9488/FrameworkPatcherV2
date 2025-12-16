.class public final Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;
.super Ljava/io/ObjectInputStream;


# static fields
.field public static final KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;


# instance fields
.field public Kq5pt6AeqxqwOjab0R8ioI:Z

.field public final Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    const-string v1, "java.util.TreeMap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.Number"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.ArrayList"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.XMSSNode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "[B"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.LinkedList"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.Stack"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.Vector"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "[Ljava.lang.Object;"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDSTreeHash"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/io/ByteArrayInputStream;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    iput-object p1, p0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    const-string v1, "unexpected class: "

    if-nez v0, :cond_24

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->Kq5pt6AeqxqwOjab0R8ioI:Z

    goto :goto_30

    :cond_1a
    new-instance p0, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_24
    sget-object v0, Lcom/android/internal/util/kaorios/K1uw1O99go2gUehnb5lShgwlEagbbfI;->KmwO02nawgUws9Syxnq2rElI:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :goto_30
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
