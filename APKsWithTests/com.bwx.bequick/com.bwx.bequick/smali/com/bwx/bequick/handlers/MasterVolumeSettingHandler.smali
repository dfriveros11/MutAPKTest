.class public Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "MasterVolumeSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mManager:Landroid/media/AudioManager;

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->updateSettingState()V

    return-void
.end method

.method public static round(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 152
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private updateSettingState()V
    .locals 17

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mManager:Landroid/media/AudioManager;

    .line 77
    .local v1, "manager":Landroid/media/AudioManager;
    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 78
    .local v8, "v1":I
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 79
    .local v9, "v2":I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 80
    .local v10, "v3":I
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 83
    .local v11, "v4":I
    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 84
    .local v2, "maxv1":I
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 87
    .local v3, "maxv2":I
    const/high16 v12, 0x42c80000    # 100.0f

    int-to-float v13, v3

    div-float/2addr v12, v13

    int-to-float v13, v9

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 88
    .local v6, "relv2":I
    const/high16 v12, 0x42c80000    # 100.0f

    int-to-float v13, v2

    div-float/2addr v12, v13

    int-to-float v13, v8

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 90
    .local v5, "relv1":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 91
    .local v4, "relv":I
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Music: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ringer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", max: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v7, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 94
    .local v7, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    const v12, 0x3e19999a    # 0.15f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    invoke-static {v12}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->round(F)I

    move-result v12

    iput v12, v7, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v13, 0x7f060051

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 96
    invoke-virtual {v7}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 98
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 55
    iget-object v1, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mManager:Landroid/media/AudioManager;

    .line 56
    .local v1, "manager":Landroid/media/AudioManager;
    if-nez v1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "manager":Landroid/media/AudioManager;
    check-cast v1, Landroid/media/AudioManager;

    .line 58
    .restart local v1    # "manager":Landroid/media/AudioManager;
    iput-object v1, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mManager:Landroid/media/AudioManager;

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->updateSettingState()V

    .line 63
    iget-object v2, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    if-nez v2, :cond_1

    .line 66
    new-instance v2, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;

    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-direct {v2, p0}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;-><init>(Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;)V

    .restart local v2    # "receiver":Landroid/content/BroadcastReceiver;
    iput-object v2, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "com.bwx.bequick.VOLUME_UPDATED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iput-object v0, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 69
    :cond_1
    invoke-virtual {p1, v2, v0}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method public onSelected(I)V
    .locals 0
    .param p1, "buttonIndex"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onSwitched(Z)V
    .locals 0
    .param p1, "isSwitched"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public onValueChanged(I)V
    .locals 17
    .param p1, "value"    # I

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v6, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 119
    .local v6, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    move/from16 v0, p1

    iput v0, v6, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 120
    const v12, 0x40d55555

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v12, v13

    float-to-int v7, v12

    .line 122
    .local v7, "v":I
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", value%="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mManager:Landroid/media/AudioManager;

    .line 127
    .local v1, "manager":Landroid/media/AudioManager;
    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 128
    .local v2, "maxv1":I
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 129
    .local v3, "maxv2":I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 130
    .local v4, "maxv3":I
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 135
    .local v5, "maxv4":I
    const/4 v12, 0x3

    mul-int v13, v2, v7

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->round(F)I

    move-result v8

    .local v8, "v1":I
    const/4 v13, 0x4

    invoke-virtual {v1, v12, v8, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 136
    const/4 v12, 0x2

    mul-int v13, v3, v7

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->round(F)I

    move-result v9

    .local v9, "v2":I
    const/4 v13, 0x0

    invoke-virtual {v1, v12, v9, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 137
    const/4 v12, 0x5

    mul-int v13, v4, v7

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->round(F)I

    move-result v10

    .local v10, "v3":I
    const/4 v13, 0x0

    invoke-virtual {v1, v12, v10, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 138
    const/4 v12, 0x4

    mul-int v13, v5, v7

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->round(F)I

    move-result v11

    .local v11, "v4":I
    const/4 v13, 0x0

    invoke-virtual {v1, v12, v11, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    move v13, v12

    :goto_0
    if-lez v9, :cond_2

    const/4 v12, 0x1

    :goto_1
    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 141
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 146
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v13, 0x7f060051

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 147
    invoke-virtual {v6}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 149
    return-void

    .line 140
    :cond_1
    const/4 v12, 0x0

    move v13, v12

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    if-eqz v12, :cond_0

    if-nez v9, :cond_0

    .line 143
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method
