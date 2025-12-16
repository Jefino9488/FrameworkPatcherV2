.class public final Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;
.super Ljava/lang/Object;


# instance fields
.field public final K0wipv9AtliO55qRn6mI:I

.field public final K4cv12eOhp5UsS8gpsE2q2z1I:I

.field public final K4qxes9O6f26i8U6Sqj8EgiI:I

.field public final K6okO5hUclibxShsEkbgopaI:I

.field public final K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

.field public final K7xuO3UlvknmcS4irn11EomI:[B

.field public final K8Ak17imO9w5w4RppI:[B

.field public final K8c63Ooauv32UndyuScEgI:Ljava/util/ArrayList;

.field public final K91vAo8w086Op21a5bR8uI:I

.field public final KcxerAdpv60xOdaR8bI:[B

.field public final KfhA0xayiqO65hivnRnnoh8cI:I

.field public final KgdivAliuhhnOe2iR73uaI:J

.field public final Kgs66qnAfO491Ra48r7aI:Ljava/util/ArrayList;

.field public final KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

.field public final KmzodnwO1tUkgkS8cymEofiI:Ljava/math/BigInteger;

.field public final Kq4snztAiatOsRsxI:Ljava/util/Date;

.field public final Kq5pt6AeqxqwOjab0R8ioI:I

.field public final Kr021bO9Updrd4Sc925kEfdq29I:[B

.field public final Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:[B

.field public final KtbuouOlomiUohgSxfezrEyv01I:Ljava/lang/String;

.field public final Ku5O3sihzbUhwSewE8uI:I

.field public final Kv20eAs5x8fqOila11RtI:[B

.field public final Kvvx152O1Uo652lSpg5iE1I:Z

.field public final KvyA01pu5yOryrRk3kI:I

.field public final KyqOjqyU2SoxvE3gI:Ljava/util/Date;


# direct methods
.method public constructor <init>([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kgs66qnAfO491Ra48r7aI:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K8c63Ooauv32UndyuScEgI:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/util/kaorios/K99O4g2hUgeSfEz3I;->KmzodnwO1tUkgkS8cymEofiI()I

    move-result v2

    iput v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KvyA01pu5yOryrRk3kI:I

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K4cv12eOhp5UsS8gpsE2q2z1I:I

    invoke-static {}, Lcom/android/internal/util/kaorios/K99O4g2hUgeSfEz3I;->K91vAo8w086Op21a5bR8uI()I

    move-result v2

    iput v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KfhA0xayiqO65hivnRnnoh8cI:I

    invoke-static {}, Lcom/android/internal/util/kaorios/K99O4g2hUgeSfEz3I;->K91vAo8w086Op21a5bR8uI()I

    move-result v2

    iput v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K4qxes9O6f26i8U6Sqj8EgiI:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KgdivAliuhhnOe2iR73uaI:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K6okO5hUclibxShsEkbgopaI:I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v2, :cond_2f7

    aget-object v5, v1, v4

    iget v6, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_2f8

    :goto_50
    move/from16 v18, v2

    goto/16 :goto_2ef

    :sswitch_54
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getBoolValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kvvx152O1Uo652lSpg5iE1I:Z

    goto :goto_50

    :sswitch_5d
    new-instance v6, Ljava/util/Date;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KyqOjqyU2SoxvE3gI:Ljava/util/Date;

    goto :goto_50

    :sswitch_6b
    new-instance v6, Ljava/util/Date;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kq4snztAiatOsRsxI:Ljava/util/Date;

    goto :goto_50

    :sswitch_79
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KmzodnwO1tUkgkS8cymEofiI:Ljava/math/BigInteger;

    goto :goto_50

    :sswitch_86
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v5

    iput v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Ku5O3sihzbUhwSewE8uI:I

    goto :goto_50

    :sswitch_8f
    iget-object v6, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K8c63Ooauv32UndyuScEgI:Ljava/util/ArrayList;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :sswitch_9f
    iget-object v6, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kgs66qnAfO491Ra48r7aI:Ljava/util/ArrayList;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :sswitch_af
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getSecurityLevel()I

    move-result v5

    iput v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K0wipv9AtliO55qRn6mI:I

    goto :goto_50

    :sswitch_b8
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v5

    iput v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K91vAo8w086Op21a5bR8uI:I

    if-eqz v5, :cond_104

    if-eq v5, v7, :cond_fa

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_e6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d7

    const-wide v5, -0x115765922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_10d

    :cond_d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-wide v1, -0x118b65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e6
    const-wide v5, -0x118165922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_10d

    :cond_f0
    const-wide v5, -0x117765922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_10d

    :cond_fa
    const-wide v5, -0x116d65922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_10d

    :cond_104
    const-wide v5, -0x116365922ce2L

    invoke-static {v5, v6}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v5

    :goto_10d
    iput-object v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KtbuouOlomiUohgSxfezrEyv01I:Ljava/lang/String;

    goto/16 :goto_50

    :sswitch_111
    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v5

    iput v5, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kq5pt6AeqxqwOjab0R8ioI:I

    goto/16 :goto_50

    :sswitch_11b
    new-instance v6, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v5

    invoke-direct {v8, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v7, :cond_13c

    const/4 v9, 0x0

    goto :goto_13d

    :cond_13c
    const/4 v9, -0x1

    :goto_13d
    new-instance v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    iput-object v8, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    :goto_14b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "badly formatted directory string"

    if-lt v9, v11, :cond_155

    const/4 v11, 0x0

    goto :goto_186

    :cond_155
    add-int/lit8 v11, v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_159
    :goto_159
    add-int/2addr v9, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_181

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eqz v13, :cond_168

    const/4 v13, 0x0

    goto :goto_159

    :cond_168
    const/16 v3, 0x22

    if-ne v15, v3, :cond_16f

    xor-int/lit8 v14, v14, 0x1

    goto :goto_159

    :cond_16f
    if-eqz v14, :cond_172

    goto :goto_159

    :cond_172
    const/16 v3, 0x5c

    if-ne v15, v3, :cond_178

    move v13, v7

    goto :goto_159

    :cond_178
    const/16 v3, 0x2c

    if-ne v15, v3, :cond_159

    :goto_17c
    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_186

    :cond_181
    if-nez v13, :cond_298

    if-nez v14, :cond_298

    goto :goto_17c

    :goto_186
    if-eqz v11, :cond_265

    const/16 v3, 0x2b

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_25d

    new-instance v13, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    invoke-direct {v13, v11, v3}, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_257

    iget v12, v13, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->KmwO02nawgUws9Syxnq2rElI:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v12, v11, :cond_24b

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    :goto_1ad
    new-instance v14, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;

    const/16 v15, 0x3d

    invoke-direct {v14, v3, v15}, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;-><init>(Ljava/lang/String;C)V

    invoke-static {v14, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KuyiA0OyadfhRiiI(Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KuyiA0OyadfhRiiI(Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;->K9nnAo787pvOndinpyRa464qI(Ljava/lang/String;)Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move-result-object v3

    invoke-static {v14}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->Kbw3A17jrOiqrwRs2qI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/android/internal/util/kaorios/Ke22w6rOjuUySiv5x1EhbI;->Ku5O3sihzbUhwSewE8uI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_247

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v13, v3, [Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    move v14, v15

    :goto_1dc
    if-eq v14, v3, :cond_1e9

    invoke-virtual {v11, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;

    aput-object v16, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1dc

    :cond_1e9
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v14, v11, [Ljava/lang/String;

    move v7, v15

    :goto_1f0
    if-eq v7, v11, :cond_1fd

    invoke-virtual {v12, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f0

    :cond_1fd
    new-array v7, v11, [Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;

    move v12, v15

    :goto_200
    if-eq v12, v11, :cond_21d

    iget-object v15, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    aget-object v1, v13, v12

    move/from16 v18, v2

    aget-object v2, v14, v12

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K8hpl6qAmusuzOmg5xdRliI(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Ljava/lang/String;)Lcom/android/internal/util/kaorios/K44Ob9U3wSuknt4Ehcn3I;

    move-result-object v1

    aput-object v1, v7, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v18

    const/4 v15, 0x0

    goto :goto_200

    :cond_21d
    move/from16 v18, v2

    new-array v1, v3, [Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    const/4 v2, 0x0

    :goto_222
    if-eq v2, v3, :cond_232

    new-instance v11, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;

    aget-object v12, v13, v2

    aget-object v14, v7, v2

    invoke-direct {v11, v12, v14}, Lcom/android/internal/util/kaorios/KfAzq8kOeRfaI;-><init>(Lcom/android/internal/util/kaorios/K6je5oA67qOebRsw8zxI;Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;)V

    aput-object v11, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_222

    :cond_232
    iget-object v2, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v2, Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;

    const/4 v11, 0x0

    invoke-direct {v7, v1, v11}, Lcom/android/internal/util/kaorios/KfrOglxU7xs3kSnolEhon9I;-><init>([Lcom/android/internal/util/kaorios/K9u0OsU8S3qwkp6Ej6wI;I)V

    iput-object v7, v3, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->Ku5O3sihzbUhwSewE8uI:Lcom/android/internal/util/kaorios/Ko71969OwomUfSqsxsgrEyI;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_250

    :cond_247
    move-object/from16 v1, p1

    goto/16 :goto_1ad

    :cond_24b
    move/from16 v18, v2

    invoke-static {v8, v10, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;Ljava/lang/String;)V

    :goto_250
    move-object/from16 v1, p1

    move/from16 v2, v18

    :goto_254
    const/4 v7, 0x1

    goto/16 :goto_14b

    :cond_257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25d
    move/from16 v18, v2

    invoke-static {v8, v10, v11}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->KmwO02nawgUws9Syxnq2rElI(Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;Ljava/lang/String;)V

    move-object/from16 v1, p1

    goto :goto_254

    :cond_265
    move/from16 v18, v2

    iget-object v1, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Kq5pt6AeqxqwOjab0R8ioI:Ljava/lang/Object;

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    const/4 v5, 0x0

    :goto_272
    if-eq v5, v2, :cond_27f

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_272

    :cond_27f
    new-instance v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    iget-object v2, v10, Lcom/android/internal/util/kaorios/K63Otms3pcU61dhhS4x8fjEkI;->Ku5O3sihzbUhwSewE8uI:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/kaorios/KmxO9x6UkSs41cE2au2I;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;)V

    iget-object v1, v1, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->Kq4snztAiatOsRsxI:[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    invoke-virtual {v1}, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;

    invoke-direct {v6, v8, v1}, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;-><init>(Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;[Lcom/android/internal/util/kaorios/KtrrwOuUdS9n45EpdwbI;)V

    iput-object v8, v6, Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;->KmwO02nawgUws9Syxnq2rElI:Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;

    iput-object v6, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K7b6cynAykO75yzw1Ri5kI:Lcom/android/internal/util/kaorios/KkA8zOt4b5rcRp3vxI;

    goto :goto_2ef

    :cond_298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_29e
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kr021bO9Updrd4Sc925kEfdq29I:[B

    goto :goto_2ef

    :sswitch_2a9
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Kv20eAs5x8fqOila11RtI:[B

    goto :goto_2ef

    :sswitch_2b4
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K7xuO3UlvknmcS4irn11EomI:[B

    goto :goto_2ef

    :sswitch_2bf
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KcxerAdpv60xOdaR8bI:[B

    goto :goto_2ef

    :sswitch_2ca
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->Krm6mrOepnol8UwzffcgSbspr9Ehpvxs5I:[B

    goto :goto_2ef

    :sswitch_2d5
    move/from16 v18, v2

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->K8Ak17imO9w5w4RppI:[B

    goto :goto_2ef

    :sswitch_2e0
    move/from16 v18, v2

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/util/kaorios/K6n4iA0rbigeOax7dxpRgyz3qnI;->KmwO02nawgUws9Syxnq2rElI:Ljava/math/BigInteger;

    :goto_2ef
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v18

    goto/16 :goto_46

    :cond_2f7
    return-void

    :sswitch_data_2f8
    .sparse-switch
        -0x7ffffc12 -> :sswitch_2e0
        -0x6ffffd3c -> :sswitch_2d5
        -0x6ffffd3a -> :sswitch_2ca
        -0x6ffffd39 -> :sswitch_2bf
        -0x6ffffd38 -> :sswitch_2b4
        -0x6ffffd34 -> :sswitch_2a9
        -0x6ffffd33 -> :sswitch_29e
        -0x6ffffc11 -> :sswitch_11b
        0x10000002 -> :sswitch_111
        0x1000000a -> :sswitch_b8
        0x10000130 -> :sswitch_af
        0x20000001 -> :sswitch_9f
        0x20000005 -> :sswitch_8f
        0x30000003 -> :sswitch_86
        0x500000c8 -> :sswitch_79
        0x600003f0 -> :sswitch_6b
        0x600003f1 -> :sswitch_5d
        0x700001f7 -> :sswitch_54
    .end sparse-switch
.end method
