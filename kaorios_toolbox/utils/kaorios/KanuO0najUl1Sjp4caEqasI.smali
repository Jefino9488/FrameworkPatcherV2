.class public final Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;
.super Ljava/lang/Object;


# instance fields
.field public final Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    const/4 v0, 0x0

    :try_start_b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_2b

    :catch_14
    move-exception v1

    const-wide v2, -0x3ad565922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x3aea65922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_2b
    if-nez v1, :cond_44

    const-wide v0, -0x385d65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x387265922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    :cond_44
    iget-object v2, p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    const-wide v3, -0x389465922ce2L

    :try_start_4b
    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x38a865922ce2L

    invoke-static {v4, v5}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_2c2

    :cond_64
    const-wide v3, -0x38af65922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/internal/util/kaorios/SettingsHelper;->getKaoriString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7f

    goto/16 :goto_2c2

    :cond_7f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x0

    move-object v6, v0

    move v5, v4

    move v7, v5

    :goto_93
    const/4 v8, 0x1

    if-eq v1, v8, :cond_259

    const/4 v9, 0x2

    if-ne v1, v9, :cond_253

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2c4

    goto/16 :goto_253

    :sswitch_a6
    const-wide v9, -0x38c065922ce2L

    invoke-static {v9, v10}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_b8} :catch_2ac

    :try_start_b8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_ec

    const-wide v2, -0x38ec65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x390165922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_ea} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ea} :catch_2ac

    goto/16 :goto_2c2

    :cond_ec
    move v5, v8

    goto/16 :goto_253

    :catch_ef
    move-exception p0

    const-wide v0, -0x391c65922ce2L

    :try_start_f5
    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x393165922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c2

    :sswitch_107
    const-wide v8, -0x38d565922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    const-wide v8, -0x396d65922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v8, -0x397465922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_158

    const-wide v2, -0x397865922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x398d65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    :cond_158
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v6, :cond_253

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v8, -0x39ad65922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_253

    :sswitch_182
    const-wide v8, -0x38d165922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    const-wide v6, -0x395265922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v6, -0x395c65922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    const-wide v6, -0x396265922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    :goto_1b6
    move-object v6, v1

    goto :goto_1d2

    :cond_1b8
    const-wide v6, -0x396565922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    const-wide v6, -0x396965922ce2L

    invoke-static {v6, v7}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b6

    :cond_1d1
    move-object v6, v0

    :goto_1d2
    move v7, v4

    goto/16 :goto_253

    :sswitch_1d5
    const-wide v8, -0x38e065922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    const-wide v8, -0x39b365922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v8, -0x39ba65922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_226

    const-wide v2, -0x39be65922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x39d365922ce2L

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    :cond_226
    if-eqz v6, :cond_253

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    add-int/lit8 v7, v7, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v8, -0x39f465922ce2L

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_253
    :goto_253
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_93

    :cond_259
    if-nez v5, :cond_271

    const-wide v0, -0x39fb65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3a1065922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c2

    :cond_271
    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result p0

    if-nez v0, :cond_27d

    if-eqz p0, :cond_27e

    :cond_27d
    move v4, v8

    :cond_27e
    if-nez v4, :cond_296

    const-wide v0, -0x3a3965922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3a4e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c2

    :cond_296
    const-wide v0, -0x3a7565922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3a8a65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_2ab} :catch_2ac

    goto :goto_2c2

    :catch_2ac
    move-exception p0

    const-wide v0, -0x3aa965922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x3abe65922ce2L

    invoke-static {v1, v2}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c2
    :goto_2c2
    return-void

    nop

    :sswitch_data_2c4
    .sparse-switch
        -0x28371689 -> :sswitch_1d5
        0x1263f -> :sswitch_182
        0x6ff49fc -> :sswitch_107
        0x340da7fa -> :sswitch_a6
    .end sparse-switch
.end method


# virtual methods
.method public final KmwO02nawgUws9Syxnq2rElI()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->KyqOjqyU2SoxvE3gI()Z

    move-result v0

    if-nez v0, :cond_1d

    const-wide v0, -0x3bce65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3be365922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    const-wide v0, -0x3bfc65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Kq4snztAiatOsRsxI()Z
    .registers 3

    const-wide v0, -0x3b0c65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-wide v0, -0x3b1465922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final Kq5pt6AeqxqwOjab0R8ioI()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Kq4snztAiatOsRsxI()Z

    move-result v0

    if-nez v0, :cond_1d

    const-wide v0, -0x3b9e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x3bb365922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    const-wide v0, -0x3bcb65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Ku5O3sihzbUhwSewE8uI(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x3c0065922ce2L

    invoke-static {v3, v4}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_3c

    :cond_36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final KyqOjqyU2SoxvE3gI()Z
    .registers 3

    const-wide v0, -0x3b1e65922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/util/kaorios/KanuO0najUl1Sjp4caEqasI;->Ku5O3sihzbUhwSewE8uI:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-wide v0, -0x3b2765922ce2L

    invoke-static {v0, v1}, Lcom/android/internal/util/kaorios/KqbO4wUovjhxcSmE2poI;->K6kpozOwUhryS61hugE5frxtI(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
