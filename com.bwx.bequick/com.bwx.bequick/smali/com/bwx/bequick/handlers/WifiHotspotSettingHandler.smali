.class public Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "WifiHotspotSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "qs.wifihs"


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApManager:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 2
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 79
    new-instance v0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$1;-><init>(Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 5
    .param p1, "wifiApState"    # I

    .prologue
    .line 140
    const/4 v1, 0x0

    .local v1, "enabled":Z
    const/4 v0, 0x0

    .line 141
    .local v0, "checked":Z
    const v3, 0x7f060001

    .line 143
    .local v3, "stateTextId":I
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 177
    .local v2, "s":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean v0, v2, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 178
    iput-boolean v1, v2, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 179
    iget-object v4, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 181
    invoke-virtual {v2}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 182
    return-void

    .line 145
    .end local v2    # "s":Lcom/bwx/bequick/fwk/Setting;
    :pswitch_0
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x1

    .line 147
    const v3, 0x7f060005

    .line 148
    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v1, 0x1

    .line 152
    const/4 v0, 0x0

    .line 153
    const v3, 0x7f060003

    .line 154
    goto :goto_0

    .line 157
    :pswitch_2
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    const v3, 0x7f060004

    .line 160
    goto :goto_0

    .line 163
    :pswitch_3
    const/4 v1, 0x1

    .line 164
    const/4 v0, 0x1

    .line 165
    const v3, 0x7f060002

    .line 166
    goto :goto_0

    .line 169
    :pswitch_4
    const/4 v1, 0x1

    .line 170
    const/4 v0, 0x0

    .line 171
    const v3, 0x7f06000d

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 101
    new-instance v0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;

    invoke-direct {v0, p1}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mWifiApManager:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;

    .line 102
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mWifiApManager:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;->getWifiApState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->updateState(I)V

    .line 103
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public onSelected(I)V
    .locals 6
    .param p1, "buttonIndex"    # I

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    .line 122
    return-void
.end method

.method public onSwitched(Z)V
    .locals 3
    .param p1, "switched"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->mWifiApManager:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;

    invoke-virtual {v0, p1}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;->setWifiApEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->updateState(I)V

    .line 131
    :goto_1
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "qs.wifihs"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "enable"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " wifi hotspot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "disable"

    goto :goto_2
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 136
    return-void
.end method
