SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

print_modname() {
  ui_print "   *************************"
  ui_print "      MIUI DEBLOATER"
  ui_print "   *************************"
}

REPLACE="
/system/app/AnalyticsCore
/system/app/BookmarkProvider
/system/app/BuiltInPrintService
/system/app/Calculator
/system/app/CarrierDefaultApp
/system/app/Cit
/system/app/CloudService
/system/app/com.miui.qr
/system/app/EasterEgg
/system/app/facebook-appmanager
/system/app/FidoAuthen
/system/app/FidoClient
/system/app/FileExplorerGlobal
/system/app/GooglePrintRecommendationService
/system/app/Health
/system/app/HybridAccessory
/system/app/HybridPlatform
/system/app/IdMipay
/system/app/InMipay
/system/app/Joyose
/system/app/Lens
/system/app/mi_connect_service
/system/app/MiCloudSync
/system/app/MiGalleryLockscreen
/system/app/MiLinkService2
/system/app/MiPicks
/system/app/MiPlayClient
/system/app/MiRadio
/system/app/MiWallpaper
/system/app/MiuiBugReport
/system/app/MiuiCompass
/system/app/MiuiDaemon
/system/app/MiuiVideoPlayer
/system/app/MiuiScreenRecorder
/system/app/MSA-Global
/system/app/Netflix_activation
/system/app/Notes
/system/app/OsuLogin
/system/app/PartnerBookmarksProvider
/system/app/PaymentService
/system/app/PlayAutoInstallStubApp
/system/app/Stk
/system/app/TouchAssistant
/system/app/Traceur
/system/app/VsimCore
/system/app/wps_lite
/system/app/WAPPushManager
/system/app/XMSFKeeper
/system/app/XiaomiSimActivateService
/system/data/app/android.autoinstalls.config.Xiaomi.qssi-5NKLAXthPp3xU6ucgGl2Ag==
/system/data/app/com.google.android.ims-zFXerSRh5hdqjerjDEJGyQ==
/system/priv-app/Browser
/system/priv-app/Calendar
/system/priv-app/CleanMaster
/system/priv-app/CloudBackup
/system/priv-app/CloudServiceSysbase
/system/priv-app/GameCenterGlobal
/system/priv-app/GoogleTTS
/system/priv-app/GlobalMinusScreen
/system/priv-app/MiBrowserGlobal
/system/priv-app/MiCalendarGlobal
/system/priv-app/MiDrop
/system/priv-app/MiService
/system/priv-app/MiShare
/system/priv-app/MiuiBrowserGlobal
/system/priv-app/MiuiGallery
/system/priv-app/MiuiMusicGlobal
/system/priv-app/MiuiScanner
/system/priv-app/ONS
/system/priv-app/ProxyHandler
/system/priv-app/SoundRecorder
/system/priv-app/Stk1
/system/priv-app/Tag
/system/priv-app/UserDictionaryProvider
/system/priv-app/YellowPage
/system/priv-app/Weather
/system/priv-app/facebook-installer
/system/priv-app/facebook-services
/system/product/app/Chrome
/system/product/app/Gmail2
/system/product/app/GoogleOne
/system/product/app/Maps
/system/product/app/remoteSimLockAuthentication
/system/product/app/FM
/system/product/app/GoogleTTS
/system/product/app/YouTube
/system/product/app/uimremoteclient
/system/product/app/uimremoteserver
/system/product/priv-app/AndroidAutoStub
/system/product/priv-app/HotwordEnrollmentOKGoogleCORTEXM4
/system/product/priv-app/HotwordEnrollmentXGoogleCORTEXM4
/system/product/priv-app/Wellbeing
/system/product/priv-app/Velvet
/system/product/priv-app/EmergencyInfo
/system/product/priv-app/GoogleAssistant
/system/product/priv-app/SetupWizard
/system/product/priv-app/ims
/system/vendor/app/SoterService
/data/app/android.autoinstalls.config.Xiaomi.begonia-qReVd01fGz2adoFNLXNDew==
/data/app/com.miui.analytics-JEa_Zu6x4mDKRv-IsGDPAA==
/vendor/data/app/Drive
/vendor/data/app/Duo
/vendor/data/app/GlobalFashiongallery
/vendor/data/app/Music2
/vendor/data/app/Photos
/vendor/data/app/Videos
/vendor/data/app/wps_lite
/vendor/data/app/XMRemoteController

"

on_install() {
  ui_print "   Extracting module files...   "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
