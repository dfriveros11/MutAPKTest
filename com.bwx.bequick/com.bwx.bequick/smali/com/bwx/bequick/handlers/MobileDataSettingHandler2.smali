.class public Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "MobileDataSettingHandler2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "qs.md"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

.field private mTryCounter:I


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 1
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 72
    new-instance v0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$1;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$1;-><init>(Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    return-void
.end method

.method private switchMobileDataDirectly(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 123
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v8}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mobile_data"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v1, v6

    .line 124
    .local v1, "mobileDataAllowed":Z
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 126
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v9, 0x7f06007c

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 127
    invoke-virtual {p0, v7}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->onSelected(I)V

    .line 164
    :goto_1
    return-void

    .end local v1    # "mobileDataAllowed":Z
    :cond_0
    move v1, v7

    .line 123
    goto :goto_0

    .line 131
    .restart local v1    # "mobileDataAllowed":Z
    :cond_1
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    invoke-virtual {v8}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->getWiFiInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_5

    move v4, v6

    .line 132
    .local v4, "wifiConnected":Z
    :goto_2
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 134
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 135
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 138
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 141
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v8}, Lcom/bwx/bequick/MainSettingsActivity;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 142
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, v2}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getApnState(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v3

    .line 143
    .local v3, "state":I
    if-ne v3, v6, :cond_3

    .line 144
    invoke-static {v0, v2, v6}, Lcom/bwx/bequick/handlers/apn/ApnControl;->setApnState(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 149
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "state":I
    :cond_3
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    invoke-virtual {v8, p1}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->setMobileDataEnabled(Z)Z

    .line 151
    if-eqz p1, :cond_4

    .line 152
    iget v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTryCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTryCounter:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_6

    .line 154
    iget-object v8, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v9, 0x7f06007e

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 155
    iget v6, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTryCounter:I

    const/4 v8, 0x3

    if-le v6, v8, :cond_4

    .line 156
    invoke-virtual {p0, v7}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->onSelected(I)V

    .line 163
    :cond_4
    :goto_3
    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    invoke-virtual {v6}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->getMobileDataInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    :goto_4
    invoke-virtual {p0, v6}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->updateState(Landroid/net/NetworkInfo$State;)V

    goto :goto_1

    .end local v4    # "wifiConnected":Z
    :cond_5
    move v4, v7

    .line 131
    goto :goto_2

    .line 159
    .restart local v4    # "wifiConnected":Z
    :cond_6
    iget-object v6, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v8, 0x7f06007d

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 163
    :cond_7
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_4
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 91
    new-instance v0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    invoke-direct {v0, p1}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    .line 92
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTelephonyManager:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$TelephonyManagerExt;->getMobileDataInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->updateState(Landroid/net/NetworkInfo$State;)V

    .line 94
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onSelected(I)V
    .locals 6
    .param p1, "buttonIndex"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    .line 105
    return-void
.end method

.method public onSwitched(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v2, "Common"

    invoke-virtual {v1, v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/bwx/bequick/preferences/MobileDataPrefs;->detectMobileDataMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 114
    .local v0, "maySwitchDirectly":Z
    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->switchMobileDataDirectly(Z)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v3}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->onSelected(I)V

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 169
    return-void
.end method

.method updateState(Landroid/net/NetworkInfo$State;)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v2, :cond_0

    .line 174
    iput v4, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mTryCounter:I

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 178
    .local v1, "s":Lcom/bwx/bequick/fwk/Setting;
    sget-object v2, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 183
    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    const v0, 0x7f060001

    .line 185
    .local v0, "resId":I
    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 186
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 187
    return-void

    .line 179
    .end local v0    # "resId":I
    :pswitch_0
    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    const v0, 0x7f06000c

    .restart local v0    # "resId":I
    goto :goto_0

    .line 180
    .end local v0    # "resId":I
    :pswitch_1
    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    const v0, 0x7f060009

    .restart local v0    # "resId":I
    goto :goto_0

    .line 181
    .end local v0    # "resId":I
    :pswitch_2
    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    const v0, 0x7f06000f

    .restart local v0    # "resId":I
    goto :goto_0

    .line 182
    .end local v0    # "resId":I
    :pswitch_3
    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    iput-boolean v4, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    const v0, 0x7f06000e

    .restart local v0    # "resId":I
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
