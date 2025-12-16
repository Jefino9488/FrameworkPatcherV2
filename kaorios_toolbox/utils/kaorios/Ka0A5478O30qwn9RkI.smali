.class public final Lcom/android/internal/util/kaorios/Ka0A5478O30qwn9RkI;
.super Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;


# instance fields
.field public final Kq4snztAiatOsRsxI:Z


# direct methods
.method public constructor <init>(IIZLcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;-><init>(IILcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;)V

    iput-boolean p3, p0, Lcom/android/internal/util/kaorios/Ka0A5478O30qwn9RkI;->Kq4snztAiatOsRsxI:Z

    return-void
.end method


# virtual methods
.method public final KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;
    .registers 10

    iget-boolean v0, p0, Lcom/android/internal/util/kaorios/Ka0A5478O30qwn9RkI;->Kq4snztAiatOsRsxI:Z

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;

    iget v3, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Ku5O3sihzbUhwSewE8uI:I

    iget v4, p0, Lcom/android/internal/util/kaorios/Kcf7xfAnOfte5qRsI;->Kq5pt6AeqxqwOjab0R8ioI:I

    if-nez v0, :cond_21

    iget-object p0, v1, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KmwO02nawgUws9Syxnq2rElI:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/util/kaorios/Kxw2gj8A8v0OogyR9I;

    check-cast p0, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KrlqnA55e41Oaz8RrI;->Kq5pt6AeqxqwOjab0R8ioI()[B

    move-result-object p0

    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    new-instance v5, Lcom/android/internal/util/kaorios/KgbzkOueUbd69Svn892EuazcibI;

    invoke-direct {v5, p0}, Lcom/android/internal/util/kaorios/K7rOwwma1UharpnzSgoggdiEdpu5I;-><init>([B)V

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v1

    :cond_21
    invoke-virtual {v1}, Lcom/android/internal/util/kaorios/K1ixbt5A89nOa1gzR0h1I;->KyqOjqyU2SoxvE3gI()Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;

    move-result-object p0

    iget v0, p0, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->Kq5pt6AeqxqwOjab0R8ioI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    move v5, v3

    new-instance v3, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;->KmwO02nawgUws9Syxnq2rElI(I)Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move-result-object v7

    const/4 v8, 0x2

    move v6, v4

    const/4 v4, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v3

    :cond_39
    new-instance v1, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;

    invoke-static {p0}, Lcom/android/internal/util/kaorios/Kgph2Ajb9txO204fqRn6fhI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K1xqeaAhymxOkzxh8Rzwi6wI;)Lcom/android/internal/util/kaorios/K7lh6v7AbOdjRexccI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/kaorios/K76jvm9O719rUal56Sre9lEd3I;-><init>(IIILcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    return-object v1
.end method
