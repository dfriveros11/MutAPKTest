.class public Lcom/bwx/bequick/handlers/WiFiSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "WiFiSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;
    }
.end annotation


# static fields
.field private static final STATE_DONE:I = 0x1

.field private static final STATE_INPROCESS:I


# instance fields
.field private mActionState:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 1
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActionState:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/WiFiSettingHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->updateWiFiState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->getWiFiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/fwk/Setting;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/fwk/Setting;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    return-object v0
.end method

.method private getWiFiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWiFiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private setActionState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 198
    iget v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActionState:I

    if-eq v1, p1, :cond_0

    .line 199
    iput p1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActionState:I

    .line 200
    iget-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    if-ne p1, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 202
    :cond_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWiFiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 182
    const v2, 0x7f060001

    .line 183
    .local v2, "state":I
    const/4 v0, 0x1

    .line 187
    .local v0, "actionState":I
    :goto_0
    iget-object v4, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "stateText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->setActionState(I)V

    .line 191
    iget-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 192
    .local v1, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-object v3, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 193
    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 194
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 195
    return-void

    .line 162
    .end local v0    # "actionState":I
    .end local v1    # "setting":Lcom/bwx/bequick/fwk/Setting;
    .end local v2    # "state":I
    .end local v3    # "stateText":Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f060005

    .line 163
    .restart local v2    # "state":I
    const/4 v0, 0x0

    .line 164
    .restart local v0    # "actionState":I
    goto :goto_0

    .line 167
    .end local v0    # "actionState":I
    .end local v2    # "state":I
    :pswitch_1
    const v2, 0x7f060003

    .line 168
    .restart local v2    # "state":I
    const/4 v0, 0x1

    .line 169
    .restart local v0    # "actionState":I
    goto :goto_0

    .line 172
    .end local v0    # "actionState":I
    .end local v2    # "state":I
    :pswitch_2
    const v2, 0x7f060004

    .line 173
    .restart local v2    # "state":I
    const/4 v0, 0x0

    .line 174
    .restart local v0    # "actionState":I
    goto :goto_0

    .line 177
    .end local v0    # "actionState":I
    .end local v2    # "state":I
    :pswitch_3
    const v2, 0x7f060002

    .line 178
    .restart local v2    # "state":I
    const/4 v0, 0x1

    .line 179
    .restart local v0    # "actionState":I
    goto :goto_0

    .line 193
    .restart local v1    # "setting":Lcom/bwx/bequick/fwk/Setting;
    .restart local v3    # "stateText":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 138
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->getWiFiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->updateWiFiState(I)V

    .line 141
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWifiStateReceiver:Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;

    .line 143
    .local v1, "receiver":Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;
    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;

    .end local v1    # "receiver":Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;
    invoke-direct {v1, p0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;-><init>(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)V

    .line 145
    .restart local v1    # "receiver":Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;
    iput-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWifiStateReceiver:Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iput-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 152
    :cond_0
    invoke-virtual {p1, v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mWifiStateReceiver:Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public onSelected(I)V
    .locals 6
    .param p1, "buttonIndex"    # I

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

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

    .line 131
    return-void
.end method

.method public onSwitched(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_1

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    .line 107
    new-instance v1, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;

    iget-object v4, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v1, v4}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "wifiApManager":Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;
    invoke-virtual {v1}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;->getWifiApState()I

    move-result v0

    .line 109
    .local v0, "state":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_1

    .line 110
    :cond_0
    invoke-virtual {v1, v3}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;->setWifiApEnabled(Z)Z

    .line 114
    .end local v0    # "state":I
    .end local v1    # "wifiApManager":Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$WifiApManager;
    :cond_1
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->getWiFiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 115
    if-eqz p1, :cond_2

    :goto_0
    invoke-direct {p0, v2}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->updateWiFiState(I)V

    .line 117
    return-void

    :cond_2
    move v2, v3

    .line 115
    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 212
    return-void
.end method
