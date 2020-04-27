.class public Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;
.super Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;
.source "UnlockPatternSettingHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 2
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 40
    const-string v0, "lock_pattern_autolock"

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p0, p1, v0, v1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private chooseLockPattern()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    const/4 v3, 0x0

    .line 44
    iput-object p1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "bwx.qs"

    const-string v2, "set unlock pattern first"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v1, 0x7f060044

    invoke-virtual {p0, v3, v3, v1}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->updateSetting(ZZI)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->chooseLockPattern()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->onSwitched(Z)V

    .line 96
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->onSelected(I)V

    goto :goto_0
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "buttonIndex"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    iget-boolean v1, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    if-eqz v1, :cond_0

    .line 56
    invoke-super {p0, p1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->onSelected(I)V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->chooseLockPattern()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->onSelected(I)V

    goto :goto_0
.end method

.method public onSwitched(Z)V
    .locals 2
    .param p1, "isSwitched"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060045

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060047

    .line 79
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->onSwitched(Z)V

    goto :goto_0
.end method
