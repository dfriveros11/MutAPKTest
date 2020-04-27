.class public Lcom/bwx/bequick/handlers/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    }
.end annotation


# static fields
.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"

.field private static final SLIDER_IDS:[I

.field private static final STREAM_TYPES:[I

.field private static final TEXT_IDS:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChecked:Z

.field private mDialog:Landroid/app/Dialog;

.field private mInitialChecked:Z

.field private mManager:Landroid/media/AudioManager;

.field private mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

.field private mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bwx/bequick/handlers/VolumeDialog;->TEXT_IDS:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bwx/bequick/handlers/VolumeDialog;->SLIDER_IDS:[I

    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x3
        0x4
        0x0
        0x1
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x7f090024
        0x7f090025
        0x7f090029
        0x7f09002b
        0x7f09002d
        0x7f09002f
    .end array-data

    .line 66
    :array_2
    .array-data 4
        0x7f090027
        0x7f090028
        0x7f09002a
        0x7f09002c
        0x7f09002e
        0x7f090030
    .end array-data
.end method

.method public constructor <init>(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    .line 82
    return-void
.end method

.method private setUseRingerVolume(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useRingerVolume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 197
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/VolumeDialog;->hide()V

    .line 149
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 225
    iput-boolean p2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mChecked:Z

    .line 228
    iget-boolean v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mChecked:Z

    invoke-direct {p0, v1}, Lcom/bwx/bequick/handlers/VolumeDialog;->setUseRingerVolume(Z)V

    .line 230
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v0, v1, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->seek:Landroid/widget/SeekBar;

    .line 231
    .local v0, "seek":Landroid/widget/SeekBar;
    if-eqz p2, :cond_0

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v1, v1, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->seek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 234
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v1, v1, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v2, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v4, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mManager:Landroid/media/AudioManager;

    .local v4, "manager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    .line 157
    .local v1, "dialog":Landroid/app/Dialog;
    sget-object v10, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    array-length v9, v10

    .line 158
    .local v9, "size":I
    move v2, v9

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_0

    .line 160
    sget-object v10, Lcom/bwx/bequick/handlers/VolumeDialog;->SLIDER_IDS:[I

    aget v10, v10, v2

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    .line 161
    .local v8, "seek":Landroid/widget/SeekBar;
    sget-object v10, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    aget v10, v10, v2

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 164
    .end local v3    # "i":I
    .end local v8    # "seek":Landroid/widget/SeekBar;
    .restart local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    .line 167
    .local v0, "activity":Landroid/app/Activity;
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 168
    .local v7, "ringerVolume":I
    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 169
    .local v5, "notifVolume":I
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 170
    .local v6, "ringerMode":I
    if-lez v7, :cond_2

    if-nez v6, :cond_2

    .line 171
    const v10, 0x7f06003c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_1
    :goto_2
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.bwx.bequick.VOLUME_UPDATED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/VolumeDialog;->hide()V

    goto :goto_0

    .line 172
    :cond_2
    if-nez v7, :cond_3

    const/4 v10, 0x2

    if-ne v6, v10, :cond_3

    .line 173
    const v10, 0x7f06003a

    const/4 v11, 0x1

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 174
    :cond_3
    if-nez v5, :cond_1

    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 175
    const v10, 0x7f06003b

    const/4 v11, 0x1

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 187
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "i":I
    .end local v4    # "manager":Landroid/media/AudioManager;
    .end local v5    # "notifVolume":I
    .end local v6    # "ringerMode":I
    .end local v7    # "ringerVolume":I
    .end local v9    # "size":I
    :pswitch_1
    iget-boolean v10, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mChecked:Z

    iget-boolean v11, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mInitialChecked:Z

    if-eq v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mInitialChecked:Z

    invoke-direct {p0, v10}, Lcom/bwx/bequick/handlers/VolumeDialog;->setUseRingerVolume(Z)V

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/VolumeDialog;->hide()V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f090009
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 204
    if-eqz p3, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    .line 206
    .local v0, "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "text":Ljava/lang/String;
    iget-object v2, v0, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-boolean v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mChecked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    if-ne v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v2, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->seek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v3, v3, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->seek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 210
    iget-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v2, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    iget-object v3, v3, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .end local v0    # "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 222
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    const v14, 0x7f090026

    const/4 v13, 0x1

    .line 86
    iget-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    .line 87
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v4, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mManager:Landroid/media/AudioManager;

    .line 89
    .local v4, "manager":Landroid/media/AudioManager;
    if-nez v1, :cond_0

    .line 91
    iget-object v11, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "manager":Landroid/media/AudioManager;
    check-cast v4, Landroid/media/AudioManager;

    .restart local v4    # "manager":Landroid/media/AudioManager;
    iput-object v4, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mManager:Landroid/media/AudioManager;

    .line 93
    new-instance v1, Landroid/app/Dialog;

    .end local v1    # "dialog":Landroid/app/Dialog;
    iget-object v11, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 95
    const v11, 0x7f030018

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 96
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    const v11, 0x7f090009

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v11, 0x7f09000a

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v1, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 101
    .local v0, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iput-object v1, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mDialog:Landroid/app/Dialog;

    .line 105
    .end local v0    # "checkbox":Landroid/widget/CheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/VolumeDialog;->useRingerVolume()Z

    move-result v9

    .line 107
    .local v9, "useRingerVolume":Z
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    array-length v7, v11

    .line 108
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_4

    .line 110
    if-eqz v9, :cond_2

    if-ne v3, v13, :cond_2

    .line 111
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    add-int/lit8 v12, v3, -0x1

    aget v11, v11, v12

    invoke-virtual {v4, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 116
    .local v10, "value":I
    :goto_1
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    aget v11, v11, v3

    invoke-virtual {v4, v11}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 117
    .local v5, "max":I
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->TEXT_IDS:[I

    aget v11, v11, v3

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 118
    .local v8, "text":Landroid/widget/TextView;
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->SLIDER_IDS:[I

    aget v11, v11, v3

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 120
    .local v6, "seek":Landroid/widget/SeekBar;
    new-instance v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;-><init>(Lcom/bwx/bequick/handlers/VolumeDialog;)V

    .line 121
    .local v2, "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    iput v3, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->index:I

    .line 122
    iput-object v8, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->text:Landroid/widget/TextView;

    .line 123
    iput v5, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->max:I

    .line 124
    iput-object v6, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->seek:Landroid/widget/SeekBar;

    .line 126
    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 127
    iget v11, v2, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->max:I

    invoke-virtual {v6, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 128
    invoke-virtual {v6, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    invoke-virtual {v6, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    if-nez v3, :cond_3

    .line 134
    iput-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mRingerHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    .line 108
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    .end local v5    # "max":I
    .end local v6    # "seek":Landroid/widget/SeekBar;
    .end local v8    # "text":Landroid/widget/TextView;
    .end local v10    # "value":I
    :cond_2
    sget-object v11, Lcom/bwx/bequick/handlers/VolumeDialog;->STREAM_TYPES:[I

    aget v11, v11, v3

    invoke-virtual {v4, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .restart local v10    # "value":I
    goto :goto_1

    .line 135
    .restart local v2    # "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    .restart local v5    # "max":I
    .restart local v6    # "seek":Landroid/widget/SeekBar;
    .restart local v8    # "text":Landroid/widget/TextView;
    :cond_3
    if-ne v3, v13, :cond_1

    .line 136
    iput-object v2, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mNotificationHolder:Lcom/bwx/bequick/handlers/VolumeDialog$Holder;

    goto :goto_2

    .line 140
    .end local v2    # "holder":Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
    .end local v5    # "max":I
    .end local v6    # "seek":Landroid/widget/SeekBar;
    .end local v8    # "text":Landroid/widget/TextView;
    .end local v10    # "value":I
    :cond_4
    invoke-virtual {v1, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 141
    .restart local v0    # "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    iput-boolean v11, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mChecked:Z

    iput-boolean v11, p0, Lcom/bwx/bequick/handlers/VolumeDialog;->mInitialChecked:Z

    .line 144
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 145
    return-void
.end method
