#services.jar

method;

checkDowngrade

return-void


#######

method;

shouldCheckUpgradeKeySetLocked

return 0

    
#######

method;

verifySignatures

return 0

    
#######

method;

compareSignatures

return 0


#######

method;

matchSignaturesCompat

return 1

######$$$$##$#$$$####$

in class

com.android.server.pm.InstallPackageHelper

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

