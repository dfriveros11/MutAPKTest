.class public Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "SystemPropertySettingHandler.java"


# instance fields
.field private final mPropertyName:Ljava/lang/String;

.field private final mPropertyPage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyPage"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 38
    iput-object p2, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mPropertyName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mPropertyPage:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    iput-object p1, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 45
    invoke-virtual {p1}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 46
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->updateSetting(ZZI)V

    .line 47
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onSelected(I)V
    .locals 4
    .param p1, "buttonIndex"    # I

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mPropertyPage:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v2, v1}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "bwx.qs"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSwitched(Z)V
    .locals 5
    .param p1, "isSwitched"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v0}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mPropertyName:Ljava/lang/String;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    invoke-virtual {p0, v1, p1, v2}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->updateSetting(ZZI)V

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 74
    return-void
.end method

.method protected updateSetting(ZZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "switched"    # Z
    .param p3, "descrId"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 83
    .local v1, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean p1, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 84
    iput-boolean p2, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 85
    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f060006

    .line 88
    .local v0, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v2, v0}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 90
    return-void

    .line 85
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f060007

    goto :goto_0

    :cond_1
    move v0, p3

    goto :goto_0
.end method
