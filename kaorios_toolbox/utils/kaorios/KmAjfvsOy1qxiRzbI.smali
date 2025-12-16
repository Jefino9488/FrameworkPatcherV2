.class public final enum Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v1, "AGREEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v2, "ENCRYPTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v3, "DECRYPTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v4, "KEYGEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v5, "SIGNING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v6, "VERIFYING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v7, "AUTHENTICATION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v8, "VERIFICATION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v9, "PRF"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    const-string v10, "ANY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v9}, [Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;
    .registers 2

    const-class v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;
    .registers 1

    sget-object v0, Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->Ku5O3sihzbUhwSewE8uI:[Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    invoke-virtual {v0}, [Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/kaorios/KmAjfvsOy1qxiRzbI;

    return-object v0
.end method
