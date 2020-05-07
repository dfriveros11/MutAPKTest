.class Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;
.super Ljava/lang/Object;
.source "MobileDataSettingHandler2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelephonyManagerExt"
.end annotation


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 47
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mConnManager:Landroid/net/ConnectivityManager;

    .line 48
    return-void
.end method


# virtual methods
.method public getMobileDataInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWiFiInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public setMobileDataEnabled(Z)Z
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getITelephony"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    iget-object v5, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->mTelManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "telephony":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v5, "enable"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "DataConnectivity"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "telephony":Ljava/lang/Object;
    :goto_1
    return v3

    .line 54
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "telephony":Ljava/lang/Object;
    :cond_0
    const-string v5, "disable"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "telephony":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "qs.md"

    const-string v5, "cannot fake telephony"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 59
    goto :goto_1
.end method
