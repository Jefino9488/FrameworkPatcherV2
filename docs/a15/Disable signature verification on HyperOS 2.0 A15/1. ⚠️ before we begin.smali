
editing .jar files A15 will cause bootloop or random reboot when the device is idle

to avoid this do the following:


search for

invoke-custom

in any .jar file you want to edit framework.jar, service.jar, miui-service.jar.

you will find multiple results in methods with these names

equals, hasCode & toSring 

clear these methods

by: @MMETMAmods
