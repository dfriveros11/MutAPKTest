.class public Lcom/bwx/bequick/handlers/VolumeSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "VolumeSettingHandler.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final BUTTON_CANCEL:I = -0x2

.field private static final STREAM_TYPES:[I

.field private static final STRING_IDS:[I


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mIdCounter:I

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mValueViews:[Landroid/widget/TextView;

.field private mVolumes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STREAM_TYPES:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STRING_IDS:[I

    return-void

    .line 49
    :array_0
    .array-data 4
        0x2
        0x5
        0x3
        0x4
        0x0
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f060034
        0x7f060035
        0x7f060036
        0x7f060037
        0x7f060038
        0x7f060039
    .end array-data
.end method

.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 82
    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 15

    .prologue
    .line 238
    iget-object v13, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_0

    iget-object v2, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 289
    :goto_0
    return-object v2

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 243
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 244
    .local v4, "factory":Landroid/view/LayoutInflater;
    const v13, 0x7f030018

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, "dialog":Landroid/view/View;
    const v13, 0x7f09000b

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 248
    .local v7, "parent":Landroid/view/ViewGroup;
    sget-object v10, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STRING_IDS:[I

    .line 249
    .local v10, "stringIds":[I
    array-length v6, v10

    .line 250
    .local v6, "length":I
    new-array v9, v6, [Landroid/widget/SeekBar;

    iput-object v9, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mSeekBars:[Landroid/widget/SeekBar;

    .line 251
    .local v9, "seekBars":[Landroid/widget/SeekBar;
    new-array v12, v6, [Landroid/widget/TextView;

    iput-object v12, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mValueViews:[Landroid/widget/TextView;

    .line 252
    .local v12, "valueViews":[Landroid/widget/TextView;
    new-array v13, v6, [I

    iput-object v13, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mVolumes:[I

    .line 255
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 257
    const v13, 0x7f030015

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, "control":Landroid/view/View;
    const v13, 0x7f090002

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 261
    .local v11, "text":Landroid/widget/TextView;
    aget v13, v10, v5

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 264
    const v13, 0x7f09001f

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    aput-object v13, v12, v5

    .line 267
    const v13, 0x7f090020

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    .line 268
    .local v8, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v8, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 269
    iget v13, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mIdCounter:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mIdCounter:I

    invoke-virtual {v8, v13}, Landroid/widget/SeekBar;->setId(I)V

    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 271
    aput-object v8, v9, v5

    .line 274
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 279
    .end local v1    # "control":Landroid/view/View;
    .end local v8    # "seekBar":Landroid/widget/SeekBar;
    .end local v11    # "text":Landroid/widget/TextView;
    :cond_1
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f020012

    .line 280
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f060032

    .line 281
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 282
    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f06001c

    .line 283
    invoke-virtual {v13, v14, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f06001d

    .line 284
    invoke-virtual {v13, v14, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 285
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 287
    .local v2, "d":Landroid/app/AlertDialog;
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 88
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 97
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 141
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 23
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 145
    const/16 v19, -0x2

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 152
    .local v3, "activity":Landroid/app/Activity;
    const-string v19, "audio"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 153
    .local v8, "manager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mVolumes:[I

    move-object/from16 v18, v0

    .line 154
    .local v18, "volumes":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mSeekBars:[Landroid/widget/SeekBar;

    .line 155
    .local v15, "seekBars":[Landroid/widget/SeekBar;
    sget-object v16, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STREAM_TYPES:[I

    .line 158
    .local v16, "streamTypes":[I
    array-length v7, v15

    .line 159
    .local v7, "length":I
    const/4 v10, 0x0

    .line 161
    .local v10, "prevChanged":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_6

    .line 163
    aget-object v19, v15, v5

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getProgress()I

    move-result v17

    .line 164
    .local v17, "value":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_4

    const/4 v6, 0x1

    .line 165
    .local v6, "isNotification":Z
    :goto_2
    aget v19, v18, v5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    if-eqz v6, :cond_5

    if-eqz v10, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 168
    .local v4, "changed":Z
    :goto_3
    if-eqz v4, :cond_2

    .line 169
    aget v19, v16, v5

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 173
    :cond_2
    if-eqz v6, :cond_3

    .line 176
    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getProgress()I

    move-result v14

    .line 177
    .local v14, "ringerVolumeDesired":I
    const/16 v19, 0x0

    aget v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v13

    .line 178
    .local v13, "ringerVolumeActual":I
    if-eq v14, v13, :cond_3

    .line 179
    const/16 v19, 0x0

    aget v19, v16, v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v14, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 184
    .end local v13    # "ringerVolumeActual":I
    .end local v14    # "ringerVolumeDesired":I
    :cond_3
    move v10, v4

    .line 161
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 164
    .end local v4    # "changed":Z
    .end local v6    # "isNotification":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 165
    .restart local v6    # "isNotification":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 188
    .end local v6    # "isNotification":Z
    .end local v17    # "value":I
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 189
    .local v12, "ringerVolume":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 190
    .local v9, "notifVolume":I
    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    .line 191
    .local v11, "ringerMode":I
    if-lez v12, :cond_8

    if-nez v11, :cond_8

    .line 192
    const v19, 0x7f06003c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_7
    :goto_4
    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.bwx.bequick.VOLUME_UPDATED"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    :cond_8
    if-nez v12, :cond_9

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 194
    const v19, 0x7f06003a

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 195
    :cond_9
    if-nez v9, :cond_7

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 196
    const v19, 0x7f06003b

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 117
    if-eqz p3, :cond_0

    .line 119
    iget-object v4, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 120
    .local v1, "manager":Landroid/media/AudioManager;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    .local v0, "index":I
    sget-object v4, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STREAM_TYPES:[I

    aget v2, v4, v0

    .line 124
    .local v2, "streamType":I
    iget-object v4, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mValueViews:[Landroid/widget/TextView;

    aget-object v3, v4, v0

    .line 125
    .local v3, "valueView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v0    # "index":I
    .end local v1    # "manager":Landroid/media/AudioManager;
    .end local v2    # "streamType":I
    .end local v3    # "valueView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onSelected(I)V
    .locals 1
    .param p1, "buttonIndex"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 102
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->prepareDialog()Z

    .line 103
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 104
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 133
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 137
    return-void
.end method

.method public onSwitched(Z)V
    .locals 0
    .param p1, "isSwitched"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 114
    return-void
.end method

.method public prepareDialog()Z
    .locals 13

    .prologue
    .line 207
    iget-object v11, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 208
    .local v2, "manager":Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mSeekBars:[Landroid/widget/SeekBar;

    .line 209
    .local v5, "seekBars":[Landroid/widget/SeekBar;
    iget-object v8, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mValueViews:[Landroid/widget/TextView;

    .line 210
    .local v8, "valueViews":[Landroid/widget/TextView;
    iget-object v10, p0, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->mVolumes:[I

    .line 211
    .local v10, "volumes":[I
    array-length v1, v5

    .line 212
    .local v1, "length":I
    sget-object v6, Lcom/bwx/bequick/handlers/VolumeSettingHandler;->STREAM_TYPES:[I

    .line 214
    .local v6, "streamTypes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    aget v11, v6, v0

    invoke-virtual {v2, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 218
    .local v9, "volume":I
    aget v11, v6, v0

    invoke-virtual {v2, v11}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 221
    .local v3, "max":I
    aget-object v7, v8, v0

    .line 222
    .local v7, "valueView":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    aget-object v4, v5, v0

    .line 226
    .local v4, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 227
    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 229
    aput v9, v10, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "max":I
    .end local v4    # "seekBar":Landroid/widget/SeekBar;
    .end local v7    # "valueView":Landroid/widget/TextView;
    .end local v9    # "volume":I
    :cond_0
    const/4 v11, 0x1

    return v11
.end method
