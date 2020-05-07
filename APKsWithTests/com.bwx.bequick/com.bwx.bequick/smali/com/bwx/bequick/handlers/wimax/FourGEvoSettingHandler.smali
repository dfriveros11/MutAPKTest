.class public Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "FourGEvoSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;
    }
.end annotation


# static fields
.field private static final ACTION_WIMAX_CHANGED:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field private static final TAG:Ljava/lang/String; = "FourGEvoSettingHandler"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWiMaxManager:Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 1
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 94
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$1;-><init>(Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    return-void
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
    .line 108
    iput-object p1, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 109
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;

    invoke-direct {v0, p1}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mWiMaxManager:Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;

    .line 110
    iget-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->updateState()V

    .line 112
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    return-void
.end method

.method public onSelected(I)V
    .locals 5
    .param p1, "buttonIndex"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent1":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wimax.WimaxSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    .line 124
    return-void
.end method

.method public onSwitched(Z)V
    .locals 1
    .param p1, "switched"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mWiMaxManager:Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->toggleState()V

    .line 130
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 135
    return-void
.end method

.method updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mWiMaxManager:Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;

    invoke-virtual {v2}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->getState()Lcom/bwx/bequick/handlers/wimax/FourGState;

    move-result-object v0

    .line 141
    .local v0, "state":Lcom/bwx/bequick/handlers/wimax/FourGState;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/wimax/FourGState;->getStatusResourceId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "stateText":Ljava/lang/String;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    iput-object v1, v2, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 143
    iget-object v5, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    if-ne v0, v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v5, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 144
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    sget-object v5, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/bwx/bequick/handlers/wimax/FourGState;->OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    if-ne v0, v5, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, v2, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 145
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {v2}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 146
    return-void

    :cond_2
    move v2, v4

    .line 143
    goto :goto_0
.end method
