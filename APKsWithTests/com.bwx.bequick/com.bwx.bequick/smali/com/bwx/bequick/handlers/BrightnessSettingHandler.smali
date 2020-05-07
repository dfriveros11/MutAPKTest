.class public Lcom/bwx/bequick/handlers/BrightnessSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "BrightnessSettingHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x12

.field public static final MODE_AUTO:I = 0x1

.field public static final MODE_KEY:Ljava/lang/String; = "screen_brightness_mode"

.field public static final MODE_MANUAL:I = 0x0

.field public static final MODE_UNSUPPORTED:I = -0x1

.field private static final RANGE:I = 0xed

.field private static final UPDATE_TIMEOUT:I = 0x2d


# instance fields
.field private mAttrs:Landroid/view/WindowManager$LayoutParams;

.field private mChanged:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 73
    return-void
.end method

.method private getPropertyValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getMinimum()I

    move-result v0

    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getRange()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method private updateSystemBrightness()V
    .locals 4

    .prologue
    .line 200
    iget-boolean v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mChanged:Z

    if-eqz v3, :cond_0

    .line 202
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v1, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 203
    .local v1, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget v3, v1, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-direct {p0, v3}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getPropertyValue(I)I

    move-result v2

    .line 205
    .local v2, "value":I
    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mChanged:Z

    .line 208
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method private updateWindowBrightness()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mHandler:Landroid/os/Handler;

    .line 182
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 184
    .restart local v0    # "handler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mHandler:Landroid/os/Handler;

    .line 186
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2d

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 189
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 11
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 77
    iput-object p1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 79
    invoke-virtual {p1}, Lcom/bwx/bequick/MainSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    .line 80
    .local v0, "app":Lcom/bwx/bequick/SettingsApplication;
    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 81
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "lightSensor"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 84
    .local v6, "useLightSensor":Z
    invoke-virtual {p1}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 85
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v9, "screen_brightness_mode"

    const/4 v10, -0x1

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, "mode":I
    const-string v9, "screen_brightness"

    invoke-static {v4, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 87
    .local v7, "value":I
    if-ne v2, v1, :cond_0

    .line 90
    .local v1, "auto":Z
    :goto_0
    iget-object v5, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v5, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 91
    .local v5, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    invoke-virtual {p0, v7}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getPercentValue(I)I

    move-result v8

    iput v8, v5, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 92
    if-eqz v1, :cond_1

    const v8, 0x7f060052

    invoke-virtual {p1, v8}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, v5, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 93
    iput-boolean v6, v5, Lcom/bwx/bequick/fwk/RangeSetting;->enabled:Z

    .line 94
    iput-boolean v1, v5, Lcom/bwx/bequick/fwk/RangeSetting;->checked:Z

    .line 96
    invoke-virtual {v5}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 97
    return-void

    .end local v1    # "auto":Z
    .end local v5    # "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    :cond_0
    move v1, v8

    .line 87
    goto :goto_0

    .line 92
    .restart local v1    # "auto":Z
    .restart local v5    # "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->updateSystemBrightness()V

    .line 104
    iput-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 106
    return-void
.end method

.method protected getMaximum()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xff

    return v0
.end method

.method protected getMinimum()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x12

    return v0
.end method

.method protected getPercentValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getMinimum()I

    move-result v0

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getRange()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method protected getRange()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xed

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 211
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->updateSystemBrightness()V

    .line 231
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 232
    return-void

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 225
    .local v2, "value":I
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v1, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 226
    .local v1, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getPercentValue(I)I

    move-result v3

    iput v3, v1, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 227
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 228
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->updateWindowBrightness()V

    goto :goto_0
.end method

.method public onSelected(I)V
    .locals 7
    .param p1, "buttonIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v2}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 127
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060032

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060012

    .line 128
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001a

    .line 129
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->updateSystemBrightness()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSwitched(Z)V
    .locals 6
    .param p1, "switched"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 146
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0, v0, v1, p1}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->setAutobrightness(Landroid/app/Activity;Landroid/content/ContentResolver;Z)V

    .line 151
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v2, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 152
    .local v2, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iput-boolean p1, v2, Lcom/bwx/bequick/fwk/RangeSetting;->checked:Z

    .line 153
    if-eqz p1, :cond_1

    const v4, 0x7f060052

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 155
    if-nez p1, :cond_0

    .line 157
    const-string v4, "screen_brightness"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 158
    .local v3, "value":I
    invoke-virtual {p0, v3}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getPercentValue(I)I

    move-result v4

    iput v4, v2, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 161
    .end local v3    # "value":I
    :cond_0
    invoke-virtual {v2}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 162
    return-void

    .line 153
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v0, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 173
    .local v0, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iput p1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 174
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->updateWindowBrightness()V

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mChanged:Z

    .line 176
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 236
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v1, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 239
    .local v1, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iget v4, v1, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-direct {p0, v4}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getPropertyValue(I)I

    move-result v2

    .line 242
    .local v2, "value":I
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 243
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 244
    iget-object v4, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4}, Lcom/bwx/bequick/MainSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 247
    :cond_0
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->getMaximum()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 250
    iget-object v4, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4}, Lcom/bwx/bequick/MainSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 251
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 252
    return-void
.end method

.method protected setAutobrightness(Landroid/app/Activity;Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "on"    # Z

    .prologue
    .line 165
    const-string v1, "screen_brightness_mode"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
