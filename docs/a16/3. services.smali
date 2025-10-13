#services.jar
in com.android.server.pm.PackageManagerServiceUtils

method;

checkDowngrade (all three methods )
.method private static checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
.method public static checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
.method public static checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
make them 
return-void


#######
in com.android.server.pm.KeySetManagerService

method;

shouldCheckUpgradeKeySetLocked
.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z
make it return

return 0

    
#######
in com.android.server.pm.PackageManagerServiceUtils

method;

verifySignatures (.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
)
make it return 

return 0

    
#######
in com.android.server.pm.PackageManagerServiceUtils
method;

compareSignatures (.method public static compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
)
make it
return 0


#######
in com.android.server.pm.PackageManagerServiceUtils
method;

matchSignaturesCompat(.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
)
make it 

return 1

######$$$$##$#$$$####$

in class

com.android.server.pm.InstallPackageHelper

inside this method (.method private adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I
)

search for 

invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

above it there is a if-eqz v3, :cond_xx

above that add

const/4 v3, 0x1

###############$$$###

in class

com.android.server.pm.ReconcilePackageUtils

in the method

.method static constructor <clinit>()V

change the 

const/4 v0, 0x0

to 

const/4 v0, 0x1

