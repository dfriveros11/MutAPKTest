.class public Lcom/bwx/bequick/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_START_QS:Ljava/lang/String; = "com.bwx.bequick.START_QS"

.field public static final ACTION_UPDATE_STATUSBAR_INTEGRATION:Ljava/lang/String; = "com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION"

.field public static final ACTION_VOLUME_UPDATED:Ljava/lang/String; = "com.bwx.bequick.VOLUME_UPDATED"

.field public static final DEBUG:Z = false

.field public static final EXTRA_BOOL_INVERSE_COLOR:Ljava/lang/String; = "inversed"

.field public static final EXTRA_INT_APPEARANCE:Ljava/lang/String; = "appearence"

.field public static final EXTRA_INT_STATUS:Ljava/lang/String; = "status"

.field public static final PREFS_COMMON:Ljava/lang/String; = "Common"

.field public static final PREFS_RUNTIME:Ljava/lang/String; = "Runtime"

.field public static final PREF_ABOUT:Ljava/lang/String; = "about"

.field public static final PREF_ABOUT_QUICKER:Ljava/lang/String; = "about_quicker"

.field public static final PREF_ADS_SHOWN:Ljava/lang/String; = "quickerAds"

.field public static final PREF_APN_MODIFIER:Ljava/lang/String; = "apnModifier"

.field public static final PREF_APPEARANCE:Ljava/lang/String; = "viewMode"

.field public static final PREF_DISABLE_MMS:Ljava/lang/String; = "disableMms"

.field public static final PREF_DOC:Ljava/lang/String; = "doc"

.field public static final PREF_FLASHLIGHT:Ljava/lang/String; = "flashlight"

.field public static final PREF_FLASHLIGHT_SWITCH:Ljava/lang/String; = "flightSwitch"

.field public static final PREF_FLASHLIGHT_TYPE:Ljava/lang/String; = "flashlightType"

.field public static final PREF_GPS_MODE:Ljava/lang/String; = "gpsMode"

.field public static final PREF_HAPTIC:Ljava/lang/String; = "hapticFeedback"

.field public static final PREF_INVERSE_VIEW_COLOR:Ljava/lang/String; = "inverseSatusbarColor"

.field public static final PREF_LIGHT_SENSOR:Ljava/lang/String; = "lightSensor"

.field public static final PREF_MOBILE_DATA_MODE:Ljava/lang/String; = "mobileDataMode"

.field public static final PREF_MOBILE_DISABLE_MSG_OK:Ljava/lang/String; = "disableMobileOk"

.field public static final PREF_NO_CONFIRM_AIRMODE:Ljava/lang/String; = "noConfirmationAirmode"

.field public static final PREF_PREFERRED_APN_ID:Ljava/lang/String; = "preferredApn"

.field public static final PREF_RESTORE_PREFERRED_APN:Ljava/lang/String; = "restorePreferredApn"

.field public static final PREF_STATUSBAR_INTEGRATION:Ljava/lang/String; = "statusBarIntegration"

.field public static final PREF_VERSION:Ljava/lang/String; = "_version"

.field public static final SDK_VERSION:I

.field public static final STATUS_BLACK_ICON:I = 0x2

.field public static final STATUS_NO_ICON:I = 0x1

.field public static final STATUS_NO_INTEGRATION:I = 0x0

.field public static final STATUS_WHITE_ICON:I = 0x3

.field public static final TAG:Ljava/lang/String; = "bwx.qs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
