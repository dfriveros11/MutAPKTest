.class public Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "AutoSyncSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoSyncSettingHandler"


# instance fields
.field private mSyncControl:Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 53
    return-void
.end method

.method private isBackgroundDataActivated()Z
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    goto :goto_0
.end method

.method private updateState(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "checked"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 105
    .local v1, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean p1, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 106
    iput-boolean p2, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 108
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f060006

    .line 112
    .local v0, "descrId":I
    :goto_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v2, v0}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 114
    return-void

    .line 108
    .end local v0    # "descrId":I
    :cond_0
    const v0, 0x7f060007

    goto :goto_0

    :cond_1
    const v0, 0x7f060031

    goto :goto_0
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 9
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    iput-object p1, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 59
    iget-object v8, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mSyncControl:Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;

    .line 60
    .local v8, "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    if-nez v8, :cond_0

    .line 64
    :try_start_0
    new-instance v8, Lcom/bwx/bequick/handlers/autosync/SyncControl20;

    .end local v8    # "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    iget-object v1, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v8, v1}, Lcom/bwx/bequick/handlers/autosync/SyncControl20;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local v8    # "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    :goto_0
    iput-object v8, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mSyncControl:Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;

    .line 73
    const-string v1, "AutoSyncSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync control: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-interface {v8}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->activate()V

    .line 78
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->isBackgroundDataActivated()Z

    move-result v1

    invoke-interface {v8}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->isSyncActivated()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->updateState(ZZ)V

    .line 79
    return-void

    .line 65
    .end local v8    # "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    :catch_0
    move-exception v7

    .line 66
    .local v7, "e":Ljava/lang/Throwable;
    const-string v1, "AutoSyncSettingHandler"

    const-string v2, "it\'s not 2.0"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-virtual {p1}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "value"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    new-instance v8, Lcom/bwx/bequick/handlers/autosync/SyncControl16;

    invoke-direct {v8, v0}, Lcom/bwx/bequick/handlers/autosync/SyncControl16;-><init>(Landroid/content/ContentResolver;)V

    .restart local v8    # "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    :goto_1
    goto :goto_0

    .end local v8    # "syncControl":Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
    :cond_1
    new-instance v8, Lcom/bwx/bequick/handlers/autosync/SyncControl15;

    invoke-direct {v8, v0, v6}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mSyncControl:Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;

    invoke-interface {v0}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->deactivate()V

    .line 84
    return-void
.end method

.method public onSelected(I)V
    .locals 5
    .param p1, "buttonIndex"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SYNC_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    .line 89
    return-void
.end method

.method public onSwitched(Z)V
    .locals 1
    .param p1, "isSwitched"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->mSyncControl:Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;

    invoke-interface {v0, p1}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->setSyncActivated(Z)V

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;->updateState(ZZ)V

    .line 95
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 100
    return-void
.end method
