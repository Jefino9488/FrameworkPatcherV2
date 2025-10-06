

in android.content.pm.PackageParser

search for

invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

above it add 

const/4 v1, 0x1

-------------

search for

"<manifest> specifies bad sharedUserId name \""

above it there's a if-nez v14, :cond_x

above that if-nez v14, :cond_x add:

const/4 v14, 0x1

######

in android.content.pm.PackageParser$PackageParserException

search for

iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

above it add

const/4 p1, 0x0

######

in android.content.pm.PackageParser$SigningDetails

search for 

checkCapability

you will find 3 methods 

return 1 in all of them

###########

in android.content.pm.SigningDetails

search for 

checkCapability

you will find 3 methods 

return 1 in all of them

-------------

search for

hasAncestorOrSelf

return 1

#############

in android.util.apk.ApkSignatureSchemeV2Verifier

search for

invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

change the 
move-result v0
 
to

const/4 v0, 0x1

###########

in android.util.apk.ApkSignatureSchemeV3Verifier

search for

invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

change the 

move-result v0

to

const/4 v0, 0x1


###############

in android.util.apk.ApkSignatureVerifier

search for

getMinimumSignatureSchemeVersionForTargetSdk

return 0

------------------

search for 

invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

above it addd

const p3, 0x0
    
###############

in android.util.apk.ApkSigningBlockUtils

search for

invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

after it change the

move-result v7

to

const/4 v7, 0x1


###############

in android.util.jar.StrictJarVerifier

search for

verifyMessageDigest

return 1


###############
in

android.util.jar.StrictJarFile

search for
    
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;


after delete the if-eqz

if-eqz v6, :cond_56 #removed

:cond_56 #removed

###################

in

com.android.internal.pm.pkg.parsing.ParsingPackageUtils

search for 

"<manifest> specifies bad sharedUserId name \""

above it there's a if-eqz v4, :cond_x

above that if-eqz v4, :cond_x

add

const/4 v4, 0x0