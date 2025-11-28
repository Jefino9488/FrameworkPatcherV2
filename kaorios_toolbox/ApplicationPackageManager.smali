.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;

# instance fields
.field private final mContext:Landroid/content/Context;

# virtual methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosAttestationBL(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 12

    invoke-static {p1, p2}, Lcom/android/internal/pm/RoSystemFeatures;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_b
    iget-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mUseSystemFeaturesCache:Z

    if-eqz v1, :cond_1e

    invoke-static {}, Landroid/content/pm/SystemFeaturesCache;->getInstance()Landroid/content/pm/SystemFeaturesCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/SystemFeaturesCache;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1e
    # kousei added
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getAppLog()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesPixel()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesPixelOthers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesTensor()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesNexus()[Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_9f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackageGsa()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelCreativeAssistant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelDialer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePhotos()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    if-nez v1, :cond_9f

    :cond_6f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    goto/16 :goto_14d

    :cond_7b
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    goto/16 :goto_14d

    :cond_87
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    goto/16 :goto_14d

    :cond_93
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    goto/16 :goto_14d

    :cond_9f
    const/4 v7, 0x0

    if-eqz v0, :cond_dc

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePhotos()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    if-eqz v1, :cond_dc

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_cf

    :cond_b9
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    goto/16 :goto_14d

    :cond_c5
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    :goto_cf
    return v7

    :cond_d0
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto/16 :goto_14d

    :cond_dc
    iget-object p0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getSystemLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getModelInfoProperty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPixelTensorModelRegex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_11e

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackageGoogleAs()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    if-eqz v1, :cond_10f

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_14d

    :cond_10f
    if-nez v1, :cond_11e

    if-eqz p0, :cond_11e

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_14d

    :cond_11e
    if-eqz p1, :cond_12d

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    if-nez v1, :cond_12d

    return p0

    :cond_12d
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_138

    goto :goto_14d

    :cond_138
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_143

    goto :goto_14d

    :cond_143
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14e

    :goto_14d
    return v3

    :cond_14e
    # end add
    sget-object v1, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;-><init>(Ljava/lang/String;ILandroid/app/ApplicationPackageManager-IA;)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
