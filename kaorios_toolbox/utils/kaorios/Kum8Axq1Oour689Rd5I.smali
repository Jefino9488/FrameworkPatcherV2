.class public final synthetic Lcom/android/internal/util/kaorios/Kum8Axq1Oour689Rd5I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    sget-boolean p0, Lcom/android/internal/util/kaorios/KaoriPropsUtils;->Ku5O3sihzbUhwSewE8uI:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/kaorios/KaoriPropsUtils;->KyqOjqyU2SoxvE3gI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
