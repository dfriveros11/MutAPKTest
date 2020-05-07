.class public Lcom/bwx/bequick/handlers/RingerSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "RingerSettingHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/RingerSettingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/RingerSettingHandler;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->updateState()V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 92
    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 134
    :goto_0
    return-object v6

    .line 95
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v6, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 96
    .local v6, "dialog":Landroid/app/Dialog;
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 97
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    const v1, 0x7f030019

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v7, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    const v3, 0x7f020022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "text"

    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060020

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 110
    .restart local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    const v3, 0x7f020024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "text"

    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060022

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 115
    .restart local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    const v3, 0x7f020023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "text"

    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060021

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v7    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    const v3, 0x7f020025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "text"

    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v3, 0x7f03000e

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "icon"

    aput-object v9, v4, v5

    const-string v5, "text"

    aput-object v5, v4, v10

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 130
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f090022

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 131
    .local v8, "view":Landroid/widget/ListView;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 124
    :array_0
    .array-data 4
        0x7f090012
        0x7f090002
    .end array-data
.end method

.method private updateState()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 199
    iget-object v9, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 200
    .local v2, "manager":Landroid/media/AudioManager;
    if-nez v2, :cond_0

    .line 230
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 203
    .local v3, "ringer":I
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    .line 205
    .local v6, "vibro":I
    const/4 v5, 0x0

    .line 206
    .local v5, "silent":Z
    if-nez v3, :cond_1

    .line 207
    const v0, 0x7f060020

    .line 208
    .local v0, "descr":I
    const v1, 0x7f020022

    .line 209
    .local v1, "icon":I
    const/4 v5, 0x1

    .line 224
    :goto_1
    iget-object v4, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 225
    .local v4, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget-object v9, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v9, v0}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 226
    iput v1, v4, Lcom/bwx/bequick/fwk/Setting;->iconId:I

    .line 227
    if-nez v5, :cond_4

    :goto_2
    iput-boolean v7, v4, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 228
    invoke-virtual {v4}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    goto :goto_0

    .line 210
    .end local v0    # "descr":I
    .end local v1    # "icon":I
    .end local v4    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_1
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 211
    if-ne v6, v7, :cond_2

    .line 212
    const v0, 0x7f060023

    .line 213
    .restart local v0    # "descr":I
    const v1, 0x7f020025

    .restart local v1    # "icon":I
    goto :goto_1

    .line 215
    .end local v0    # "descr":I
    .end local v1    # "icon":I
    :cond_2
    const v0, 0x7f060021

    .line 216
    .restart local v0    # "descr":I
    const v1, 0x7f020023

    .restart local v1    # "icon":I
    goto :goto_1

    .line 219
    .end local v0    # "descr":I
    .end local v1    # "icon":I
    :cond_3
    const v0, 0x7f060022

    .line 220
    .restart local v0    # "descr":I
    const v1, 0x7f020024

    .restart local v1    # "icon":I
    goto :goto_1

    .restart local v4    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_4
    move v7, v8

    .line 227
    goto :goto_2
.end method

.method private validateState(Landroid/media/AudioManager;)V
    .locals 6
    .param p1, "manager"    # Landroid/media/AudioManager;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 182
    .local v0, "ringer":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 186
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 187
    .local v1, "volume":I
    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p1, v4, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 189
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 194
    .end local v1    # "volume":I
    :cond_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.bwx.bequick.VOLUME_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 66
    iget-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iput-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mFilter:Landroid/content/IntentFilter;

    .line 72
    new-instance v1, Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;

    invoke-direct {v1, p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;-><init>(Lcom/bwx/bequick/handlers/RingerSettingHandler;)V

    iput-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;

    iget-object v2, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->updateState()V

    .line 77
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 88
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 240
    .local v0, "manager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 242
    const/4 v1, 0x2

    .line 243
    .local v1, "ringerMode":I
    const/4 v2, 0x1

    .line 245
    .local v2, "vibroMode":I
    packed-switch p3, :pswitch_data_0

    .line 267
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 268
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 271
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->validateState(Landroid/media/AudioManager;)V

    .line 274
    .end local v1    # "ringerMode":I
    .end local v2    # "vibroMode":I
    :cond_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 275
    return-void

    .line 247
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibroMode":I
    :pswitch_0
    const/4 v1, 0x0

    .line 248
    const/4 v2, 0x2

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    const/4 v1, 0x1

    .line 252
    const/4 v2, 0x1

    .line 253
    goto :goto_0

    .line 255
    :pswitch_2
    const/4 v1, 0x2

    .line 256
    const/4 v2, 0x0

    .line 257
    goto :goto_0

    .line 259
    :pswitch_3
    const/4 v1, 0x2

    .line 260
    const/4 v2, 0x1

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSelected(I)V
    .locals 5
    .param p1, "buttonIndex"    # I

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 142
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SOUND_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e1":Ljava/lang/Exception;
    const-string v3, "bwx.qs"

    const-string v4, "No handler for ACTION_SOUND_SETTINGS -> showing ACTION_DISPLAY_SETTINGS instead"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 151
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e2":Ljava/lang/Exception;
    const-string v3, "bwx.qs"

    const-string v4, "No handler for ACTION_DISPLAY_SETTINGS -> just showing dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->createDialog()Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 155
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 160
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->createDialog()Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 161
    iget-object v3, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onSwitched(Z)V
    .locals 3
    .param p1, "isSwitched"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 169
    .local v0, "manager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 175
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->validateState(Landroid/media/AudioManager;)V

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 235
    return-void
.end method
