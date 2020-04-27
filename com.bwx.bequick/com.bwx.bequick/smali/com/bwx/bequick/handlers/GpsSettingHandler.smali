.class public Lcom/bwx/bequick/handlers/GpsSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "GpsSettingHandler.java"


# static fields
.field private static final TAG2:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 41
    return-void
.end method

.method private toggleGpsState()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private updateSetting(Z)V
    .locals 3
    .param p1, "gpsEnabled"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 45
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    if-eqz p1, :cond_0

    const v1, 0x7f060002

    :goto_0
    invoke-virtual {v2, v1}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 46
    iput-boolean p1, v0, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 47
    invoke-virtual {v0}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 48
    return-void

    .line 45
    :cond_0
    const v1, 0x7f060003

    goto :goto_0
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 53
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 54
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/bwx/bequick/handlers/GpsSettingHandler;->updateSetting(Z)V

    .line 55
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "buttonIndex"    # I

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onSwitched(Z)V
    .locals 4
    .param p1, "isSwitched"    # Z

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/bwx/bequick/handlers/GpsSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v2, "Common"

    invoke-virtual {v1, v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/bwx/bequick/preferences/GpsPrefs;->detectGpsMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 75
    .local v0, "maySwitchDirectly":Z
    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/GpsSettingHandler;->toggleGpsState()V

    .line 77
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/GpsSettingHandler;->updateSetting(Z)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, v3}, Lcom/bwx/bequick/handlers/GpsSettingHandler;->onSelected(I)V

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 138
    return-void
.end method
