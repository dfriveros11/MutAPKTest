.class public Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "MobileDataSettingHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "bwx.MobileData"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->setApnState(Z)V

    return-void
.end method

.method private setApnState(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v3, p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->setApnState(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v3, 0x7f06007d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 110
    :cond_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->updateState(I)V

    .line 112
    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "disableMobileOk"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 113
    .local v1, "wasShown":Z
    if-nez v1, :cond_1

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020012

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06007a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$3;

    invoke-direct {v4, p0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$3;-><init>(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)V

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 124
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void

    .line 110
    .end local v1    # "wasShown":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const v9, 0x7f060082

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    iget-object v3, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 129
    .local v3, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget-object v4, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v4}, Lcom/bwx/bequick/handlers/apn/ApnControl;->shouldDisableMms(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 130
    .local v0, "disableMMS":Z
    const v4, 0x7f060083

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "on":Ljava/lang/String;
    const v4, 0x7f060084

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "off":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 147
    :pswitch_0
    iput-boolean v6, v3, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 148
    iput-boolean v6, v3, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 149
    const v4, 0x7f060025

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 153
    .end local v1    # "off":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 154
    return-void

    .line 135
    .restart local v1    # "off":Ljava/lang/String;
    :pswitch_1
    iput-boolean v6, v3, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 136
    iput-boolean v7, v3, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 137
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    if-eqz v0, :cond_0

    .end local v1    # "off":Ljava/lang/String;
    :goto_1
    aput-object v1, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    goto :goto_0

    .restart local v1    # "off":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    goto :goto_1

    .line 141
    :pswitch_2
    iput-boolean v7, v3, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 142
    iput-boolean v7, v3, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 143
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 52
    invoke-virtual {p1}, Lcom/bwx/bequick/MainSettingsActivity;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getApnState(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->updateState(I)V

    .line 54
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onSelected(I)V
    .locals 5
    .param p1, "buttonIndex"    # I

    .prologue
    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v2, v1}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "bwx.MobileData"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSwitched(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v2, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getApnState(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06007a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06007f

    .line 80
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060080

    new-instance v3, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;

    invoke-direct {v3, p0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;-><init>(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)V

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001d

    new-instance v3, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$1;

    invoke-direct {v3, p0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$1;-><init>(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)V

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 101
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->setApnState(Z)V

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 159
    return-void
.end method
