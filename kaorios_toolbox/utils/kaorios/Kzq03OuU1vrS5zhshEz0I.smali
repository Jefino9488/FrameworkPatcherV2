.class public final Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;
.super Ljava/lang/Object;


# static fields
.field public static final Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

.field public static final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "RSASSA-PSS"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ED25519"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOskxqdUses8jSeuudeyE9kI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ED448"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA224WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA256WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA384WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA512WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOzbUwS0svqEnI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHAKE128WITHRSAPSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOzbUwS0svqEnI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHAKE256WITHRSAPSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kppo0Ofnf6UhpSbz0Ebkhnn6I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ka6q3qOxltvlgUsu66axS2g3yE5wI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Ka6q3qOxltvlgUsu66axS2g3yE5wI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA3-224WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA3-256WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA3-384WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA3-512WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K0srqwqOmzjslUpl3S05Eu9I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KazOa11UlieayS2og6auE7I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "XMSS"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KazOa11UlieayS2og6auE7I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "XMSSMT"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "RIPEMD128WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "RIPEMD160WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "RIPEMD256WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHA1WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHA224WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHA256WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->KyqOjqyU2SoxvE3gI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHA384WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9Au4t9OsvfnRwpI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHA512WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOzbUwS0svqEnI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHAKE128WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KlOzbUwS0svqEnI;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v4, "SHAKE256WITHECDSA"

    invoke-static {v1, v4}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9uwg34Aa9dOyc3geRr8qI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9uwg34Aa9dOyc3geRr8qI;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    invoke-static {v1, v3}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KfhA0xayiqO65hivnRnnoh8cI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA224WITHDSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K4qxes9O6f26i8U6Sqj8EgiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA256WITHDSA"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/Kbx1533Oy494khUw8mowSk0f0ErI;->KnAacuOafajtRj61vuuI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "LMS"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KeAwmudnqO5hyRc96I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-44"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K2cfOkpuwqUp9SlEuy75ssI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-65"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K0AhkjObgR6cxt3cI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-87"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K6kpozOwUhryS61hugE5frxtI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-44-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K1mvAifo37O1n5qRbdycqI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-65-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KoOfU1gyz2hSdEp4I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "ML-DSA-87-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K3y30Amv7herO13ji1Rdksg9I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ky0abxO2fU9ohS4ffktqEzfvq0bI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-128F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KhjcAib1Ox60duoR3gzjdfI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-192S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ktpczi5Or0ja77UmdccerS4oiciEp8n79I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-192F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K39AzOb2jazR1ucsI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-256S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K4q6OjhwnqrU5zhzfSqu31ExfxnuI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-256F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KwuAeq6vO8qm239Rs7b7aI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-128S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KdOgk1UxisSnwxE4qrxlI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-128F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kcpa5Ak3rr6Okwm2gdR4o007I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-192S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KvzbOeUjShorb22EaI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-192F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ki3o82qAhyOxbRtI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-256S"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KqeOyoUgkmslS1slEgI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-256F"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K4wewAxOmjmhR7wgbmhI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kr6rsObslodhU0vqhcSsomjEe0djt2I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kx8fbAg1eczOgmRqjI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K29fOndU978qxlStaEaI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KuyiA0OyadfhRiiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K3481OuU5yScnEy3I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KljkafAmjn5g2O366yfRznI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ku3kjsOrU9l90wcSia29xEimI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KhknAe9blvOk9u45hR5I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K4ktOicoUigSa65qjErt4lf4I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kalr35sAr3bOaq6mR3pw1I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kagw7sOhpqU0cbSy6EgnI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/util/kaorios/K9uwg34Aa9dOyc3geRr8qI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kq4snztAiatOsRsxI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8c63Ooauv32UndyuScEgI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHAKE128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K8Ak17imO9w5w4RppI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHAKE256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KmzodnwO1tUkgkS8cymEofiI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA3-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->K91vAo8w086Op21a5bR8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA3-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->KtbuouOlomiUohgSxfezrEyv01I:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA3-384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KmlO8b8Ua3zSloEg5l8I;->Kgs66qnAfO491Ra48r7aI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "SHA3-512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Kq5pt6AeqxqwOjab0R8ioI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/kaorios/KoO4rUo25S5fagE1I;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    const-string v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Kq5pt6AeqxqwOjab0R8ioI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;->KvyA01pu5yOryrRk3kI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ku5O3sihzbUhwSewE8uI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/internal/util/kaorios/Kzq03OuU1vrS5zhshEz0I;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

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
