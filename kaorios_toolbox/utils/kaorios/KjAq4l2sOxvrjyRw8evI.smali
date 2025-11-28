.class public final Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;
.super Ljava/lang/Object;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "RSASSA-PSS"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ED25519"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KqziOozUy3sSi7890Eh9l97I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ED448"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA224WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA256WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA384WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA512WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHAKE128WITHRSAPSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHAKE256WITHRSAPSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KcgnzoxOmbkUaxSxb1n5EyqgI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KcgnzoxOmbkUaxSxb1n5EyqgI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K4Arsdvk0Ovzr1R35I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA3-224WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA3-256WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA3-384WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA3-512WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KnnkOcrq4UrifS2Emr2cu7I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ky8iOu2xUi6SazE2vr1oI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kqg79OpeUn2zS21pfe7EdhpzoI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "XMSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kqg79OpeUn2zS21pfe7EdhpzoI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "XMSSMT"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "RIPEMD128WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "RIPEMD160WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "RIPEMD256WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHA1WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHA224WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHA256WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHA384WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Krviir9On0lzmdU0mfmoS1dqyEyb25giI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHA512WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHAKE128WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kcllh8sA6e74OeguRstI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v4, "SHAKE256WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KfhA0xayiqO65hivnRnnoh8cI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA224WITHDSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K4qxes9O6f26i8U6Sqj8EgiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA256WITHDSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KkbsxtrAsfeaO4ugbRpi62vI;->KnAacuOafajtRj61vuuI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "LMS"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KeAwmudnqO5hyRc96I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-44"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K2cfOkpuwqUp9SlEuy75ssI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-65"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K0AhkjObgR6cxt3cI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-87"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K6kpozOwUhryS61hugE5frxtI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-44-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K1mvAifo37O1n5qRbdycqI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-65-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KoOfU1gyz2hSdEp4I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "ML-DSA-87-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K3y30Amv7herO13ji1Rdksg9I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ky0abxO2fU9ohS4ffktqEzfvq0bI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-128F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KhjcAib1Ox60duoR3gzjdfI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-192S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ktpczi5Or0ja77UmdccerS4oiciEp8n79I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-192F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K39AzOb2jazR1ucsI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-256S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K4q6OjhwnqrU5zhzfSqu31ExfxnuI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-256F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KwuAeq6vO8qm239Rs7b7aI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-128S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KdOgk1UxisSnwxE4qrxlI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-128F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kcpa5Ak3rr6Okwm2gdR4o007I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-192S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KvzbOeUjShorb22EaI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-192F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ki3o82qAhyOxbRtI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-256S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KqeOyoUgkmslS1slEgI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-256F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K4wewAxOmjmhR7wgbmhI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kr6rsObslodhU0vqhcSsomjEe0djt2I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kx8fbAg1eczOgmRqjI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K29fOndU978qxlStaEaI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KuyiA0OyadfhRiiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K3481OuU5yScnEy3I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KljkafAmjn5g2O366yfRznI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku3kjsOrU9l90wcSia29xEimI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KhknAe9blvOk9u45hR5I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K4ktOicoUigSa65qjErt4lf4I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kalr35sAr3bOaq6mR3pw1I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kagw7sOhpqU0cbSy6EgnI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K7OodaUghuhSplfkEkI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHAKE128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHAKE256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA3-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA3-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA3-384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/K8oAd5qn9fOnRirI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "SHA3-512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/Kiz60gvA5lzyOeR8eI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;

    const-string v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;->K4cv12eOhp5UsS8gpsE2q2z1I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K7xdw7xO1k54Urug1zqSa2csE398xxI;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/internal/util/kaorios/KjAq4l2sOxvrjyRw8evI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object identifier already present in addSignatureName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
