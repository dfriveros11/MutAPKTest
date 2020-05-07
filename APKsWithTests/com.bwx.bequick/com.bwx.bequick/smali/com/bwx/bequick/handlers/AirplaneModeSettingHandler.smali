.class public Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "AirplaneModeSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;
    }
.end annotation


# instance fields
.field private mReceiver:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->setAirMode(Z)V

    return-void
.end method

.method private setAirMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 108
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v4, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, "state":I
    if-ne v2, v0, :cond_0

    .line 123
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 124
    .local v1, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean v0, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 125
    iget-object v4, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    if-eqz v0, :cond_1

    const v3, 0x7f060002

    :goto_1
    invoke-virtual {v4, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 127
    return-void

    .end local v0    # "isEnabled":Z
    .end local v1    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_0
    move v0, v3

    .line 122
    goto :goto_0

    .line 125
    .restart local v0    # "isEnabled":Z
    .restart local v1    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_1
    const v3, 0x7f060003

    goto :goto_1
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 53
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;

    invoke-direct {v1, p0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;-><init>(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;)V

    iput-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;

    .line 54
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->updateState()V

    .line 60
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "buttonIndex"    # I

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onSwitched(Z)V
    .locals 6
    .param p1, "isSwitched"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 78
    iget-object v3, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3}, Lcom/bwx/bequick/MainSettingsActivity;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "noConfirmationAirmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 81
    .local v1, "noConfirm":Z
    if-eqz v1, :cond_0

    .line 82
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->setAirMode(Z)V

    .line 104
    .end local v1    # "noConfirm":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 84
    .restart local v1    # "noConfirm":Z
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f060018

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06003e

    .line 86
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060019

    new-instance v5, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;

    invoke-direct {v5, p0, p1}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;-><init>(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;Z)V

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06001a

    new-instance v5, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$1;

    invoke-direct {v5, p0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$1;-><init>(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;)V

    .line 92
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 101
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "noConfirm":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->setAirMode(Z)V

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 118
    return-void
.end method
